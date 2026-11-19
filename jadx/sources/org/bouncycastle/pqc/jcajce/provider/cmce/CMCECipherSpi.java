package org.bouncycastle.pqc.jcajce.provider.cmce;

import defpackage.d21;
import defpackage.fc;
import defpackage.md;
import defpackage.mt;
import defpackage.n00;
import defpackage.tr;
import defpackage.wp;
import java.security.AlgorithmParameters;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.Key;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import java.security.spec.AlgorithmParameterSpec;
import javax.crypto.BadPaddingException;
import javax.crypto.CipherSpi;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.ShortBufferException;
import javax.crypto.spec.SecretKeySpec;
import javax.security.auth.DestroyFailedException;
import org.bouncycastle.crypto.CryptoServicesRegistrar;
import org.bouncycastle.crypto.InvalidCipherTextException;
import org.bouncycastle.crypto.SecretWithEncapsulation;
import org.bouncycastle.crypto.Wrapper;
import org.bouncycastle.crypto.params.KeyParameter;
import org.bouncycastle.jcajce.spec.KEMParameterSpec;
import org.bouncycastle.jcajce.spec.KTSParameterSpec;
import org.bouncycastle.pqc.crypto.cmce.CMCEKEMExtractor;
import org.bouncycastle.pqc.crypto.cmce.CMCEKEMGenerator;
import org.bouncycastle.pqc.crypto.cmce.CMCEParameters;
import org.bouncycastle.pqc.jcajce.provider.util.WrapUtil;
import org.bouncycastle.util.Arrays;
import org.bouncycastle.util.Exceptions;
import org.bouncycastle.util.Strings;

/* JADX INFO: loaded from: classes5.dex */
class CMCECipherSpi extends CipherSpi {
    private final String algorithmName;
    private CMCEParameters cmceParameters;
    private AlgorithmParameters engineParams;
    private CMCEKEMGenerator kemGen;
    private KTSParameterSpec kemParameterSpec;
    private BCCMCEPrivateKey unwrapKey;
    private BCCMCEPublicKey wrapKey;

    public static class Base extends CMCECipherSpi {
        public Base() throws NoSuchAlgorithmException {
            super("CMCE");
        }
    }

    public static class MCE348864 extends CMCECipherSpi {
        public MCE348864() throws NoSuchAlgorithmException {
            super(CMCEParameters.mceliece348864r3);
        }
    }

    public static class MCE460896 extends CMCECipherSpi {
        public MCE460896() throws NoSuchAlgorithmException {
            super(CMCEParameters.mceliece460896r3);
        }
    }

    public static class MCE6688128 extends CMCECipherSpi {
        public MCE6688128() throws NoSuchAlgorithmException {
            super(CMCEParameters.mceliece6688128r3);
        }
    }

    public static class MCE6960119 extends CMCECipherSpi {
        public MCE6960119() throws NoSuchAlgorithmException {
            super(CMCEParameters.mceliece6960119r3);
        }
    }

    public static class MCE8192128 extends CMCECipherSpi {
        public MCE8192128() throws NoSuchAlgorithmException {
            super(CMCEParameters.mceliece8192128r3);
        }
    }

    public CMCECipherSpi(CMCEParameters cMCEParameters) {
        this.cmceParameters = cMCEParameters;
        this.algorithmName = Strings.toUpperCase(cMCEParameters.getName());
    }

    @Override // javax.crypto.CipherSpi
    public int engineDoFinal(byte[] bArr, int i2, int i3, byte[] bArr2, int i4) throws BadPaddingException, IllegalBlockSizeException, ShortBufferException {
        throw new IllegalStateException("Not supported in a wrapping mode");
    }

    @Override // javax.crypto.CipherSpi
    public int engineGetBlockSize() {
        return 0;
    }

    @Override // javax.crypto.CipherSpi
    public byte[] engineGetIV() {
        return null;
    }

    @Override // javax.crypto.CipherSpi
    public int engineGetKeySize(Key key) {
        return 2048;
    }

