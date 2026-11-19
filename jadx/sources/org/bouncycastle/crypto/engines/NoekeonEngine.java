package org.bouncycastle.crypto.engines;

import com.batch.android.x0.h;
import defpackage.a;
import defpackage.b21;
import defpackage.md;
import defpackage.mt;
import defpackage.no0;
import org.bouncycastle.crypto.BlockCipher;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.CryptoServicesRegistrar;
import org.bouncycastle.crypto.constraints.DefaultServiceProperties;
import org.bouncycastle.crypto.params.KeyParameter;
import org.bouncycastle.crypto.signers.PSSSigner;
import org.bouncycastle.util.Integers;
import org.bouncycastle.util.Pack;

/* JADX INFO: loaded from: classes5.dex */
public class NoekeonEngine implements BlockCipher {
    private static final int SIZE = 16;
    private static final byte[] roundConstants = {-128, 27, 54, 108, h.a.C, -85, 77, -102, 47, 94, PSSSigner.TRAILER_IMPLICIT, 99, h.a.f24181k, -105, 53, 106, h.a.y};
    private boolean _forEncryption;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final int[] f77617k = new int[4];
    private boolean _initialised = false;

    private int decryptBlock(byte[] bArr, int i2, byte[] bArr2, int i3) {
        int iBigEndianToInt = Pack.bigEndianToInt(bArr, i2);
        int iBigEndianToInt2 = Pack.bigEndianToInt(bArr, i2 + 4);
        int iBigEndianToInt3 = Pack.bigEndianToInt(bArr, i2 + 8);
        int iBigEndianToInt4 = Pack.bigEndianToInt(bArr, i2 + 12);
        int[] iArr = this.f77617k;
        int i4 = iArr[0];
        int i5 = iArr[1];
        int i6 = iArr[2];
        int i7 = iArr[3];
        int i8 = 16;
        while (true) {
            int i9 = iBigEndianToInt ^ iBigEndianToInt3;
            int iRotateLeft = i9 ^ (Integers.rotateLeft(i9, 8) ^ Integers.rotateLeft(i9, 24));
            int i10 = iBigEndianToInt2 ^ i5;
            int i11 = iBigEndianToInt4 ^ i7;
            int i12 = i10 ^ i11;
            int iRotateLeft2 = i12 ^ (Integers.rotateLeft(i12, 24) ^ Integers.rotateLeft(i12, 8));
            int i13 = i10 ^ iRotateLeft;
            int i14 = (iBigEndianToInt3 ^ i6) ^ iRotateLeft2;
            int i15 = i11 ^ iRotateLeft;
            int i16 = ((iBigEndianToInt ^ i4) ^ iRotateLeft2) ^ (roundConstants[i8] & 255);
            i8--;
            if (i8 < 0) {
                Pack.intToBigEndian(i16, bArr2, i3);
                Pack.intToBigEndian(i13, bArr2, i3 + 4);
                Pack.intToBigEndian(i14, bArr2, i3 + 8);
                Pack.intToBigEndian(i15, bArr2, i3 + 12);
                return 16;
            }
            int iRotateLeft3 = Integers.rotateLeft(i13, 1);
            int iRotateLeft4 = Integers.rotateLeft(i14, 5);
            int iRotateLeft5 = Integers.rotateLeft(i15, 2);
            int i17 = iRotateLeft3 ^ (iRotateLeft5 | iRotateLeft4);
            int i18 = ~i17;
            int i19 = i16 ^ (iRotateLeft4 & i18);
            int i20 = (iRotateLeft4 ^ (i18 ^ iRotateLeft5)) ^ i19;
            int i21 = i17 ^ (i19 | i20);
            int i22 = iRotateLeft5 ^ (i20 & i21);
            iBigEndianToInt2 = Integers.rotateLeft(i21, 31);
            iBigEndianToInt3 = Integers.rotateLeft(i20, 27);
            int iRotateLeft6 = Integers.rotateLeft(i19, 30);
            iBigEndianToInt = i22;
            iBigEndianToInt4 = iRotateLeft6;
        }
    }

