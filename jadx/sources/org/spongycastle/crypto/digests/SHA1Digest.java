package org.spongycastle.crypto.digests;

import defpackage.pq0;
import org.bouncycastle.pqc.jcajce.spec.McElieceCCA2KeyGenParameterSpec;
import org.spongycastle.util.Pack;

/* JADX INFO: loaded from: classes5.dex */
public class SHA1Digest extends GeneralDigest implements EncodableDigest {
    public int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f77862e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f77863f;
    public int g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f77864h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final int[] f77865i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f77866j;

    public SHA1Digest(byte[] bArr) {
        super(bArr);
        this.f77865i = new int[80];
        this.d = Pack.a(bArr, 16);
        this.f77862e = Pack.a(bArr, 20);
        this.f77863f = Pack.a(bArr, 24);
        this.g = Pack.a(bArr, 28);
        this.f77864h = Pack.a(bArr, 32);
        this.f77866j = Pack.a(bArr, 36);
        for (int i2 = 0; i2 != this.f77866j; i2++) {
            this.f77865i[i2] = Pack.a(bArr, (i2 * 4) + 40);
        }
    }

    @Override // org.spongycastle.crypto.Digest
    public final int b(byte[] bArr) {
        d();
        Pack.c(this.d, bArr, 0);
        Pack.c(this.f77862e, bArr, 4);
        Pack.c(this.f77863f, bArr, 8);
        Pack.c(this.g, bArr, 12);
        Pack.c(this.f77864h, bArr, 16);
        h();
        return 20;
    }

    @Override // org.spongycastle.crypto.digests.GeneralDigest
    public final void e() {
        int[] iArr;
        int i2 = 16;
        while (true) {
            iArr = this.f77865i;
            if (i2 >= 80) {
                break;
            }
            int i3 = ((iArr[i2 - 3] ^ iArr[i2 - 8]) ^ iArr[i2 - 14]) ^ iArr[i2 - 16];
            iArr[i2] = (i3 >>> 31) | (i3 << 1);
            i2++;
        }
        int iD = this.d;
        int iD2 = this.f77862e;
        int i4 = this.f77863f;
        int i5 = this.g;
        int i6 = this.f77864h;
        int i7 = 0;
        for (int i8 = 0; i8 < 4; i8++) {
            int iD3 = pq0.D(((iD2 & i4) | ((~iD2) & i5)) + ((iD << 5) | (iD >>> 27)), iArr[i7], 1518500249, i6);
            int i9 = (iD2 >>> 2) | (iD2 << 30);
            int iD4 = pq0.D(((iD & i9) | ((~iD) & i4)) + ((iD3 << 5) | (iD3 >>> 27)), iArr[i7 + 1], 1518500249, i5);
            int i10 = (iD >>> 2) | (iD << 30);
            int iD5 = pq0.D(((iD3 & i10) | ((~iD3) & i9)) + ((iD4 << 5) | (iD4 >>> 27)), iArr[i7 + 2], 1518500249, i4);
            i6 = (iD3 >>> 2) | (iD3 << 30);
            int i11 = i7 + 4;
            iD2 = pq0.D(((iD4 & i6) | ((~iD4) & i10)) + ((iD5 << 5) | (iD5 >>> 27)), iArr[i7 + 3], 1518500249, i9);
            i5 = (iD4 >>> 2) | (iD4 << 30);
            i7 += 5;
            iD = pq0.D(((iD5 & i5) | ((~iD5) & i6)) + ((iD2 << 5) | (iD2 >>> 27)), iArr[i11], 1518500249, i10);
            i4 = (iD5 >>> 2) | (iD5 << 30);
        }
        for (int i12 = 0; i12 < 4; i12++) {
            int iD6 = pq0.D(((iD << 5) | (iD >>> 27)) + ((iD2 ^ i4) ^ i5), iArr[i7], 1859775393, i6);
            int i13 = (iD2 >>> 2) | (iD2 << 30);
            int iD7 = pq0.D(((iD6 << 5) | (iD6 >>> 27)) + ((iD ^ i13) ^ i4), iArr[i7 + 1], 1859775393, i5);
            int i14 = (iD >>> 2) | (iD << 30);
            int iD8 = pq0.D(((iD7 << 5) | (iD7 >>> 27)) + ((iD6 ^ i14) ^ i13), iArr[i7 + 2], 1859775393, i4);
            i6 = (iD6 >>> 2) | (iD6 << 30);
            int i15 = i7 + 4;
            iD2 = pq0.D(((iD8 << 5) | (iD8 >>> 27)) + ((iD7 ^ i6) ^ i14), iArr[i7 + 3], 1859775393, i13);
            i5 = (iD7 >>> 2) | (iD7 << 30);
            i7 += 5;
            iD = pq0.D(((iD2 << 5) | (iD2 >>> 27)) + ((iD8 ^ i5) ^ i6), iArr[i15], 1859775393, i14);
            i4 = (iD8 >>> 2) | (iD8 << 30);
        }
        for (int i16 = 0; i16 < 4; i16++) {
            int iD9 = pq0.D((((i4 | i5) & iD2) | (i4 & i5)) + ((iD << 5) | (iD >>> 27)), iArr[i7], -1894007588, i6);
            int i17 = (iD2 >>> 2) | (iD2 << 30);
            int iD10 = pq0.D((((i17 | i4) & iD) | (i17 & i4)) + ((iD9 << 5) | (iD9 >>> 27)), iArr[i7 + 1], -1894007588, i5);
            int i18 = (iD >>> 2) | (iD << 30);
            int iD11 = pq0.D((((i18 | i17) & iD9) | (i18 & i17)) + ((iD10 << 5) | (iD10 >>> 27)), iArr[i7 + 2], -1894007588, i4);
            i6 = (iD9 >>> 2) | (iD9 << 30);
            int i19 = i7 + 4;
            iD2 = pq0.D((((i6 | i18) & iD10) | (i6 & i18)) + ((iD11 << 5) | (iD11 >>> 27)), iArr[i7 + 3], -1894007588, i17);
            i5 = (iD10 >>> 2) | (iD10 << 30);
            i7 += 5;
            iD = pq0.D((((i5 | i6) & iD11) | (i5 & i6)) + ((iD2 << 5) | (iD2 >>> 27)), iArr[i19], -1894007588, i18);
            i4 = (iD11 >>> 2) | (iD11 << 30);
        }
        for (int i20 = 0; i20 <= 3; i20++) {
            int iD12 = pq0.D(((iD << 5) | (iD >>> 27)) + ((iD2 ^ i4) ^ i5), iArr[i7], -899497514, i6);
            int i21 = (iD2 >>> 2) | (iD2 << 30);
            int iD13 = pq0.D(((iD12 << 5) | (iD12 >>> 27)) + ((iD ^ i21) ^ i4), iArr[i7 + 1], -899497514, i5);
            int i22 = (iD >>> 2) | (iD << 30);
            int iD14 = pq0.D(((iD13 << 5) | (iD13 >>> 27)) + ((iD12 ^ i22) ^ i21), iArr[i7 + 2], -899497514, i4);
            i6 = (iD12 >>> 2) | (iD12 << 30);
            int i23 = i7 + 4;
            iD2 = pq0.D(((iD14 << 5) | (iD14 >>> 27)) + ((iD13 ^ i6) ^ i22), iArr[i7 + 3], -899497514, i21);
            i5 = (iD13 >>> 2) | (iD13 << 30);
            i7 += 5;
            iD = pq0.D(((iD2 << 5) | (iD2 >>> 27)) + ((iD14 ^ i5) ^ i6), iArr[i23], -899497514, i22);
            i4 = (iD14 >>> 2) | (iD14 << 30);
        }
        this.d += iD;
        this.f77862e += iD2;
        this.f77863f += i4;
        this.g += i5;
        this.f77864h += i6;
        this.f77866j = 0;
        for (int i24 = 0; i24 < 16; i24++) {
            iArr[i24] = 0;
        }
    }

