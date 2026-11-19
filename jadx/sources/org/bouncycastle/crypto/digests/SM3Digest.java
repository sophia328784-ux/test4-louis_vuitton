package org.bouncycastle.crypto.digests;

import defpackage.pq0;
import org.bouncycastle.crypto.CryptoServiceProperties;
import org.bouncycastle.crypto.CryptoServicePurpose;
import org.bouncycastle.crypto.CryptoServicesRegistrar;
import org.bouncycastle.util.Memoable;
import org.bouncycastle.util.Pack;

/* JADX INFO: loaded from: classes5.dex */
public class SM3Digest extends GeneralDigest {
    private static final int BLOCK_SIZE = 16;
    private static final int DIGEST_LENGTH = 32;
    private static final int[] T = new int[64];
    private int[] V;
    private int[] W;
    private int[] inwords;
    private int xOff;

    static {
        int i2;
        int i3 = 0;
        while (true) {
            if (i3 >= 16) {
                break;
            }
            T[i3] = (2043430169 >>> (32 - i3)) | (2043430169 << i3);
            i3++;
        }
        for (i2 = 16; i2 < 64; i2++) {
            int i4 = i2 % 32;
            T[i2] = (2055708042 >>> (32 - i4)) | (2055708042 << i4);
        }
    }

    public SM3Digest(CryptoServicePurpose cryptoServicePurpose) {
        super(cryptoServicePurpose);
        this.V = new int[8];
        this.inwords = new int[16];
        this.W = new int[68];
        CryptoServicesRegistrar.checkConstraints(cryptoServiceProperties());
        reset();
    }

    private int FF0(int i2, int i3, int i4) {
        return (i2 ^ i3) ^ i4;
    }

    private int FF1(int i2, int i3, int i4) {
        return ((i3 | i4) & i2) | (i3 & i4);
    }

    private int GG0(int i2, int i3, int i4) {
        return (i2 ^ i3) ^ i4;
    }

    private int GG1(int i2, int i3, int i4) {
        return (i2 & i3) | ((~i2) & i4);
    }

    private int P0(int i2) {
        return (((i2 << 9) | (i2 >>> 23)) ^ i2) ^ ((i2 << 17) | (i2 >>> 15));
    }

    private int P1(int i2) {
        return (((i2 << 15) | (i2 >>> 17)) ^ i2) ^ ((i2 << 23) | (i2 >>> 9));
    }

    private void copyIn(SM3Digest sM3Digest) {
        int[] iArr = sM3Digest.V;
        int[] iArr2 = this.V;
        System.arraycopy(iArr, 0, iArr2, 0, iArr2.length);
        int[] iArr3 = sM3Digest.inwords;
        int[] iArr4 = this.inwords;
        System.arraycopy(iArr3, 0, iArr4, 0, iArr4.length);
        this.xOff = sM3Digest.xOff;
    }

    @Override // org.bouncycastle.util.Memoable
    public Memoable copy() {
        return new SM3Digest(this);
    }

    @Override // org.bouncycastle.crypto.digests.GeneralDigest
    public CryptoServiceProperties cryptoServiceProperties() {
        return Utils.getDefaultProperties(this, 256, this.purpose);
    }

    @Override // org.bouncycastle.crypto.Digest
    public int doFinal(byte[] bArr, int i2) {
        finish();
        Pack.intToBigEndian(this.V, bArr, i2);
        reset();
        return 32;
    }

    @Override // org.bouncycastle.crypto.Digest
    public String getAlgorithmName() {
        return "SM3";
    }

    @Override // org.bouncycastle.crypto.Digest
    public int getDigestSize() {
        return 32;
    }

