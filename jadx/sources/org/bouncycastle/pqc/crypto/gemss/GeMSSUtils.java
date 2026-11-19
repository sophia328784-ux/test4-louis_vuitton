package org.bouncycastle.pqc.crypto.gemss;

import org.bouncycastle.asn1.cmc.BodyPartID;

/* JADX INFO: loaded from: classes5.dex */
public class GeMSSUtils {
    public static long CMP_LT_UINT(long j2, long j3) {
        long j4 = j2 >>> 63;
        long j5 = j3 >>> 63;
        long j6 = j4 ^ j5;
        return ((((j2 & Long.MAX_VALUE) - (j3 & Long.MAX_VALUE)) >>> 63) & (1 ^ j6)) ^ (((j4 - j5) >>> 63) & j6);
    }

    public static int Highest_One(int i2) {
        int i3 = i2 | (i2 >>> 1);
        int i4 = i3 | (i3 >>> 2);
        int i5 = i4 | (i4 >>> 4);
        int i6 = i5 | (i5 >>> 8);
        int i7 = i6 | (i6 >>> 16);
        return i7 ^ (i7 >>> 1);
    }

    public static long NORBITS_UINT(long j2) {
        return (((j2 | (j2 << 32)) >>> 32) - 1) >>> 63;
    }

    public static long ORBITS_UINT(long j2) {
        return (((j2 | (j2 << 32)) >>> 32) + BodyPartID.bodyIdMax) >>> 32;
    }

    public static long XORBITS_UINT(long j2) {
        long j3 = j2 ^ (j2 << 1);
        return (((j3 ^ (j3 << 2)) & (-8608480567731124088L)) * 1229782938247303441L) >>> 63;
    }

    public static long maskUINT(int i2) {
        if (i2 != 0) {
            return (1 << i2) - 1;
        }
        return -1L;
    }
}
