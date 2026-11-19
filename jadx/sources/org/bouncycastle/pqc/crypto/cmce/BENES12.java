package org.bouncycastle.pqc.crypto.cmce;

import java.lang.reflect.Array;

/* JADX INFO: loaded from: classes5.dex */
class BENES12 extends BENES {
    public BENES12(int i2, int i3, int i4) {
        super(i2, i3, i4);
    }

    private void apply_benes(byte[] bArr, byte[] bArr2, int i2) {
        int i3;
        long[] jArr = new long[64];
        long[] jArr2 = new long[64];
        for (int i4 = 0; i4 < 64; i4++) {
            jArr[i4] = Utils.load8(bArr, i4 * 8);
        }
        int i5 = 256;
        int i6 = (this.SYS_T * 2) + 40;
        if (i2 != 0) {
            i6 += ((this.GFBITS * 2) - 2) * 256;
            i5 = -256;
        }
        BENES.transpose_64x64(jArr, jArr);
        int i7 = 0;
        while (true) {
            if (i7 > 5) {
                break;
            }
            for (int i8 = 0; i8 < 64; i8++) {
                jArr2[i8] = Utils.load4(bArr2, (i8 * 4) + i6);
            }
            BENES.transpose_64x64(jArr2, jArr2);
            layerBenes(jArr, jArr2, i7);
            i6 += i5;
            i7++;
        }
        BENES.transpose_64x64(jArr, jArr);
        for (int i9 = 0; i9 <= 5; i9++) {
            for (int i10 = 0; i10 < 32; i10++) {
                jArr2[i10] = Utils.load8(bArr2, (i10 * 8) + i6);
            }
            layerBenes(jArr, jArr2, i9);
            i6 += i5;
        }
        for (int i11 = 4; i11 >= 0; i11--) {
            for (int i12 = 0; i12 < 32; i12++) {
                jArr2[i12] = Utils.load8(bArr2, (i12 * 8) + i6);
            }
            layerBenes(jArr, jArr2, i11);
            i6 += i5;
        }
        BENES.transpose_64x64(jArr, jArr);
        for (i3 = 5; i3 >= 0; i3--) {
            for (int i13 = 0; i13 < 64; i13++) {
                jArr2[i13] = Utils.load4(bArr2, (i13 * 4) + i6);
            }
            BENES.transpose_64x64(jArr2, jArr2);
            layerBenes(jArr, jArr2, i3);
            i6 += i5;
        }
        BENES.transpose_64x64(jArr, jArr);
        for (int i14 = 0; i14 < 64; i14++) {
            Utils.store8(bArr, i14 * 8, jArr[i14]);
        }
    }

    public static void layerBenes(long[] jArr, long[] jArr2, int i2) {
        int i3 = 1 << i2;
        int i4 = 0;
        for (int i5 = 0; i5 < 64; i5 += i3 * 2) {
            int i6 = i5;
            while (i6 < i5 + i3) {
                long j2 = jArr[i6];
                int i7 = i6 + i3;
                long j3 = (jArr[i7] ^ j2) & jArr2[i4];
                jArr[i6] = j2 ^ j3;
                jArr[i7] = jArr[i7] ^ j3;
                i6++;
                i4++;
            }
        }
    }

    @Override // org.bouncycastle.pqc.crypto.cmce.BENES
    public void support_gen(short[] sArr, byte[] bArr) {
        int i2 = this.GFBITS;
        byte[][] bArr2 = (byte[][]) Array.newInstance((Class<?>) Byte.TYPE, i2, (1 << i2) / 8);
        for (int i3 = 0; i3 < this.GFBITS; i3++) {
            for (int i4 = 0; i4 < (1 << this.GFBITS) / 8; i4++) {
                bArr2[i3][i4] = 0;
            }
        }
        int i5 = 0;
        while (true) {
            int i6 = this.GFBITS;
            if (i5 >= (1 << i6)) {
                break;
            }
            short sBitrev = Utils.bitrev((short) i5, i6);
            for (int i7 = 0; i7 < this.GFBITS; i7++) {
                byte[] bArr3 = bArr2[i7];
                int i8 = i5 / 8;
                bArr3[i8] = (byte) (bArr3[i8] | (((sBitrev >> i7) & 1) << (i5 % 8)));
            }
            i5++;
        }
        for (int i9 = 0; i9 < this.GFBITS; i9++) {
            apply_benes(bArr2[i9], bArr, 0);
        }
        for (int i10 = 0; i10 < this.SYS_N; i10++) {
            sArr[i10] = 0;
            for (int i11 = this.GFBITS - 1; i11 >= 0; i11--) {
                short s = (short) (sArr[i10] << 1);
                sArr[i10] = s;
                sArr[i10] = (short) (s | ((bArr2[i11][i10 / 8] >> (i10 % 8)) & 1));
            }
        }
    }
}
