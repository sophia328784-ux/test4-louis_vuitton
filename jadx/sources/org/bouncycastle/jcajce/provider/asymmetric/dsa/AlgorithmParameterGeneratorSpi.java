package org.bouncycastle.jcajce.provider.asymmetric.dsa;

import defpackage.mt;
import defpackage.v7;
import java.security.AlgorithmParameters;
import java.security.InvalidAlgorithmParameterException;
import java.security.SecureRandom;
import java.security.spec.AlgorithmParameterSpec;
import java.security.spec.DSAParameterSpec;
import org.bouncycastle.crypto.CryptoServicesRegistrar;
import org.bouncycastle.crypto.digests.SHA256Digest;
import org.bouncycastle.crypto.generators.DSAParametersGenerator;
import org.bouncycastle.crypto.params.DSAParameterGenerationParameters;
import org.bouncycastle.crypto.params.DSAParameters;
import org.bouncycastle.jcajce.provider.asymmetric.util.BaseAlgorithmParameterGeneratorSpi;
import org.bouncycastle.jcajce.provider.asymmetric.util.PrimeCertaintyCalculator;

/* JADX INFO: loaded from: classes5.dex */
public class AlgorithmParameterGeneratorSpi extends BaseAlgorithmParameterGeneratorSpi {
    protected DSAParameterGenerationParameters params;
    protected SecureRandom random;
    protected int strength = 2048;

    @Override // java.security.AlgorithmParameterGeneratorSpi
    public AlgorithmParameters engineGenerateParameters() {
        DSAParametersGenerator dSAParametersGenerator = this.strength <= 1024 ? new DSAParametersGenerator() : new DSAParametersGenerator(SHA256Digest.newInstance());
        if (this.random == null) {
            this.random = CryptoServicesRegistrar.getSecureRandom();
        }
        int defaultCertainty = PrimeCertaintyCalculator.getDefaultCertainty(this.strength);
        int i2 = this.strength;
        if (i2 == 1024) {
            DSAParameterGenerationParameters dSAParameterGenerationParameters = new DSAParameterGenerationParameters(1024, 160, defaultCertainty, this.random);
            this.params = dSAParameterGenerationParameters;
            dSAParametersGenerator.init(dSAParameterGenerationParameters);
        } else {
            SecureRandom secureRandom = this.random;
            if (i2 > 1024) {
                DSAParameterGenerationParameters dSAParameterGenerationParameters2 = new DSAParameterGenerationParameters(i2, 256, defaultCertainty, secureRandom);
                this.params = dSAParameterGenerationParameters2;
                dSAParametersGenerator.init(dSAParameterGenerationParameters2);
            } else {
                dSAParametersGenerator.init(i2, defaultCertainty, secureRandom);
            }
        }
        DSAParameters dSAParametersGenerateParameters = dSAParametersGenerator.generateParameters();
        try {
            AlgorithmParameters algorithmParametersCreateParametersInstance = createParametersInstance("DSA");
            algorithmParametersCreateParametersInstance.init(new DSAParameterSpec(dSAParametersGenerateParameters.getP(), dSAParametersGenerateParameters.getQ(), dSAParametersGenerateParameters.getG()));
            return algorithmParametersCreateParametersInstance;
        } catch (Exception e2) {
            v7.h(e2.getMessage());
            return null;
        }
    }

    @Override // java.security.AlgorithmParameterGeneratorSpi
    public void engineInit(int i2, SecureRandom secureRandom) {
        if (i2 < 512 || i2 > 3072) {
            mt.m("strength must be from 512 - 3072");
            return;
        }
        if (i2 <= 1024 && i2 % 64 != 0) {
            mt.m("strength must be a multiple of 64 below 1024 bits.");
        } else if (i2 > 1024 && i2 % 1024 != 0) {
            mt.m("strength must be a multiple of 1024 above 1024 bits.");
        } else {
            this.strength = i2;
            this.random = secureRandom;
        }
    }

    @Override // java.security.AlgorithmParameterGeneratorSpi
    public void engineInit(AlgorithmParameterSpec algorithmParameterSpec, SecureRandom secureRandom) throws InvalidAlgorithmParameterException {
        throw new InvalidAlgorithmParameterException("No supported AlgorithmParameterSpec for DSA parameter generation.");
    }
}
