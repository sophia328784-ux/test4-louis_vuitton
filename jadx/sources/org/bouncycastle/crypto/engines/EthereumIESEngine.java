package org.bouncycastle.crypto.engines;

import defpackage.az;
import defpackage.d21;
import defpackage.md;
import defpackage.mt;
import defpackage.n00;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import org.bouncycastle.crypto.BasicAgreement;
import org.bouncycastle.crypto.BufferedBlockCipher;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.DataLengthException;
import org.bouncycastle.crypto.DerivationFunction;
import org.bouncycastle.crypto.DerivationParameters;
import org.bouncycastle.crypto.Digest;
import org.bouncycastle.crypto.DigestDerivationFunction;
import org.bouncycastle.crypto.EphemeralKeyPair;
import org.bouncycastle.crypto.InvalidCipherTextException;
import org.bouncycastle.crypto.KeyParser;
import org.bouncycastle.crypto.Mac;
import org.bouncycastle.crypto.SavableDigest;
import org.bouncycastle.crypto.digests.SHA256Digest;
import org.bouncycastle.crypto.generators.EphemeralKeyPairGenerator;
import org.bouncycastle.crypto.params.AsymmetricKeyParameter;
import org.bouncycastle.crypto.params.IESParameters;
import org.bouncycastle.crypto.params.IESWithCipherParameters;
import org.bouncycastle.crypto.params.ISO18033KDFParameters;
import org.bouncycastle.crypto.params.KDFParameters;
import org.bouncycastle.crypto.params.KeyParameter;
import org.bouncycastle.crypto.params.ParametersWithIV;
import org.bouncycastle.util.Arrays;
import org.bouncycastle.util.BigIntegers;
import org.bouncycastle.util.Pack;

/* JADX INFO: loaded from: classes5.dex */
public class EthereumIESEngine {
    private byte[] IV;
    byte[] V;
    BasicAgreement agree;
    BufferedBlockCipher cipher;
    byte[] commonMac;
    boolean forEncryption;
    DerivationFunction kdf;
    private EphemeralKeyPairGenerator keyPairGenerator;
    private KeyParser keyParser;
    Mac mac;
    byte[] macBuf;
    IESParameters param;
    CipherParameters privParam;
    CipherParameters pubParam;

    public static class HandshakeKDFFunction implements DigestDerivationFunction {
        private int counterStart;
        private Digest digest;
        private byte[] iv;
        private byte[] shared;

        public HandshakeKDFFunction(int i2, Digest digest) {
            this.counterStart = i2;
            this.digest = digest;
        }

        @Override // org.bouncycastle.crypto.DerivationFunction
        public int generateBytes(byte[] bArr, int i2, int i3) throws DataLengthException, IllegalArgumentException {
            int i4 = i3;
            int i5 = i2;
            if (bArr.length - i4 < i5) {
                mt.n("output buffer too small");
                return 0;
            }
            long j2 = i4;
            int digestSize = this.digest.getDigestSize();
            if (j2 > 8589934591L) {
                md.n("output length too large");
                return 0;
            }
            long j3 = digestSize;
            int i6 = (int) (((j2 + j3) - 1) / j3);
            byte[] bArr2 = new byte[this.digest.getDigestSize()];
            int i7 = 4;
            byte[] bArr3 = new byte[4];
            Pack.intToBigEndian(this.counterStart, bArr3, 0);
            int i8 = this.counterStart & (-256);
            int i9 = 0;
            while (true) {
                Digest digest = this.digest;
                if (i9 >= i6) {
                    digest.reset();
                    return (int) j2;
                }
                digest.update(bArr3, 0, i7);
                Digest digest2 = this.digest;
                byte[] bArr4 = this.shared;
                digest2.update(bArr4, 0, bArr4.length);
                byte[] bArr5 = this.iv;
                if (bArr5 != null) {
                    this.digest.update(bArr5, 0, bArr5.length);
                }
                this.digest.doFinal(bArr2, 0);
                if (i4 > digestSize) {
                    System.arraycopy(bArr2, 0, bArr, i5, digestSize);
                    i5 += digestSize;
                    i4 -= digestSize;
                } else {
                    System.arraycopy(bArr2, 0, bArr, i5, i4);
                }
                byte b2 = (byte) (bArr3[3] + 1);
                bArr3[3] = b2;
                if (b2 == 0) {
                    i8 += 256;
                    Pack.intToBigEndian(i8, bArr3, 0);
                }
                i9++;
                i7 = 4;
            }
        }

        @Override // org.bouncycastle.crypto.DigestDerivationFunction
        public Digest getDigest() {
            return this.digest;
        }

