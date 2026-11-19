package org.bouncycastle.crypto.engines;

import defpackage.b21;
import defpackage.bm;
import defpackage.mt;
import defpackage.no0;
import org.bouncycastle.crypto.BlockCipher;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.CryptoServicePurpose;
import org.bouncycastle.crypto.CryptoServicesRegistrar;
import org.bouncycastle.crypto.constraints.DefaultServiceProperties;
import org.bouncycastle.crypto.params.KeyParameter;

/* JADX INFO: loaded from: classes5.dex */
public abstract class SerpentEngineBase implements BlockCipher {
    protected static final int BLOCK_SIZE = 16;
    static final int PHI = -1640531527;
    static final int ROUNDS = 32;
    protected boolean encrypting;
    protected int keyBits;
    protected int[] wKey;

    public SerpentEngineBase() {
        CryptoServicesRegistrar.checkConstraints(new DefaultServiceProperties(getAlgorithmName(), 256));
    }

    private CryptoServicePurpose getPurpose() {
        if (this.wKey == null) {
            return CryptoServicePurpose.ANY;
        }
        return this.encrypting ? CryptoServicePurpose.ENCRYPTION : CryptoServicePurpose.DECRYPTION;
    }

    public static int rotateLeft(int i2, int i3) {
        return (i2 >>> (-i3)) | (i2 << i3);
    }

    public static int rotateRight(int i2, int i3) {
        return (i2 << (-i3)) | (i2 >>> i3);
    }

    public final void LT(int[] iArr) {
        int iRotateLeft = rotateLeft(iArr[0], 13);
        int iRotateLeft2 = rotateLeft(iArr[2], 3);
        int i2 = (iArr[1] ^ iRotateLeft) ^ iRotateLeft2;
        int i3 = (iArr[3] ^ iRotateLeft2) ^ (iRotateLeft << 3);
        iArr[1] = rotateLeft(i2, 1);
        int iRotateLeft3 = rotateLeft(i3, 7);
        iArr[3] = iRotateLeft3;
        iArr[0] = rotateLeft((iRotateLeft ^ iArr[1]) ^ iRotateLeft3, 5);
        iArr[2] = rotateLeft((iArr[3] ^ iRotateLeft2) ^ (iArr[1] << 7), 22);
    }

    public abstract void decryptBlock(byte[] bArr, int i2, byte[] bArr2, int i3);

    public abstract void encryptBlock(byte[] bArr, int i2, byte[] bArr2, int i3);

