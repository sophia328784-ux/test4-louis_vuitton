package okhttp3.internal.http;

import defpackage.md;
import defpackage.wp;
import java.net.Proxy;
import java.net.ProxySelector;
import java.util.List;
import java.util.concurrent.TimeUnit;
import javax.net.SocketFactory;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLSocketFactory;
import javax.net.ssl.X509TrustManager;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import okhttp3.Authenticator;
import okhttp3.Cache;
import okhttp3.CertificatePinner;
import okhttp3.ConnectionPool;
import okhttp3.CookieJar;
import okhttp3.Dns;
import okhttp3.Interceptor;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.internal._UtilJvmKt;
import okhttp3.internal.connection.Exchange;
import okhttp3.internal.connection.RealCall;
import okhttp3.internal.connection.RealConnection;
import okhttp3.internal.tls.CertificateChainCleaner;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0090\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0001\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001BÑ\u0001\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\b\u0010\n\u001a\u0004\u0018\u00010\t\u0012\u0006\u0010\f\u001a\u00020\u000b\u0012\u0006\u0010\r\u001a\u00020\u0007\u0012\u0006\u0010\u000e\u001a\u00020\u0007\u0012\u0006\u0010\u000f\u001a\u00020\u0007\u0012\u0006\u0010\u0011\u001a\u00020\u0010\u0012\b\u0010\u0013\u001a\u0004\u0018\u00010\u0012\u0012\u0006\u0010\u0015\u001a\u00020\u0014\u0012\u0006\u0010\u0017\u001a\u00020\u0016\u0012\u0006\u0010\u0019\u001a\u00020\u0018\u0012\u0006\u0010\u001b\u001a\u00020\u001a\u0012\u0006\u0010\u001d\u001a\u00020\u001c\u0012\b\u0010\u001f\u001a\u0004\u0018\u00010\u001e\u0012\u0006\u0010 \u001a\u00020\u0010\u0012\u0006\u0010\"\u001a\u00020!\u0012\u0006\u0010$\u001a\u00020#\u0012\u0006\u0010&\u001a\u00020%\u0012\b\u0010(\u001a\u0004\u0018\u00010'\u0012\b\u0010*\u001a\u0004\u0018\u00010)\u0012\b\u0010,\u001a\u0004\u0018\u00010+¢\u0006\u0004\b-\u0010.BC\b\u0010\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\b\u0010\n\u001a\u0004\u0018\u00010/\u0012\u0006\u0010\f\u001a\u00020\u000b\u0012\b\b\u0002\u00101\u001a\u000200¢\u0006\u0004\b-\u00102¨\u00063"}, d2 = {"Lokhttp3/internal/http/RealInterceptorChain;", "Lokhttp3/Interceptor$Chain;", "Lokhttp3/internal/connection/RealCall;", "call", "", "Lokhttp3/Interceptor;", "interceptors", "", "index", "Lokhttp3/internal/connection/Exchange;", "exchange", "Lokhttp3/Request;", "request", "connectTimeoutMillis", "readTimeoutMillis", "writeTimeoutMillis", "Lokhttp3/Authenticator;", "authenticator", "Lokhttp3/Cache;", "cache", "Lokhttp3/CertificatePinner;", "certificatePinner", "Lokhttp3/ConnectionPool;", "connectionPool", "Lokhttp3/CookieJar;", "cookieJar", "Lokhttp3/Dns;", "dns", "Ljavax/net/ssl/HostnameVerifier;", "hostnameVerifier", "Ljava/net/Proxy;", "proxy", "proxyAuthenticator", "Ljava/net/ProxySelector;", "proxySelector", "", "retryOnConnectionFailure", "Ljavax/net/SocketFactory;", "socketFactory", "Ljavax/net/ssl/SSLSocketFactory;", "sslSocketFactoryOrNull", "Ljavax/net/ssl/X509TrustManager;", "x509TrustManagerOrNull", "Lokhttp3/internal/tls/CertificateChainCleaner;", "certificateChainCleaner", "<init>", "(Lokhttp3/internal/connection/RealCall;Ljava/util/List;ILokhttp3/internal/connection/Exchange;Lokhttp3/Request;IIILokhttp3/Authenticator;Lokhttp3/Cache;Lokhttp3/CertificatePinner;Lokhttp3/ConnectionPool;Lokhttp3/CookieJar;Lokhttp3/Dns;Ljavax/net/ssl/HostnameVerifier;Ljava/net/Proxy;Lokhttp3/Authenticator;Ljava/net/ProxySelector;ZLjavax/net/SocketFactory;Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/X509TrustManager;Lokhttp3/internal/tls/CertificateChainCleaner;)V", "", "Lokhttp3/OkHttpClient;", "client", "(Lokhttp3/internal/connection/RealCall;Ljava/util/List;ILjava/lang/Void;Lokhttp3/Request;Lokhttp3/OkHttpClient;)V", "okhttp"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class RealInterceptorChain implements Interceptor.Chain {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final RealCall f77170a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final List f77171b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f77172c;
    public final Exchange d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Request f77173e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int f77174f;
    public final int g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final int f77175h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final Authenticator f77176i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final Cache f77177j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final CertificatePinner f77178k;
    public final ConnectionPool l;
    public final CookieJar m;
    public final Dns n;
    public final HostnameVerifier o;
    public final Proxy p;
    public final Authenticator q;
    public final ProxySelector r;
    public final boolean s;
    public final SocketFactory t;
    public final SSLSocketFactory u;
    public final X509TrustManager v;
    public final CertificateChainCleaner w;
    public int x;

    public RealInterceptorChain(RealCall realCall, List<? extends Interceptor> list, int i2, Exchange exchange, Request request, int i3, int i4, int i5, Authenticator authenticator, Cache cache, CertificatePinner certificatePinner, ConnectionPool connectionPool, CookieJar cookieJar, Dns dns, HostnameVerifier hostnameVerifier, Proxy proxy, Authenticator authenticator2, ProxySelector proxySelector, boolean z, SocketFactory socketFactory, SSLSocketFactory sSLSocketFactory, X509TrustManager x509TrustManager, CertificateChainCleaner certificateChainCleaner) {
        realCall.getClass();
        list.getClass();
        request.getClass();
        authenticator.getClass();
        certificatePinner.getClass();
        connectionPool.getClass();
        cookieJar.getClass();
        dns.getClass();
        hostnameVerifier.getClass();
        authenticator2.getClass();
        proxySelector.getClass();
        socketFactory.getClass();
        this.f77170a = realCall;
        this.f77171b = list;
        this.f77172c = i2;
        this.d = exchange;
        this.f77173e = request;
        this.f77174f = i3;
        this.g = i4;
        this.f77175h = i5;
        this.f77176i = authenticator;
        this.f77177j = cache;
        this.f77178k = certificatePinner;
        this.l = connectionPool;
        this.m = cookieJar;
        this.n = dns;
        this.o = hostnameVerifier;
        this.p = proxy;
        this.q = authenticator2;
        this.r = proxySelector;
        this.s = z;
        this.t = socketFactory;
        this.u = sSLSocketFactory;
        this.v = x509TrustManager;
        this.w = certificateChainCleaner;
    }

    public static RealInterceptorChain f(RealInterceptorChain realInterceptorChain, int i2, Exchange exchange, Request request, int i3, int i4, int i5, int i6) {
        int i7 = (i6 & 1) != 0 ? realInterceptorChain.f77172c : i2;
        Exchange exchange2 = (i6 & 2) != 0 ? realInterceptorChain.d : exchange;
        Request request2 = (i6 & 4) != 0 ? realInterceptorChain.f77173e : request;
        int i8 = (i6 & 8) != 0 ? realInterceptorChain.f77174f : i3;
        int i9 = (i6 & 16) != 0 ? realInterceptorChain.g : i4;
        int i10 = (i6 & 32) != 0 ? realInterceptorChain.f77175h : i5;
        Authenticator authenticator = realInterceptorChain.f77176i;
        Cache cache = realInterceptorChain.f77177j;
        CertificatePinner certificatePinner = realInterceptorChain.f77178k;
        ConnectionPool connectionPool = realInterceptorChain.l;
        CookieJar cookieJar = realInterceptorChain.m;
        Dns dns = realInterceptorChain.n;
        HostnameVerifier hostnameVerifier = realInterceptorChain.o;
        Proxy proxy = realInterceptorChain.p;
        Authenticator authenticator2 = realInterceptorChain.q;
        ProxySelector proxySelector = realInterceptorChain.r;
        boolean z = realInterceptorChain.s;
        SocketFactory socketFactory = realInterceptorChain.t;
        SSLSocketFactory sSLSocketFactory = realInterceptorChain.u;
        X509TrustManager x509TrustManager = realInterceptorChain.v;
        CertificateChainCleaner certificateChainCleaner = realInterceptorChain.w;
        request2.getClass();
        authenticator.getClass();
        certificatePinner.getClass();
        connectionPool.getClass();
        cookieJar.getClass();
        dns.getClass();
        hostnameVerifier.getClass();
        authenticator2.getClass();
        proxySelector.getClass();
        socketFactory.getClass();
        return new RealInterceptorChain(realInterceptorChain.f77170a, realInterceptorChain.f77171b, i7, exchange2, request2, i8, i9, i10, authenticator, cache, certificatePinner, connectionPool, cookieJar, dns, hostnameVerifier, proxy, authenticator2, proxySelector, z, socketFactory, sSLSocketFactory, x509TrustManager, certificateChainCleaner);
    }

    @Override // okhttp3.Interceptor.Chain
    public final RealInterceptorChain a(int i2, TimeUnit timeUnit) {
        timeUnit.getClass();
        if (this.d == null) {
            return f(this, 0, null, null, _UtilJvmKt.b("connectTimeout", i2, timeUnit), 0, 0, 2097143);
        }
        md.k("Timeouts can't be adjusted in a network interceptor");
        return null;
    }

    @Override // okhttp3.Interceptor.Chain
    public final Response b(Request request) {
        Request request2;
        request.getClass();
        List list = this.f77171b;
        int size = list.size();
        int i2 = this.f77172c;
        if (i2 >= size) {
            md.k("Check failed.");
            return null;
        }
        this.x++;
        Exchange exchange = this.d;
        if (exchange != null) {
            request2 = request;
            if (!exchange.f77098b.b().e(request2.f76969a)) {
                wp.e("network interceptor ", list.get(i2 - 1), " must retain the same host and port");
                return null;
            }
            if (this.x != 1) {
                wp.e("network interceptor ", list.get(i2 - 1), " must call proceed() exactly once");
                return null;
            }
        } else {
            request2 = request;
        }
        int i3 = i2 + 1;
        RealInterceptorChain realInterceptorChainF = f(this, i3, null, request2, 0, 0, 0, 2097146);
        Interceptor interceptor = (Interceptor) list.get(i2);
        Response responseIntercept = interceptor.intercept(realInterceptorChainF);
        if (responseIntercept == null) {
            throw new NullPointerException("interceptor " + interceptor + " returned null");
        }
        if (exchange == null || i3 >= list.size() || realInterceptorChainF.x == 1) {
            return responseIntercept;
        }
        wp.e("network interceptor ", interceptor, " must call proceed() exactly once");
        return null;
    }

    @Override // okhttp3.Interceptor.Chain
    public final RealInterceptorChain c(int i2, TimeUnit timeUnit) {
        timeUnit.getClass();
        if (this.d == null) {
            return f(this, 0, null, null, 0, 0, _UtilJvmKt.b("writeTimeout", i2, timeUnit), 2097119);
        }
        md.k("Timeouts can't be adjusted in a network interceptor");
        return null;
    }

    @Override // okhttp3.Interceptor.Chain
    public final RealConnection d() {
        Exchange exchange = this.d;
        if (exchange != null) {
            return exchange.c();
        }
        return null;
    }

    @Override // okhttp3.Interceptor.Chain
    public final RealInterceptorChain e(int i2, TimeUnit timeUnit) {
        timeUnit.getClass();
        if (this.d == null) {
            return f(this, 0, null, null, 0, _UtilJvmKt.b("readTimeout", i2, timeUnit), 0, 2097135);
        }
        md.k("Timeouts can't be adjusted in a network interceptor");
        return null;
    }

    @Override // okhttp3.Interceptor.Chain
    /* JADX INFO: renamed from: request, reason: from getter */
    public final Request getF77173e() {
        return this.f77173e;
    }

    public RealInterceptorChain(RealCall realCall, List list, int i2, Void r11, Request request, OkHttpClient okHttpClient, int i3, DefaultConstructorMarker defaultConstructorMarker) {
        this(realCall, list, i2, r11, request, (i3 & 32) != 0 ? realCall.f77118b : okHttpClient);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public RealInterceptorChain(RealCall realCall, List<? extends Interceptor> list, int i2, Void r28, Request request, OkHttpClient okHttpClient) {
        this(realCall, list, i2, (Exchange) r28, request, okHttpClient.w, okHttpClient.x, okHttpClient.y, okHttpClient.g, okHttpClient.f76959k, okHttpClient.u, okHttpClient.D, okHttpClient.f76958j, okHttpClient.dns, okHttpClient.t, null, okHttpClient.n, okHttpClient.m, okHttpClient.f76954e, okHttpClient.o, okHttpClient.p, okHttpClient.q, okHttpClient.v);
        realCall.getClass();
        list.getClass();
        request.getClass();
        okHttpClient.getClass();
    }
}
