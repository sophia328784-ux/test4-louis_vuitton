package com.dynatrace.android.agent.comm.ssl;

import java.security.KeyStore;
import java.security.KeyStoreException;
import java.security.NoSuchAlgorithmException;
import java.security.cert.CertificateException;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import javax.net.ssl.X509TrustManager;

/* JADX INFO: loaded from: classes2.dex */
public class LocalX509TrustManager implements X509TrustManager {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final SimpleX509TrustManager f27334a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final SimpleX509TrustManager f27335b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final X509Certificate[] f27336c;
    public final boolean d;

    public LocalX509TrustManager(KeyStore keyStore, boolean z) throws NoSuchAlgorithmException, KeyStoreException {
        this.f27334a = null;
        this.f27335b = null;
        this.d = z;
        ArrayList arrayList = new ArrayList();
        SimpleX509TrustManager simpleX509TrustManager = new SimpleX509TrustManager(null);
        this.f27335b = simpleX509TrustManager;
        for (X509Certificate x509Certificate : simpleX509TrustManager.f27338b) {
            arrayList.add(x509Certificate);
        }
        if (keyStore != null) {
            SimpleX509TrustManager simpleX509TrustManager2 = new SimpleX509TrustManager(keyStore);
            this.f27334a = simpleX509TrustManager2;
            for (X509Certificate x509Certificate2 : simpleX509TrustManager2.f27338b) {
                arrayList.add(x509Certificate2);
            }
        }
        this.f27336c = (X509Certificate[]) arrayList.toArray(new X509Certificate[arrayList.size()]);
    }

    public final void a(X509Certificate[] x509CertificateArr, String str, boolean z) throws CertificateException {
        if (this.d) {
            return;
        }
        SimpleX509TrustManager simpleX509TrustManager = this.f27334a;
        SimpleX509TrustManager simpleX509TrustManager2 = this.f27335b;
        if (z) {
            try {
                simpleX509TrustManager2.checkServerTrusted(x509CertificateArr, str);
                return;
            } catch (CertificateException e2) {
                if (simpleX509TrustManager == null) {
                    throw e2;
                }
                simpleX509TrustManager.checkServerTrusted(x509CertificateArr, str);
                return;
            }
        }
        try {
            simpleX509TrustManager2.checkClientTrusted(x509CertificateArr, str);
        } catch (CertificateException e3) {
            if (simpleX509TrustManager == null) {
                throw e3;
            }
            simpleX509TrustManager.checkClientTrusted(x509CertificateArr, str);
        }
    }

    @Override // javax.net.ssl.X509TrustManager
    public final void checkClientTrusted(X509Certificate[] x509CertificateArr, String str) throws CertificateException {
        a(x509CertificateArr, str, false);
    }

    @Override // javax.net.ssl.X509TrustManager
    public final void checkServerTrusted(X509Certificate[] x509CertificateArr, String str) throws CertificateException {
        a(x509CertificateArr, str, true);
    }

    @Override // javax.net.ssl.X509TrustManager
    public final X509Certificate[] getAcceptedIssuers() {
        return this.f27336c;
    }
}
