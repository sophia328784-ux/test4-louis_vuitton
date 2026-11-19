package org.bouncycastle.pqc.crypto.sphincsplus;

import org.bouncycastle.util.Arrays;
import org.bouncycastle.util.Pack;

/* JADX INFO: loaded from: classes5.dex */
class WotsPlus {
    private final SPHINCSPlusEngine engine;
    private final int w;

    public WotsPlus(SPHINCSPlusEngine sPHINCSPlusEngine) {
        this.engine = sPHINCSPlusEngine;
        this.w = sPHINCSPlusEngine.WOTS_W;
    }

    public void base_w(byte[] bArr, int i2, int i3, int[] iArr, int i4, int i5) {
        int i6 = 0;
        int i7 = 0;
        int i8 = 0;
        while (i6 < i5) {
            if (i7 == 0) {
                i7 += 8;
                i8 = bArr[i2];
                i2++;
            }
            i7 -= this.engine.WOTS_LOGW;
            iArr[i4] = (i8 >>> i7) & (i3 - 1);
            i6++;
            i4++;
        }
    }

    public byte[] chain(byte[] bArr, int i2, int i3, byte[] bArr2, ADRS adrs) {
        if (i3 == 0) {
            return Arrays.clone(bArr);
        }
        if (i2 + i3 > this.w - 1) {
            return null;
        }
        for (int i4 = 0; i4 < i3; i4++) {
            adrs.setHashAddress(i2 + i4);
            bArr = this.engine.F(bArr2, adrs, bArr);
        }
        return bArr;
    }

    public byte[] pkFromSig(byte[] bArr, byte[] bArr2, byte[] bArr3, ADRS adrs) {
        SPHINCSPlusEngine sPHINCSPlusEngine;
        ADRS adrs2 = adrs;
        ADRS adrs3 = new ADRS(adrs2);
        SPHINCSPlusEngine sPHINCSPlusEngine2 = this.engine;
        int[] iArr = new int[sPHINCSPlusEngine2.WOTS_LEN];
        base_w(bArr2, 0, this.w, iArr, 0, sPHINCSPlusEngine2.WOTS_LEN1);
        int i2 = 0;
        int i3 = 0;
        while (true) {
            sPHINCSPlusEngine = this.engine;
            if (i2 >= sPHINCSPlusEngine.WOTS_LEN1) {
                break;
            }
            i3 += (this.w - 1) - iArr[i2];
            i2++;
        }
        int i4 = sPHINCSPlusEngine.WOTS_LEN2;
        int i5 = sPHINCSPlusEngine.WOTS_LOGW;
        byte[] bArrIntToBigEndian = Pack.intToBigEndian(i3 << (8 - ((i4 * i5) % 8)));
        int i6 = 4 - (((i4 * i5) + 7) / 8);
        int i7 = this.w;
        SPHINCSPlusEngine sPHINCSPlusEngine3 = this.engine;
        base_w(bArrIntToBigEndian, i6, i7, iArr, sPHINCSPlusEngine3.WOTS_LEN1, sPHINCSPlusEngine3.WOTS_LEN2);
        SPHINCSPlusEngine sPHINCSPlusEngine4 = this.engine;
        byte[] bArr4 = new byte[sPHINCSPlusEngine4.N];
        byte[][] bArr5 = new byte[sPHINCSPlusEngine4.WOTS_LEN][];
        int i8 = 0;
        while (i8 < this.engine.WOTS_LEN) {
            adrs2.setChainAddress(i8);
            int i9 = this.engine.N;
            System.arraycopy(bArr, i8 * i9, bArr4, 0, i9);
            byte[] bArr6 = bArr4;
            int i10 = iArr[i8];
            bArr5[i8] = chain(bArr6, i10, (this.w - 1) - i10, bArr3, adrs2);
            i8++;
            adrs2 = adrs;
            bArr4 = bArr6;
        }
        adrs3.setType(1);
        adrs3.setKeyPairAddress(adrs.getKeyPairAddress());
        return this.engine.T_l(bArr3, adrs3, Arrays.concatenate(bArr5));
    }

