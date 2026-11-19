package org.spongycastle.crypto.digests;

import org.spongycastle.util.Pack;

/* JADX INFO: loaded from: classes5.dex */
public class SHA256Digest extends GeneralDigest implements EncodableDigest {
    public static final int[] n = {1116352408, 1899447441, -1245643825, -373957723, 961987163, 1508970993, -1841331548, -1424204075, -670586216, 310598401, 607225278, 1426881987, 1925078388, -2132889090, -1680079193, -1046744716, -459576895, -272742522, 264347078, 604807628, 770255983, 1249150122, 1555081692, 1996064986, -1740746414, -1473132947, -1341970488, -1084653625, -958395405, -710438585, 113926993, 338241895, 666307205, 773529912, 1294757372, 1396182291, 1695183700, 1986661051, -2117940946, -1838011259, -1564481375, -1474664885, -1035236496, -949202525, -778901479, -694614492, -200395387, 275423344, 430227734, 506948616, 659060556, 883997877, 958139571, 1322822218, 1537002063, 1747873779, 1955562222, 2024104815, -2067236844, -1933114872, -1866530822, -1538233109, -1090935817, -965641998};
    public int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f77873e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f77874f;
    public int g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f77875h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f77876i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f77877j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f77878k;
    public final int[] l;
    public int m;

    public SHA256Digest(byte[] bArr) {
        super(bArr);
        this.l = new int[64];
        this.d = Pack.a(bArr, 16);
        this.f77873e = Pack.a(bArr, 20);
        this.f77874f = Pack.a(bArr, 24);
        this.g = Pack.a(bArr, 28);
        this.f77875h = Pack.a(bArr, 32);
        this.f77876i = Pack.a(bArr, 36);
        this.f77877j = Pack.a(bArr, 40);
        this.f77878k = Pack.a(bArr, 44);
        this.m = Pack.a(bArr, 48);
        for (int i2 = 0; i2 != this.m; i2++) {
            this.l[i2] = Pack.a(bArr, (i2 * 4) + 52);
        }
    }

    public static int j(int i2, int i3, int i4) {
        return ((~i2) & i4) ^ (i3 & i2);
    }

    public static int k(int i2, int i3, int i4) {
        return ((i2 & i4) ^ (i2 & i3)) ^ (i3 & i4);
    }

    public static int l(int i2) {
        return ((i2 << 10) | (i2 >>> 22)) ^ (((i2 >>> 2) | (i2 << 30)) ^ ((i2 >>> 13) | (i2 << 19)));
    }

    public static int m(int i2) {
        return ((i2 << 7) | (i2 >>> 25)) ^ (((i2 >>> 6) | (i2 << 26)) ^ ((i2 >>> 11) | (i2 << 21)));
    }

    @Override // org.spongycastle.crypto.Digest
    public final int b(byte[] bArr) {
        d();
        Pack.c(this.d, bArr, 0);
        Pack.c(this.f77873e, bArr, 4);
        Pack.c(this.f77874f, bArr, 8);
        Pack.c(this.g, bArr, 12);
        Pack.c(this.f77875h, bArr, 16);
        Pack.c(this.f77876i, bArr, 20);
        Pack.c(this.f77877j, bArr, 24);
        Pack.c(this.f77878k, bArr, 28);
        h();
        return 32;
    }

