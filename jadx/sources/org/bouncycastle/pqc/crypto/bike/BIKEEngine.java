package org.bouncycastle.pqc.crypto.bike;

import defpackage.ct0;
import java.security.SecureRandom;
import org.bouncycastle.crypto.digests.SHA3Digest;
import org.bouncycastle.crypto.digests.SHAKEDigest;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;
import org.bouncycastle.util.Arrays;
import org.bouncycastle.util.Bytes;

/* JADX INFO: loaded from: classes5.dex */
class BIKEEngine {
    private int L_BYTE;
    private int R2_BYTE;
    private int R_BYTE;
    private final BIKERing bikeRing;
    private int hw;
    private int nbIter;
    private int r;
    private int t;
    private int tau;
    private int w;

    public BIKEEngine(int i2, int i3, int i4, int i5, int i6, int i7) {
        this.r = i2;
        this.w = i3;
        this.t = i4;
        this.nbIter = i6;
        this.tau = i7;
        this.hw = i3 / 2;
        this.L_BYTE = i5 / 8;
        this.R_BYTE = (i2 + 7) >>> 3;
        this.R2_BYTE = ((i2 * 2) + 7) >>> 3;
        this.bikeRing = new BIKERing(i2);
    }

    private void BFIter(byte[] bArr, byte[] bArr2, int i2, int[] iArr, int[] iArr2, int[] iArr3, int[] iArr4, byte[] bArr3, byte[] bArr4, byte[] bArr5) {
        ctrAll(iArr3, bArr, bArr5);
        int i3 = bArr5[0] & 255;
        int i4 = ((i3 - i2) >> 31) + 1;
        int i5 = ((i3 - (i2 - this.tau)) >> 31) + 1;
        byte b2 = (byte) i4;
        bArr2[0] = (byte) (bArr2[0] ^ b2);
        bArr3[0] = b2;
        bArr4[0] = (byte) i5;
        int i6 = 1;
        while (true) {
            int i7 = this.r;
            if (i6 >= i7) {
                break;
            }
            int i8 = bArr5[i6] & 255;
            int i9 = ((i8 - i2) >> 31) + 1;
            int i10 = ((i8 - (i2 - this.tau)) >> 31) + 1;
            int i11 = i7 - i6;
            byte b3 = (byte) i9;
            bArr2[i11] = (byte) (bArr2[i11] ^ b3);
            bArr3[i6] = b3;
            bArr4[i6] = (byte) i10;
            i6++;
        }
        ctrAll(iArr4, bArr, bArr5);
        int i12 = bArr5[0] & 255;
        int i13 = ((i12 - i2) >> 31) + 1;
        int i14 = ((i12 - (i2 - this.tau)) >> 31) + 1;
        int i15 = this.r;
        byte b4 = (byte) i13;
        bArr2[i15] = (byte) (bArr2[i15] ^ b4);
        bArr3[i15] = b4;
        bArr4[i15] = (byte) i14;
        int i16 = 1;
        while (true) {
            int i17 = this.r;
            if (i16 >= i17) {
                break;
            }
            int i18 = bArr5[i16] & 255;
            int i19 = ((i18 - i2) >> 31) + 1;
            int i20 = ((i18 - (i2 - this.tau)) >> 31) + 1;
            int i21 = (i17 + i17) - i16;
            byte b5 = (byte) i19;
            bArr2[i21] = (byte) (bArr2[i21] ^ b5);
            bArr3[i17 + i16] = b5;
            bArr4[i17 + i16] = (byte) i20;
            i16++;
        }
        for (int i22 = 0; i22 < this.r * 2; i22++) {
            recomputeSyndrome(bArr, i22, iArr, iArr2, bArr3[i22] != 0);
        }
    }

