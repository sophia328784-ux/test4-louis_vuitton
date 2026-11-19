package org.spongycastle.crypto.digests;

import defpackage.md;
import org.bouncycastle.asn1.cmc.BodyPartID;
import org.spongycastle.crypto.ExtendedDigest;
import org.spongycastle.util.Pack;

/* JADX INFO: loaded from: classes5.dex */
public class KeccakDigest implements ExtendedDigest {
    public static final long[] g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final int[] f77847h;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final long[] f77848a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final byte[] f77849b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f77850c;
    public int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f77851e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f77852f;

    static {
        long[] jArr = new long[24];
        int i2 = 1;
        int i3 = 0;
        byte[] bArr = {1};
        for (int i4 = 0; i4 < 24; i4++) {
            jArr[i4] = 0;
            for (int i5 = 0; i5 < 7; i5++) {
                int i6 = (1 << i5) - 1;
                byte b2 = bArr[0];
                boolean z = (b2 & 1) != 0;
                if ((b2 & 128) != 0) {
                    bArr[0] = (byte) ((b2 << 1) ^ 113);
                } else {
                    bArr[0] = (byte) (b2 << 1);
                }
                if (z) {
                    jArr[i4] = jArr[i4] ^ (1 << i6);
                }
            }
        }
        g = jArr;
        int[] iArr = new int[25];
        iArr[0] = 0;
        int i7 = 0;
        while (i3 < 24) {
            int i8 = i7 % 5;
            int i9 = i3 + 1;
            iArr[(i8 * 5) + (i2 % 5)] = (((i3 + 2) * i9) / 2) % 64;
            i7 = ((i7 * 3) + (i2 * 2)) % 5;
            i3 = i9;
            i2 = i8;
        }
        f77847h = iArr;
    }

    public KeccakDigest(KeccakDigest keccakDigest) {
        long[] jArr = new long[25];
        this.f77848a = jArr;
        byte[] bArr = new byte[192];
        this.f77849b = bArr;
        long[] jArr2 = keccakDigest.f77848a;
        System.arraycopy(jArr2, 0, jArr, 0, jArr2.length);
        byte[] bArr2 = keccakDigest.f77849b;
        System.arraycopy(bArr2, 0, bArr, 0, bArr2.length);
        this.f77850c = keccakDigest.f77850c;
        this.d = keccakDigest.d;
        this.f77851e = keccakDigest.f77851e;
        this.f77852f = keccakDigest.f77852f;
    }

    public static long g(int i2, long j2) {
        return (j2 >>> (-i2)) | (j2 << i2);
    }

    @Override // org.spongycastle.crypto.Digest
    public final void a(int i2, byte[] bArr) {
        int i3;
        int i4 = this.d;
        if (i4 % 8 != 0) {
            md.k("attempt to absorb with odd length queue");
            return;
        }
        if (this.f77852f) {
            md.k("attempt to absorb while squeezing");
            return;
        }
        int i5 = i4 >> 3;
        int i6 = this.f77850c >> 3;
        int i7 = 0;
        while (i7 < i2) {
            if (i5 != 0 || i7 > (i3 = i2 - i6)) {
                int iMin = Math.min(i6 - i5, i2 - i7);
                byte[] bArr2 = this.f77849b;
                System.arraycopy(bArr, i7, bArr2, i5, iMin);
                i5 += iMin;
                i7 += iMin;
                if (i5 == i6) {
                    c(bArr2, 0);
                    i5 = 0;
                }
            } else {
                do {
                    c(bArr, i7);
                    i7 += i6;
                } while (i7 <= i3);
            }
        }
        this.d = i5 << 3;
    }

    @Override // org.spongycastle.crypto.Digest
    public int b(byte[] bArr) {
        h(this.f77851e, bArr);
        f(this.f77851e);
        return getDigestSize();
    }

    public final void c(byte[] bArr, int i2) {
        int i3 = this.f77850c >> 6;
        for (int i4 = 0; i4 < i3; i4++) {
            long[] jArr = this.f77848a;
            jArr[i4] = jArr[i4] ^ Pack.f(bArr, i2);
            i2 += 8;
        }
        e();
    }