    @Override // org.bouncycastle.crypto.BlockCipher
    public String getAlgorithmName() {
        return "Serpent";
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public int getBlockSize() {
        return 16;
    }

    public final void ib0(int[] iArr, int i2, int i3, int i4, int i5) {
        int i6 = ~i2;
        int i7 = i3 ^ i2;
        int i8 = (i6 | i7) ^ i5;
        int i9 = i4 ^ i8;
        int i10 = i7 ^ i9;
        iArr[2] = i10;
        int i11 = i6 ^ (i7 & i5);
        int i12 = (i10 & i11) ^ i8;
        iArr[1] = i12;
        int i13 = (i2 & i8) ^ (i12 | i9);
        iArr[3] = i13;
        iArr[0] = (i11 ^ i9) ^ i13;
    }

    public final void ib1(int[] iArr, int i2, int i3, int i4, int i5) {
        int i6 = i3 ^ i5;
        int i7 = i2 ^ (i3 & i6);
        int i8 = i6 ^ i7;
        int i9 = i4 ^ i8;
        iArr[3] = i9;
        int i10 = (i6 & i7) ^ i3;
        int i11 = i7 ^ (i9 | i10);
        iArr[1] = i11;
        int i12 = ~i11;
        int i13 = i10 ^ i9;
        iArr[0] = i12 ^ i13;
        iArr[2] = (i13 | i12) ^ i8;
    }

    public final void ib2(int[] iArr, int i2, int i3, int i4, int i5) {
        int i6 = i3 ^ i5;
        int i7 = ~i6;
        int i8 = i2 ^ i4;
        int i9 = i4 ^ i6;
        int i10 = (i3 & i9) ^ i8;
        iArr[0] = i10;
        int i11 = i6 ^ (((i2 | i7) ^ i5) | i8);
        iArr[3] = i11;
        int i12 = ~i9;
        int i13 = i11 | i10;
        iArr[1] = i12 ^ i13;
        iArr[2] = (i13 ^ i8) ^ (i12 & i5);
    }

    public final void ib3(int[] iArr, int i2, int i3, int i4, int i5) {
        int i6 = i2 | i3;
        int i7 = i3 ^ i4;
        int i8 = i2 ^ (i3 & i7);
        int i9 = i4 ^ i8;
        int i10 = i5 | i8;
        int i11 = i7 ^ i10;
        iArr[0] = i11;
        int i12 = (i10 | i7) ^ i5;
        iArr[2] = i9 ^ i12;
        int i13 = i6 ^ i12;
        int i14 = i8 ^ (i11 & i13);
        iArr[3] = i14;
        iArr[1] = (i13 ^ i11) ^ i14;
    }

    public final void ib4(int[] iArr, int i2, int i3, int i4, int i5) {
        int i6 = ((i4 | i5) & i2) ^ i3;
        int i7 = (i2 & i6) ^ i4;
        int i8 = i5 ^ i7;
        iArr[1] = i8;
        int i9 = ~i2;
        int i10 = (i7 & i8) ^ i6;
        iArr[3] = i10;
        int i11 = i5 ^ (i8 | i9);
        iArr[0] = i10 ^ i11;
        iArr[2] = (i6 & i11) ^ (i9 ^ i8);
    }

    public final void ib5(int[] iArr, int i2, int i3, int i4, int i5) {
        int i6 = ~i4;
        int i7 = (i3 & i6) ^ i5;
        int i8 = i2 & i7;
        int i9 = (i3 ^ i6) ^ i8;
        iArr[3] = i9;
        int i10 = i9 | i3;
        iArr[1] = i7 ^ (i2 & i10);
        int i11 = i5 | i2;
        iArr[0] = (i6 ^ i10) ^ i11;
        iArr[2] = (i3 & i11) ^ ((i2 ^ i4) | i8);
    }

    public final void ib6(int[] iArr, int i2, int i3, int i4, int i5) {
        int i6 = ~i2;
        int i7 = i2 ^ i3;
        int i8 = i4 ^ i7;
        int i9 = (i4 | i6) ^ i5;
        iArr[1] = i8 ^ i9;
        int i10 = i7 ^ (i8 & i9);
        int i11 = i9 ^ (i3 | i10);
        iArr[3] = i11;
        int i12 = i3 | i11;
        iArr[0] = i10 ^ i12;
        iArr[2] = (i6 & i5) ^ (i8 ^ i12);
    }

    public final void ib7(int[] iArr, int i2, int i3, int i4, int i5) {
        int i6 = (i2 & i3) | i4;
        int i7 = (i2 | i3) & i5;
        int i8 = i6 ^ i7;
        iArr[3] = i8;
        int i9 = i3 ^ i7;
        int i10 = ((i8 ^ (~i5)) | i9) ^ i2;
        iArr[1] = i10;
        int i11 = (i9 ^ i4) ^ (i5 | i10);
        iArr[0] = i11;
        iArr[2] = (i6 ^ i10) ^ ((i2 & i8) ^ i11);
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public void init(boolean z, CipherParameters cipherParameters) {
        if (!(cipherParameters instanceof KeyParameter)) {
            bm.g("invalid parameter passed to ", getAlgorithmName(), " init - ", cipherParameters.getClass().getName());
            return;
        }
        this.encrypting = z;
        byte[] key = ((KeyParameter) cipherParameters).getKey();
        this.wKey = makeWorkingKey(key);
        CryptoServicesRegistrar.checkConstraints(new DefaultServiceProperties(getAlgorithmName(), key.length * 8, cipherParameters, getPurpose()));
    }

    public final void inverseLT(int[] iArr) {
        int iRotateRight = (rotateRight(iArr[2], 22) ^ iArr[3]) ^ (iArr[1] << 7);
        int iRotateRight2 = rotateRight(iArr[0], 5) ^ iArr[1];
        int i2 = iArr[3];
        int i3 = iRotateRight2 ^ i2;
        int iRotateRight3 = rotateRight(i2, 7);
        int iRotateRight4 = rotateRight(iArr[1], 1);
        iArr[3] = (iRotateRight3 ^ iRotateRight) ^ (i3 << 3);
        iArr[1] = (iRotateRight4 ^ i3) ^ iRotateRight;
        iArr[2] = rotateRight(iRotateRight, 3);
        iArr[0] = rotateRight(i3, 13);
    }

    public abstract int[] makeWorkingKey(byte[] bArr);

    @Override // org.bouncycastle.crypto.BlockCipher
    public final int processBlock(byte[] bArr, int i2, byte[] bArr2, int i3) {
        if (this.wKey == null) {
            no0.l(getAlgorithmName(), " not initialised");
            return 0;
        }
        if (i2 + 16 > bArr.length) {
            b21.q("input buffer too short");
            return 0;
        }
        if (i3 + 16 > bArr2.length) {
            mt.n("output buffer too short");
            return 0;
        }
        if (this.encrypting) {
            encryptBlock(bArr, i2, bArr2, i3);
            return 16;
        }
        decryptBlock(bArr, i2, bArr2, i3);
        return 16;
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public void reset() {
    }

    public final void sb0(int[] iArr, int i2, int i3, int i4, int i5) {
        int i6 = i2 ^ i5;
        int i7 = i4 ^ i6;
        int i8 = i3 ^ i7;
        int i9 = (i5 & i2) ^ i8;
        iArr[3] = i9;
        int i10 = (i6 & i3) ^ i2;
        iArr[2] = (i4 | i10) ^ i8;
        int i11 = (i7 ^ i10) & i9;
        iArr[1] = (~i7) ^ i11;
        iArr[0] = (~i10) ^ i11;
    }

    public final void sb1(int[] iArr, int i2, int i3, int i4, int i5) {
        int i6 = (~i2) ^ i3;
        int i7 = (i2 | i6) ^ i4;
        int i8 = i5 ^ i7;
        iArr[2] = i8;
        int i9 = i3 ^ (i5 | i6);
        int i10 = i6 ^ i8;
        int i11 = (i7 & i9) ^ i10;
        iArr[3] = i11;
        int i12 = i9 ^ i7;
        iArr[1] = i11 ^ i12;
        iArr[0] = (i10 & i12) ^ i7;
    }

    public final void sb2(int[] iArr, int i2, int i3, int i4, int i5) {
        int i6 = ~i2;
        int i7 = i3 ^ i5;
        int i8 = (i4 & i6) ^ i7;
        iArr[0] = i8;
        int i9 = i4 ^ i6;
        int i10 = i3 & (i4 ^ i8);
        int i11 = i9 ^ i10;
        iArr[3] = i11;
        int i12 = i2 ^ ((i10 | i5) & (i8 | i9));
        iArr[2] = i12;
        iArr[1] = ((i6 | i5) ^ i12) ^ (i7 ^ i11);
    }

    public final void sb3(int[] iArr, int i2, int i3, int i4, int i5) {
        int i6 = i2 ^ i3;
        int i7 = i2 & i4;
        int i8 = i2 | i5;
        int i9 = i4 ^ i5;
        int i10 = i7 | (i6 & i8);
        int i11 = i9 ^ i10;
        iArr[2] = i11;
        int i12 = (i8 ^ i3) ^ i10;
        int i13 = i6 ^ (i9 & i12);
        iArr[0] = i13;
        int i14 = i13 & i11;
        iArr[1] = i12 ^ i14;
        iArr[3] = (i14 ^ i9) ^ (i3 | i5);
    }

    public final void sb4(int[] iArr, int i2, int i3, int i4, int i5) {
        int i6 = i2 ^ i5;
        int i7 = i4 ^ (i5 & i6);
        int i8 = i3 | i7;
        iArr[3] = i6 ^ i8;
        int i9 = ~i3;
        int i10 = (i6 | i9) ^ i7;
        iArr[0] = i10;
        int i11 = i6 ^ i9;
        int i12 = (i8 & i11) ^ (i10 & i2);
        iArr[2] = i12;
        iArr[1] = (i11 & i12) ^ (i2 ^ i7);
    }

    public final void sb5(int[] iArr, int i2, int i3, int i4, int i5) {
        int i6 = ~i2;
        int i7 = i2 ^ i3;
        int i8 = i2 ^ i5;
        int i9 = (i4 ^ i6) ^ (i7 | i8);
        iArr[0] = i9;
        int i10 = i5 & i9;
        int i11 = (i7 ^ i9) ^ i10;
        iArr[1] = i11;
        int i12 = (i6 | i9) ^ i8;
        iArr[2] = (i7 | i10) ^ i12;
        iArr[3] = (i12 & i11) ^ (i3 ^ i10);
    }

    public final void sb6(int[] iArr, int i2, int i3, int i4, int i5) {
        int i6 = ~i2;
        int i7 = i2 ^ i5;
        int i8 = i3 ^ i7;
        int i9 = (i6 | i7) ^ i4;
        int i10 = i3 ^ i9;
        iArr[1] = i10;
        int i11 = (i7 | i10) ^ i5;
        int i12 = (i9 & i11) ^ i8;
        iArr[2] = i12;
        int i13 = i11 ^ i9;
        iArr[0] = i12 ^ i13;
        iArr[3] = (~i9) ^ (i13 & i8);
    }

    public final void sb7(int[] iArr, int i2, int i3, int i4, int i5) {
        int i6 = i3 ^ i4;
        int i7 = (i4 & i6) ^ i5;
        int i8 = i2 ^ i7;
        int i9 = i3 ^ ((i5 | i6) & i8);
        iArr[1] = i9;
        int i10 = i6 ^ (i2 & i8);
        iArr[3] = i10;
        int i11 = i8 ^ (i9 | i7);
        int i12 = (i10 & i11) ^ i7;
        iArr[2] = i12;
        iArr[0] = (i10 & i12) ^ (~i11);
    }
}
