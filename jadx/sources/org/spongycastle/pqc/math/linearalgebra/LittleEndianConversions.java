package org.spongycastle.pqc.math.linearalgebra;

/* JADX INFO: loaded from: classes5.dex */
public abstract class LittleEndianConversions {
    public static void a(int i2, byte[] bArr, int i3) {
        bArr[i3] = (byte) i2;
        bArr[i3 + 1] = (byte) (i2 >>> 8);
        bArr[i3 + 2] = (byte) (i2 >>> 16);
        bArr[i3 + 3] = (byte) (i2 >>> 24);
    }

    public static int b(byte[] bArr, int i2) {
        int i3 = ((bArr[i2 + 1] & 255) << 8) | (bArr[i2] & 255);
        return ((bArr[i2 + 3] & 255) << 24) | i3 | ((bArr[i2 + 2] & 255) << 16);
    }
}