    public final void d() {
        int i2 = this.f77850c >> 6;
        int i3 = 0;
        for (int i4 = 0; i4 < i2; i4++) {
            long j2 = this.f77848a[i4];
            int i5 = (int) (BodyPartID.bodyIdMax & j2);
            byte[] bArr = this.f77849b;
            Pack.d(i5, bArr, i3);
            Pack.d((int) (j2 >>> 32), bArr, i3 + 4);
            i3 += 8;
        }
    }

    public final void e() {
        int i2;
        int i3 = 0;
        int i4 = 0;
        while (i4 < 24) {
            long[] jArr = this.f77848a;
            long j2 = (((jArr[i3] ^ jArr[5]) ^ jArr[10]) ^ jArr[15]) ^ jArr[20];
            long j3 = (((jArr[1] ^ jArr[6]) ^ jArr[11]) ^ jArr[16]) ^ jArr[21];
            int i5 = i3;
            int i6 = i4;
            long j4 = (((jArr[2] ^ jArr[7]) ^ jArr[12]) ^ jArr[17]) ^ jArr[22];
            long j5 = (((jArr[3] ^ jArr[8]) ^ jArr[13]) ^ jArr[18]) ^ jArr[23];
            long j6 = (((jArr[4] ^ jArr[9]) ^ jArr[14]) ^ jArr[19]) ^ jArr[24];
            long jG = g(1, j3) ^ j6;
            jArr[i5] = jArr[i5] ^ jG;
            jArr[5] = jArr[5] ^ jG;
            jArr[10] = jArr[10] ^ jG;
            jArr[15] = jArr[15] ^ jG;
            jArr[20] = jArr[20] ^ jG;
            long jG2 = g(1, j4) ^ j2;
            jArr[1] = jArr[1] ^ jG2;
            jArr[6] = jArr[6] ^ jG2;
            jArr[11] = jArr[11] ^ jG2;
            jArr[16] = jArr[16] ^ jG2;
            jArr[21] = jArr[21] ^ jG2;
            long jG3 = g(1, j5) ^ j3;
            jArr[2] = jArr[2] ^ jG3;
            jArr[7] = jArr[7] ^ jG3;
            jArr[12] = jArr[12] ^ jG3;
            jArr[17] = jArr[17] ^ jG3;
            jArr[22] = jArr[22] ^ jG3;
            long jG4 = j4 ^ g(1, j6);
            jArr[3] = jArr[3] ^ jG4;
            jArr[8] = jArr[8] ^ jG4;
            jArr[13] = jArr[13] ^ jG4;
            jArr[18] = jArr[18] ^ jG4;
            jArr[23] = jG4 ^ jArr[23];
            long jG5 = g(1, j2) ^ j5;
            jArr[4] = jArr[4] ^ jG5;
            jArr[9] = jArr[9] ^ jG5;
            jArr[14] = jArr[14] ^ jG5;
            jArr[19] = jArr[19] ^ jG5;
            jArr[24] = jG5 ^ jArr[24];
            int i7 = 1;
            while (true) {
                if (i7 >= 25) {
                    break;
                }
                jArr[i7] = g(f77847h[i7], jArr[i7]);
                i7++;
            }
            long j7 = jArr[1];
            jArr[1] = jArr[6];
            jArr[6] = jArr[9];
            jArr[9] = jArr[22];
            jArr[22] = jArr[14];
            jArr[14] = jArr[20];
            jArr[20] = jArr[2];
            jArr[2] = jArr[12];
            jArr[12] = jArr[13];
            jArr[13] = jArr[19];
            jArr[19] = jArr[23];
            jArr[23] = jArr[15];
            jArr[15] = jArr[4];
            jArr[4] = jArr[24];
            jArr[24] = jArr[21];
            jArr[21] = jArr[8];
            jArr[8] = jArr[16];
            jArr[16] = jArr[5];
            jArr[5] = jArr[3];
            jArr[3] = jArr[18];
            jArr[18] = jArr[17];
            jArr[17] = jArr[11];
            jArr[11] = jArr[7];
            jArr[7] = jArr[10];
            jArr[10] = j7;
            int i8 = i5;
            for (i2 = 25; i8 < i2; i2 = 25) {
                long j8 = jArr[i8];
                int i9 = i8 + 1;
                long j9 = jArr[i9];
                long j10 = ~j9;
                int i10 = i8 + 2;
                long j11 = jArr[i10];
                long j12 = (j10 & j11) ^ j8;
                long j13 = ~j11;
                int i11 = i8 + 3;
                long j14 = jArr[i11];
                long[] jArr2 = jArr;
                long j15 = ~j14;
                int i12 = i8 + 4;
                int i13 = i8;
                long j16 = jArr2[i12];
                long j17 = (j15 & j16) ^ j11;
                long j18 = j14 ^ ((~j16) & j8);
                long j19 = j16 ^ ((~j8) & j9);
                jArr2[i13] = j12;
                jArr2[i9] = (j13 & j14) ^ j9;
                jArr2[i10] = j17;
                jArr2[i11] = j18;
                jArr2[i12] = j19;
                i8 = i13 + 5;
                jArr = jArr2;
            }
            long[] jArr3 = jArr;
            jArr3[i5] = jArr3[i5] ^ g[i6];
            i4 = i6 + 1;
            i3 = i5;
        }
    }

