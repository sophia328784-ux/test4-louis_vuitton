package org.spongycastle.util;

import org.bouncycastle.asn1.cmc.BodyPartID;

/* JADX INFO: loaded from: classes5.dex */
public abstract class Pack {
    public static int a(byte[] bArr, int i2) {
        return (bArr[i2 + 3] & 255) | (bArr[i2] << 24) | ((bArr[i2 + 1] & 255) << 16) | ((bArr[i2 + 2] & 255) << 8);
    }

    public static long b(byte[] bArr, int i2) {
        int iA = a(bArr, i2);
        int iA2 = a(bArr, i2 + 4);
        return (((long) iA2) & BodyPartID.bodyIdMax) | ((((long) iA) & BodyPartID.bodyIdMax) << 32);
    }

    public static void c(int i2, byte[] bArr, int i3) {
        bArr[i3] = (byte) (i2 >>> 24);
        bArr[i3 + 1] = (byte) (i2 >>> 16);
        bArr[i3 + 2] = (byte) (i2 >>> 8);
        bArr[i3 + 3] = (byte) i2;
    }

    public static void d(int i2, byte[] bArr, int i3) {
        bArr[i3] = (byte) i2;
        bArr[i3 + 1] = (byte) (i2 >>> 8);
        bArr[i3 + 2] = (byte) (i2 >>> 16);
        bArr[i3 + 3] = (byte) (i2 >>> 24);
    }

    public static int e(byte[] bArr, int i2) {
        return (bArr[i2 + 3] << 24) | (bArr[i2] & 255) | ((bArr[i2 + 1] & 255) << 8) | ((bArr[i2 + 2] & 255) << 16);
    }

    public static long f(byte[] bArr, int i2) {
        return ((((long) e(bArr, i2 + 4)) & BodyPartID.bodyIdMax) << 32) | (((long) e(bArr, i2)) & BodyPartID.bodyIdMax);
    }

    public static void g(long j2, byte[] bArr, int i2) {
        c((int) (j2 >>> 32), bArr, i2);
        c((int) (j2 & BodyPartID.bodyIdMax), bArr, i2 + 4);
    }
}