    @Override // javax.crypto.CipherSpi
    public int engineGetOutputSize(int i2) {
        return -1;
    }

    @Override // javax.crypto.CipherSpi
    public AlgorithmParameters engineGetParameters() {
        if (this.engineParams == null) {
            try {
                AlgorithmParameters algorithmParameters = AlgorithmParameters.getInstance(this.algorithmName, "BCPQC");
                this.engineParams = algorithmParameters;
                algorithmParameters.init(this.kemParameterSpec);
            } catch (Exception e2) {
                throw Exceptions.illegalStateException(e2.toString(), e2);
            }
        }
        return this.engineParams;
    }

    @Override // javax.crypto.CipherSpi
    public void engineInit(int i2, Key key, AlgorithmParameterSpec algorithmParameterSpec, SecureRandom secureRandom) throws InvalidKeyException, InvalidAlgorithmParameterException {
        KTSParameterSpec kEMParameterSpec;
        if (algorithmParameterSpec == null) {
            kEMParameterSpec = new KEMParameterSpec("AES-KWP");
        } else {
            if (!(algorithmParameterSpec instanceof KTSParameterSpec)) {
                throw new InvalidAlgorithmParameterException(n00.r(this.algorithmName, " can only accept KTSParameterSpec", new StringBuilder()));
            }
            kEMParameterSpec = (KTSParameterSpec) algorithmParameterSpec;
        }
        this.kemParameterSpec = kEMParameterSpec;
        if (i2 == 3) {
            if (!(key instanceof BCCMCEPublicKey)) {
                throw new InvalidKeyException(n00.r(this.algorithmName, " public key can be used for wrapping", new StringBuilder("Only a ")));
            }
            this.wrapKey = (BCCMCEPublicKey) key;
            this.kemGen = new CMCEKEMGenerator(CryptoServicesRegistrar.getSecureRandom(secureRandom));
        } else if (i2 != 4) {
            mt.m("Cipher only valid for wrapping/unwrapping");
            return;
        } else {
            if (!(key instanceof BCCMCEPrivateKey)) {
                throw new InvalidKeyException(n00.r(this.algorithmName, " private key can be used for unwrapping", new StringBuilder("Only a ")));
            }
            this.unwrapKey = (BCCMCEPrivateKey) key;
        }
        CMCEParameters cMCEParameters = this.cmceParameters;
        if (cMCEParameters != null) {
            String upperCase = Strings.toUpperCase(cMCEParameters.getName());
            if (!upperCase.equals(key.getAlgorithm())) {
                throw new InvalidKeyException("cipher locked to ".concat(upperCase));
            }
        }
    }

    @Override // javax.crypto.CipherSpi
    public void engineSetMode(String str) throws NoSuchAlgorithmException {
        throw new NoSuchAlgorithmException(tr.g("Cannot support mode ", str));
    }

    @Override // javax.crypto.CipherSpi
    public void engineSetPadding(String str) throws NoSuchPaddingException {
        throw new NoSuchPaddingException(fc.h("Padding ", str, " unknown"));
    }

    @Override // javax.crypto.CipherSpi
    public Key engineUnwrap(byte[] bArr, String str, int i2) throws NoSuchAlgorithmException, InvalidKeyException {
        if (i2 != 3) {
            wp.d("only SECRET_KEY supported");
            return null;
        }
        try {
            CMCEKEMExtractor cMCEKEMExtractor = new CMCEKEMExtractor(this.unwrapKey.getKeyParams());
            byte[] bArrExtractSecret = cMCEKEMExtractor.extractSecret(Arrays.copyOfRange(bArr, 0, cMCEKEMExtractor.getEncapsulationLength()));
            Wrapper wrapper = WrapUtil.getWrapper(this.kemParameterSpec.getKeyAlgorithmName());
            KeyParameter keyParameter = new KeyParameter(bArrExtractSecret);
            Arrays.clear(bArrExtractSecret);
            wrapper.init(false, keyParameter);
            byte[] bArrCopyOfRange = Arrays.copyOfRange(bArr, cMCEKEMExtractor.getEncapsulationLength(), bArr.length);
            SecretKeySpec secretKeySpec = new SecretKeySpec(wrapper.unwrap(bArrCopyOfRange, 0, bArrCopyOfRange.length), str);
            Arrays.clear(keyParameter.getKey());
            return secretKeySpec;
        } catch (IllegalArgumentException e2) {
            throw new NoSuchAlgorithmException(d21.i(e2, new StringBuilder("unable to extract KTS secret: ")));
        } catch (InvalidCipherTextException e3) {
            throw new InvalidKeyException("unable to extract KTS secret: " + e3.getMessage());
        }
    }

