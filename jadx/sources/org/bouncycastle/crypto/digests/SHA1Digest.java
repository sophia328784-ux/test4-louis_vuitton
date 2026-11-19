package org.bouncycastle.crypto.digests;

import defpackage.pq0;
import org.bouncycastle.crypto.CryptoServiceProperties;
import org.bouncycastle.crypto.CryptoServicePurpose;
import org.bouncycastle.crypto.CryptoServicesRegistrar;
import org.bouncycastle.pqc.jcajce.spec.McElieceCCA2KeyGenParameterSpec;
import org.bouncycastle.util.Memoable;
import org.bouncycastle.util.Pack;

/* JADX INFO: loaded from: classes5.dex */
public class SHA1Digest extends GeneralDigest implements EncodableDigest {
    private static final int DIGEST_LENGTH = 20;
    private static final int Y1 = 1518500249;
    private static final int Y2 = 1859775393;
    private static final int Y3 = -1894007588;
    private static final int Y4 = -899497514;
    private int H1;
    private int H2;
    private int H3;
    private int H4;
    private int H5;
    private int[] X;
    private int xOff;

    public SHA1Digest(byte[] bArr) {
        super(bArr);
        this.X = new int[80];
        CryptoServicesRegistrar.checkConstraints(cryptoServiceProperties());
        this.H1 = Pack.bigEndianToInt(bArr, 16);
        this.H2 = Pack.bigEndianToInt(bArr, 20);
        this.H3 = Pack.bigEndianToInt(bArr, 24);
        this.H4 = Pack.bigEndianToInt(bArr, 28);
        this.H5 = Pack.bigEndianToInt(bArr, 32);
        this.xOff = Pack.bigEndianToInt(bArr, 36);
        for (int i2 = 0; i2 != this.xOff; i2++) {
            this.X[i2] = Pack.bigEndianToInt(bArr, (i2 * 4) + 40);
        }
    }

    private void copyIn(SHA1Digest sHA1Digest) {
        this.H1 = sHA1Digest.H1;
        this.H2 = sHA1Digest.H2;
        this.H3 = sHA1Digest.H3;
        this.H4 = sHA1Digest.H4;
        this.H5 = sHA1Digest.H5;
        int[] iArr = sHA1Digest.X;
        System.arraycopy(iArr, 0, this.X, 0, iArr.length);
        this.xOff = sHA1Digest.xOff;
    }

    private int f(int i2, int i3, int i4) {
        return (i2 & i3) | ((~i2) & i4);
    }

    private int g(int i2, int i3, int i4) {
        return ((i3 | i4) & i2) | (i3 & i4);
    }

    private int h(int i2, int i3, int i4) {
        return (i2 ^ i3) ^ i4;
    }

    @Override // org.bouncycastle.util.Memoable
    public Memoable copy() {
        return new SHA1Digest(this);
    }

    @Override // org.bouncycastle.crypto.digests.GeneralDigest
    public CryptoServiceProperties cryptoServiceProperties() {
        return Utils.getDefaultProperties(this, 128, this.purpose);
    }

    @Override // org.bouncycastle.crypto.Digest
    public int doFinal(byte[] bArr, int i2) {
        finish();
        Pack.intToBigEndian(this.H1, bArr, i2);
        Pack.intToBigEndian(this.H2, bArr, i2 + 4);
        Pack.intToBigEndian(this.H3, bArr, i2 + 8);
        Pack.intToBigEndian(this.H4, bArr, i2 + 12);
        Pack.intToBigEndian(this.H5, bArr, i2 + 16);
        reset();
        return 20;
    }

    @Override // org.bouncycastle.crypto.Digest
    public String getAlgorithmName() {
        return McElieceCCA2KeyGenParameterSpec.SHA1;
    }

    @Override // org.bouncycastle.crypto.Digest
    public int getDigestSize() {
        return 20;
    }

