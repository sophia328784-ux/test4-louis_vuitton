package com.networkbench.agent.impl.util.a.a;

import com.networkbench.agent.impl.util.Logger;
import java.io.ByteArrayInputStream;
import java.io.FileInputStream;
import java.io.InputStream;
import java.security.NoSuchProviderException;
import java.security.Security;
import java.security.cert.CertPath;
import java.security.cert.CertificateEncodingException;
import java.security.cert.CertificateException;
import java.security.cert.CertificateFactory;
import java.security.cert.X509Certificate;
import java.util.List;
import org.bouncycastle.asn1.ASN1Primitive;
import org.bouncycastle.asn1.pkcs.ContentInfo;
import org.bouncycastle.asn1.pkcs.PKCSObjectIdentifiers;
import org.bouncycastle.cert.X509CertificateHolder;
import org.bouncycastle.jcajce.provider.asymmetric.ec.BCECPrivateKey;
import org.bouncycastle.jcajce.provider.asymmetric.ec.BCECPublicKey;
import org.bouncycastle.jce.interfaces.ECPublicKey;
import org.bouncycastle.jce.provider.BouncyCastleProvider;
import org.bouncycastle.jce.spec.ECParameterSpec;
import org.bouncycastle.jce.spec.ECPublicKeySpec;
import org.bouncycastle.openssl.PEMParser;
import org.bouncycastle.operator.InputDecryptorProvider;
import org.bouncycastle.pkcs.PKCS12PfxPdu;
import org.bouncycastle.pkcs.PKCS12SafeBagFactory;
import org.bouncycastle.pkcs.PKCS8EncryptedPrivateKeyInfo;
import org.bouncycastle.pkcs.jcajce.JcePKCSPBEInputDecryptorProviderBuilder;

/* JADX INFO: loaded from: classes5.dex */
public class e {
    public static X509Certificate a(byte[] bArr, String str) throws Exception {
        InputDecryptorProvider inputDecryptorProviderBuild = new JcePKCSPBEInputDecryptorProviderBuilder().setProvider(BouncyCastleProvider.PROVIDER_NAME).build(str.toCharArray());
        ContentInfo[] contentInfos = new PKCS12PfxPdu(bArr).getContentInfos();
        if (contentInfos.length != 2) {
            throw new Exception("Only support one pair ContentInfo");
        }
        for (int i2 = 0; i2 != contentInfos.length; i2++) {
            if (contentInfos[i2].getContentType().equals((ASN1Primitive) PKCSObjectIdentifiers.encryptedData)) {
                return a(((X509CertificateHolder) new PKCS12SafeBagFactory(contentInfos[i2], inputDecryptorProviderBuild).getSafeBags()[0].getBagValue()).getEncoded());
            }
        }
        throw new Exception("Not found X509Certificate in this pfx");
    }

    public static CertPath b(String str) throws Throwable {
        FileInputStream fileInputStream = null;
        try {
            FileInputStream fileInputStream2 = new FileInputStream(str);
            try {
                CertPath certPathB = b(fileInputStream2);
                fileInputStream2.close();
                return certPathB;
            } catch (Throwable th) {
                th = th;
                fileInputStream = fileInputStream2;
                if (fileInputStream != null) {
                    fileInputStream.close();
                }
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    public static BCECPrivateKey c(byte[] bArr, String str) throws Exception {
        InputDecryptorProvider inputDecryptorProviderBuild = new JcePKCSPBEInputDecryptorProviderBuilder().setProvider(BouncyCastleProvider.PROVIDER_NAME).build(str.toCharArray());
        ContentInfo[] contentInfos = new PKCS12PfxPdu(bArr).getContentInfos();
        if (contentInfos.length != 2) {
            throw new Exception("Only support one pair ContentInfo");
        }
        for (int i2 = 0; i2 != contentInfos.length; i2++) {
            if (!contentInfos[i2].getContentType().equals((ASN1Primitive) PKCSObjectIdentifiers.encryptedData)) {
                return com.networkbench.agent.impl.util.a.a.a(((PKCS8EncryptedPrivateKeyInfo) new PKCS12SafeBagFactory(contentInfos[i2]).getSafeBags()[0].getBagValue()).decryptPrivateKeyInfo(inputDecryptorProviderBuild).getEncoded());
            }
        }
        throw new Exception("Not found Private Key in this pfx");
    }

    public static CertPath b(byte[] bArr) throws CertificateException, NoSuchProviderException {
        return b(new ByteArrayInputStream(bArr));
    }

    public static CertPath b(InputStream inputStream) throws CertificateException, NoSuchProviderException {
        return CertificateFactory.getInstance("X.509", BouncyCastleProvider.PROVIDER_NAME).generateCertPath(inputStream, PEMParser.TYPE_PKCS7);
    }

    public static BCECPublicKey b(byte[] bArr, String str) throws Exception {
        return a(a(bArr, str));
    }

    public static void a() throws NoClassDefFoundError {
        Security.addProvider(new BouncyCastleProvider());
    }

    public static boolean a(BCECPublicKey bCECPublicKey, X509Certificate x509Certificate) {
        try {
            Security.removeProvider(BouncyCastleProvider.PROVIDER_NAME);
            Security.addProvider(new BouncyCastleProvider());
            x509Certificate.verify(bCECPublicKey, BouncyCastleProvider.PROVIDER_NAME);
            return true;
        } catch (Throwable th) {
            Logger.error("NBSAgent", "error verifyCertificate", th);
            return false;
        }
    }

    public static X509Certificate a(String str) throws Throwable {
        FileInputStream fileInputStream = null;
        try {
            FileInputStream fileInputStream2 = new FileInputStream(str);
            try {
                X509Certificate x509CertificateA = a(fileInputStream2);
                fileInputStream2.close();
                return x509CertificateA;
            } catch (Throwable th) {
                th = th;
                fileInputStream = fileInputStream2;
                if (fileInputStream != null) {
                    fileInputStream.close();
                }
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    public static X509Certificate a(byte[] bArr) throws CertificateException, NoSuchProviderException {
        return a(new ByteArrayInputStream(bArr));
    }

    public static X509Certificate a(InputStream inputStream) throws CertificateException, NoSuchProviderException {
        return (X509Certificate) CertificateFactory.getInstance("X.509", BouncyCastleProvider.PROVIDER_NAME).generateCertificate(inputStream);
    }

    public static byte[] a(CertPath certPath) throws CertificateEncodingException {
        return certPath.getEncoded(PEMParser.TYPE_PKCS7);
    }

    public static CertPath a(List<X509Certificate> list) throws CertificateException, NoSuchProviderException {
        return CertificateFactory.getInstance("X.509", BouncyCastleProvider.PROVIDER_NAME).generateCertPath(list);
    }

    public static BCECPublicKey a(X509Certificate x509Certificate) {
        ECPublicKey eCPublicKey = (ECPublicKey) x509Certificate.getPublicKey();
        return new BCECPublicKey(eCPublicKey.getAlgorithm(), new ECPublicKeySpec(eCPublicKey.getQ(), new ECParameterSpec(com.networkbench.agent.impl.util.a.f.f38284a, com.networkbench.agent.impl.util.a.f.f38290i, com.networkbench.agent.impl.util.a.f.f38287e, com.networkbench.agent.impl.util.a.f.f38288f)), BouncyCastleProvider.CONFIGURATION);
    }
}
