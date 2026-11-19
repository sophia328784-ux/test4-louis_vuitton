package org.teleal.common.util;

/* JADX INFO: loaded from: classes5.dex */
public final class HexBin {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final byte[] f78644a = new byte[255];

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final byte[] f78645b = new byte[16];

    static {
        int i2;
        int i3 = 0;
        for (int i4 = 0; i4 < 255; i4++) {
            f78644a[i4] = -1;
        }
        for (int i5 = 57; i5 >= 48; i5--) {
            f78644a[i5] = (byte) (i5 - 48);
        }
        for (int i6 = 70; i6 >= 65; i6--) {
            f78644a[i6] = (byte) (i6 - 55);
        }
        for (int i7 = 102; i7 >= 97; i7--) {
            f78644a[i7] = (byte) (i7 - 87);
        }
        while (true) {
            if (i3 >= 10) {
                break;
            }
            f78645b[i3] = (byte) (i3 + 48);
            i3++;
        }
        for (i2 = 10; i2 <= 15; i2++) {
            f78645b[i2] = (byte) (i2 + 55);
        }
    }

    public static byte[] a(byte[] bArr) {
        byte b2;
        if (bArr != null) {
            int length = bArr.length;
            if (length % 2 == 0) {
                int i2 = length / 2;
                byte[] bArr2 = new byte[i2];
                for (int i3 = 0; i3 < i2; i3++) {
                    int i4 = i3 * 2;
                    byte b3 = bArr[i4];
                    byte[] bArr3 = f78644a;
                    byte b4 = bArr3[b3];
                    if (b4 == -1 || (b2 = bArr3[bArr[i4 + 1]]) == -1) {
                        return null;
                    }
                    bArr2[i3] = (byte) (b2 | (b4 << 4));
                }
                return bArr2;
            }
        }
        return null;
    }

    public static byte[] b(byte[] bArr) {
        if (bArr == null) {
            return null;
        }
        int length = bArr.length;
        byte[] bArr2 = new byte[length * 2];
        for (int i2 = 0; i2 < length; i2++) {
            int i3 = i2 * 2;
            int i4 = (bArr[i2] >> 4) & 15;
            byte[] bArr3 = f78645b;
            bArr2[i3] = bArr3[i4];
            bArr2[i3 + 1] = bArr3[bArr[i2] & 15];
        }
        return bArr2;
    }
}
