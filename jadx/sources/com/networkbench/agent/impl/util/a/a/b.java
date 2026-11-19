package com.networkbench.agent.impl.util.a.a;

import java.security.PrivateKey;
import java.util.Map;
import org.bouncycastle.asn1.x500.X500Name;
import org.bouncycastle.asn1.x500.X500NameBuilder;
import org.bouncycastle.asn1.x500.style.BCStyle;
import org.bouncycastle.asn1.x509.AlgorithmIdentifier;
import org.bouncycastle.jce.provider.BouncyCastleProvider;
import org.bouncycastle.operator.DefaultDigestAlgorithmIdentifierFinder;
import org.bouncycastle.operator.DefaultSignatureAlgorithmIdentifierFinder;
import org.bouncycastle.operator.OperatorCreationException;
import org.bouncycastle.operator.jcajce.JcaContentSignerBuilder;
import org.bouncycastle.pkcs.PKCS10CertificationRequest;
import org.bouncycastle.pkcs.jcajce.JcaPKCS10CertificationRequestBuilder;

/* JADX INFO: loaded from: classes5.dex */
public class b {
    public static X500Name a(Map<String, String> map) throws com.networkbench.agent.impl.util.a.a.a.a {
        if (map == null || map.size() == 0) {
            throw new com.networkbench.agent.impl.util.a.a.a.a("names can not be empty");
        }
        try {
            X500NameBuilder x500NameBuilder = new X500NameBuilder();
            BCStyle bCStyle = (BCStyle) BCStyle.INSTANCE;
            for (Map.Entry<String, String> entry : map.entrySet()) {
                x500NameBuilder.addRDN(bCStyle.attrNameToOID(entry.getKey()), entry.getValue());
            }
            return x500NameBuilder.build();
        } catch (Throwable th) {
            throw new com.networkbench.agent.impl.util.a.a.a.a(th.getMessage(), th);
        }
    }

    public static AlgorithmIdentifier b(String str) {
        return new DefaultDigestAlgorithmIdentifierFinder().find(a(str));
    }

    public static PKCS10CertificationRequest a(X500Name x500Name, h hVar, PrivateKey privateKey, String str) throws OperatorCreationException {
        return new JcaPKCS10CertificationRequestBuilder(x500Name, hVar).build(new JcaContentSignerBuilder(str).setProvider(BouncyCastleProvider.PROVIDER_NAME).build(privateKey));
    }

    public static AlgorithmIdentifier a(String str) {
        return new DefaultSignatureAlgorithmIdentifierFinder().find(str);
    }
}
