package com.google.android.gms.internal.clearcut;

import com.sightcall.advancedannotations.domain.parser.AnnotationParser;
import defpackage.az;
import defpackage.z81;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import org.bouncycastle.asn1.cmc.BodyPartID;

/* JADX INFO: loaded from: classes2.dex */
public abstract class zzk {
    public static int a(int i2, byte[] bArr) {
        return ((bArr[i2 + 3] & 255) << 24) | (bArr[i2] & 255) | ((bArr[i2 + 1] & 255) << 8) | ((bArr[i2 + 2] & 255) << 16);
    }

    public static long b(long j2, long j3, long j4) {
        long j5 = (j2 ^ j3) * j4;
        long j6 = ((j5 ^ (j5 >>> 47)) ^ j3) * j4;
        return (j6 ^ (j6 >>> 47)) * j4;
    }

    public static long c(byte[] bArr) {
        byte[] bArr2 = bArr;
        int length = bArr2.length;
        if (length < 0 || length > bArr2.length) {
            az.v(z81.f(67, length, "Out of bound index with offput: 0 and length: "));
            return 0L;
        }
        char c2 = '/';
        char c3 = 0;
        if (length <= 32) {
            if (length > 16) {
                long j2 = ((long) (length << 1)) - 7286425919675154353L;
                long jE = e(0, bArr2) * (-5435081209227447693L);
                long jE2 = e(8, bArr2);
                long jE3 = e(length - 8, bArr2) * j2;
                return b(Long.rotateRight(jE3, 30) + Long.rotateRight(jE + jE2, 43) + (e(length - 16, bArr2) * (-7286425919675154353L)), Long.rotateRight(jE2 - 7286425919675154353L, 18) + jE + jE3, j2);
            }
            if (length >= 8) {
                long j3 = ((long) (length << 1)) - 7286425919675154353L;
                long jE4 = e(0, bArr2) - 7286425919675154353L;
                long jE5 = e(length - 8, bArr2);
                return b((Long.rotateRight(jE5, 37) * j3) + jE4, (Long.rotateRight(jE4, 25) + jE5) * j3, j3);
            }
            if (length >= 4) {
                return b(((long) length) + ((((long) a(0, bArr2)) & BodyPartID.bodyIdMax) << 3), ((long) a(length - 4, bArr2)) & BodyPartID.bodyIdMax, ((long) (length << 1)) - 7286425919675154353L);
            }
            if (length <= 0) {
                return -7286425919675154353L;
            }
            long j4 = (((long) (length + ((bArr2[length - 1] & 255) << 2))) * (-4348849565147123417L)) ^ (((long) ((bArr2[0] & 255) + ((bArr2[length >> 1] & 255) << 8))) * (-7286425919675154353L));
            return (j4 ^ (j4 >>> 47)) * (-7286425919675154353L);
        }
        char c4 = AnnotationParser.AnnotationInstruction;
        if (length <= 64) {
            long j5 = ((long) (length << 1)) - 7286425919675154353L;
            long jE6 = e(0, bArr2) * (-7286425919675154353L);
            long jE7 = e(8, bArr2);
            long jE8 = e(length - 8, bArr2) * j5;
            long jRotateRight = Long.rotateRight(jE8, 30) + Long.rotateRight(jE6 + jE7, 43) + (e(length - 16, bArr2) * (-7286425919675154353L));
            long jB = b(jRotateRight, Long.rotateRight(jE7 - 7286425919675154353L, 18) + jE6 + jE8, j5);
            long jE9 = e(16, bArr2) * j5;
            long jE10 = e(24, bArr2);
            long jE11 = (e(length - 32, bArr2) + jRotateRight) * j5;
            return b(Long.rotateRight(jE11, 30) + Long.rotateRight(jE9 + jE10, 43) + ((e(length - 24, bArr2) + jB) * j5), Long.rotateRight(jE10 + jE6, 18) + jE9 + jE11, j5);
        }
        long[] jArr = new long[2];
        long[] jArr2 = new long[2];
        long jE12 = e(0, bArr2) + 95310865018149119L;
        int i2 = length - 1;
        int i3 = (i2 / 64) << 6;
        int i4 = i2 & 63;
        int i5 = i3 + i4;
        int i6 = i5 - 63;
        long j6 = 2480279821605975764L;
        long j7 = 1390051526045402406L;
        int i7 = i4;
        int i8 = 0;
        while (true) {
            char c5 = c3;
            long jRotateRight2 = Long.rotateRight(e(i8 + 8, bArr2) + jE12 + j6 + jArr[c3], 37) * (-5435081209227447693L);
            long jRotateRight3 = Long.rotateRight(e(i8 + 48, bArr2) + j6 + jArr[1], 42) * (-5435081209227447693L);
            long j8 = jRotateRight2 ^ jArr2[1];
            char c6 = c4;
            long jE13 = e(i8 + 40, bArr2) + jArr[c5] + jRotateRight3;
            long jRotateRight4 = Long.rotateRight(j7 + jArr2[c5], 33) * (-5435081209227447693L);
            char c7 = c2;
            int i9 = i7;
            d(bArr2, i8, jArr[1] * (-5435081209227447693L), j8 + jArr2[c5], jArr);
            int i10 = i8;
            long[] jArr3 = jArr;
            d(bArr2, i10 + 32, jRotateRight4 + jArr2[1], e(i10 + 16, bArr2) + jE13, jArr2);
            i8 = i10 + 64;
            if (i8 == i3) {
                long j9 = ((j8 & 255) << 1) - 5435081209227447693L;
                long j10 = jArr2[c5] + ((long) i9);
                jArr2[c5] = j10;
                long j11 = jArr3[c5] + j10;
                jArr3[c5] = j11;
                jArr2[c5] = jArr2[c5] + j11;
                long jRotateRight5 = Long.rotateRight(e(i5 - 55, bArr2) + jRotateRight4 + jE13 + jArr3[c5], 37) * j9;
                long jRotateRight6 = Long.rotateRight(e(i5 - 15, bArr2) + jE13 + jArr3[1], 42) * j9;
                long j12 = jRotateRight5 ^ (jArr2[1] * 9);
                long jE14 = e(i5 - 23, bArr2) + (jArr3[c5] * 9) + jRotateRight6;
                long jRotateRight7 = Long.rotateRight(j8 + jArr2[c5], 33) * j9;
                d(bArr2, i6, jArr3[1] * j9, jArr2[c5] + j12, jArr3);
                d(bArr2, i5 - 31, jRotateRight7 + jArr2[1], e(i5 - 47, bArr2) + jE14, jArr2);
                return b(z81.c(jE14 ^ (jE14 >>> c7), -4348849565147123417L, b(jArr3[c5], jArr2[c5], j9), j12), b(jArr3[1], jArr2[1], j9) + jRotateRight7, j9);
            }
            bArr2 = bArr;
            jE12 = jRotateRight4;
            jArr = jArr3;
            c3 = c5;
            j7 = j8;
            c4 = c6;
            j6 = jE13;
            i7 = i9;
            c2 = c7;
        }
    }

    public static void d(byte[] bArr, int i2, long j2, long j3, long[] jArr) {
        long jE = e(i2, bArr);
        long jE2 = e(i2 + 8, bArr);
        long jE3 = e(i2 + 16, bArr);
        long jE4 = e(i2 + 24, bArr);
        long j4 = j2 + jE;
        long j5 = jE2 + j4 + jE3;
        long jRotateRight = Long.rotateRight(j5, 44) + Long.rotateRight(j3 + j4 + jE4, 21);
        jArr[0] = j5 + jE4;
        jArr[1] = jRotateRight + j4;
    }

    public static long e(int i2, byte[] bArr) {
        ByteBuffer byteBufferWrap = ByteBuffer.wrap(bArr, i2, 8);
        byteBufferWrap.order(ByteOrder.LITTLE_ENDIAN);
        return byteBufferWrap.getLong();
    }
}