    private int encryptBlock(byte[] bArr, int i2, byte[] bArr2, int i3) {
        int iBigEndianToInt = Pack.bigEndianToInt(bArr, i2);
        int iBigEndianToInt2 = Pack.bigEndianToInt(bArr, i2 + 4);
        int iBigEndianToInt3 = Pack.bigEndianToInt(bArr, i2 + 8);
        int iBigEndianToInt4 = Pack.bigEndianToInt(bArr, i2 + 12);
        int[] iArr = this.f77617k;
        int i4 = 0;
        int i5 = iArr[0];
        int i6 = iArr[1];
        int i7 = iArr[2];
        int i8 = iArr[3];
        while (true) {
            int i9 = iBigEndianToInt ^ (roundConstants[i4] & 255);
            int i10 = i9 ^ iBigEndianToInt3;
            int iRotateLeft = i10 ^ (Integers.rotateLeft(i10, 8) ^ Integers.rotateLeft(i10, 24));
            int i11 = iBigEndianToInt2 ^ i6;
            int i12 = iBigEndianToInt4 ^ i8;
            int i13 = i11 ^ i12;
            int iRotateLeft2 = (Integers.rotateLeft(i13, 24) ^ Integers.rotateLeft(i13, 8)) ^ i13;
            int i14 = (i9 ^ i5) ^ iRotateLeft2;
            int i15 = i11 ^ iRotateLeft;
            int i16 = (iBigEndianToInt3 ^ i7) ^ iRotateLeft2;
            int i17 = i12 ^ iRotateLeft;
            i4++;
            if (i4 > 16) {
                Pack.intToBigEndian(i14, bArr2, i3);
                Pack.intToBigEndian(i15, bArr2, i3 + 4);
                Pack.intToBigEndian(i16, bArr2, i3 + 8);
                Pack.intToBigEndian(i17, bArr2, i3 + 12);
                return 16;
            }
            int iRotateLeft3 = Integers.rotateLeft(i15, 1);
            int iRotateLeft4 = Integers.rotateLeft(i16, 5);
            int iRotateLeft5 = Integers.rotateLeft(i17, 2);
            int i18 = iRotateLeft3 ^ (iRotateLeft5 | iRotateLeft4);
            int i19 = ~i18;
            int i20 = i14 ^ (iRotateLeft4 & i19);
            int i21 = (iRotateLeft4 ^ (i19 ^ iRotateLeft5)) ^ i20;
            int i22 = i18 ^ (i20 | i21);
            int i23 = iRotateLeft5 ^ (i21 & i22);
            iBigEndianToInt2 = Integers.rotateLeft(i22, 31);
            iBigEndianToInt3 = Integers.rotateLeft(i21, 27);
            int iRotateLeft6 = Integers.rotateLeft(i20, 30);
            iBigEndianToInt = i23;
            iBigEndianToInt4 = iRotateLeft6;
        }
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public String getAlgorithmName() {
        return "Noekeon";
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public int getBlockSize() {
        return 16;
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public void init(boolean z, CipherParameters cipherParameters) {
        if (!(cipherParameters instanceof KeyParameter)) {
            md.n(a.l("invalid parameter passed to Noekeon init - ", cipherParameters));
            return;
        }
        byte[] key = ((KeyParameter) cipherParameters).getKey();
        if (key.length != 16) {
            md.n("Key length not 128 bits.");
            return;
        }
        Pack.bigEndianToInt(key, 0, this.f77617k, 0, 4);
        if (!z) {
            int[] iArr = this.f77617k;
            int i2 = iArr[0];
            int i3 = iArr[1];
            int i4 = iArr[2];
            int i5 = iArr[3];
            int i6 = i2 ^ i4;
            int iRotateLeft = i6 ^ (Integers.rotateLeft(i6, 8) ^ Integers.rotateLeft(i6, 24));
            int i7 = i3 ^ i5;
            int iRotateLeft2 = (Integers.rotateLeft(i7, 8) ^ Integers.rotateLeft(i7, 24)) ^ i7;
            int i8 = i3 ^ iRotateLeft;
            int i9 = i5 ^ iRotateLeft;
            int[] iArr2 = this.f77617k;
            iArr2[0] = i2 ^ iRotateLeft2;
            iArr2[1] = i8;
            iArr2[2] = i4 ^ iRotateLeft2;
            iArr2[3] = i9;
        }
        this._forEncryption = z;
        this._initialised = true;
        CryptoServicesRegistrar.checkConstraints(new DefaultServiceProperties(getAlgorithmName(), 128, cipherParameters, Utils.getPurpose(z)));
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public int processBlock(byte[] bArr, int i2, byte[] bArr2, int i3) {
        if (!this._initialised) {
            no0.l(getAlgorithmName(), " not initialised");
            return 0;
        }
        if (i2 > bArr.length - 16) {
            b21.q("input buffer too short");
            return 0;
        }
        if (i3 <= bArr2.length - 16) {
            return this._forEncryption ? encryptBlock(bArr, i2, bArr2, i3) : decryptBlock(bArr, i2, bArr2, i3);
        }
        mt.n("output buffer too short");
        return 0;
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public void reset() {
    }
}
