package org.bouncycastle.pqc.crypto.hqc;

import org.bouncycastle.util.Arrays;

/* JADX INFO: loaded from: classes5.dex */
class ReedMuller {

    public static class Codeword {
        int[] type32 = new int[4];
        int[] type8 = new int[16];
    }

    private static int Bit0Mask(int i2) {
        return -(i2 & 1);
    }

    public static void decode(byte[] bArr, long[] jArr, int i2, int i3) {
        byte[] bArrClone = Arrays.clone(bArr);
        int length = jArr.length / 2;
        Codeword[] codewordArr = new Codeword[length];
        int[] iArr = new int[jArr.length * 2];
        Utils.fromLongArrayToByte32Array(iArr, jArr);
        for (int i4 = 0; i4 < length; i4++) {
            codewordArr[i4] = new Codeword();
            for (int i5 = 0; i5 < 4; i5++) {
                codewordArr[i4].type32[i5] = iArr[(i4 * 4) + i5];
            }
        }
        int[] iArr2 = new int[128];
        for (int i6 = 0; i6 < i2; i6++) {
            expandThenSum(iArr2, codewordArr, i6 * i3, i3);
            int[] iArr3 = new int[128];
            hadamardTransform(iArr2, iArr3);
            iArr3[0] = iArr3[0] - (i3 * 64);
            bArrClone[i6] = (byte) findPeaks(iArr3);
        }
        int[] iArr4 = new int[length * 4];
        int i7 = 0;
        for (int i8 = 0; i8 < length; i8++) {
            int[] iArr5 = codewordArr[i8].type32;
            System.arraycopy(iArr5, 0, iArr4, i7, iArr5.length);
            i7 += 4;
        }
        Utils.fromByte32ArrayToLongArray(jArr, iArr4);
        System.arraycopy(bArrClone, 0, bArr, 0, bArr.length);
    }

    public static void encode(long[] jArr, byte[] bArr, int i2, int i3) {
        byte[] bArrClone = Arrays.clone(bArr);
        int i4 = i2 * i3;
        Codeword[] codewordArr = new Codeword[i4];
        for (int i5 = 0; i5 < i4; i5++) {
            codewordArr[i5] = new Codeword();
        }
        for (int i6 = 0; i6 < i2; i6++) {
            int i7 = i6 * i3;
            encodeSub(codewordArr[i7], bArrClone[i6]);
            for (int i8 = 1; i8 < i3; i8++) {
                codewordArr[i7 + i8] = codewordArr[i7];
            }
        }
        int[] iArr = new int[i4 * 4];
        int i9 = 0;
        for (int i10 = 0; i10 < i4; i10++) {
            int[] iArr2 = codewordArr[i10].type32;
            System.arraycopy(iArr2, 0, iArr, i9, iArr2.length);
            i9 += 4;
        }
        Utils.fromByte32ArrayToLongArray(jArr, iArr);
    }

    public static void encodeSub(Codeword codeword, int i2) {
        int iBit0Mask = ((((Bit0Mask(i2 >> 7) ^ (Bit0Mask(i2) & (-1431655766))) ^ (Bit0Mask(i2 >> 1) & (-858993460))) ^ (Bit0Mask(i2 >> 2) & (-252645136))) ^ (Bit0Mask(i2 >> 3) & (-16711936))) ^ (Bit0Mask(i2 >> 4) & (-65536));
        codeword.type32[0] = iBit0Mask;
        int i3 = i2 >> 5;
        int iBit0Mask2 = iBit0Mask ^ Bit0Mask(i3);
        codeword.type32[1] = iBit0Mask2;
        int iBit0Mask3 = Bit0Mask(i2 >> 6) ^ iBit0Mask2;
        codeword.type32[3] = iBit0Mask3;
        codeword.type32[2] = iBit0Mask3 ^ Bit0Mask(i3);
    }

    private static void expandThenSum(int[] iArr, Codeword[] codewordArr, int i2, int i3) {
        for (int i4 = 0; i4 < 4; i4++) {
            for (int i5 = 0; i5 < 32; i5++) {
                iArr[(i4 * 32) + i5] = (codewordArr[i2].type32[i4] >> i5) & 1;
            }
        }
        for (int i6 = 1; i6 < i3; i6++) {
            for (int i7 = 0; i7 < 4; i7++) {
                for (int i8 = 0; i8 < 32; i8++) {
                    int i9 = (i7 * 32) + i8;
                    iArr[i9] = iArr[i9] + ((codewordArr[i6 + i2].type32[i7] >> i8) & 1);
                }
            }
        }
    }

    private static int findPeaks(int[] iArr) {
        int i2 = 0;
        int i3 = 0;
        int i4 = 0;
        for (int i5 = 0; i5 < 128; i5++) {
            int i6 = iArr[i5];
            int i7 = i6 > 0 ? -1 : 0;
            int i8 = ((~i7) & (-i6)) | (i7 & i6);
            if (i8 > i4) {
                i2 = i6;
            }
            if (i8 > i4) {
                i3 = i5;
            }
            if (i8 > i4) {
                i4 = i8;
            }
        }
        return i3 | ((i2 > 0 ? 1 : 0) * 128);
    }

    private static void hadamardTransform(int[] iArr, int[] iArr2) {
        int[] iArrClone = Arrays.clone(iArr);
        int[] iArrClone2 = Arrays.clone(iArr2);
        int i2 = 0;
        while (i2 < 7) {
            for (int i3 = 0; i3 < 64; i3++) {
                int i4 = i3 * 2;
                int i5 = i4 + 1;
                iArrClone2[i3] = iArrClone[i4] + iArrClone[i5];
                iArrClone2[i3 + 64] = iArrClone[i4] - iArrClone[i5];
            }
            i2++;
            int[] iArr3 = iArrClone;
            iArrClone = iArrClone2;
            iArrClone2 = iArr3;
        }
        System.arraycopy(iArrClone2, 0, iArr, 0, iArr.length);
        System.arraycopy(iArrClone, 0, iArr2, 0, iArr2.length);
    }
}
