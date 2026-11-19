package org.bouncycastle.pqc.crypto.cmce;

import org.bouncycastle.math.raw.Interleave;

/* JADX INFO: loaded from: classes5.dex */
final class GF12 extends GF {
    private int gf_mul_ext_par(short s, short s2, short s3, short s4) {
        int i2 = (s2 & 1) * s;
        int i3 = (s4 & 1) * s3;
        for (int i4 = 1; i4 < 12; i4++) {
            int i5 = 1 << i4;
            i2 ^= (s2 & i5) * s;
            i3 ^= (i5 & s4) * s3;
        }
        return i2 ^ i3;
    }

    @Override // org.bouncycastle.pqc.crypto.cmce.GF
    public short gf_frac(short s, short s2) {
        return gf_mul(gf_inv(s), s2);
    }

    @Override // org.bouncycastle.pqc.crypto.cmce.GF
    public short gf_inv(short s) {
        short sGf_mul = gf_mul(gf_sq(s), s);
        short sGf_mul2 = gf_mul(gf_sq(gf_sq(sGf_mul)), sGf_mul);
        return gf_sq(gf_mul(gf_sq(gf_mul(gf_sq(gf_sq(gf_mul(gf_sq(gf_sq(gf_sq(gf_sq(sGf_mul2)))), sGf_mul2))), sGf_mul)), s));
    }

    @Override // org.bouncycastle.pqc.crypto.cmce.GF
    public short gf_mul(short s, short s2) {
        int i2 = (s2 & 1) * s;
        for (int i3 = 1; i3 < 12; i3++) {
            i2 ^= ((1 << i3) & s2) * s;
        }
        return gf_reduce(i2);
    }

    @Override // org.bouncycastle.pqc.crypto.cmce.GF
    public int gf_mul_ext(short s, short s2) {
        int i2 = (s2 & 1) * s;
        for (int i3 = 1; i3 < 12; i3++) {
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
            for (int i9 = 0; i9 < iArr.length - 1; i9++) {
                int i10 = (i7 - i2) + iArr[i9];
                iArr2[i10] = iArr2[i10] ^ i8;
            }
            int i11 = i7 - i2;
            iArr2[i11] = (i8 << 1) ^ iArr2[i11];
        }
        for (int i12 = 0; i12 < i2; i12++) {
            sArr[i12] = gf_reduce(iArr2[i12]);
        }
    }

    @Override // org.bouncycastle.pqc.crypto.cmce.GF
    public short gf_reduce(int i2) {
        int i3 = (2093056 & i2) >>> 9;
        int i4 = (14680064 & i2) >>> 18;
        return (short) (((((i2 & 4095) ^ (i2 >>> 12)) ^ i3) ^ i4) ^ (i2 >>> 21));
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
            for (int i7 = 0; i7 < iArr.length - 1; i7++) {
                int i8 = (i5 - i2) + iArr[i7];
                iArr2[i8] = iArr2[i8] ^ i6;
            }
            int i9 = i5 - i2;
            iArr2[i9] = (i6 << 1) ^ iArr2[i9];
        }
        for (int i10 = 0; i10 < i2; i10++) {
            sArr[i10] = gf_reduce(iArr2[i10]);
        }
    }
}