        @Override // org.bouncycastle.crypto.DerivationFunction
        public void init(DerivationParameters derivationParameters) {
            if (derivationParameters instanceof KDFParameters) {
                KDFParameters kDFParameters = (KDFParameters) derivationParameters;
                this.shared = kDFParameters.getSharedSecret();
                this.iv = kDFParameters.getIV();
            } else if (!(derivationParameters instanceof ISO18033KDFParameters)) {
                md.n("KDF parameters required for generator");
            } else {
                this.shared = ((ISO18033KDFParameters) derivationParameters).getSeed();
                this.iv = null;
            }
        }
    }

    public EthereumIESEngine(BasicAgreement basicAgreement, DerivationFunction derivationFunction, Mac mac, byte[] bArr) {
        this.agree = basicAgreement;
        this.kdf = derivationFunction;
        this.mac = mac;
        this.macBuf = new byte[mac.getMacSize()];
        this.commonMac = bArr;
        this.cipher = null;
    }

    private byte[] decryptBlock(byte[] bArr, int i2, int i3) throws InvalidCipherTextException {
        String str;
        byte[] bArr2;
        int iProcessBytes;
        byte[] bArr3;
        byte[] bArr4;
        if (i3 >= this.mac.getMacSize() + this.V.length) {
            if (this.cipher == null) {
                int length = (i3 - this.V.length) - this.mac.getMacSize();
                byte[] bArr5 = new byte[length];
                int macKeySize = this.param.getMacKeySize() / 8;
                bArr4 = new byte[macKeySize];
                int i4 = length + macKeySize;
                byte[] bArr6 = new byte[i4];
                this.kdf.generateBytes(bArr6, 0, i4);
                if (this.V.length != 0) {
                    System.arraycopy(bArr6, 0, bArr4, 0, macKeySize);
                    System.arraycopy(bArr6, macKeySize, bArr5, 0, length);
                } else {
                    System.arraycopy(bArr6, 0, bArr5, 0, length);
                    System.arraycopy(bArr6, length, bArr4, 0, macKeySize);
                }
                bArr3 = new byte[length];
                for (int i5 = 0; i5 != length; i5++) {
                    bArr3[i5] = (byte) (bArr[(i2 + this.V.length) + i5] ^ bArr5[i5]);
                }
                bArr2 = bArr;
                iProcessBytes = 0;
            } else {
                int cipherKeySize = ((IESWithCipherParameters) this.param).getCipherKeySize() / 8;
                byte[] bArr7 = new byte[cipherKeySize];
                int macKeySize2 = this.param.getMacKeySize() / 8;
                byte[] bArr8 = new byte[macKeySize2];
                int i6 = cipherKeySize + macKeySize2;
                byte[] bArr9 = new byte[i6];
                this.kdf.generateBytes(bArr9, 0, i6);
                System.arraycopy(bArr9, 0, bArr7, 0, cipherKeySize);
                System.arraycopy(bArr9, cipherKeySize, bArr8, 0, macKeySize2);
                CipherParameters keyParameter = new KeyParameter(bArr7);
                byte[] bArr10 = this.IV;
                if (bArr10 != null) {
                    keyParameter = new ParametersWithIV(keyParameter, bArr10);
                }
                this.cipher.init(false, keyParameter);
                byte[] bArr11 = new byte[this.cipher.getOutputSize((i3 - this.V.length) - this.mac.getMacSize())];
                BufferedBlockCipher bufferedBlockCipher = this.cipher;
                byte[] bArr12 = this.V;
                int length2 = i2 + bArr12.length;
                int length3 = (i3 - bArr12.length) - this.mac.getMacSize();
                bArr2 = bArr;
                iProcessBytes = bufferedBlockCipher.processBytes(bArr2, length2, length3, bArr11, 0);
                bArr3 = bArr11;
                bArr4 = bArr8;
            }
            byte[] encodingV = this.param.getEncodingV();
            byte[] lengthTag = this.V.length != 0 ? getLengthTag(encodingV) : null;
            int i7 = i2 + i3;
            byte[] bArrCopyOfRange = Arrays.copyOfRange(bArr2, i7 - this.mac.getMacSize(), i7);
            int length4 = bArrCopyOfRange.length;
            byte[] bArr13 = new byte[length4];
            SavableDigest savableDigestNewInstance = SHA256Digest.newInstance();
            byte[] bArr14 = new byte[savableDigestNewInstance.getDigestSize()];
            savableDigestNewInstance.reset();
            savableDigestNewInstance.update(bArr4, 0, bArr4.length);
            savableDigestNewInstance.doFinal(bArr14, 0);
            this.mac.init(new KeyParameter(bArr14));
            Mac mac = this.mac;
            byte[] bArr15 = this.IV;
            mac.update(bArr15, 0, bArr15.length);
            Mac mac2 = this.mac;
            byte[] bArr16 = this.V;
            mac2.update(bArr2, i2 + bArr16.length, (i3 - bArr16.length) - length4);
            if (encodingV != null) {
                this.mac.update(encodingV, 0, encodingV.length);
            }
            if (this.V.length != 0) {
                this.mac.update(lengthTag, 0, lengthTag.length);
            }
            Mac mac3 = this.mac;
            byte[] bArr17 = this.commonMac;
            mac3.update(bArr17, 0, bArr17.length);
            this.mac.doFinal(bArr13, 0);
            if (Arrays.constantTimeAreEqual(bArrCopyOfRange, bArr13)) {
                BufferedBlockCipher bufferedBlockCipher2 = this.cipher;
                return bufferedBlockCipher2 == null ? bArr3 : Arrays.copyOfRange(bArr3, 0, bufferedBlockCipher2.doFinal(bArr3, iProcessBytes) + iProcessBytes);
            }
            str = "invalid MAC";
        } else {
            str = "length of input must be greater than the MAC and V combined";
        }
        az.x(str);
        return null;
    }

