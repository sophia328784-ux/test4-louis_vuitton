package com.networkbench.agent.impl.util.a.a;

import java.io.IOException;
import java.security.KeyStore;
import java.security.KeyStoreException;
import java.security.NoSuchAlgorithmException;
import java.security.NoSuchProviderException;
import java.security.PrivateKey;
import java.security.cert.CertificateException;
import java.security.cert.X509Certificate;
import org.bouncycastle.jce.provider.BouncyCastleProvider;

/* JADX INFO: loaded from: classes5.dex */
public class g {
    public KeyStore a(PrivateKey privateKey, X509Certificate[] x509CertificateArr, char[] cArr) throws NoSuchAlgorithmException, IOException, KeyStoreException, CertificateException, NoSuchProviderException {
        KeyStore keyStore = KeyStore.getInstance("PKCS12", BouncyCastleProvider.PROVIDER_NAME);
        keyStore.load(null, cArr);
        keyStore.setKeyEntry("User Key", privateKey, cArr, x509CertificateArr);
        return keyStore;
    }

    public KeyStore a(PrivateKey privateKey, X509Certificate x509Certificate, char[] cArr) throws NoSuchAlgorithmException, IOException, KeyStoreException, CertificateException, NoSuchProviderException {
        return a(privateKey, new X509Certificate[]{x509Certificate}, cArr);
    }
}