    @Override // org.spongycastle.crypto.digests.GeneralDigest
    public final void e() {
        int[] iArr;
        int i2 = 16;
        while (true) {
            iArr = this.l;
            if (i2 > 63) {
                break;
            }
            int i3 = iArr[i2 - 2];
            int i4 = ((i3 >>> 10) ^ (((i3 >>> 17) | (i3 << 15)) ^ ((i3 >>> 19) | (i3 << 13)))) + iArr[i2 - 7];
            int i5 = iArr[i2 - 15];
            iArr[i2] = i4 + ((i5 >>> 3) ^ (((i5 >>> 7) | (i5 << 25)) ^ ((i5 >>> 18) | (i5 << 14)))) + iArr[i2 - 16];
            i2++;
        }
        int iK = this.d;
        int iK2 = this.f77873e;
        int iK3 = this.f77874f;
        int iK4 = this.g;
        int i6 = this.f77875h;
        int i7 = this.f77876i;
        int i8 = this.f77877j;
        int i9 = this.f77878k;
        int i10 = 0;
        for (int i11 = 0; i11 < 8; i11++) {
            int iJ = j(i6, i7, i8) + m(i6);
            int[] iArr2 = n;
            int i12 = iJ + iArr2[i10] + iArr[i10] + i9;
            int i13 = iK4 + i12;
            int iK5 = k(iK, iK2, iK3) + l(iK) + i12;
            int i14 = i10 + 1;
            int iJ2 = j(i13, i6, i7) + m(i13) + iArr2[i14] + iArr[i14] + i8;
            int i15 = iK3 + iJ2;
            int iK6 = k(iK5, iK, iK2) + l(iK5) + iJ2;
            int i16 = i10 + 2;
            int iJ3 = j(i15, i13, i6) + m(i15) + iArr2[i16] + iArr[i16] + i7;
            int i17 = iK2 + iJ3;
            int iK7 = k(iK6, iK5, iK) + l(iK6) + iJ3;
            int i18 = i10 + 3;
            int iJ4 = j(i17, i15, i13) + m(i17) + iArr2[i18] + iArr[i18] + i6;
            int i19 = iK + iJ4;
            int iK8 = k(iK7, iK6, iK5) + l(iK7) + iJ4;
            int i20 = i10 + 4;
            int iJ5 = j(i19, i17, i15) + m(i19) + iArr2[i20] + iArr[i20] + i13;
            i9 = iK5 + iJ5;
            iK4 = k(iK8, iK7, iK6) + l(iK8) + iJ5;
            int i21 = i10 + 5;
            int iJ6 = j(i9, i19, i17) + m(i9) + iArr2[i21] + iArr[i21] + i15;
            i8 = iK6 + iJ6;
            iK3 = k(iK4, iK8, iK7) + l(iK4) + iJ6;
            int i22 = i10 + 6;
            int iJ7 = j(i8, i9, i19) + m(i8) + iArr2[i22] + iArr[i22] + i17;
            i7 = iK7 + iJ7;
            iK2 = k(iK3, iK4, iK8) + l(iK3) + iJ7;
            int i23 = i10 + 7;
            int iJ8 = j(i7, i8, i9) + m(i7) + iArr2[i23] + iArr[i23] + i19;
            i6 = iK8 + iJ8;
            iK = k(iK2, iK3, iK4) + l(iK2) + iJ8;
            i10 += 8;
        }
        this.d += iK;
        this.f77873e += iK2;
        this.f77874f += iK3;
        this.g += iK4;
        this.f77875h += i6;
        this.f77876i += i7;
        this.f77877j += i8;
        this.f77878k += i9;
        this.m = 0;
        for (int i24 = 0; i24 < 16; i24++) {
            iArr[i24] = 0;
        }
    }

    @Override // org.spongycastle.crypto.digests.GeneralDigest
    public final void f(long j2) {
        if (this.m > 14) {
            e();
        }
        int[] iArr = this.l;
        iArr[14] = (int) (j2 >>> 32);
        iArr[15] = (int) j2;
    }

    @Override // org.spongycastle.crypto.digests.GeneralDigest
    public final void g(byte[] bArr, int i2) {
        int i3 = (bArr[i2 + 3] & 255) | (bArr[i2] << 24) | ((bArr[i2 + 1] & 255) << 16) | ((bArr[i2 + 2] & 255) << 8);
        int i4 = this.m;
        this.l[i4] = i3;
        int i5 = i4 + 1;
        this.m = i5;
        if (i5 == 16) {
            e();
        }
    }

    @Override // org.spongycastle.crypto.Digest
    public final String getAlgorithmName() {
        return "SHA-256";
    }

    @Override // org.spongycastle.crypto.Digest
    public final int getDigestSize() {
        return 32;
    }

    @Override // org.spongycastle.crypto.digests.GeneralDigest
    public final void h() {
        super.h();
        this.d = 1779033703;
        this.f77873e = -1150833019;
        this.f77874f = 1013904242;
        this.g = -1521486534;
        this.f77875h = 1359893119;
        this.f77876i = -1694144372;
        this.f77877j = 528734635;
        this.f77878k = 1541459225;
        this.m = 0;
        int i2 = 0;
        while (true) {
            int[] iArr = this.l;
            if (i2 == iArr.length) {
                return;
            }
            iArr[i2] = 0;
            i2++;
        }
    }

    public SHA256Digest(SHA256Digest sHA256Digest) {
        super(sHA256Digest);
        int[] iArr = new int[64];
        this.l = iArr;
        c(sHA256Digest);
        this.d = sHA256Digest.d;
        this.f77873e = sHA256Digest.f77873e;
        this.f77874f = sHA256Digest.f77874f;
        this.g = sHA256Digest.g;
        this.f77875h = sHA256Digest.f77875h;
        this.f77876i = sHA256Digest.f77876i;
        this.f77877j = sHA256Digest.f77877j;
        this.f77878k = sHA256Digest.f77878k;
        int[] iArr2 = sHA256Digest.l;
        System.arraycopy(iArr2, 0, iArr, 0, iArr2.length);
        this.m = sHA256Digest.m;
    }

    public SHA256Digest() {
        this.l = new int[64];
        h();
    }
}