    @Override // org.bouncycastle.crypto.digests.EncodableDigest
    public byte[] getEncodedState() {
        int i2 = this.xOff * 4;
        byte[] bArr = new byte[i2 + 41];
        super.populateState(bArr);
        Pack.intToBigEndian(this.H1, bArr, 16);
        Pack.intToBigEndian(this.H2, bArr, 20);
        Pack.intToBigEndian(this.H3, bArr, 24);
        Pack.intToBigEndian(this.H4, bArr, 28);
        Pack.intToBigEndian(this.H5, bArr, 32);
        Pack.intToBigEndian(this.xOff, bArr, 36);
        for (int i3 = 0; i3 != this.xOff; i3++) {
            Pack.intToBigEndian(this.X[i3], bArr, (i3 * 4) + 40);
        }
        bArr[i2 + 40] = (byte) this.purpose.ordinal();
        return bArr;
    }

    @Override // org.bouncycastle.crypto.digests.GeneralDigest
    public void processBlock() {
        for (int i2 = 16; i2 < 80; i2++) {
            int[] iArr = this.X;
            int i3 = ((iArr[i2 - 3] ^ iArr[i2 - 8]) ^ iArr[i2 - 14]) ^ iArr[i2 - 16];
            iArr[i2] = (i3 >>> 31) | (i3 << 1);
        }
        int iD = this.H1;
        int iD2 = this.H2;
        int i4 = this.H3;
        int i5 = this.H4;
        int i6 = this.H5;
        int i7 = 0;
        for (int i8 = 0; i8 < 4; i8++) {
            int iD3 = pq0.D(((iD << 5) | (iD >>> 27)) + f(iD2, i4, i5), this.X[i7], Y1, i6);
            int i9 = (iD2 >>> 2) | (iD2 << 30);
            int iD4 = pq0.D(((iD3 << 5) | (iD3 >>> 27)) + f(iD, i9, i4), this.X[i7 + 1], Y1, i5);
            int i10 = (iD >>> 2) | (iD << 30);
            int iD5 = pq0.D(((iD4 << 5) | (iD4 >>> 27)) + f(iD3, i10, i9), this.X[i7 + 2], Y1, i4);
            i6 = (iD3 >>> 2) | (iD3 << 30);
            int i11 = i7 + 4;
            iD2 = pq0.D(((iD5 << 5) | (iD5 >>> 27)) + f(iD4, i6, i10), this.X[i7 + 3], Y1, i9);
            i5 = (iD4 >>> 2) | (iD4 << 30);
            i7 += 5;
            iD = pq0.D(((iD2 << 5) | (iD2 >>> 27)) + f(iD5, i5, i6), this.X[i11], Y1, i10);
            i4 = (iD5 >>> 2) | (iD5 << 30);
        }
        for (int i12 = 0; i12 < 4; i12++) {
            int iD6 = pq0.D(((iD << 5) | (iD >>> 27)) + h(iD2, i4, i5), this.X[i7], Y2, i6);
            int i13 = (iD2 >>> 2) | (iD2 << 30);
            int iD7 = pq0.D(((iD6 << 5) | (iD6 >>> 27)) + h(iD, i13, i4), this.X[i7 + 1], Y2, i5);
            int i14 = (iD >>> 2) | (iD << 30);
            int iD8 = pq0.D(((iD7 << 5) | (iD7 >>> 27)) + h(iD6, i14, i13), this.X[i7 + 2], Y2, i4);
            i6 = (iD6 >>> 2) | (iD6 << 30);
            int i15 = i7 + 4;
            iD2 = pq0.D(((iD8 << 5) | (iD8 >>> 27)) + h(iD7, i6, i14), this.X[i7 + 3], Y2, i13);
            i5 = (iD7 >>> 2) | (iD7 << 30);
            i7 += 5;
            iD = pq0.D(((iD2 << 5) | (iD2 >>> 27)) + h(iD8, i5, i6), this.X[i15], Y2, i14);
            i4 = (iD8 >>> 2) | (iD8 << 30);
        }
        for (int i16 = 0; i16 < 4; i16++) {
            int iD9 = pq0.D(((iD << 5) | (iD >>> 27)) + g(iD2, i4, i5), this.X[i7], Y3, i6);
            int i17 = (iD2 >>> 2) | (iD2 << 30);
            int iD10 = pq0.D(((iD9 << 5) | (iD9 >>> 27)) + g(iD, i17, i4), this.X[i7 + 1], Y3, i5);
            int i18 = (iD >>> 2) | (iD << 30);
            int iD11 = pq0.D(((iD10 << 5) | (iD10 >>> 27)) + g(iD9, i18, i17), this.X[i7 + 2], Y3, i4);
            i6 = (iD9 >>> 2) | (iD9 << 30);
            int i19 = i7 + 4;
            iD2 = pq0.D(((iD11 << 5) | (iD11 >>> 27)) + g(iD10, i6, i18), this.X[i7 + 3], Y3, i17);
            i5 = (iD10 >>> 2) | (iD10 << 30);
            i7 += 5;
            iD = pq0.D(((iD2 << 5) | (iD2 >>> 27)) + g(iD11, i5, i6), this.X[i19], Y3, i18);
            i4 = (iD11 >>> 2) | (iD11 << 30);
        }
        for (int i20 = 0; i20 <= 3; i20++) {
            int iD12 = pq0.D(((iD << 5) | (iD >>> 27)) + h(iD2, i4, i5), this.X[i7], Y4, i6);
            int i21 = (iD2 >>> 2) | (iD2 << 30);
            int iD13 = pq0.D(((iD12 << 5) | (iD12 >>> 27)) + h(iD, i21, i4), this.X[i7 + 1], Y4, i5);
            int i22 = (iD >>> 2) | (iD << 30);
            int iD14 = pq0.D(((iD13 << 5) | (iD13 >>> 27)) + h(iD12, i22, i21), this.X[i7 + 2], Y4, i4);
            i6 = (iD12 >>> 2) | (iD12 << 30);
            int i23 = i7 + 4;
            iD2 = pq0.D(((iD14 << 5) | (iD14 >>> 27)) + h(iD13, i6, i22), this.X[i7 + 3], Y4, i21);
            i5 = (iD13 >>> 2) | (iD13 << 30);
            i7 += 5;
            iD = pq0.D(((iD2 << 5) | (iD2 >>> 27)) + h(iD14, i5, i6), this.X[i23], Y4, i22);
            i4 = (iD14 >>> 2) | (iD14 << 30);
        }
        this.H1 += iD;
        this.H2 += iD2;
        this.H3 += i4;
        this.H4 += i5;
        this.H5 += i6;
        this.xOff = 0;
        for (int i24 = 0; i24 < 16; i24++) {
            this.X[i24] = 0;
        }
    }

