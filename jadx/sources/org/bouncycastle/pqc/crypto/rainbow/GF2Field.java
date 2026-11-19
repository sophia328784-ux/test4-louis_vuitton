package org.bouncycastle.pqc.crypto.rainbow;

import java.lang.reflect.Array;
import org.bouncycastle.util.Pack;

/* JADX INFO: loaded from: classes5.dex */
class GF2Field {
    public static final int MASK = 255;
    static final byte[][] gfMulTable = (byte[][]) Array.newInstance((Class<?>) Byte.TYPE, 256, 256);
    static final byte[] gfInvTable = new byte[256];

    static {
        long j2;
        int i2 = 1;
        long j3 = 72340172838076673L;
        while (true) {
            j2 = 506097522914230528L;
            if (i2 > 255) {
                break;
            }
            for (int i3 = 0; i3 < 256; i3 += 8) {
                Pack.longToLittleEndian(gf256Mul_64(j3, j2), gfMulTable[i2], i3);
                j2 += 578721382704613384L;
            }
            j3 += 72340172838076673L;
            i2++;
        }
        for (int i4 = 0; i4 < 256; i4 += 8) {
            Pack.longToLittleEndian(gf256Inv_64(j2), gfInvTable, i4);
            j2 += 578721382704613384L;
        }
    }

    public static short addElem(short s, short s2) {
        return (short) (s ^ s2);
    }

    public static long addElem_64(long j2, long j3) {
        return j2 ^ j3;
    }

    private static short gf16Mul(short s, short s2) {
        short s3 = (short) (s & 3);
        short s4 = (short) ((s >>> 2) & 255);
        short s5 = (short) (s2 & 3);
        short s6 = (short) ((s2 >>> 2) & 255);
        short sGf4Mul = gf4Mul(s3, s5);
        short sGf4Mul2 = gf4Mul(s4, s6);
        return (short) ((((((short) (gf4Mul((short) (s4 ^ s3), (short) (s6 ^ s5)) ^ sGf4Mul)) << 2) ^ sGf4Mul) ^ gf4Mul2(sGf4Mul2)) & 255);
    }

    private static short gf16Mul8(short s) {
        short s2 = (short) (s & 3);
        short s3 = (short) ((s >>> 2) & 255);
        return (short) ((gf4Mul3(s3) | (gf4Mul2((short) (s2 ^ s3)) << 2)) & 255);
    }

    private static long gf16Mul8_64(long j2) {
        long j3 = 3689348814741910323L & j2;
        long j4 = j2 & (-3689348814741910324L);
        long j5 = (j3 << 2) ^ j4;
        long j6 = j4 >>> 2;
        return j6 ^ gf4Mul2_64(j5 ^ j6);
    }

    private static long gf16Mul_64(long j2, long j3) {
        long jGf4Mul_64 = gf4Mul_64(j2, j3);
        long j4 = 3689348814741910323L & jGf4Mul_64;
        return (gf4Mul_64(((j2 ^ (j2 << 2)) & (-3689348814741910324L)) ^ ((jGf4Mul_64 & (-3689348814741910324L)) >>> 2), ((j3 ^ (j3 << 2)) & (-3689348814741910324L)) ^ 2459565876494606882L) ^ (j4 << 2)) ^ j4;
    }

    private static short gf16Squ(short s) {
        short s2 = (short) (s & 3);
        short sGf4Squ = gf4Squ((short) ((s >>> 2) & 255));
        return (short) ((((sGf4Squ << 2) ^ gf4Mul2(sGf4Squ)) ^ gf4Squ(s2)) & 255);
    }

    private static long gf16Squ_64(long j2) {
        long jGf4Squ_64 = gf4Squ_64(j2);
        return jGf4Squ_64 ^ (gf4Mul2_64((-3689348814741910324L) & jGf4Squ_64) >>> 2);
    }

    private static short gf256Inv(short s) {
        short sGf256Squ = gf256Squ(s);
        short sGf256Squ2 = gf256Squ(sGf256Squ);
        short sGf256Mul = gf256Mul(gf256Mul(sGf256Squ2, sGf256Squ), gf256Squ(sGf256Squ2));
        return gf256Mul(sGf256Squ, gf256Squ(gf256Mul(gf256Squ(gf256Squ(gf256Squ(sGf256Mul))), sGf256Mul)));
    }

