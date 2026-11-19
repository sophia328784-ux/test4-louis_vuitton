package org.bouncycastle.util;

/* JADX INFO: loaded from: classes5.dex */
public class Bytes {
    public static final int BYTES = 1;
    public static final int SIZE = 8;

    public static void xor(int i2, byte[] bArr, int i3, byte[] bArr2, int i4, byte[] bArr3, int i5) {
        for (int i6 = 0; i6 < i2; i6++) {
            bArr3[i5 + i6] = (byte) (bArr[i3 + i6] ^ bArr2[i4 + i6]);
        }
    }

    public static void xorTo(int i2, byte[] bArr, int i3, byte[] bArr2, int i4) {
        for (int i5 = 0; i5 < i2; i5++) {
            int i6 = i4 + i5;
            bArr2[i6] = (byte) (bArr2[i6] ^ bArr[i3 + i5]);
        }
    }

    public static void xorTo(int i2, byte[] bArr, byte[] bArr2) {
        for (int i3 = 0; i3 < i2; i3++) {
            bArr2[i3] = (byte) (bArr2[i3] ^ bArr[i3]);
        }
    }

    public static void xor(int i2, byte[] bArr, byte[] bArr2, byte[] bArr3) {
        for (int i3 = 0; i3 < i2; i3++) {
            bArr3[i3] = (byte) (bArr[i3] ^ bArr2[i3]);
        }
    }
}
