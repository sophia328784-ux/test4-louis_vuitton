package org.bouncycastle.pqc.crypto.cmce;

import org.bouncycastle.util.Pack;

/* JADX INFO: loaded from: classes5.dex */
class Utils {
    public static short bitrev(short s, int i2) {
        short s2 = (short) (((s & 65280) >> 8) | ((s & 255) << 8));
        short s3 = (short) (((s2 & 61680) >> 4) | ((s2 & 3855) << 4));
        short s4 = (short) (((s3 & 52428) >> 2) | ((s3 & 13107) << 2));
        short s5 = (short) (((s4 & 43690) >> 1) | ((s4 & 21845) << 1));
        return (short) (i2 == 12 ? s5 >> 4 : s5 >> 3);
    }

    public static int load4(byte[] bArr, int i2) {
        return Pack.littleEndianToInt(bArr, i2);
    }

    public static long load8(byte[] bArr, int i2) {
        return Pack.littleEndianToLong(bArr, i2);
    }

    public static short load_gf(byte[] bArr, int i2, int i3) {
        return (short) (Pack.littleEndianToShort(bArr, i2) & i3);
    }

    public static void store8(byte[] bArr, int i2, long j2) {
        bArr[i2] = (byte) (j2 & 255);
        bArr[i2 + 1] = (byte) ((j2 >> 8) & 255);
        bArr[i2 + 2] = (byte) ((j2 >> 16) & 255);
        bArr[i2 + 3] = (byte) ((j2 >> 24) & 255);
        bArr[i2 + 4] = (byte) ((j2 >> 32) & 255);
        bArr[i2 + 5] = (byte) ((j2 >> 40) & 255);
        bArr[i2 + 6] = (byte) ((j2 >> 48) & 255);
        bArr[i2 + 7] = (byte) ((j2 >> 56) & 255);
    }

    public static void store_gf(byte[] bArr, int i2, short s) {
        bArr[i2] = (byte) (s & 255);
        bArr[i2 + 1] = (byte) (s >> 8);
    }
}
