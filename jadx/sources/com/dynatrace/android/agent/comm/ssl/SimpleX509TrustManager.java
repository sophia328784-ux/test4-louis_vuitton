package com.dynatrace.android.agent.comm.ssl;

import java.security.KeyStore;
import java.security.KeyStoreException;
import java.security.NoSuchAlgorithmException;
import java.security.cert.CertificateException;
import java.security.cert.X509Certificate;
import javax.net.ssl.TrustManager;
import javax.net.ssl.TrustManagerFactory;
import javax.net.ssl.X509TrustManager;

/* JADX INFO: loaded from: classes2.dex */
public class SimpleX509TrustManager implements X509TrustManager {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final X509TrustManager f27337a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final X509Certificate[] f27338b;

    public SimpleX509TrustManager(KeyStore keyStore) throws NoSuchAlgorithmException, KeyStoreException {
        X509TrustManager x509TrustManager = null;
        this.f27337a = null;
        this.f27338b = null;
        TrustManagerFactory trustManagerFactory = TrustManagerFactory.getInstance(TrustManagerFactory.getDefaultAlgorithm());
        trustManagerFactory.init(keyStore);
        TrustManager[] trustManagers = trustManagerFactory.getTrustManagers();
        for (TrustManager trustManager : trustManagers) {
            if (trustManager instanceof X509TrustManager) {
                x509TrustManager = (X509TrustManager) trustManager;
                break;
            }
        }
        this.f27337a = x509TrustManager;
        if (x509TrustManager == null) {
            throw new NoSuchAlgorithmException("no trust manager found");
        }
        this.f27338b = x509TrustManager.getAcceptedIssuers();
    }

    @Override // javax.net.ssl.X509TrustManager
    public final void checkClientTrusted(X509Certificate[] x509CertificateArr, String str) throws CertificateException {
        this.f27337a.checkClientTrusted(x509CertificateArr, str);
    }

    @Override // javax.net.ssl.X509TrustManager
    public final void checkServerTrusted(X509Certificate[] x509CertificateArr, String str) throws CertificateException {
        X509Certificate x509Certificate;
        if (x509CertificateArr != null && x509CertificateArr.length == 1 && (x509Certificate = x509CertificateArr[0]) != null) {
            x509Certificate.checkValidity();
            X509Certificate[] x509CertificateArr2 = this.f27338b;
            if (x509CertificateArr2 != null) {
                for (X509Certificate x509Certificate2 : x509CertificateArr2) {
                    if (x509CertificateArr[0].equals(x509Certificate2)) {
                        return;
                    }
                }
            }
        }
        this.f27337a.checkServerTrusted(x509CertificateArr, str);
    }

    @Override // javax.net.ssl.X509TrustManager
    public final X509Certificate[] getAcceptedIssuers() {
        return this.f27338b;
    }
}
