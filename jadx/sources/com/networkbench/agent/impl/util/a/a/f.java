package com.networkbench.agent.impl.util.a.a;

import java.io.IOException;
import java.security.NoSuchAlgorithmException;
import java.security.PrivateKey;
import java.security.PublicKey;
import java.security.cert.X509Certificate;
import org.bouncycastle.asn1.ASN1ObjectIdentifier;
import org.bouncycastle.asn1.DERBMPString;
import org.bouncycastle.asn1.pkcs.PKCSObjectIdentifiers;
import org.bouncycastle.cert.jcajce.JcaX509ExtensionUtils;
import org.bouncycastle.crypto.engines.DESedeEngine;
import org.bouncycastle.crypto.engines.RC2Engine;
import org.bouncycastle.crypto.modes.CBCBlockCipher;
import org.bouncycastle.pkcs.PKCS12PfxPdu;
import org.bouncycastle.pkcs.PKCS12PfxPduBuilder;
import org.bouncycastle.pkcs.PKCS12SafeBag;
import org.bouncycastle.pkcs.PKCSException;
import org.bouncycastle.pkcs.bc.BcPKCS12MacCalculatorBuilder;
import org.bouncycastle.pkcs.bc.BcPKCS12PBEOutputEncryptorBuilder;
import org.bouncycastle.pkcs.jcajce.JcaPKCS12SafeBagBuilder;

/* JADX INFO: loaded from: classes5.dex */
public class f {
    public PKCS12PfxPdu a(PrivateKey privateKey, PublicKey publicKey, X509Certificate[] x509CertificateArr, String str) throws NoSuchAlgorithmException, IOException, PKCSException {
        JcaX509ExtensionUtils jcaX509ExtensionUtils = new JcaX509ExtensionUtils();
        JcaPKCS12SafeBagBuilder jcaPKCS12SafeBagBuilder = new JcaPKCS12SafeBagBuilder(x509CertificateArr[2]);
        ASN1ObjectIdentifier aSN1ObjectIdentifier = PKCSObjectIdentifiers.pkcs_9_at_friendlyName;
        jcaPKCS12SafeBagBuilder.addBagAttribute(aSN1ObjectIdentifier, new DERBMPString("Primary Certificate"));
        JcaPKCS12SafeBagBuilder jcaPKCS12SafeBagBuilder2 = new JcaPKCS12SafeBagBuilder(x509CertificateArr[1]);
        jcaPKCS12SafeBagBuilder2.addBagAttribute(aSN1ObjectIdentifier, new DERBMPString("Intermediate Certificate"));
        JcaPKCS12SafeBagBuilder jcaPKCS12SafeBagBuilder3 = new JcaPKCS12SafeBagBuilder(x509CertificateArr[0]);
        jcaPKCS12SafeBagBuilder3.addBagAttribute(aSN1ObjectIdentifier, new DERBMPString("User Key"));
        ASN1ObjectIdentifier aSN1ObjectIdentifier2 = PKCSObjectIdentifiers.pkcs_9_at_localKeyId;
        jcaPKCS12SafeBagBuilder3.addBagAttribute(aSN1ObjectIdentifier2, jcaX509ExtensionUtils.createSubjectKeyIdentifier(publicKey));
        char[] charArray = str.toCharArray();
        JcaPKCS12SafeBagBuilder jcaPKCS12SafeBagBuilder4 = new JcaPKCS12SafeBagBuilder(privateKey, new BcPKCS12PBEOutputEncryptorBuilder(PKCSObjectIdentifiers.pbeWithSHAAnd3_KeyTripleDES_CBC, new CBCBlockCipher(new DESedeEngine())).build(charArray));
        jcaPKCS12SafeBagBuilder4.addBagAttribute(aSN1ObjectIdentifier, new DERBMPString("User Key"));
        jcaPKCS12SafeBagBuilder4.addBagAttribute(aSN1ObjectIdentifier2, jcaX509ExtensionUtils.createSubjectKeyIdentifier(publicKey));
        PKCS12PfxPduBuilder pKCS12PfxPduBuilder = new PKCS12PfxPduBuilder();
        pKCS12PfxPduBuilder.addEncryptedData(new BcPKCS12PBEOutputEncryptorBuilder(PKCSObjectIdentifiers.pbeWithSHAAnd40BitRC2_CBC, new CBCBlockCipher(new RC2Engine())).build(charArray), new PKCS12SafeBag[]{jcaPKCS12SafeBagBuilder3.build(), jcaPKCS12SafeBagBuilder2.build(), jcaPKCS12SafeBagBuilder.build()});
        pKCS12PfxPduBuilder.addData(jcaPKCS12SafeBagBuilder4.build());
        return pKCS12PfxPduBuilder.build(new BcPKCS12MacCalculatorBuilder(), charArray);
    }

    public PKCS12PfxPdu a(PrivateKey privateKey, PublicKey publicKey, X509Certificate x509Certificate, String str) throws NoSuchAlgorithmException, IOException, PKCSException {
        JcaX509ExtensionUtils jcaX509ExtensionUtils = new JcaX509ExtensionUtils();
        JcaPKCS12SafeBagBuilder jcaPKCS12SafeBagBuilder = new JcaPKCS12SafeBagBuilder(x509Certificate);
        ASN1ObjectIdentifier aSN1ObjectIdentifier = PKCSObjectIdentifiers.pkcs_9_at_friendlyName;
        jcaPKCS12SafeBagBuilder.addBagAttribute(aSN1ObjectIdentifier, new DERBMPString("User Key"));
        ASN1ObjectIdentifier aSN1ObjectIdentifier2 = PKCSObjectIdentifiers.pkcs_9_at_localKeyId;
        jcaPKCS12SafeBagBuilder.addBagAttribute(aSN1ObjectIdentifier2, jcaX509ExtensionUtils.createSubjectKeyIdentifier(publicKey));
        char[] charArray = str.toCharArray();
        JcaPKCS12SafeBagBuilder jcaPKCS12SafeBagBuilder2 = new JcaPKCS12SafeBagBuilder(privateKey, new BcPKCS12PBEOutputEncryptorBuilder(PKCSObjectIdentifiers.pbeWithSHAAnd3_KeyTripleDES_CBC, new CBCBlockCipher(new DESedeEngine())).build(charArray));
        jcaPKCS12SafeBagBuilder2.addBagAttribute(aSN1ObjectIdentifier, new DERBMPString("User Key"));
        jcaPKCS12SafeBagBuilder2.addBagAttribute(aSN1ObjectIdentifier2, jcaX509ExtensionUtils.createSubjectKeyIdentifier(publicKey));
        PKCS12PfxPduBuilder pKCS12PfxPduBuilder = new PKCS12PfxPduBuilder();
        pKCS12PfxPduBuilder.addEncryptedData(new BcPKCS12PBEOutputEncryptorBuilder(PKCSObjectIdentifiers.pbeWithSHAAnd40BitRC2_CBC, new CBCBlockCipher(new RC2Engine())).build(charArray), new PKCS12SafeBag[]{jcaPKCS12SafeBagBuilder.build()});
        pKCS12PfxPduBuilder.addData(jcaPKCS12SafeBagBuilder2.build());
        return pKCS12PfxPduBuilder.build(new BcPKCS12MacCalculatorBuilder(), charArray);
    }
}
