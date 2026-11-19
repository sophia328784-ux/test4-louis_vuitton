package com.perfectcorp.uma.countly;

import java.math.BigInteger;
import java.net.InetAddress;
import java.net.Socket;
import java.security.KeyManagementException;
import java.security.NoSuchAlgorithmException;
import java.security.cert.Certificate;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.GregorianCalendar;
import java.util.HashSet;
import java.util.Locale;
import java.util.TimeZone;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSession;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.SSLSocketFactory;

/* JADX INFO: loaded from: classes3.dex */
class u {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final long f43257a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long f43258b;

    public static class a implements HostnameVerifier {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static int f43259b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final long f43260c = new GregorianCalendar(2019, 3, 1).getTimeInMillis();
        public static final BigInteger d = new BigInteger("93364549467778479633419641727879047297");

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public static final byte[] f43261e = {84, 37, -98, com.batch.android.x0.h.a.K, com.batch.android.x0.h.a.f24178h, -17, 121, 3, -84, -126, 57, 63, 8, 77, com.batch.android.x0.h.a.H, 38, 28, 42, 106, -22, 99, -73, -76, com.batch.android.x0.h.a.E, -88, -115, 75, 99, com.batch.android.x0.h.a.x, 91, 1, com.batch.android.x0.h.a.H, -75, -119, 110, 74, -83, 10, 90, 23, -65, 2, -82, -66, -8, 105, 108, -90, 46, com.batch.android.x0.h.a.z, 83, 99, -87, -80, -71, -65, 88, 67, 107, 4, 93, 65, 21, 41, 1, 106, 106, -126, 41, 52, 35, 23, -127, -3, -81, com.batch.android.x0.h.a.E, 98, 57, 34, 116, 72, -28, -2, 125, com.batch.android.x0.h.a.K, com.batch.android.x0.h.a.v, 8, 99, 122, 77, 119, -31, -102, 38, 21, 96, -115, 113, -126, 29, 52, -92, 98, -85, com.batch.android.x0.h.a.g, 35, -77, 19, -89, -80, -25, -2, -19, com.batch.android.x0.h.a.q, 76, 20, -17, -65, 35, 103, 50, -25, 122, com.batch.android.x0.h.a.z, -107, -30, com.batch.android.x0.h.a.I, 22, com.batch.android.x0.h.a.v, -94, -31, 40, -111, -77, 87, 0, com.batch.android.x0.h.a.y, 99, 116, com.batch.android.x0.h.a.x, -18, 78, 82, 113, -31, 76, 50, -102, -128, 113, 74, -85, 18, 67, 2, 106, -84, 95, 52, 31, 102, 93, -108, -87, -103, com.batch.android.x0.h.a.f24175c, -18, -102, com.batch.android.x0.h.a.f24179i, -18, -108, -126, 82, -118, com.batch.android.x0.h.a.o, -20, 32, 102, 59, com.batch.android.x0.h.a.f24175c, 6, 74, -93, 13, com.batch.android.x0.h.a.q, 29, com.batch.android.x0.h.a.f24175c, -117, com.batch.android.x0.h.a.g, -24, 83, -74, 20, 28, com.batch.android.x0.h.a.o, 14, -119, 85, 35, 92, 12, com.batch.android.x0.h.a.E, com.batch.android.x0.h.a.x, 113, 72, 103, -86, 114, 0, -76, 127, 42, 13, 31, 67, 34, 43, 6, com.batch.android.x0.h.a.B, 101, 39, -28, com.batch.android.x0.h.a.f24177f, 24, -66, -12, com.batch.android.x0.h.a.D, 47, com.batch.android.x0.h.a.g, com.batch.android.x0.h.a.n, 12, 27, -8, 96, com.batch.android.x0.h.a.D, -67, 65, 4, 23, -90, 33, com.batch.android.x0.h.a.D, 20, 61, 69, 78, com.batch.android.x0.h.a.g, 125, -15, 7, 47, -19, -26, -12, 84, -7};

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public static final byte[] f43262f = {122, 83, -75, com.batch.android.x0.h.a.I, -74, -17, 82, -93, 95, -118, -11, -119, -15, 66, com.batch.android.x0.h.a.q, 94, 70, -120, -82, -91, 8, -121, 81, com.batch.android.x0.h.a.I, 15, 15, 2, -21, 12, -126, 120, -29, 115, 125, 113, -67, 67, -23, com.batch.android.x0.h.a.o, -118, 63, com.batch.android.x0.h.a.K, 37, -110, -101, 51, 51, 116, 73, 94, 0, com.batch.android.x0.h.a.D, 115, 20, 28, 11, 70, 118, 28, -118, 13, 77, -116, 108, 126, 75, -9, 96, com.batch.android.x0.h.a.C, -127, 120, com.batch.android.x0.h.a.d, 120, com.batch.android.x0.h.a.u, 37, 98, -85, 16, com.batch.android.x0.h.a.o, 34, -24, 28, 25, com.batch.android.x0.h.a.H, 82, -125, 100, 5, -27, -121, 102, -82, -25, 122, -92, 59, 62, com.batch.android.x0.h.a.C, 112, 122, 118, -94, 103, 57, com.batch.android.x0.h.a.y, com.batch.android.x0.h.a.n, -6, -27, -73, 30, 65, -30, 9, 57, -120, 28, 24, 85, 10, com.batch.android.x0.h.a.f24179i, 65, -81, -78, -13, -13, 15, 66, 20, 97, 116, -127, -29, com.batch.android.x0.h.a.E, -121, 90, -102, 77, -117, com.batch.android.x0.h.a.x, com.batch.android.x0.h.a.n, -113, -119, 102, 19, 41, 17, -28, -1, -30, com.batch.android.x0.h.a.J, -114, -106, 12, 90, -95, -86, 107, -101, -3, -4, 3, 59, 85, 13, -90, -94, 37, 72, 23, 31, 66, -88, com.batch.android.x0.h.a.E, 108, 126, 105, 110, com.batch.android.x0.h.a.d, com.batch.android.x0.h.a.J, 103, com.batch.android.x0.h.a.w, 109, -12, 14, 106, 18, 121, -11, 124, com.batch.android.x0.h.a.m, -91, 50, 28, com.batch.android.x0.h.a.f24179i, 49, -78, -26, -69, -88, 107, 106, -94, -118, 96, 105, com.batch.android.x0.h.a.f24176e, 87, 125, -78, -14, 49, 12, -104, 101, 50, -20, 8, 90, com.batch.android.x0.h.a.s, com.batch.android.x0.h.a.f24181k, -104, -23, 33, -105, 63, 44, 121, 41, 3, -11, -10, -108, 43, 83, 49, -13, -109, 104, 87, -31, com.batch.android.x0.h.a.B, 79, 58, com.batch.android.x0.h.a.v, 97, -95, 96, com.batch.android.x0.h.a.s, -71, -85, -104, -82, 53, 84, 99, -117};

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final HostnameVerifier f43263a = t.f43255a;

