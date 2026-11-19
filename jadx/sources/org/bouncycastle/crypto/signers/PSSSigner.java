package org.bouncycastle.crypto.signers;

import defpackage.cj;
import defpackage.md;
import defpackage.r81;
import java.security.SecureRandom;
import org.bouncycastle.crypto.AsymmetricBlockCipher;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.CryptoException;
import org.bouncycastle.crypto.CryptoServicesRegistrar;
import org.bouncycastle.crypto.DataLengthException;
import org.bouncycastle.crypto.Digest;
import org.bouncycastle.crypto.Signer;
import org.bouncycastle.crypto.Xof;
import org.bouncycastle.crypto.digests.Prehash;
import org.bouncycastle.crypto.params.ParametersWithRandom;
import org.bouncycastle.crypto.params.RSABlindingParameters;
import org.bouncycastle.crypto.params.RSAKeyParameters;
import org.bouncycastle.util.Arrays;

/* JADX INFO: loaded from: classes5.dex */
public class PSSSigner implements Signer {
    public static final byte TRAILER_IMPLICIT = -68;
    private byte[] block;
    private AsymmetricBlockCipher cipher;
    private Digest contentDigest1;
    private Digest contentDigest2;
    private int emBits;
    private int hLen;
    private byte[] mDash;
    private Digest mgfDigest;
    private int mgfhLen;
    private SecureRandom random;
    private int sLen;
    private boolean sSet;
    private byte[] salt;
    private byte trailer;

    private PSSSigner(AsymmetricBlockCipher asymmetricBlockCipher, Digest digest, Digest digest2, Digest digest3, int i2, byte b2) {
        this.cipher = asymmetricBlockCipher;
        this.contentDigest1 = digest;
        this.contentDigest2 = digest2;
        this.mgfDigest = digest3;
        this.hLen = digest2.getDigestSize();
        this.mgfhLen = digest3.getDigestSize();
        this.sSet = false;
        this.sLen = i2;
        this.salt = new byte[i2];
        this.mDash = new byte[i2 + 8 + this.hLen];
        this.trailer = b2;
    }

    private void ItoOSP(int i2, byte[] bArr) {
        bArr[0] = (byte) (i2 >>> 24);
        bArr[1] = (byte) (i2 >>> 16);
        bArr[2] = (byte) (i2 >>> 8);
        bArr[3] = (byte) i2;
    }

    private void clearBlock(byte[] bArr) {
        for (int i2 = 0; i2 != bArr.length; i2++) {
            bArr[i2] = 0;
        }
    }

    public static PSSSigner createRawSigner(AsymmetricBlockCipher asymmetricBlockCipher, Digest digest) {
        return new PSSSigner(asymmetricBlockCipher, Prehash.forDigest(digest), digest, digest, digest.getDigestSize(), TRAILER_IMPLICIT);
    }

    private byte[] maskGenerator(byte[] bArr, int i2, int i3, int i4) {
        Digest digest = this.mgfDigest;
        if (!(digest instanceof Xof)) {
            return maskGeneratorFunction1(bArr, i2, i3, i4);
        }
        byte[] bArr2 = new byte[i4];
        digest.update(bArr, i2, i3);
        ((Xof) this.mgfDigest).doFinal(bArr2, 0, i4);
        return bArr2;
    }

    private byte[] maskGeneratorFunction1(byte[] bArr, int i2, int i3, int i4) {
        int i5;
        byte[] bArr2 = new byte[i4];
        byte[] bArr3 = new byte[this.mgfhLen];
        byte[] bArr4 = new byte[4];
        this.mgfDigest.reset();
        int i6 = 0;
        while (true) {
            i5 = this.mgfhLen;
            if (i6 >= i4 / i5) {
                break;
            }
            ItoOSP(i6, bArr4);
            this.mgfDigest.update(bArr, i2, i3);
            this.mgfDigest.update(bArr4, 0, 4);
            this.mgfDigest.doFinal(bArr3, 0);
            int i7 = this.mgfhLen;
            System.arraycopy(bArr3, 0, bArr2, i6 * i7, i7);
            i6++;
        }
        if (i5 * i6 < i4) {
            ItoOSP(i6, bArr4);
            this.mgfDigest.update(bArr, i2, i3);
            this.mgfDigest.update(bArr4, 0, 4);
            this.mgfDigest.doFinal(bArr3, 0);
            int i8 = this.mgfhLen;
            System.arraycopy(bArr3, 0, bArr2, i6 * i8, i4 - (i6 * i8));
        }
        return bArr2;
    }