    @Override // org.bouncycastle.crypto.digests.GeneralDigest
    public void processLength(long j2) {
        if (this.xOff > 14) {
            processBlock();
        }
        int[] iArr = this.X;
        iArr[14] = (int) (j2 >>> 32);
        iArr[15] = (int) j2;
    }

    @Override // org.bouncycastle.crypto.digests.GeneralDigest
    public void processWord(byte[] bArr, int i2) {
        this.X[this.xOff] = Pack.bigEndianToInt(bArr, i2);
        int i3 = this.xOff + 1;
        this.xOff = i3;
        if (i3 == 16) {
            processBlock();
        }
    }

    @Override // org.bouncycastle.crypto.digests.GeneralDigest, org.bouncycastle.crypto.Digest
    public void reset() {
        super.reset();
        this.H1 = 1732584193;
        this.H2 = -271733879;
        this.H3 = -1732584194;
        this.H4 = 271733878;
        this.H5 = -1009589776;
        this.xOff = 0;
        int i2 = 0;
        while (true) {
            int[] iArr = this.X;
            if (i2 == iArr.length) {
                return;
            }
            iArr[i2] = 0;
            i2++;
        }
    }

    @Override // org.bouncycastle.util.Memoable
    public void reset(Memoable memoable) {
        SHA1Digest sHA1Digest = (SHA1Digest) memoable;
        super.copyIn((GeneralDigest) sHA1Digest);
        copyIn(sHA1Digest);
    }

    public SHA1Digest(CryptoServicePurpose cryptoServicePurpose) {
        super(cryptoServicePurpose);
        this.X = new int[80];
        CryptoServicesRegistrar.checkConstraints(cryptoServiceProperties());
        reset();
    }

    public SHA1Digest(SHA1Digest sHA1Digest) {
        super(sHA1Digest);
        this.X = new int[80];
        CryptoServicesRegistrar.checkConstraints(cryptoServiceProperties());
        copyIn(sHA1Digest);
    }

    public SHA1Digest() {
        this(CryptoServicePurpose.ANY);
    }
}