        /* JADX INFO: renamed from: com.perfectcorp.uma.countly.u$a$a, reason: collision with other inner class name */
        public static class C0231a extends RuntimeException {
            public C0231a(String str, X509Certificate x509Certificate) {
                super(str + "\n" + x509Certificate);
            }
        }

        public static class b extends C0231a {
        }

        public static class c extends C0231a {
        }

        public a(HttpsURLConnection httpsURLConnection) {
            httpsURLConnection.setHostnameVerifier(this);
        }

        @Override // javax.net.ssl.HostnameVerifier
        public final boolean verify(String str, SSLSession sSLSession) {
            boolean zVerify = ((t) this.f43263a).verify(str, sSLSession);
            if (zVerify && System.currentTimeMillis() <= f43260c) {
                try {
                    Certificate[] peerCertificates = sSLSession.getPeerCertificates();
                    X509Certificate x509Certificate = (X509Certificate) peerCertificates[0];
                    if (!"CN=*.perfectcorp.com".equals(x509Certificate.getSubjectDN().getName())) {
                        throw new c("Not our certificate. The device is vulnerable. This cannot happen if the TLS implementation provided by the platform is correct.", x509Certificate);
                    }
                    if (!"CN=RapidSSL SHA256 CA - G2,O=GeoTrust Inc.,C=US".equals(x509Certificate.getIssuerDN().getName())) {
                        throw new b("Not our issuer.", x509Certificate);
                    }
                    if (!Arrays.equals(f43261e, x509Certificate.getSignature())) {
                        throw new b("The signature is not matching.", x509Certificate);
                    }
                    if (!d.equals(x509Certificate.getSerialNumber())) {
                        throw new b("The serial number is not matching.", x509Certificate);
                    }
                    X509Certificate x509Certificate2 = (X509Certificate) peerCertificates[1];
                    if (!Arrays.equals(f43262f, x509Certificate2.getSignature())) {
                        throw new b("The issuer's signature is not matching.", x509Certificate2);
                    }
                } catch (Throwable th) {
                    f43259b++;
                    com.perfectcorp.uma.b.d.b("UMASecurity", "", th);
                }
            }
            return zVerify;
        }
    }

