package org.bouncycastle.math.ec.rfc8032;

/* JADX INFO: loaded from: classes5.dex */
abstract class Codec {
    public static int decode16(byte[] bArr, int i2) {
        return ((bArr[i2 + 1] & 255) << 8) | (bArr[i2] & 255);
    }

    public static int decode24(byte[] bArr, int i2) {
        return ((bArr[i2 + 2] & 255) << 16) | (bArr[i2] & 255) | ((bArr[i2 + 1] & 255) << 8);
    }

    public static int decode32(byte[] bArr, int i2) {
        return (bArr[i2 + 3] << 24) | (bArr[i2] & 255) | ((bArr[i2 + 1] & 255) << 8) | ((bArr[i2 + 2] & 255) << 16);
    }

    public static void encode24(int i2, byte[] bArr, int i3) {
        bArr[i3] = (byte) i2;
        bArr[i3 + 1] = (byte) (i2 >>> 8);
        bArr[i3 + 2] = (byte) (i2 >>> 16);
    }

    public static void encode32(int i2, byte[] bArr, int i3) {
        bArr[i3] = (byte) i2;
        bArr[i3 + 1] = (byte) (i2 >>> 8);
        bArr[i3 + 2] = (byte) (i2 >>> 16);
        bArr[i3 + 3] = (byte) (i2 >>> 24);
    }

    public static void encode56(long j2, byte[] bArr, int i2) {
        encode32((int) j2, bArr, i2);
        encode24((int) (j2 >>> 32), bArr, i2 + 4);
    }

    public static void encode32(int[] iArr, int i2, int i3, byte[] bArr, int i4) {
        for (int i5 = 0; i5 < i3; i5++) {
            encode32(iArr[i2 + i5], bArr, (i5 * 4) + i4);
        }
    }

    public static void decode32(byte[] bArr, int i2, int[] iArr, int i3, int i4) {
        for (int i5 = 0; i5 < i4; i5++) {
            iArr[i3 + i5] = decode32(bArr, (i5 * 4) + i2);
        }
    }
}