    private void BFIter2(byte[] bArr, byte[] bArr2, int i2, int[] iArr, int[] iArr2, int[] iArr3, int[] iArr4, byte[] bArr3) {
        int[] iArr5 = new int[this.r * 2];
        ctrAll(iArr3, bArr, bArr3);
        int i3 = (((bArr3[0] & 255) - i2) >> 31) + 1;
        bArr2[0] = (byte) (bArr2[0] ^ ((byte) i3));
        iArr5[0] = i3;
        int i4 = 1;
        while (true) {
            int i5 = this.r;
            if (i4 >= i5) {
                break;
            }
            int i6 = (((bArr3[i4] & 255) - i2) >> 31) + 1;
            int i7 = i5 - i4;
            bArr2[i7] = (byte) (bArr2[i7] ^ ((byte) i6));
            iArr5[i4] = i6;
            i4++;
        }
        ctrAll(iArr4, bArr, bArr3);
        int i8 = (((bArr3[0] & 255) - i2) >> 31) + 1;
        int i9 = this.r;
        bArr2[i9] = (byte) (bArr2[i9] ^ ((byte) i8));
        iArr5[i9] = i8;
        int i10 = 1;
        while (true) {
            int i11 = this.r;
            if (i10 >= i11) {
                break;
            }
            int i12 = (((bArr3[i10] & 255) - i2) >> 31) + 1;
            int i13 = (i11 + i11) - i10;
            bArr2[i13] = (byte) (bArr2[i13] ^ ((byte) i12));
            iArr5[i11 + i10] = i12;
            i10++;
        }
        int i14 = 0;
        while (i14 < this.r * 2) {
            recomputeSyndrome(bArr, i14, iArr, iArr2, iArr5[i14] == 1);
            i14++;
            iArr2 = iArr2;
            iArr = iArr;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v6 */
    /* JADX WARN: Type inference failed for: r2v7, types: [boolean] */
    /* JADX WARN: Type inference failed for: r2v8 */
    /* JADX WARN: Type inference failed for: r4v0 */
    /* JADX WARN: Type inference failed for: r4v1, types: [boolean] */
    /* JADX WARN: Type inference failed for: r4v2 */
    private void BFMaskedIter(byte[] bArr, byte[] bArr2, byte[] bArr3, int i2, int[] iArr, int[] iArr2, int[] iArr3, int[] iArr4) {
        int[] iArr5 = new int[this.r * 2];
        int i3 = 0;
        while (true) {
            if (i3 >= this.r) {
                break;
            }
            if (bArr3[i3] == 1) {
                ?? r4 = ctr(iArr3, bArr, i3) < i2 ? 0 : 1;
                updateNewErrorIndex(bArr2, i3, r4);
                iArr5[i3] = r4;
            }
            i3++;
        }
        int i4 = 0;
        while (true) {
            int i5 = this.r;
            if (i4 >= i5) {
                break;
            }
            if (bArr3[i5 + i4] == 1) {
                ?? r2 = ctr(iArr4, bArr, i4) >= i2 ? 1 : 0;
                updateNewErrorIndex(bArr2, this.r + i4, r2);
                iArr5[this.r + i4] = r2;
            }
            i4++;
        }
        int i6 = 0;
        while (i6 < this.r * 2) {
            int[] iArr6 = iArr2;
            recomputeSyndrome(bArr, i6, iArr, iArr6, iArr5[i6] == 1);
            i6++;
            iArr = iArr;
            iArr2 = iArr6;
        }
    }

    private byte[] BGFDecoder(byte[] bArr, int[] iArr, int[] iArr2) {
        byte[] bArr2 = new byte[this.r * 2];
        int[] columnFromCompactVersion = getColumnFromCompactVersion(iArr);
        int[] columnFromCompactVersion2 = getColumnFromCompactVersion(iArr2);
        int i2 = this.r;
        byte[] bArr3 = new byte[i2 * 2];
        byte[] bArr4 = new byte[i2];
        byte[] bArr5 = new byte[i2 * 2];
        BFIter(bArr, bArr2, threshold(BIKEUtils.getHammingWeight(bArr), this.r), iArr, iArr2, columnFromCompactVersion, columnFromCompactVersion2, bArr3, bArr5, bArr4);
        BFMaskedIter(bArr, bArr2, bArr3, ((this.hw + 1) / 2) + 1, iArr, iArr2, columnFromCompactVersion, columnFromCompactVersion2);
        BFMaskedIter(bArr, bArr2, bArr5, ((this.hw + 1) / 2) + 1, iArr, iArr2, columnFromCompactVersion, columnFromCompactVersion2);
        for (int i3 = 1; i3 < this.nbIter; i3++) {
            Arrays.fill(bArr3, (byte) 0);
            BFIter2(bArr, bArr2, threshold(BIKEUtils.getHammingWeight(bArr), this.r), iArr, iArr2, columnFromCompactVersion, columnFromCompactVersion2, bArr4);
        }
        if (BIKEUtils.getHammingWeight(bArr) == 0) {
            return bArr2;
        }
        return null;
    }

    private byte[] computeSyndrome(byte[] bArr, byte[] bArr2) {
        long[] jArrCreate = this.bikeRing.create();
        long[] jArrCreate2 = this.bikeRing.create();
        this.bikeRing.decodeBytes(bArr, jArrCreate);
        this.bikeRing.decodeBytes(bArr2, jArrCreate2);
        this.bikeRing.multiply(jArrCreate, jArrCreate2, jArrCreate);
        return this.bikeRing.encodeBitsTransposed(jArrCreate);
    }

    private void convertToCompact(int[] iArr, byte[] bArr) {
        int i2;
        int i3 = 0;
        for (int i4 = 0; i4 < this.R_BYTE; i4++) {
            for (int i5 = 0; i5 < 8 && (i2 = (i4 * 8) + i5) != this.r; i5++) {
                int i6 = (bArr[i4] >> i5) & 1;
                int i7 = -i6;
                iArr[i3] = (i2 & i7) | ((~i7) & iArr[i3]);
                i3 = (i3 + i6) % this.hw;
            }
        }
    }

    private int ctr(int[] iArr, byte[] bArr, int i2) {
        int i3 = this.hw - 4;
        int i4 = 0;
        int i5 = 0;
        while (i4 <= i3) {
            int i6 = iArr[i4] + i2;
            int i7 = this.r;
            int i8 = i6 - i7;
            int i9 = (iArr[i4 + 1] + i2) - i7;
            int i10 = (iArr[i4 + 2] + i2) - i7;
            int i11 = (iArr[i4 + 3] + i2) - i7;
            i5 = i5 + (bArr[i8 + ((i8 >> 31) & i7)] & 255) + (bArr[i9 + ((i9 >> 31) & i7)] & 255) + (bArr[i10 + ((i10 >> 31) & i7)] & 255) + (bArr[i11 + (i7 & (i11 >> 31))] & 255);
            i4 += 4;
        }
        while (i4 < this.hw) {
            int i12 = iArr[i4] + i2;
            int i13 = this.r;
            int i14 = i12 - i13;
            i5 += bArr[i14 + (i13 & (i14 >> 31))] & 255;
            i4++;
        }
        return i5;
    }

    private void ctrAll(int[] iArr, byte[] bArr, byte[] bArr2) {
        int i2 = iArr[0];
        int i3 = this.r - i2;
        System.arraycopy(bArr, i2, bArr2, 0, i3);
        System.arraycopy(bArr, 0, bArr2, i3, i2);
        for (int i4 = 1; i4 < this.hw; i4++) {
            int i5 = iArr[i4];
            int i6 = this.r - i5;
            int i7 = i6 - 4;
            int i8 = 0;
            while (i8 <= i7) {
                int i9 = i5 + i8;
                bArr2[i8] = (byte) (bArr2[i8] + (bArr[i9] & 255));
                int i10 = i8 + 1;
                bArr2[i10] = (byte) (bArr2[i10] + (bArr[i9 + 1] & 255));
                int i11 = i8 + 2;
                bArr2[i11] = (byte) (bArr2[i11] + (bArr[i9 + 2] & 255));
                int i12 = i8 + 3;
                bArr2[i12] = (byte) (bArr2[i12] + (bArr[i9 + 3] & 255));
                i8 += 4;
            }
            while (i8 < i6) {
                bArr2[i8] = (byte) (bArr2[i8] + (bArr[i5 + i8] & 255));
                i8++;
            }
            int i13 = this.r - 4;
            int i14 = i6;
            while (i14 <= i13) {
                bArr2[i14] = (byte) (bArr2[i14] + (bArr[i14 - i6] & 255));
                int i15 = i14 + 1;
                bArr2[i15] = (byte) (bArr2[i15] + (bArr[i15 - i6] & 255));
                int i16 = i14 + 2;
                bArr2[i16] = (byte) (bArr2[i16] + (bArr[i16 - i6] & 255));
                int i17 = i14 + 3;
                bArr2[i17] = (byte) (bArr2[i17] + (bArr[i17 - i6] & 255));
                i14 += 4;
            }
            while (i14 < this.r) {
                bArr2[i14] = (byte) (bArr2[i14] + (bArr[i14 - i6] & 255));
                i14++;
            }
        }
    }

    private byte[] functionH(byte[] bArr) {
        byte[] bArr2 = new byte[this.R_BYTE * 2];
        SHAKEDigest sHAKEDigest = new SHAKEDigest(256);
        sHAKEDigest.update(bArr, 0, bArr.length);
        BIKEUtils.generateRandomByteArray(bArr2, this.r * 2, this.t, sHAKEDigest);
        return bArr2;
    }

    private void functionK(byte[] bArr, byte[] bArr2, byte[] bArr3, byte[] bArr4) {
        byte[] bArr5 = new byte[48];
        SHA3Digest sHA3Digest = new SHA3Digest(KyberEngine.KyberPolyBytes);
        sHA3Digest.update(bArr, 0, bArr.length);
        sHA3Digest.update(bArr2, 0, bArr2.length);
        sHA3Digest.update(bArr3, 0, bArr3.length);
        sHA3Digest.doFinal(bArr5, 0);
        System.arraycopy(bArr5, 0, bArr4, 0, this.L_BYTE);
    }

    private void functionL(byte[] bArr, byte[] bArr2, byte[] bArr3) {
        byte[] bArr4 = new byte[48];
        SHA3Digest sHA3Digest = new SHA3Digest(KyberEngine.KyberPolyBytes);
        sHA3Digest.update(bArr, 0, bArr.length);
        sHA3Digest.update(bArr2, 0, bArr2.length);
        sHA3Digest.doFinal(bArr4, 0);
        System.arraycopy(bArr4, 0, bArr3, 0, this.L_BYTE);
    }

    private int[] getColumnFromCompactVersion(int[] iArr) {
        int[] iArr2 = new int[this.hw];
        int i2 = 0;
        if (iArr[0] != 0) {
            while (true) {
                int i3 = this.hw;
                if (i2 >= i3) {
                    break;
                }
                iArr2[i2] = this.r - iArr[(i3 - 1) - i2];
                i2++;
            }
        } else {
            iArr2[0] = 0;
            int i4 = 1;
            while (true) {
                int i5 = this.hw;
                if (i4 >= i5) {
                    break;
                }
                iArr2[i4] = this.r - iArr[i5 - i4];
                i4++;
            }
        }
        return iArr2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void recomputeSyndrome(byte[] bArr, int i2, int[] iArr, int[] iArr2, boolean z) {
        int i3 = 0;
        if (i2 < this.r) {
            while (i3 < this.hw) {
                int i4 = iArr[i3];
                if (i4 <= i2) {
                    int i5 = i2 - i4;
                    bArr[i5] = bArr[i5] ^ (z ? 1 : 0) ? (byte) 1 : (byte) 0;
                } else {
                    int i6 = (this.r + i2) - i4;
                    bArr[i6] = bArr[i6] ^ (z ? 1 : 0) ? (byte) 1 : (byte) 0;
                }
                i3++;
            }
            return;
        }
        while (i3 < this.hw) {
            int i7 = iArr2[i3];
            int i8 = this.r;
            if (i7 <= i2 - i8) {
                int i9 = (i2 - i8) - i7;
                bArr[i9] = bArr[i9] ^ (z ? 1 : 0) ? (byte) 1 : (byte) 0;
            } else {
                int i10 = (i2 - i8) + (i8 - i7);
                bArr[i10] = bArr[i10] ^ (z ? 1 : 0) ? (byte) 1 : (byte) 0;
            }
            i3++;
        }
    }

    private void splitEBytes(byte[] bArr, byte[] bArr2, byte[] bArr3) {
        int i2 = this.r & 7;
        int i3 = 0;
        System.arraycopy(bArr, 0, bArr2, 0, this.R_BYTE - 1);
        int i4 = this.R_BYTE;
        byte b2 = bArr[i4 - 1];
        byte b3 = (byte) ((-1) << i2);
        bArr2[i4 - 1] = (byte) ((~b3) & b2);
        byte b4 = (byte) (b2 & b3);
        while (true) {
            int i5 = this.R_BYTE;
            if (i3 >= i5) {
                return;
            }
            byte b5 = bArr[i5 + i3];
            bArr3[i3] = (byte) (((b4 & 255) >>> i2) | (b5 << (8 - i2)));
            i3++;
            b4 = b5;
        }
    }

    private int threshold(int i2, int i3) {
        if (i3 == 12323) {
            return thresholdFromParameters(i2, 0.0069722d, 13.53d, 36);
        }
        if (i3 == 24659) {
            return thresholdFromParameters(i2, 0.005265d, 15.2588d, 52);
        }
        if (i3 == 40973) {
            return thresholdFromParameters(i2, 0.00402312d, 17.8785d, 69);
        }
        ct0.c();
        return 0;
    }

    private static int thresholdFromParameters(int i2, double d, double d2, int i3) {
        return Math.max(i3, (int) Math.floor((d * ((double) i2)) + d2));
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void updateNewErrorIndex(byte[] bArr, int i2, boolean z) {
        int i3;
        if (i2 != 0 && i2 != (i3 = this.r)) {
            i2 = i2 > i3 ? ((i3 * 2) - i2) + i3 : i3 - i2;
        }
        bArr[i2] = bArr[i2] ^ (z ? 1 : 0) ? (byte) 1 : (byte) 0;
    }

    public void decaps(byte[] bArr, byte[] bArr2, byte[] bArr3, byte[] bArr4, byte[] bArr5, byte[] bArr6) {
        int i2 = this.hw;
        int[] iArr = new int[i2];
        int[] iArr2 = new int[i2];
        convertToCompact(iArr, bArr2);
        convertToCompact(iArr2, bArr3);
        byte[] bArrBGFDecoder = BGFDecoder(computeSyndrome(bArr5, bArr2), iArr, iArr2);
        byte[] bArr7 = new byte[this.R_BYTE * 2];
        BIKEUtils.fromBitArrayToByteArray(bArr7, bArrBGFDecoder, 0, this.r * 2);
        int i3 = this.R_BYTE;
        byte[] bArr8 = new byte[i3];
        byte[] bArr9 = new byte[i3];
        splitEBytes(bArr7, bArr8, bArr9);
        byte[] bArr10 = new byte[this.L_BYTE];
        functionL(bArr8, bArr9, bArr10);
        Bytes.xorTo(this.L_BYTE, bArr6, bArr10);
        byte[] bArrFunctionH = functionH(bArr10);
        int i4 = this.R2_BYTE;
        if (Arrays.areEqual(bArr7, 0, i4, bArrFunctionH, 0, i4)) {
            functionK(bArr10, bArr5, bArr6, bArr);
        } else {
            functionK(bArr4, bArr5, bArr6, bArr);
        }
    }

    public void encaps(byte[] bArr, byte[] bArr2, byte[] bArr3, byte[] bArr4, SecureRandom secureRandom) {
        byte[] bArr5 = new byte[this.L_BYTE];
        secureRandom.nextBytes(bArr5);
        byte[] bArrFunctionH = functionH(bArr5);
        int i2 = this.R_BYTE;
        byte[] bArr6 = new byte[i2];
        byte[] bArr7 = new byte[i2];
        splitEBytes(bArrFunctionH, bArr6, bArr7);
        long[] jArrCreate = this.bikeRing.create();
        long[] jArrCreate2 = this.bikeRing.create();
        this.bikeRing.decodeBytes(bArr6, jArrCreate);
        this.bikeRing.decodeBytes(bArr7, jArrCreate2);
        long[] jArrCreate3 = this.bikeRing.create();
        this.bikeRing.decodeBytes(bArr4, jArrCreate3);
        this.bikeRing.multiply(jArrCreate3, jArrCreate2, jArrCreate3);
        this.bikeRing.add(jArrCreate3, jArrCreate, jArrCreate3);
        this.bikeRing.encodeBytes(jArrCreate3, bArr);
        functionL(bArr6, bArr7, bArr2);
        Bytes.xorTo(this.L_BYTE, bArr5, bArr2);
        functionK(bArr5, bArr, bArr2, bArr3);
    }

    public void genKeyPair(byte[] bArr, byte[] bArr2, byte[] bArr3, byte[] bArr4, SecureRandom secureRandom) {
        byte[] bArr5 = new byte[64];
        secureRandom.nextBytes(bArr5);
        SHAKEDigest sHAKEDigest = new SHAKEDigest(256);
        sHAKEDigest.update(bArr5, 0, this.L_BYTE);
        BIKEUtils.generateRandomByteArray(bArr, this.r, this.hw, sHAKEDigest);
        BIKEUtils.generateRandomByteArray(bArr2, this.r, this.hw, sHAKEDigest);
        long[] jArrCreate = this.bikeRing.create();
        long[] jArrCreate2 = this.bikeRing.create();
        this.bikeRing.decodeBytes(bArr, jArrCreate);
        this.bikeRing.decodeBytes(bArr2, jArrCreate2);
        long[] jArrCreate3 = this.bikeRing.create();
        this.bikeRing.inv(jArrCreate, jArrCreate3);
        this.bikeRing.multiply(jArrCreate3, jArrCreate2, jArrCreate3);
        this.bikeRing.encodeBytes(jArrCreate3, bArr4);
        System.arraycopy(bArr5, this.L_BYTE, bArr3, 0, bArr3.length);
    }

    public int getSessionKeySize() {
        return this.L_BYTE;
    }
}
