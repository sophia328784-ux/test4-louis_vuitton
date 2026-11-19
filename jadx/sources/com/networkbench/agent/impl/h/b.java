package com.networkbench.agent.impl.h;

import com.networkbench.agent.impl.util.Logger;
import com.networkbench.agent.impl.util.a.a.e;
import com.networkbench.agent.impl.util.a.f;
import defpackage.md;
import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.security.cert.CertificateException;
import java.security.cert.CertificateExpiredException;
import java.security.cert.CertificateFactory;
import java.security.cert.CertificateNotYetValidException;
import java.security.cert.X509Certificate;
import org.bouncycastle.jcajce.provider.asymmetric.ec.BCECPublicKey;
import org.bouncycastle.pqc.legacy.math.linearalgebra.ByteUtils;

/* JADX INFO: loaded from: classes5.dex */
public class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f37205a = "NBSAgent";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final String f37206b = "-----BEGIN CERTIFICATE-----\nMIICQDCCAeWgAwIBAgIUEccQ1pQAHHi/b2ls8Z5y8QWCn+MwCgYIKoZIzj0EAwIw\ngZQxCzAJBgNVBAYTAkNOMRAwDgYDVQQIDAdCRUlKSU5HMREwDwYDVQQHDAhDSEFP\nWUFORzEiMCAGA1UECgwZQmVpamluZyBOZXR3b3JrQmVuY2ggSW5jLjEMMAoGA1UE\nCwwDREVWMQ0wCwYDVQQDDARBUkNIMR8wHQYJKoZIhvcNAQkBFhBhcmNoQHRpbmd5\ndW4uY29tMB4XDTIxMDcxNjA3NTUwNloXDTMxMDcxNDA3NTUwNlowgZQxCzAJBgNV\nBAYTAkNOMRAwDgYDVQQIDAdCRUlKSU5HMREwDwYDVQQHDAhDSEFPWUFORzEiMCAG\nA1UECgwZQmVpamluZyBOZXR3b3JrQmVuY2ggSW5jLjEMMAoGA1UECwwDREVWMQ0w\nCwYDVQQDDARBUkNIMR8wHQYJKoZIhvcNAQkBFhBhcmNoQHRpbmd5dW4uY29tMFkw\nEwYHKoZIzj0CAQYIKoEcz1UBgi0DQgAEhyEn2tgeg99EHANIEJood9CMqxn2sO1C\nfKviQFOqsY2xyHpKy803ZMpMrnGNzHVdhE5nYuiwhTCyrmEyAfXEnKMTMBEwDwYD\nVR0TAQH/BAUwAwEB/zAKBggqhkjOPQQDAgNJADBGAiEA9ynsJejokMdc7w/BI6Lx\nz55TSnloc1i6X1FMdfyK1p8CIQCYAsABkPu8Z4QsSTl/iiYH0oT8Kayot451Ot4e\nEf02xw==\n-----END CERTIFICATE-----\n";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static b f37207c = new b();
    private X509Certificate d = b(f37206b);

    private b() {
    }

    private InputStream c(String str) {
        if (str != null && !str.isEmpty()) {
            return new ByteArrayInputStream(a.a(str.replace("-----BEGIN CERTIFICATE-----\n", "").replace("-----END CERTIFICATE-----", "")));
        }
        md.n("convertPemCert is error");
        return null;
    }

    public String a(X509Certificate x509Certificate, String str) {
        try {
            Logger.debug("NBSAgent", "encryptString content is " + str);
            return ByteUtils.toHexString(f.a((BCECPublicKey) c.a(x509Certificate.getPublicKey().getEncoded()), str.getBytes()));
        } catch (Throwable th) {
            Logger.error("NBSAgent", "encryptString error:", th);
            return "";
        }
    }

    public X509Certificate b(String str) {
        try {
            CertificateFactory certificateFactory = CertificateFactory.getInstance("X.509");
            InputStream inputStreamC = c(str);
            X509Certificate x509Certificate = (X509Certificate) certificateFactory.generateCertificate(inputStreamC);
            inputStreamC.close();
            return x509Certificate;
        } catch (CertificateException e2) {
            Logger.error("NBSAgent", "getCertificate error:", e2);
            return null;
        } catch (Throwable th) {
            Logger.error("NBSAgent", "getCertificate ioException:", th);
            return null;
        }
    }

    public boolean b(X509Certificate x509Certificate) {
        X509Certificate x509Certificate2 = this.d;
        if (x509Certificate2 == null || x509Certificate == null) {
            return false;
        }
        return e.a((BCECPublicKey) c.a(x509Certificate2.getPublicKey().getEncoded()), x509Certificate);
    }

    public boolean b() {
        X509Certificate x509Certificate = this.d;
        if (x509Certificate != null) {
            return a(x509Certificate);
        }
        return false;
    }

    public boolean a(String str) {
        return a(b(str));
    }

    public boolean a(X509Certificate x509Certificate) {
        if (x509Certificate == null) {
            return false;
        }
        try {
            x509Certificate.checkValidity();
            return true;
        } catch (CertificateExpiredException | CertificateNotYetValidException unused) {
            return false;
        }
    }

    public static b a() {
        return f37207c;
    }
}
