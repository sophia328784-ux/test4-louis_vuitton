package org.bouncycastle.pqc.crypto.cmce;

import org.bouncycastle.math.raw.Interleave;

/* JADX INFO: loaded from: classes5.dex */
final class GF13 extends GF {
    private int gf_mul_ext_par(short s, short s2, short s3, short s4) {
        int i2 = (s2 & 1) * s;
        int i3 = (s4 & 1) * s3;
        for (int i4 = 1; i4 < 13; i4++) {
            int i5 = 1 << i4;
            i2 ^= (s2 & i5) * s;
            i3 ^= (i5 & s4) * s3;
        }
        return i2 ^ i3;
    }

    private short gf_sq2(short s) {
        return gf_reduce(Interleave.expand16to32(gf_reduce(Interleave.expand16to32(s))));
    }

    private short gf_sq2mul(short s, short s2) {
        long j2 = s;
        long j3 = s2;
        long j4 = (j3 << 18) * (64 & j2);
        long j5 = j2 ^ (j2 << 21);
        long j6 = ((j3 << 15) * (j5 & 8589934624L)) ^ (((((j4 ^ ((268435457 & j5) * j3)) ^ ((j3 << 3) * (536870914 & j5))) ^ ((j3 << 6) * (1073741828 & j5))) ^ ((j3 << 9) * (2147483656L & j5))) ^ ((j3 << 12) * (4294967312L & j5)));
        long j7 = 2305834213120671744L & j6;
        long j8 = j6 ^ ((j7 >>> 26) ^ (((j7 >>> 18) ^ (j7 >>> 20)) ^ (j7 >>> 24)));
        long j9 = 8796025913344L & j8;
        return gf_reduce(((int) (j8 ^ ((j9 >>> 26) ^ (((j9 >>> 18) ^ (j9 >>> 20)) ^ (j9 >>> 24))))) & 67108863);
    }

    private short gf_sqmul(short s, short s2) {
        long j2 = s;
        long j3 = s2;
        long j4 = (j3 << 6) * (64 & j2);
        long j5 = j2 ^ (j2 << 7);
        long j6 = ((j3 << 5) * (j5 & 524320)) ^ (((((j4 ^ ((16385 & j5) * j3)) ^ ((j3 << 1) * (32770 & j5))) ^ ((j3 << 2) * (65540 & j5))) ^ ((j3 << 3) * (131080 & j5))) ^ ((j3 << 4) * (262160 & j5)));
        long j7 = 137371844608L & j6;
        return gf_reduce(((int) (j6 ^ ((j7 >>> 26) ^ (((j7 >>> 18) ^ (j7 >>> 20)) ^ (j7 >>> 24))))) & 67108863);
    }

    @Override // org.bouncycastle.pqc.crypto.cmce.GF
    public short gf_frac(short s, short s2) {
        short sGf_sqmul = gf_sqmul(s, s);
        short sGf_sq2mul = gf_sq2mul(sGf_sqmul, sGf_sqmul);
        return gf_sqmul(gf_sq2mul(gf_sq2(gf_sq2mul(gf_sq2(sGf_sq2mul), sGf_sq2mul)), sGf_sq2mul), s2);
    }

    @Override // org.bouncycastle.pqc.crypto.cmce.GF
    public short gf_inv(short s) {
        return gf_frac(s, (short) 1);
    }

    @Override // org.bouncycastle.pqc.crypto.cmce.GF
    public short gf_mul(short s, short s2) {
        int i2 = (s2 & 1) * s;
        for (int i3 = 1; i3 < 13; i3++) {
            i2 ^= ((1 << i3) & s2) * s;
        }
        return gf_reduce(i2);
    }

    @Override // org.bouncycastle.pqc.crypto.cmce.GF
    public int gf_mul_ext(short s, short s2) {
        int i2 = (s2 & 1) * s;
        for (int i3 = 1; i3 < 13; i3++) {
            i2 ^= ((1 << i3) & s2) * s;
        }
        return i2;
    }

    @Override // org.bouncycastle.pqc.crypto.cmce.GF
    public void gf_mul_poly(int i2, int[] iArr, short[] sArr, short[] sArr2, short[] sArr3, int[] iArr2) {
        iArr2[0] = gf_mul_ext(sArr2[0], sArr3[0]);
        for (int i3 = 1; i3 < i2; i3++) {
            int i4 = i3 + i3;
            iArr2[i4 - 1] = 0;
            short s = sArr2[i3];
            short s2 = sArr3[i3];
            for (int i5 = 0; i5 < i3; i5++) {
                int i6 = i3 + i5;
                iArr2[i6] = iArr2[i6] ^ gf_mul_ext_par(s, sArr3[i5], sArr2[i5], s2);
            }
            iArr2[i4] = gf_mul_ext(s, s2);
        }
        for (int i7 = (i2 - 1) * 2; i7 >= i2; i7--) {
            int i8 = iArr2[i7];
            for (int i9 : iArr) {
                int i10 = (i7 - i2) + i9;
                iArr2[i10] = iArr2[i10] ^ i8;
            }
        }
        for (int i11 = 0; i11 < i2; i11++) {
            sArr[i11] = gf_reduce(iArr2[i11]);
        }
    }

    @Override // org.bouncycastle.pqc.crypto.cmce.GF
    public short gf_reduce(int i2) {
        int i3 = i2 & 8191;
        int i4 = i2 >>> 13;
        int i5 = ((i4 << 4) ^ (i4 << 3)) ^ (i4 << 1);
        int i6 = i5 >>> 13;
        return (short) ((((i3 ^ i4) ^ i6) ^ (i5 & 8191)) ^ (((i6 << 4) ^ (i6 << 3)) ^ (i6 << 1)));
    }

    @Override // org.bouncycastle.pqc.crypto.cmce.GF
    public short gf_sq(short s) {
        return gf_reduce(Interleave.expand16to32(s));
    }

    @Override // org.bouncycastle.pqc.crypto.cmce.GF
    public int gf_sq_ext(short s) {
        return Interleave.expand16to32(s);
    }

    @Override // org.bouncycastle.pqc.crypto.cmce.GF
    public void gf_sqr_poly(int i2, int[] iArr, short[] sArr, short[] sArr2, int[] iArr2) {
        iArr2[0] = gf_sq_ext(sArr2[0]);
        for (int i3 = 1; i3 < i2; i3++) {
            int i4 = i3 + i3;
            iArr2[i4 - 1] = 0;
            iArr2[i4] = gf_sq_ext(sArr2[i3]);
        }
        for (int i5 = (i2 - 1) * 2; i5 >= i2; i5--) {
            int i6 = iArr2[i5];
            for (int i7 : iArr) {
                int i8 = (i5 - i2) + i7;
                iArr2[i8] = iArr2[i8] ^ i6;
            }
        }
        for (int i9 = 0; i9 < i2; i9++) {
            sArr[i9] = gf_reduce(iArr2[i9]);
        }
    }
}
