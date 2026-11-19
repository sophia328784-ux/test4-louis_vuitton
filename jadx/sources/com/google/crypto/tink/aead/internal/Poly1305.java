package com.google.crypto.tink.aead.internal;

import defpackage.md;
import java.util.Arrays;
import org.bouncycastle.asn1.cmc.BodyPartID;

/* JADX INFO: loaded from: classes2.dex */
public abstract class Poly1305 {
    public static byte[] a(byte[] bArr, byte[] bArr2) {
        if (bArr.length != 32) {
            md.n("The key length in bytes must be 32.");
            return null;
        }
        long jB = b(0, bArr) & 67108863;
        int i2 = 3;
        long jB2 = (b(3, bArr) >> 2) & 67108611;
        long jB3 = (b(6, bArr) >> 4) & 67092735;
        long jB4 = (b(9, bArr) >> 6) & 66076671;
        long jB5 = (b(12, bArr) >> 8) & 1048575;
        long j2 = jB2 * 5;
        long j3 = jB3 * 5;
        long j4 = jB4 * 5;
        long j5 = jB5 * 5;
        byte[] bArr3 = new byte[17];
        long j6 = 0;
        long j7 = 0;
        long j8 = 0;
        long j9 = 0;
        long j10 = 0;
        int i3 = 0;
        while (i3 < bArr2.length) {
            int iMin = Math.min(16, bArr2.length - i3);
            System.arraycopy(bArr2, i3, bArr3, 0, iMin);
            bArr3[iMin] = 1;
            if (iMin != 16) {
                Arrays.fill(bArr3, iMin + 1, 17, (byte) 0);
            }
            long jB6 = j10 + (b(0, bArr3) & 67108863);
            long jB7 = j6 + ((b(i2, bArr3) >> 2) & 67108863);
            long jB8 = j7 + ((b(6, bArr3) >> 4) & 67108863);
            long jB9 = j8 + ((b(9, bArr3) >> 6) & 67108863);
            long j11 = jB2;
            long jB10 = j9 + (((b(12, bArr3) >> 8) & 67108863) | ((long) (bArr3[16] << 24)));
            long j12 = (jB10 * j2) + (jB9 * j3) + (jB8 * j4) + (jB7 * j5) + (jB6 * jB);
            long j13 = (jB10 * j3) + (jB9 * j4) + (jB8 * j5) + (jB7 * jB) + (jB6 * j11);
            long j14 = (jB10 * j4) + (jB9 * j5) + (jB8 * jB) + (jB7 * j11) + (jB6 * jB3);
            long j15 = (jB10 * j5) + (jB9 * jB) + (jB8 * j11) + (jB7 * jB3) + (jB6 * jB4);
            long j16 = jB9 * j11;
            long j17 = jB10 * jB;
            long j18 = j13 + (j12 >> 26);
            long j19 = j14 + (j18 >> 26);
            long j20 = j15 + (j19 >> 26);
            long j21 = j17 + j16 + (jB8 * jB3) + (jB7 * jB4) + (jB6 * jB5) + (j20 >> 26);
            long j22 = j21 >> 26;
            j9 = j21 & 67108863;
            long j23 = (j22 * 5) + (j12 & 67108863);
            i3 += 16;
            j7 = j19 & 67108863;
            j8 = j20 & 67108863;
            j10 = j23 & 67108863;
            j6 = (j18 & 67108863) + (j23 >> 26);
            jB2 = j11;
            i2 = 3;
        }
        long j24 = j7 + (j6 >> 26);
        long j25 = j24 & 67108863;
        long j26 = j8 + (j24 >> 26);
        long j27 = j26 & 67108863;
        long j28 = j9 + (j26 >> 26);
        long j29 = j28 & 67108863;
        long j30 = ((j28 >> 26) * 5) + j10;
        long j31 = j30 >> 26;
        long j32 = j30 & 67108863;
        long j33 = (j6 & 67108863) + j31;
        long j34 = j32 + 5;
        long j35 = j34 & 67108863;
        long j36 = j33 + (j34 >> 26);
        long j37 = j25 + (j36 >> 26);
        long j38 = j27 + (j37 >> 26);
        long j39 = j38 & 67108863;
        long j40 = (j29 + (j38 >> 26)) - 67108864;
        long j41 = j40 >> 63;
        long j42 = j32 & j41;
        long j43 = j33 & j41;
        long j44 = j25 & j41;
        long j45 = j27 & j41;
        long j46 = j29 & j41;
        long j47 = ~j41;
        long j48 = j43 | (j36 & 67108863 & j47);
        long j49 = j44 | (j37 & 67108863 & j47);
        long j50 = j45 | (j39 & j47);
        long j51 = (j42 | (j35 & j47) | (j48 << 26)) & BodyPartID.bodyIdMax;
        long j52 = ((j48 >> 6) | (j49 << 20)) & BodyPartID.bodyIdMax;
        long j53 = ((j49 >> 12) | (j50 << 14)) & BodyPartID.bodyIdMax;
        long j54 = ((j50 >> 18) | ((j46 | (j40 & j47)) << 8)) & BodyPartID.bodyIdMax;
        long jB11 = b(16, bArr) + j51;
        long j55 = jB11 & BodyPartID.bodyIdMax;
        long jB12 = b(20, bArr) + j52 + (jB11 >> 32);
        long j56 = jB12 & BodyPartID.bodyIdMax;
        long jB13 = b(24, bArr) + j53 + (jB12 >> 32);
        long j57 = jB13 & BodyPartID.bodyIdMax;
        long jB14 = (b(28, bArr) + j54 + (jB13 >> 32)) & BodyPartID.bodyIdMax;
        byte[] bArr4 = new byte[16];
        c(j55, 0, bArr4);
        c(j56, 4, bArr4);
        c(j57, 8, bArr4);
        c(jB14, 12, bArr4);
        return bArr4;
    }

    public static long b(int i2, byte[] bArr) {
        return ((long) (((bArr[i2 + 3] & 255) << 24) | (bArr[i2] & 255) | ((bArr[i2 + 1] & 255) << 8) | ((bArr[i2 + 2] & 255) << 16))) & BodyPartID.bodyIdMax;
    }

    public static void c(long j2, int i2, byte[] bArr) {
        int i3 = 0;
        while (i3 < 4) {
            bArr[i2 + i3] = (byte) (255 & j2);
            i3++;
            j2 >>= 8;
        }
    }
}