    public u() {
        long jCurrentTimeMillis = System.currentTimeMillis();
        this.f43257a = jCurrentTimeMillis;
        this.f43258b = TimeZone.getDefault().getOffset(jCurrentTimeMillis);
    }

    public final String a() {
        long j2 = this.f43258b;
        char c2 = j2 >= 0 ? '+' : '-';
        int iAbs = (int) ((Math.abs(j2) / 1000) / 60);
        return String.format(Locale.US, "%c%02d%02d", Character.valueOf(c2), Integer.valueOf(iAbs / 60), Integer.valueOf(iAbs % 60));
    }

    /* JADX INFO: loaded from: classes2.dex */
    public static class b extends SSLSocketFactory {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final b f43264b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final String[][] f43265c;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final SSLSocketFactory f43266a;

        static {
            b bVar;
            try {
                bVar = new b();
            } catch (Throwable th) {
                com.perfectcorp.uma.b.d.f43200a.a("UMASecurity", "Cannot create NewTLSSocketFactory.", th);
                bVar = null;
            }
            f43264b = bVar;
            f43265c = new String[][]{new String[]{"TLSv1.2", "TLSv1.1"}, new String[]{"TLSv1"}};
        }

        public b() throws NoSuchAlgorithmException, KeyManagementException {
            SSLContext sSLContext = SSLContext.getInstance("TLSv1.2");
            sSLContext.init(null, null, null);
            this.f43266a = sSLContext.getSocketFactory();
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r2v2, types: [java.util.ArrayList] */
        /* JADX WARN: Type inference failed for: r2v3, types: [java.util.List] */
        /* JADX WARN: Type inference failed for: r2v4, types: [java.util.List] */
        public static Socket a(Socket socket) {
            Socket socket2;
            if (socket instanceof SSLSocket) {
                SSLSocket sSLSocket = (SSLSocket) socket;
                HashSet hashSet = new HashSet(Arrays.asList(sSLSocket.getSupportedProtocols()));
                ?? arrayList = new ArrayList();
                int i2 = 0;
                while (true) {
                    if (i2 >= 2) {
                        arrayList = Collections.EMPTY_LIST;
                        break;
                    }
                    for (String str : f43265c[i2]) {
                        if (hashSet.contains(str)) {
                            arrayList.add(str);
                        }
                    }
                    if (!arrayList.isEmpty()) {
                        break;
                    }
                    i2++;
                }
                if (arrayList.isEmpty()) {
                    socket2 = null;
                } else {
                    sSLSocket.setEnabledProtocols((String[]) arrayList.toArray(new String[arrayList.size()]));
                    socket2 = socket;
                }
            } else {
                socket2 = socket;
            }
            return socket2 != null ? socket2 : socket;
        }

        @Override // javax.net.SocketFactory
        public final Socket createSocket() {
            return a(this.f43266a.createSocket());
        }

        @Override // javax.net.ssl.SSLSocketFactory
        public final String[] getDefaultCipherSuites() {
            return this.f43266a.getDefaultCipherSuites();
        }

        @Override // javax.net.ssl.SSLSocketFactory
        public final String[] getSupportedCipherSuites() {
            return this.f43266a.getSupportedCipherSuites();
        }

        @Override // javax.net.SocketFactory
        public final Socket createSocket(String str, int i2) {
            return a(this.f43266a.createSocket(str, i2));
        }

        @Override // javax.net.SocketFactory
        public final Socket createSocket(String str, int i2, InetAddress inetAddress, int i3) {
            return a(this.f43266a.createSocket(str, i2, inetAddress, i3));
        }

        @Override // javax.net.SocketFactory
        public final Socket createSocket(InetAddress inetAddress, int i2) {
            return a(this.f43266a.createSocket(inetAddress, i2));
        }

        @Override // javax.net.SocketFactory
        public final Socket createSocket(InetAddress inetAddress, int i2, InetAddress inetAddress2, int i3) {
            return a(this.f43266a.createSocket(inetAddress, i2, inetAddress2, i3));
        }

        @Override // javax.net.ssl.SSLSocketFactory
        public final Socket createSocket(Socket socket, String str, int i2, boolean z) {
            return a(this.f43266a.createSocket(socket, str, i2, z));
        }
    }
}
