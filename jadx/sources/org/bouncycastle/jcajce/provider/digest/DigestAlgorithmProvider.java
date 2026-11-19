package org.bouncycastle.jcajce.provider.digest;

import defpackage.tr;
import org.bouncycastle.asn1.ASN1ObjectIdentifier;
import org.bouncycastle.jcajce.provider.config.ConfigurableProvider;
import org.bouncycastle.jcajce.provider.util.AlgorithmProvider;

/* JADX INFO: loaded from: classes5.dex */
abstract class DigestAlgorithmProvider extends AlgorithmProvider {
    public void addHMACAlgorithm(ConfigurableProvider configurableProvider, String str, String str2, String str3) {
        String strG = tr.g("HMAC", str);
        configurableProvider.addAlgorithm("Mac.".concat(strG), str2);
        configurableProvider.addAlgorithm("Alg.Alias.Mac.HMAC-" + str, strG);
        configurableProvider.addAlgorithm("Alg.Alias.Mac.HMAC/" + str, strG);
        configurableProvider.addAlgorithm("KeyGenerator.".concat(strG), str3);
        configurableProvider.addAlgorithm("Alg.Alias.KeyGenerator.HMAC-" + str, strG);
        configurableProvider.addAlgorithm("Alg.Alias.KeyGenerator.HMAC/" + str, strG);
    }

    public void addHMACAlias(ConfigurableProvider configurableProvider, String str, ASN1ObjectIdentifier aSN1ObjectIdentifier) {
        String strG = tr.g("HMAC", str);
        configurableProvider.addAlgorithm("Alg.Alias.Mac." + aSN1ObjectIdentifier, strG);
        tr.A(new StringBuilder("Alg.Alias.KeyGenerator."), aSN1ObjectIdentifier, configurableProvider, strG);
    }

    public void addKMACAlgorithm(ConfigurableProvider configurableProvider, String str, String str2, String str3) {
        String strG = tr.g("KMAC", str);
        configurableProvider.addAlgorithm("Mac.".concat(strG), str2);
        configurableProvider.addAlgorithm("KeyGenerator.".concat(strG), str3);
        configurableProvider.addAlgorithm("Alg.Alias.KeyGenerator.KMAC" + str, strG);
    }
}