    private static long gf256Inv_64(long j2) {
        long jGf256Squ_64 = gf256Squ_64(j2);
        long jGf256Squ_65 = gf256Squ_64(jGf256Squ_64);
        long jGf256Mul_64 = gf256Mul_64(gf256Mul_64(jGf256Squ_65, jGf256Squ_64), gf256Squ_64(jGf256Squ_65));
        return gf256Mul_64(jGf256Squ_64, gf256Squ_64(gf256Mul_64(gf256Squ_64(gf256Squ_64(gf256Squ_64(jGf256Mul_64))), jGf256Mul_64)));
    }

    private static short gf256Mul(short s, short s2) {
        short s3 = (short) (s & 15);
        short s4 = (short) ((s >>> 4) & 255);
        short s5 = (short) (s2 & 15);
        short s6 = (short) ((s2 >>> 4) & 255);
        short sGf16Mul = gf16Mul(s3, s5);
        short sGf16Mul2 = gf16Mul(s4, s6);
        return (short) ((((((short) (gf16Mul((short) (s4 ^ s3), (short) (s6 ^ s5)) ^ sGf16Mul)) << 4) ^ sGf16Mul) ^ gf16Mul8(sGf16Mul2)) & 255);
    }

    private static long gf256Mul_64(long j2, long j3) {
        long jGf16Mul_64 = gf16Mul_64(j2, j3);
        long j4 = 1085102592571150095L & jGf16Mul_64;
        return (gf16Mul_64(((j2 ^ (j2 << 4)) & (-1085102592571150096L)) ^ ((jGf16Mul_64 & (-1085102592571150096L)) >>> 4), ((j3 ^ (j3 << 4)) & (-1085102592571150096L)) ^ 578721382704613384L) ^ (j4 << 4)) ^ j4;
    }

    private static short gf256Squ(short s) {
        short s2 = (short) (s & 15);
        short sGf16Squ = gf16Squ((short) ((s >>> 4) & 255));
        return (short) ((((sGf16Squ << 4) ^ gf16Mul8(sGf16Squ)) ^ gf16Squ(s2)) & 255);
    }

    private static long gf256Squ_64(long j2) {
        long jGf16Squ_64 = gf16Squ_64(j2);
        return jGf16Squ_64 ^ (gf16Mul8_64((-1085102592571150096L) & jGf16Squ_64) >>> 4);
    }

    private static short gf4Mul(short s, short s2) {
        return (short) (((gf4Mul2(s) * (s2 >>> 1)) ^ ((s2 & 1) * s)) & 255);
    }

    private static short gf4Mul2(short s) {
        return (short) ((((s >>> 1) * 7) ^ (s << 1)) & 255);
    }

    private static long gf4Mul2_64(long j2) {
        long j3 = 6148914691236517205L & j2;
        long j4 = j2 & (-6148914691236517206L);
        return (j4 >>> 1) ^ ((j3 << 1) ^ j4);
    }

    private static short gf4Mul3(short s) {
        int i2 = (s - 2) >>> 1;
        return (short) ((((s - 1) & (~i2)) | ((s * 3) & i2)) & 255);
    }

    private static long gf4Mul_64(long j2, long j3) {
        long j4 = (((j2 << 1) & j3) ^ ((j3 << 1) & j2)) & (-6148914691236517206L);
        long j5 = j2 & j3;
        return ((j5 & (-6148914691236517206L)) >>> 1) ^ (j5 ^ j4);
    }

    private static short gf4Squ(short s) {
        return (short) ((s ^ (s >>> 1)) & 255);
    }

    private static long gf4Squ_64(long j2) {
        return j2 ^ (((-6148914691236517206L) & j2) >>> 1);
    }

    public static short invElem(short s) {
        return (short) (gfInvTable[s] & 255);
    }

    public static long invElem_64(long j2) {
        return gf256Inv_64(j2);
    }

    public static short multElem(short s, short s2) {
        return (short) (gfMulTable[s][s2] & 255);
    }

    public static long multElem_64(long j2, long j3) {
        return gf256Mul_64(j2, j3);
    }
}
