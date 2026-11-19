package org.bouncycastle.math.ec.rfc8032;

/* JADX INFO: loaded from: classes5.dex */
abstract class Wnaf {
    public static void getSignedVar(int[] iArr, int i2, byte[] bArr) {
        int length = iArr.length * 2;
        int[] iArr2 = new int[length];
        int i3 = iArr[iArr.length - 1] >> 31;
        int length2 = iArr.length;
        int i4 = length;
        while (true) {
            length2--;
            if (length2 < 0) {
                break;
            }
            int i5 = iArr[length2];
            iArr2[i4 - 1] = (i3 << 16) | (i5 >>> 16);
            i4 -= 2;
            iArr2[i4] = i5;
            i3 = i5;
        }
        int i6 = 32 - i2;
        int i7 = 0;
        int i8 = 0;
        int i9 = 0;
        while (i7 < length) {
            int i10 = iArr2[i7];
            while (i8 < 16) {
                int i11 = i10 >>> i8;
                if ((i11 & 1) == i9) {
                    i8++;
                } else {
                    int i12 = (i11 | 1) << i6;
                    bArr[(i7 << 4) + i8] = (byte) (i12 >> i6);
                    i8 += i2;
                    i9 = i12 >>> 31;
                }
            }
            i7++;
            i8 -= 16;
        }
    }
}