    public byte[] pkGen(byte[] bArr, byte[] bArr2, ADRS adrs) {
        ADRS adrs2 = new ADRS(adrs);
        byte[][] bArr3 = new byte[this.engine.WOTS_LEN][];
        int i2 = 0;
        while (i2 < this.engine.WOTS_LEN) {
            ADRS adrs3 = new ADRS(adrs);
            adrs3.setType(5);
            adrs3.setKeyPairAddress(adrs.getKeyPairAddress());
            adrs3.setChainAddress(i2);
            adrs3.setHashAddress(0);
            byte[] bArrPRF = this.engine.PRF(bArr2, bArr, adrs3);
            adrs3.setType(0);
            adrs3.setKeyPairAddress(adrs.getKeyPairAddress());
            adrs3.setChainAddress(i2);
            adrs3.setHashAddress(0);
            WotsPlus wotsPlus = this;
            bArr3[i2] = wotsPlus.chain(bArrPRF, 0, this.w - 1, bArr2, adrs3);
            i2++;
            this = wotsPlus;
        }
        WotsPlus wotsPlus2 = this;
        adrs2.setType(1);
        adrs2.setKeyPairAddress(adrs.getKeyPairAddress());
        return wotsPlus2.engine.T_l(bArr2, adrs2, Arrays.concatenate(bArr3));
    }

    public byte[] sign(byte[] bArr, byte[] bArr2, byte[] bArr3, ADRS adrs) {
        SPHINCSPlusEngine sPHINCSPlusEngine;
        ADRS adrs2 = new ADRS(adrs);
        SPHINCSPlusEngine sPHINCSPlusEngine2 = this.engine;
        int[] iArr = new int[sPHINCSPlusEngine2.WOTS_LEN];
        base_w(bArr, 0, this.w, iArr, 0, sPHINCSPlusEngine2.WOTS_LEN1);
        int i2 = 0;
        int i3 = 0;
        while (true) {
            sPHINCSPlusEngine = this.engine;
            if (i2 >= sPHINCSPlusEngine.WOTS_LEN1) {
                break;
            }
            i3 += (this.w - 1) - iArr[i2];
            i2++;
        }
        int i4 = sPHINCSPlusEngine.WOTS_LOGW;
        if (i4 % 8 != 0) {
            i3 <<= 8 - ((sPHINCSPlusEngine.WOTS_LEN2 * i4) % 8);
        }
        int i5 = ((sPHINCSPlusEngine.WOTS_LEN2 * i4) + 7) / 8;
        byte[] bArrIntToBigEndian = Pack.intToBigEndian(i3);
        int i6 = 4 - i5;
        int i7 = this.w;
        SPHINCSPlusEngine sPHINCSPlusEngine3 = this.engine;
        base_w(bArrIntToBigEndian, i6, i7, iArr, sPHINCSPlusEngine3.WOTS_LEN1, sPHINCSPlusEngine3.WOTS_LEN2);
        byte[][] bArr4 = new byte[this.engine.WOTS_LEN][];
        for (int i8 = 0; i8 < this.engine.WOTS_LEN; i8++) {
            adrs2.setType(5);
            adrs2.setKeyPairAddress(adrs.getKeyPairAddress());
            adrs2.setChainAddress(i8);
            adrs2.setHashAddress(0);
            byte[] bArrPRF = this.engine.PRF(bArr3, bArr2, adrs2);
            adrs2.setType(0);
            adrs2.setKeyPairAddress(adrs.getKeyPairAddress());
            adrs2.setChainAddress(i8);
            adrs2.setHashAddress(0);
            bArr4[i8] = chain(bArrPRF, 0, iArr[i8], bArr3, adrs2);
        }
        return Arrays.concatenate(bArr4);
    }
}