    @Override // org.spongycastle.crypto.digests.GeneralDigest
    public final void f(long j2) {
        if (this.f77866j > 14) {
            e();
        }
        int[] iArr = this.f77865i;
        iArr[14] = (int) (j2 >>> 32);
        iArr[15] = (int) j2;
    }

    @Override // org.spongycastle.crypto.digests.GeneralDigest
    public final void g(byte[] bArr, int i2) {
        int i3 = (bArr[i2 + 3] & 255) | (bArr[i2] << 24) | ((bArr[i2 + 1] & 255) << 16) | ((bArr[i2 + 2] & 255) << 8);
        int i4 = this.f77866j;
        this.f77865i[i4] = i3;
        int i5 = i4 + 1;
        this.f77866j = i5;
        if (i5 == 16) {
            e();
        }
    }

    @Override // org.spongycastle.crypto.Digest
    public final String getAlgorithmName() {
        return McElieceCCA2KeyGenParameterSpec.SHA1;
    }

    @Override // org.spongycastle.crypto.Digest
    public final int getDigestSize() {
        return 20;
    }

    @Override // org.spongycastle.crypto.digests.GeneralDigest
    public final void h() {
        super.h();
        this.d = 1732584193;
        this.f77862e = -271733879;
        this.f77863f = -1732584194;
        this.g = 271733878;
        this.f77864h = -1009589776;
        this.f77866j = 0;
        int i2 = 0;
        while (true) {
            int[] iArr = this.f77865i;
            if (i2 == iArr.length) {
                return;
            }
            iArr[i2] = 0;
            i2++;
        }
    }

    public SHA1Digest(SHA1Digest sHA1Digest) {
        super(sHA1Digest);
        int[] iArr = new int[80];
        this.f77865i = iArr;
        this.d = sHA1Digest.d;
        this.f77862e = sHA1Digest.f77862e;
        this.f77863f = sHA1Digest.f77863f;
        this.g = sHA1Digest.g;
        this.f77864h = sHA1Digest.f77864h;
        int[] iArr2 = sHA1Digest.f77865i;
        System.arraycopy(iArr2, 0, iArr, 0, iArr2.length);
        this.f77866j = sHA1Digest.f77866j;
    }

    public SHA1Digest() {
        this.f77865i = new int[80];
        h();
    }
}