    @Override // org.bouncycastle.crypto.digests.GeneralDigest
    public void processBlock() {
        int i2;
        int i3 = 0;
        while (true) {
            i2 = 16;
            if (i3 >= 16) {
                break;
            }
            this.W[i3] = this.inwords[i3];
            i3++;
        }
        for (int i4 = 16; i4 < 68; i4++) {
            int[] iArr = this.W;
            int i5 = iArr[i4 - 3];
            int i6 = iArr[i4 - 13];
            iArr[i4] = (P1(((i5 >>> 17) | (i5 << 15)) ^ (iArr[i4 - 16] ^ iArr[i4 - 9])) ^ ((i6 >>> 25) | (i6 << 7))) ^ this.W[i4 - 6];
        }
        int[] iArr2 = this.V;
        int i7 = iArr2[0];
        int i8 = iArr2[1];
        int i9 = iArr2[2];
        char c2 = 3;
        int i10 = iArr2[3];
        char c3 = 4;
        int iP0 = iArr2[4];
        char c4 = 5;
        int i11 = iArr2[5];
        char c5 = 6;
        int i12 = iArr2[6];
        int i13 = iArr2[7];
        int i14 = i12;
        int i15 = 0;
        while (i15 < i2) {
            int i16 = (i7 << 12) | (i7 >>> 20);
            int i17 = i16 + iP0 + T[i15];
            int i18 = (i17 << 7) | (i17 >>> 25);
            char c6 = c2;
            int i19 = i18 ^ i16;
            char c7 = c3;
            int[] iArr3 = this.W;
            char c8 = c4;
            int i20 = iArr3[i15];
            int iD = pq0.D(FF0(i7, i8, i9), i10, i19, iArr3[i15 + 4] ^ i20);
            int iD2 = pq0.D(GG0(iP0, i11, i14), i13, i18, i20);
            int i21 = (i8 << 9) | (i8 >>> 23);
            int i22 = (i11 << 19) | (i11 >>> 13);
            i15++;
            i10 = i9;
            i11 = iP0;
            c3 = c7;
            c4 = c8;
            c5 = c5;
            iP0 = P0(iD2);
            i9 = i21;
            i13 = i14;
            i14 = i22;
            i2 = 16;
            i8 = i7;
            i7 = iD;
            c2 = c6;
        }
        char c9 = c2;
        char c10 = c3;
        char c11 = c4;
        char c12 = c5;
        int i23 = i13;
        int i24 = i14;
        int i25 = i7;
        int i26 = 16;
        while (i26 < 64) {
            int i27 = (i25 << 12) | (i25 >>> 20);
            int i28 = i27 + iP0 + T[i26];
            int i29 = (i28 >>> 25) | (i28 << 7);
            int[] iArr4 = this.W;
            int i30 = iArr4[i26];
            int iD3 = pq0.D(FF1(i25, i8, i9), i10, i27 ^ i29, iArr4[i26 + 4] ^ i30);
            int iD4 = pq0.D(GG1(iP0, i11, i24), i23, i29, i30);
            int i31 = (i11 << 19) | (i11 >>> 13);
            i26++;
            i10 = i9;
            i11 = iP0;
            iP0 = P0(iD4);
            i9 = (i8 >>> 23) | (i8 << 9);
            i23 = i24;
            i8 = i25;
            i25 = iD3;
            i24 = i31;
        }
        int[] iArr5 = this.V;
        iArr5[0] = i25 ^ iArr5[0];
        iArr5[1] = iArr5[1] ^ i8;
        iArr5[2] = iArr5[2] ^ i9;
        iArr5[c9] = iArr5[c9] ^ i10;
        iArr5[c10] = iArr5[c10] ^ iP0;
        iArr5[c11] = iArr5[c11] ^ i11;
        iArr5[c12] = i24 ^ iArr5[c12];
        iArr5[7] = iArr5[7] ^ i23;
        this.xOff = 0;
    }

    @Override // org.bouncycastle.crypto.digests.GeneralDigest
    public void processLength(long j2) {
        int i2 = this.xOff;
        if (i2 > 14) {
            this.inwords[i2] = 0;
            this.xOff = i2 + 1;
            processBlock();
        }
        while (true) {
            int i3 = this.xOff;
            int[] iArr = this.inwords;
            if (i3 >= 14) {
                int i4 = i3 + 1;
                this.xOff = i4;
                iArr[i3] = (int) (j2 >>> 32);
                this.xOff = i3 + 2;
                iArr[i4] = (int) j2;
                return;
            }
            iArr[i3] = 0;
            this.xOff = i3 + 1;
        }
    }

    @Override // org.bouncycastle.crypto.digests.GeneralDigest
    public void processWord(byte[] bArr, int i2) {
        int[] iArr = this.inwords;
        int i3 = this.xOff;
        this.xOff = i3 + 1;
        iArr[i3] = Pack.bigEndianToInt(bArr, i2);
        if (this.xOff >= 16) {
            processBlock();
        }
    }

    @Override // org.bouncycastle.crypto.digests.GeneralDigest, org.bouncycastle.crypto.Digest
    public void reset() {
        super.reset();
        int[] iArr = this.V;
        iArr[0] = 1937774191;
        iArr[1] = 1226093241;
        iArr[2] = 388252375;
        iArr[3] = -628488704;
        iArr[4] = -1452330820;
        iArr[5] = 372324522;
        iArr[6] = -477237683;
        iArr[7] = -1325724082;
        this.xOff = 0;
    }

    public SM3Digest() {
        this(CryptoServicePurpose.ANY);
    }

    public SM3Digest(SM3Digest sM3Digest) {
        super(sM3Digest);
        this.V = new int[8];
        this.inwords = new int[16];
        this.W = new int[68];
        CryptoServicesRegistrar.checkConstraints(cryptoServiceProperties());
        copyIn(sM3Digest);
    }

    @Override // org.bouncycastle.util.Memoable
    public void reset(Memoable memoable) {
        SM3Digest sM3Digest = (SM3Digest) memoable;
        super.copyIn((GeneralDigest) sM3Digest);
        copyIn(sM3Digest);
    }
}