    @Override // org.bouncycastle.crypto.Signer
    public byte[] generateSignature() throws DataLengthException, CryptoException {
        int digestSize = this.contentDigest1.getDigestSize();
        int i2 = this.hLen;
        if (digestSize != i2) {
            r81.b();
            return null;
        }
        Digest digest = this.contentDigest1;
        byte[] bArr = this.mDash;
        digest.doFinal(bArr, (bArr.length - i2) - this.sLen);
        if (this.sLen != 0) {
            if (!this.sSet) {
                this.random.nextBytes(this.salt);
            }
            byte[] bArr2 = this.salt;
            byte[] bArr3 = this.mDash;
            int length = bArr3.length;
            int i3 = this.sLen;
            System.arraycopy(bArr2, 0, bArr3, length - i3, i3);
        }
        int i4 = this.hLen;
        byte[] bArr4 = new byte[i4];
        Digest digest2 = this.contentDigest2;
        byte[] bArr5 = this.mDash;
        digest2.update(bArr5, 0, bArr5.length);
        this.contentDigest2.doFinal(bArr4, 0);
        byte[] bArr6 = this.block;
        int length2 = bArr6.length;
        int i5 = this.sLen;
        int i6 = this.hLen;
        bArr6[(((length2 - i5) - 1) - i6) - 1] = 1;
        System.arraycopy(this.salt, 0, bArr6, ((bArr6.length - i5) - i6) - 1, i5);
        byte[] bArrMaskGenerator = maskGenerator(bArr4, 0, i4, (this.block.length - this.hLen) - 1);
        int i7 = 0;
        while (true) {
            int length3 = bArrMaskGenerator.length;
            byte[] bArr7 = this.block;
            if (i7 == length3) {
                int length4 = bArr7.length;
                int i8 = this.hLen;
                System.arraycopy(bArr4, 0, bArr7, (length4 - i8) - 1, i8);
                byte[] bArr8 = this.block;
                bArr8[0] = (byte) ((255 >>> ((bArr8.length * 8) - this.emBits)) & bArr8[0]);
                bArr8[bArr8.length - 1] = this.trailer;
                byte[] bArrProcessBlock = this.cipher.processBlock(bArr8, 0, bArr8.length);
                clearBlock(this.block);
                return bArrProcessBlock;
            }
            bArr7[i7] = (byte) (bArr7[i7] ^ bArrMaskGenerator[i7]);
            i7++;
        }
    }

    @Override // org.bouncycastle.crypto.Signer
    public void init(boolean z, CipherParameters cipherParameters) {
        CipherParameters parameters;
        RSAKeyParameters publicKey;
        if (cipherParameters instanceof ParametersWithRandom) {
            ParametersWithRandom parametersWithRandom = (ParametersWithRandom) cipherParameters;
            parameters = parametersWithRandom.getParameters();
            this.random = parametersWithRandom.getRandom();
        } else {
            if (z) {
                this.random = CryptoServicesRegistrar.getSecureRandom();
            }
            parameters = cipherParameters;
        }
        if (parameters instanceof RSABlindingParameters) {
            publicKey = ((RSABlindingParameters) parameters).getPublicKey();
            this.cipher.init(z, cipherParameters);
        } else {
            publicKey = (RSAKeyParameters) parameters;
            this.cipher.init(z, parameters);
        }
        int iBitLength = publicKey.getModulus().bitLength();
        int i2 = iBitLength - 1;
        this.emBits = i2;
        if (i2 < cj.a(this.sLen, 8, this.hLen * 8, 9)) {
            md.n("key too small for specified hash and salt lengths");
        } else {
            this.block = new byte[(iBitLength + 6) / 8];
            reset();
        }
    }

    @Override // org.bouncycastle.crypto.Signer
    public void reset() {
        this.contentDigest1.reset();
    }

    @Override // org.bouncycastle.crypto.Signer
    public void update(byte b2) {
        this.contentDigest1.update(b2);
    }