    private byte[] encryptBlock(byte[] bArr, int i2, int i3) throws InvalidCipherTextException {
        byte[] bArr2;
        byte[] bArr3;
        if (this.cipher == null) {
            byte[] bArr4 = new byte[i3];
            int macKeySize = this.param.getMacKeySize() / 8;
            bArr2 = new byte[macKeySize];
            int i4 = i3 + macKeySize;
            byte[] bArr5 = new byte[i4];
            this.kdf.generateBytes(bArr5, 0, i4);
            if (this.V.length != 0) {
                System.arraycopy(bArr5, 0, bArr2, 0, macKeySize);
                System.arraycopy(bArr5, macKeySize, bArr4, 0, i3);
            } else {
                System.arraycopy(bArr5, 0, bArr4, 0, i3);
                System.arraycopy(bArr5, i3, bArr2, 0, macKeySize);
            }
            bArr3 = new byte[i3];
            for (int i5 = 0; i5 != i3; i5++) {
                bArr3[i5] = (byte) (bArr[i2 + i5] ^ bArr4[i5]);
            }
        } else {
            int cipherKeySize = ((IESWithCipherParameters) this.param).getCipherKeySize() / 8;
            byte[] bArr6 = new byte[cipherKeySize];
            int macKeySize2 = this.param.getMacKeySize() / 8;
            byte[] bArr7 = new byte[macKeySize2];
            int i6 = cipherKeySize + macKeySize2;
            byte[] bArr8 = new byte[i6];
            this.kdf.generateBytes(bArr8, 0, i6);
            System.arraycopy(bArr8, 0, bArr6, 0, cipherKeySize);
            System.arraycopy(bArr8, cipherKeySize, bArr7, 0, macKeySize2);
            this.cipher.init(true, this.IV != null ? new ParametersWithIV(new KeyParameter(bArr6), this.IV) : new KeyParameter(bArr6));
            byte[] bArr9 = new byte[this.cipher.getOutputSize(i3)];
            int iProcessBytes = this.cipher.processBytes(bArr, i2, i3, bArr9, 0);
            i3 = this.cipher.doFinal(bArr9, iProcessBytes) + iProcessBytes;
            bArr2 = bArr7;
            bArr3 = bArr9;
        }
        byte[] encodingV = this.param.getEncodingV();
        byte[] lengthTag = this.V.length != 0 ? getLengthTag(encodingV) : null;
        int macSize = this.mac.getMacSize();
        byte[] bArr10 = new byte[macSize];
        SavableDigest savableDigestNewInstance = SHA256Digest.newInstance();
        byte[] bArr11 = new byte[savableDigestNewInstance.getDigestSize()];
        savableDigestNewInstance.reset();
        savableDigestNewInstance.update(bArr2, 0, bArr2.length);
        savableDigestNewInstance.doFinal(bArr11, 0);
        this.mac.init(new KeyParameter(bArr11));
        Mac mac = this.mac;
        byte[] bArr12 = this.IV;
        mac.update(bArr12, 0, bArr12.length);
        this.mac.update(bArr3, 0, bArr3.length);
        if (encodingV != null) {
            this.mac.update(encodingV, 0, encodingV.length);
        }
        if (this.V.length != 0) {
            this.mac.update(lengthTag, 0, lengthTag.length);
        }
        Mac mac2 = this.mac;
        byte[] bArr13 = this.commonMac;
        mac2.update(bArr13, 0, bArr13.length);
        this.mac.doFinal(bArr10, 0);
        byte[] bArr14 = this.V;
        byte[] bArr15 = new byte[bArr14.length + i3 + macSize];
        System.arraycopy(bArr14, 0, bArr15, 0, bArr14.length);
        System.arraycopy(bArr3, 0, bArr15, this.V.length, i3);
        System.arraycopy(bArr10, 0, bArr15, this.V.length + i3, macSize);
        return bArr15;
    }

