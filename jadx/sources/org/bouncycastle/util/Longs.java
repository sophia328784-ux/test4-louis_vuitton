package org.bouncycastle.util;

/* JADX INFO: loaded from: classes5.dex */
public class Longs {
    public static final int BYTES = 8;
    public static final int SIZE = 64;

    public static long highestOneBit(long j2) {
        return Long.highestOneBit(j2);
    }

    public static long lowestOneBit(long j2) {
        return Long.lowestOneBit(j2);
    }

    public static int numberOfLeadingZeros(long j2) {
        return Long.numberOfLeadingZeros(j2);
    }

    public static int numberOfTrailingZeros(long j2) {
        return Long.numberOfTrailingZeros(j2);
    }

    public static long reverse(long j2) {
        return Long.reverse(j2);
    }

    public static long reverseBytes(long j2) {
        return Long.reverseBytes(j2);
    }

    public static long rotateLeft(long j2, int i2) {
        return Long.rotateLeft(j2, i2);
    }

    public static long rotateRight(long j2, int i2) {
        return Long.rotateRight(j2, i2);
    }

    public static Long valueOf(long j2) {
        return Long.valueOf(j2);
    }
}