    @Override // org.bouncycastle.crypto.Signer
    public boolean verifySignature(byte[] bArr) {
        byte[] bArr2;
        int digestSize = this.contentDigest1.getDigestSize();
        int i2 = this.hLen;
        if (digestSize != i2) {
            r81.b();
            return false;
        }
        Digest digest = this.contentDigest1;
        byte[] bArr3 = this.mDash;
        digest.doFinal(bArr3, (bArr3.length - i2) - this.sLen);
        try {
            byte[] bArrProcessBlock = this.cipher.processBlock(bArr, 0, bArr.length);
            byte[] bArr4 = this.block;
            Arrays.fill(bArr4, 0, bArr4.length - bArrProcessBlock.length, (byte) 0);
            byte[] bArr5 = this.block;
            System.arraycopy(bArrProcessBlock, 0, bArr5, bArr5.length - bArrProcessBlock.length, bArrProcessBlock.length);
            byte[] bArr6 = this.block;
            int length = 255 >>> ((bArr6.length * 8) - this.emBits);
            byte b2 = bArr6[0];
            if ((b2 & 255) != (b2 & length) || bArr6[bArr6.length - 1] != this.trailer) {
                clearBlock(bArr6);
                return false;
            }
            int length2 = bArr6.length;
            int i3 = this.hLen;
            byte[] bArrMaskGenerator = maskGenerator(bArr6, (length2 - i3) - 1, i3, (bArr6.length - i3) - 1);
            int i4 = 0;
            while (true) {
                int length3 = bArrMaskGenerator.length;
                bArr2 = this.block;
                if (i4 == length3) {
                    break;
                }
                bArr2[i4] = (byte) (bArr2[i4] ^ bArrMaskGenerator[i4]);
                i4++;
            }
            bArr2[0] = (byte) (bArr2[0] & length);
            int i5 = 0;
            while (true) {
                byte[] bArr7 = this.block;
                int length4 = bArr7.length;
                int i6 = this.hLen;
                int i7 = this.sLen;
                if (i5 != ((length4 - i6) - i7) - 2) {
                    if (bArr7[i5] != 0) {
                        clearBlock(bArr7);
                        return false;
                    }
                    i5++;
                } else {
                    if (bArr7[((bArr7.length - i6) - i7) - 2] != 1) {
                        clearBlock(bArr7);
                        return false;
                    }
                    if (this.sSet) {
                        byte[] bArr8 = this.salt;
                        byte[] bArr9 = this.mDash;
                        System.arraycopy(bArr8, 0, bArr9, bArr9.length - i7, i7);
                    } else {
                        int length5 = ((bArr7.length - i7) - i6) - 1;
                        byte[] bArr10 = this.mDash;
                        System.arraycopy(bArr7, length5, bArr10, bArr10.length - i7, i7);
                    }
                    Digest digest2 = this.contentDigest2;
                    byte[] bArr11 = this.mDash;
                    digest2.update(bArr11, 0, bArr11.length);
                    Digest digest3 = this.contentDigest2;
                    byte[] bArr12 = this.mDash;
                    digest3.doFinal(bArr12, bArr12.length - this.hLen);
                    int length6 = this.block.length;
                    int i8 = this.hLen;
                    int i9 = (length6 - i8) - 1;
                    int length7 = this.mDash.length - i8;
                    while (true) {
                        byte[] bArr13 = this.mDash;
                        if (length7 == bArr13.length) {
                            clearBlock(bArr13);
                            clearBlock(this.block);
                            return true;
                        }
                        if ((this.block[i9] ^ bArr13[length7]) != 0) {
                            clearBlock(bArr13);
                            clearBlock(this.block);
                            return false;
                        }
                        i9++;
                        length7++;
                    }
                }
            }
        } catch (Exception unused) {
        }
    }

    @Override // org.bouncycastle.crypto.Signer
    public void update(byte[] bArr, int i2, int i3) {
        this.contentDigest1.update(bArr, i2, i3);
    }

    public static PSSSigner createRawSigner(AsymmetricBlockCipher asymmetricBlockCipher, Digest digest, Digest digest2, int i2, byte b2) {
        return new PSSSigner(asymmetricBlockCipher, Prehash.forDigest(digest), digest, digest2, i2, b2);
    }

    public static PSSSigner createRawSigner(AsymmetricBlockCipher asymmetricBlockCipher, Digest digest, Digest digest2, byte[] bArr, byte b2) {
        return new PSSSigner(asymmetricBlockCipher, Prehash.forDigest(digest), digest, digest2, bArr, b2);
    }

    public PSSSigner(AsymmetricBlockCipher asymmetricBlockCipher, Digest digest, int i2, byte b2) {
        this(asymmetricBlockCipher, digest, digest, i2, b2);
    }

    public PSSSigner(AsymmetricBlockCipher asymmetricBlockCipher, Digest digest, Digest digest2, int i2) {
        this(asymmetricBlockCipher, digest, digest2, i2, TRAILER_IMPLICIT);
    }

    public PSSSigner(AsymmetricBlockCipher asymmetricBlockCipher, Digest digest, Digest digest2, int i2, byte b2) {
        this(asymmetricBlockCipher, digest, digest, digest2, i2, b2);
    }

    public PSSSigner(AsymmetricBlockCipher asymmetricBlockCipher, Digest digest, int i2) {
        this(asymmetricBlockCipher, digest, i2, TRAILER_IMPLICIT);
    }

    private PSSSigner(AsymmetricBlockCipher asymmetricBlockCipher, Digest digest, Digest digest2, Digest digest3, byte[] bArr, byte b2) {
        this.cipher = asymmetricBlockCipher;
        this.contentDigest1 = digest;
        this.contentDigest2 = digest2;
        this.mgfDigest = digest3;
        this.hLen = digest2.getDigestSize();
        this.mgfhLen = digest3.getDigestSize();
        this.sSet = true;
        int length = bArr.length;
        this.sLen = length;
        this.salt = bArr;
        this.mDash = new byte[length + 8 + this.hLen];
        this.trailer = b2;
    }

    public PSSSigner(AsymmetricBlockCipher asymmetricBlockCipher, Digest digest, Digest digest2, byte[] bArr) {
        this(asymmetricBlockCipher, digest, digest2, bArr, TRAILER_IMPLICIT);
    }

    public PSSSigner(AsymmetricBlockCipher asymmetricBlockCipher, Digest digest, Digest digest2, byte[] bArr, byte b2) {
        this(asymmetricBlockCipher, digest, digest, digest2, bArr, b2);
    }

    public PSSSigner(AsymmetricBlockCipher asymmetricBlockCipher, Digest digest, byte[] bArr) {
        this(asymmetricBlockCipher, digest, digest, bArr, TRAILER_IMPLICIT);
    }
}