    private void extractParams(CipherParameters cipherParameters) {
        if (cipherParameters instanceof ParametersWithIV) {
            ParametersWithIV parametersWithIV = (ParametersWithIV) cipherParameters;
            this.IV = parametersWithIV.getIV();
            cipherParameters = parametersWithIV.getParameters();
        } else {
            this.IV = null;
        }
        this.param = (IESParameters) cipherParameters;
    }

    public BufferedBlockCipher getCipher() {
        return this.cipher;
    }

    public byte[] getLengthTag(byte[] bArr) {
        byte[] bArr2 = new byte[8];
        if (bArr != null) {
            Pack.longToBigEndian(((long) bArr.length) * 8, bArr2, 0);
        }
        return bArr2;
    }

    public Mac getMac() {
        return this.mac;
    }

    public void init(boolean z, CipherParameters cipherParameters, CipherParameters cipherParameters2, CipherParameters cipherParameters3) {
        this.forEncryption = z;
        this.privParam = cipherParameters;
        this.pubParam = cipherParameters2;
        this.V = new byte[0];
        extractParams(cipherParameters3);
    }

    public byte[] processBlock(byte[] bArr, int i2, int i3) throws InvalidCipherTextException {
        if (this.forEncryption) {
            EphemeralKeyPairGenerator ephemeralKeyPairGenerator = this.keyPairGenerator;
            if (ephemeralKeyPairGenerator != null) {
                EphemeralKeyPair ephemeralKeyPairGenerate = ephemeralKeyPairGenerator.generate();
                this.privParam = ephemeralKeyPairGenerate.getKeyPair().getPrivate();
                this.V = ephemeralKeyPairGenerate.getEncodedPublicKey();
            }
        } else if (this.keyParser != null) {
            ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(bArr, i2, i3);
            try {
                this.pubParam = this.keyParser.readKey(byteArrayInputStream);
                this.V = Arrays.copyOfRange(bArr, i2, (i3 - byteArrayInputStream.available()) + i2);
            } catch (IOException e2) {
                throw new InvalidCipherTextException(n00.o(e2, new StringBuilder("unable to recover ephemeral public key: ")), e2);
            } catch (IllegalArgumentException e3) {
                throw new InvalidCipherTextException(d21.i(e3, new StringBuilder("unable to recover ephemeral public key: ")), e3);
            }
        }
        this.agree.init(this.privParam);
        byte[] bArrAsUnsignedByteArray = BigIntegers.asUnsignedByteArray(this.agree.getFieldSize(), this.agree.calculateAgreement(this.pubParam));
        byte[] bArr2 = this.V;
        if (bArr2.length != 0) {
            byte[] bArrConcatenate = Arrays.concatenate(bArr2, bArrAsUnsignedByteArray);
            Arrays.fill(bArrAsUnsignedByteArray, (byte) 0);
            bArrAsUnsignedByteArray = bArrConcatenate;
        }
        try {
            this.kdf.init(new KDFParameters(bArrAsUnsignedByteArray, this.param.getDerivationV()));
            return this.forEncryption ? encryptBlock(bArr, i2, i3) : decryptBlock(bArr, i2, i3);
        } finally {
            Arrays.fill(bArrAsUnsignedByteArray, (byte) 0);
        }
    }

    public void init(AsymmetricKeyParameter asymmetricKeyParameter, CipherParameters cipherParameters, EphemeralKeyPairGenerator ephemeralKeyPairGenerator) {
        this.forEncryption = true;
        this.pubParam = asymmetricKeyParameter;
        this.keyPairGenerator = ephemeralKeyPairGenerator;
        extractParams(cipherParameters);
    }

    public void init(AsymmetricKeyParameter asymmetricKeyParameter, CipherParameters cipherParameters, KeyParser keyParser) {
        this.forEncryption = false;
        this.privParam = asymmetricKeyParameter;
        this.keyParser = keyParser;
        extractParams(cipherParameters);
    }

    public EthereumIESEngine(BasicAgreement basicAgreement, DerivationFunction derivationFunction, Mac mac, byte[] bArr, BufferedBlockCipher bufferedBlockCipher) {
        this.agree = basicAgreement;
        this.kdf = derivationFunction;
        this.mac = mac;
        this.macBuf = new byte[mac.getMacSize()];
        this.commonMac = bArr;
        this.cipher = bufferedBlockCipher;
    }
}