    @Override // javax.crypto.CipherSpi
    public int engineUpdate(byte[] bArr, int i2, int i3, byte[] bArr2, int i4) throws ShortBufferException {
        throw new IllegalStateException("Not supported in a wrapping mode");
    }

    @Override // javax.crypto.CipherSpi
    public byte[] engineWrap(Key key) throws IllegalBlockSizeException, InvalidKeyException {
        if (key.getEncoded() == null) {
            wp.d("Cannot wrap key, null encoding.");
            return null;
        }
        try {
            SecretWithEncapsulation secretWithEncapsulationGenerateEncapsulated = this.kemGen.generateEncapsulated(this.wrapKey.getKeyParams());
            Wrapper wrapper = WrapUtil.getWrapper(this.kemParameterSpec.getKeyAlgorithmName());
            wrapper.init(true, new KeyParameter(secretWithEncapsulationGenerateEncapsulated.getSecret()));
            byte[] encapsulation = secretWithEncapsulationGenerateEncapsulated.getEncapsulation();
            secretWithEncapsulationGenerateEncapsulated.destroy();
            byte[] encoded = key.getEncoded();
            byte[] bArrConcatenate = Arrays.concatenate(encapsulation, wrapper.wrap(encoded, 0, encoded.length));
            Arrays.clear(encoded);
            return bArrConcatenate;
        } catch (IllegalArgumentException e2) {
            throw new IllegalBlockSizeException(d21.i(e2, new StringBuilder("unable to generate KTS secret: ")));
        } catch (DestroyFailedException e3) {
            throw new IllegalBlockSizeException("unable to destroy interim values: " + e3.getMessage());
        }
    }

    @Override // javax.crypto.CipherSpi
    public byte[] engineDoFinal(byte[] bArr, int i2, int i3) throws BadPaddingException, IllegalBlockSizeException {
        throw new IllegalStateException("Not supported in a wrapping mode");
    }

    @Override // javax.crypto.CipherSpi
    public byte[] engineUpdate(byte[] bArr, int i2, int i3) {
        throw new IllegalStateException("Not supported in a wrapping mode");
    }

    public CMCECipherSpi(String str) {
        this.algorithmName = str;
    }

    @Override // javax.crypto.CipherSpi
    public void engineInit(int i2, Key key, SecureRandom secureRandom) throws InvalidKeyException {
        try {
            engineInit(i2, key, (AlgorithmParameterSpec) null, secureRandom);
        } catch (InvalidAlgorithmParameterException e2) {
            throw Exceptions.illegalArgumentException(e2.getMessage(), e2);
        }
    }

    @Override // javax.crypto.CipherSpi
    public void engineInit(int i2, Key key, AlgorithmParameters algorithmParameters, SecureRandom secureRandom) throws InvalidKeyException, InvalidAlgorithmParameterException {
        AlgorithmParameterSpec parameterSpec;
        if (algorithmParameters != null) {
            try {
                parameterSpec = algorithmParameters.getParameterSpec(KEMParameterSpec.class);
            } catch (Exception unused) {
                md.m(algorithmParameters);
                return;
            }
        } else {
            parameterSpec = null;
        }
        engineInit(i2, key, parameterSpec, secureRandom);
    }
}