    public final void f(int i2) {
        if (i2 != 128 && i2 != 224 && i2 != 256 && i2 != 288 && i2 != 384 && i2 != 512) {
            md.n("bitLength must be one of 128, 224, 256, 288, 384, or 512.");
            return;
        }
        int i3 = 1600 - (i2 << 1);
        if (i3 <= 0 || i3 >= 1600 || i3 % 64 != 0) {
            md.k("invalid rate value");
            return;
        }
        this.f77850c = i3;
        int i4 = 0;
        while (true) {
            long[] jArr = this.f77848a;
            if (i4 >= jArr.length) {
                break;
            }
            jArr[i4] = 0;
            i4++;
        }
        int i5 = 0;
        while (true) {
            byte[] bArr = this.f77849b;
            if (i5 >= bArr.length) {
                this.d = 0;
                this.f77852f = false;
                this.f77851e = (1600 - i3) / 2;
                return;
            }
            bArr[i5] = 0;
            i5++;
        }
    }

    @Override // org.spongycastle.crypto.Digest
    public String getAlgorithmName() {
        return "Keccak-" + this.f77851e;
    }

    @Override // org.spongycastle.crypto.Digest
    public final int getDigestSize() {
        return this.f77851e / 8;
    }

    public final void h(long j2, byte[] bArr) {
        long[] jArr;
        boolean z = this.f77852f;
        byte[] bArr2 = this.f77849b;
        if (!z) {
            int i2 = this.d;
            int i3 = i2 >> 3;
            bArr2[i3] = (byte) (bArr2[i3] | ((byte) (1 << (i2 & 7))));
            int i4 = i2 + 1;
            this.d = i4;
            int i5 = 0;
            if (i4 == this.f77850c) {
                c(bArr2, 0);
                this.d = 0;
            }
            int i6 = this.d;
            int i7 = i6 >> 6;
            int i8 = i6 & 63;
            int i9 = 0;
            while (true) {
                jArr = this.f77848a;
                if (i5 >= i7) {
                    break;
                }
                jArr[i5] = jArr[i5] ^ Pack.f(bArr2, i9);
                i9 += 8;
                i5++;
            }
            if (i8 > 0) {
                jArr[i7] = jArr[i7] ^ (Pack.f(bArr2, i9) & ((1 << i8) - 1));
            }
            int i10 = (this.f77850c - 1) >> 6;
            jArr[i10] = jArr[i10] ^ Long.MIN_VALUE;
            e();
            d();
            this.d = this.f77850c;
            this.f77852f = true;
        }
        long j3 = 0;
        if (j2 % 8 != 0) {
            md.k("outputLength not a multiple of 8");
            return;
        }
        while (j3 < j2) {
            if (this.d == 0) {
                e();
                d();
                this.d = this.f77850c;
            }
            int iMin = (int) Math.min(this.d, j2 - j3);
            System.arraycopy(bArr2, (this.f77850c - this.d) / 8, bArr, (int) (j3 / 8), iMin / 8);
            this.d -= iMin;
            j3 += (long) iMin;
        }
    }

    public KeccakDigest(int i2) {
        this.f77848a = new long[25];
        this.f77849b = new byte[192];
        f(i2);
    }

    public KeccakDigest() {
        this(288);
    }
}
