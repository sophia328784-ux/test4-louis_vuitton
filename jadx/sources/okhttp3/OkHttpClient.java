package okhttp3;

import com.batch.android.b.b;
import com.dynatrace.android.callback.OkCallback;
import com.github.druk.dnssd.DNSSD;
import defpackage.md;
import defpackage.s71;
import defpackage.tg0;
import java.net.ProxySelector;
import java.security.GeneralSecurityException;
import java.security.KeyStore;
import java.security.KeyStoreException;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Random;
import java.util.TimeZone;
import java.util.concurrent.TimeUnit;
import javax.net.SocketFactory;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSocketFactory;
import javax.net.ssl.TrustManager;
import javax.net.ssl.TrustManagerFactory;
import javax.net.ssl.X509TrustManager;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.internal._UtilJvmKt;
import okhttp3.internal.concurrent.TaskRunner;
import okhttp3.internal.connection.RealCall;
import okhttp3.internal.connection.RouteDatabase;
import okhttp3.internal.platform.Android10Platform;
import okhttp3.internal.platform.Platform;
import okhttp3.internal.proxy.NullProxySelector;
import okhttp3.internal.tls.CertificateChainCleaner;
import okhttp3.internal.tls.OkHostnameVerifier;
import okhttp3.internal.ws.RealWebSocket;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0016\u0018\u00002\u00020\u00012\u00020\u0002:\u0002\r\u000eB\u0011\b\u0000\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0004\b\u0005\u0010\u0006B\t\b\u0016¢\u0006\u0004\b\u0005\u0010\u0007R\u0017\u0010\u000b\u001a\u00020\b8\u0007¢\u0006\f\n\u0004\b\t\u0010\n\u001a\u0004\b\u000b\u0010\f¨\u0006\u000f"}, d2 = {"Lokhttp3/OkHttpClient;", "Lokhttp3/Call$Factory;", "Lokhttp3/WebSocket$Factory;", "Lokhttp3/OkHttpClient$Builder;", "builder", "<init>", "(Lokhttp3/OkHttpClient$Builder;)V", "()V", "Lokhttp3/Dns;", b.d, "Lokhttp3/Dns;", "dns", "()Lokhttp3/Dns;", "Builder", "Companion", "okhttp"}, k = 1, mv = {2, 1, 0}, xi = 48)
public class OkHttpClient implements Call.Factory, WebSocket.Factory {
    public static final Companion E = new Companion(null);
    public static final List F = _UtilJvmKt.k(new Protocol[]{Protocol.HTTP_2, Protocol.HTTP_1_1});
    public static final List G = _UtilJvmKt.k(new ConnectionSpec[]{ConnectionSpec.g, ConnectionSpec.f76874h});
    public final long A;
    public final RouteDatabase B;
    public final TaskRunner C;
    public final ConnectionPool D;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Dispatcher f76951a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final List f76952b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final List f76953c;
    public final EventListener.Factory d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final boolean f76954e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final boolean f76955f;
    public final Authenticator g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final boolean f76956h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final boolean f76957i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final CookieJar f76958j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final Cache f76959k;

    /* JADX INFO: renamed from: l, reason: from kotlin metadata */
    public final Dns dns;
    public final ProxySelector m;
    public final Authenticator n;
    public final SocketFactory o;
    public final SSLSocketFactory p;
    public final X509TrustManager q;
    public final List r;
    public final List s;
    public final HostnameVerifier t;
    public final CertificatePinner u;
    public final CertificateChainCleaner v;
    public final int w;
    public final int x;
    public final int y;
    public final int z;

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lokhttp3/OkHttpClient$Companion;", "", "okhttp"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    public OkHttpClient(Builder builder) throws NoSuchAlgorithmException, KeyStoreException {
        OkCallback.c(builder);
        builder.getClass();
        this.f76951a = builder.f76960a;
        this.f76952b = _UtilJvmKt.j(builder.f76962c);
        this.f76953c = _UtilJvmKt.j(builder.d);
        this.d = builder.f76963e;
        this.f76954e = builder.f76964f;
        this.f76955f = builder.g;
        this.g = builder.f76965h;
        this.f76956h = builder.f76966i;
        this.f76957i = builder.f76967j;
        this.f76958j = builder.f76968k;
        this.f76959k = builder.l;
        this.dns = builder.m;
        ProxySelector proxySelector = builder.n;
        if (proxySelector == null && (proxySelector = ProxySelector.getDefault()) == null) {
            proxySelector = NullProxySelector.f77334a;
        }
        this.m = proxySelector;
        this.n = builder.o;
        this.o = builder.p;
        List list = builder.s;
        this.r = list;
        this.s = builder.t;
        this.t = builder.u;
        this.w = builder.x;
        this.x = builder.y;
        this.y = builder.z;
        this.z = builder.A;
        this.A = builder.B;
        RouteDatabase routeDatabase = builder.C;
        this.B = routeDatabase == null ? new RouteDatabase() : routeDatabase;
        TaskRunner taskRunner = builder.D;
        this.C = taskRunner == null ? TaskRunner.m : taskRunner;
        ConnectionPool connectionPool = builder.f76961b;
        if (connectionPool == null) {
            connectionPool = new ConnectionPool();
            builder.f76961b = connectionPool;
        }
        this.D = connectionPool;
        List list2 = list;
        if (!(list2 instanceof Collection) || !list2.isEmpty()) {
            Iterator it = list2.iterator();
            while (true) {
                if (!it.hasNext()) {
                    this.p = null;
                    this.v = null;
                    this.q = null;
                    this.u = CertificatePinner.d;
                    break;
                }
                if (((ConnectionSpec) it.next()).f76875a) {
                    SSLSocketFactory sSLSocketFactory = builder.q;
                    if (sSLSocketFactory != null) {
                        this.p = sSLSocketFactory;
                        CertificateChainCleaner certificateChainCleaner = builder.w;
                        certificateChainCleaner.getClass();
                        this.v = certificateChainCleaner;
                        X509TrustManager x509TrustManager = builder.r;
                        x509TrustManager.getClass();
                        this.q = x509TrustManager;
                        CertificatePinner certificatePinner = builder.v;
                        certificatePinner.getClass();
                        this.u = Intrinsics.c(certificatePinner.f76855b, certificateChainCleaner) ? certificatePinner : new CertificatePinner(certificatePinner.f76854a, certificateChainCleaner);
                        break;
                    }
                    Platform.Companion companion = Platform.f77312a;
                    companion.getClass();
                    Platform.f77313b.getClass();
                    TrustManagerFactory trustManagerFactory = TrustManagerFactory.getInstance(TrustManagerFactory.getDefaultAlgorithm());
                    trustManagerFactory.init((KeyStore) null);
                    TrustManager[] trustManagers = trustManagerFactory.getTrustManagers();
                    trustManagers.getClass();
                    if (trustManagers.length == 1) {
                        TrustManager trustManager = trustManagers[0];
                        if (trustManager instanceof X509TrustManager) {
                            X509TrustManager x509TrustManager2 = (X509TrustManager) trustManager;
                            this.q = x509TrustManager2;
                            Android10Platform android10Platform = Platform.f77313b;
                            android10Platform.getClass();
                            try {
                                SSLContext sSLContextG = android10Platform.g();
                                sSLContextG.init(null, new TrustManager[]{x509TrustManager2}, null);
                                SSLSocketFactory socketFactory = sSLContextG.getSocketFactory();
                                socketFactory.getClass();
                                this.p = socketFactory;
                                CertificateChainCleaner.f77346a.getClass();
                                companion.getClass();
                                CertificateChainCleaner certificateChainCleanerB = Platform.f77313b.b(x509TrustManager2);
                                this.v = certificateChainCleanerB;
                                CertificatePinner certificatePinner2 = builder.v;
                                certificatePinner2.getClass();
                                this.u = Intrinsics.c(certificatePinner2.f76855b, certificateChainCleanerB) ? certificatePinner2 : new CertificatePinner(certificatePinner2.f76854a, certificateChainCleanerB);
                                break;
                            } catch (GeneralSecurityException e2) {
                                throw new AssertionError("No System TLS: " + e2, e2);
                            }
                        }
                    }
                    String string = Arrays.toString(trustManagers);
                    string.getClass();
                    tg0.c("Unexpected default trust managers: ".concat(string));
                    throw null;
                }
            }
        } else {
            this.p = null;
            this.v = null;
            this.q = null;
            this.u = CertificatePinner.d;
            break;
        }
        X509TrustManager x509TrustManager3 = this.q;
        CertificateChainCleaner certificateChainCleaner2 = this.v;
        SSLSocketFactory sSLSocketFactory2 = this.p;
        List list3 = this.f76953c;
        List list4 = this.f76952b;
        list4.getClass();
        if (list4.contains(null)) {
            tg0.d(list4, "Null interceptor: ");
            throw null;
        }
        list3.getClass();
        if (list3.contains(null)) {
            tg0.d(list3, "Null network interceptor: ");
            throw null;
        }
        List list5 = this.r;
        if (!(list5 instanceof Collection) || !list5.isEmpty()) {
            Iterator it2 = list5.iterator();
            while (it2.hasNext()) {
                if (((ConnectionSpec) it2.next()).f76875a) {
                    if (sSLSocketFactory2 == null) {
                        md.k("sslSocketFactory == null");
                        throw null;
                    }
                    if (certificateChainCleaner2 == null) {
                        md.k("certificateChainCleaner == null");
                        throw null;
                    }
                    if (x509TrustManager3 != null) {
                        return;
                    }
                    md.k("x509TrustManager == null");
                    throw null;
                }
            }
        }
        if (sSLSocketFactory2 != null) {
            md.k("Check failed.");
            throw null;
        }
        if (certificateChainCleaner2 != null) {
            md.k("Check failed.");
            throw null;
        }
        if (x509TrustManager3 != null) {
            md.k("Check failed.");
            throw null;
        }
        if (Intrinsics.c(this.u, CertificatePinner.d)) {
            return;
        }
        md.k("Check failed.");
        throw null;
    }

    @Override // okhttp3.Call.Factory
    public final RealCall a(Request request) {
        request.getClass();
        return new RealCall(this, request, false);
    }

    public final RealWebSocket b(Request request, WebSocketListener webSocketListener) {
        request.getClass();
        webSocketListener.getClass();
        RealWebSocket realWebSocket = new RealWebSocket(this.C, request, webSocketListener, new Random(), 0L, null, this.A, this.z);
        realWebSocket.connect(this);
        return realWebSocket;
    }

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003B\u0011\b\u0010\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0002\u0010\u0006¨\u0006\u0007"}, d2 = {"Lokhttp3/OkHttpClient$Builder;", "", "<init>", "()V", "Lokhttp3/OkHttpClient;", "okHttpClient", "(Lokhttp3/OkHttpClient;)V", "okhttp"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Builder {
        public final int A;
        public final long B;
        public RouteDatabase C;
        public final TaskRunner D;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Dispatcher f76960a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public ConnectionPool f76961b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final ArrayList f76962c;
        public final ArrayList d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public EventListener.Factory f76963e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final boolean f76964f;
        public final boolean g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public Authenticator f76965h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final boolean f76966i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public final boolean f76967j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public CookieJar f76968k;
        public Cache l;
        public final Dns m;
        public final ProxySelector n;
        public final Authenticator o;
        public final SocketFactory p;
        public SSLSocketFactory q;
        public X509TrustManager r;
        public final List s;
        public List t;
        public HostnameVerifier u;
        public final CertificatePinner v;
        public CertificateChainCleaner w;
        public int x;
        public int y;
        public int z;

        /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
        public Builder(OkHttpClient okHttpClient) {
            this();
            okHttpClient.getClass();
            this.f76960a = okHttpClient.f76951a;
            this.f76961b = okHttpClient.D;
            CollectionsKt.j(this.f76962c, okHttpClient.f76952b);
            CollectionsKt.j(this.d, okHttpClient.f76953c);
            this.f76963e = okHttpClient.d;
            this.f76964f = okHttpClient.f76954e;
            this.g = okHttpClient.f76955f;
            this.f76965h = okHttpClient.g;
            this.f76966i = okHttpClient.f76956h;
            this.f76967j = okHttpClient.f76957i;
            this.f76968k = okHttpClient.f76958j;
            this.l = okHttpClient.f76959k;
            this.m = okHttpClient.dns;
            this.n = okHttpClient.m;
            this.o = okHttpClient.n;
            this.p = okHttpClient.o;
            this.q = okHttpClient.p;
            this.r = okHttpClient.q;
            this.s = okHttpClient.r;
            this.t = okHttpClient.s;
            this.u = okHttpClient.t;
            this.v = okHttpClient.u;
            this.w = okHttpClient.v;
            this.x = okHttpClient.w;
            this.y = okHttpClient.x;
            this.z = okHttpClient.y;
            this.A = okHttpClient.z;
            this.B = okHttpClient.A;
            this.C = okHttpClient.B;
            this.D = okHttpClient.C;
        }

        public final void a(Interceptor interceptor) {
            interceptor.getClass();
            this.f76962c.add(interceptor);
        }

        public final void b(long j2) {
            TimeUnit timeUnit = TimeUnit.SECONDS;
            timeUnit.getClass();
            this.x = _UtilJvmKt.b("timeout", j2, timeUnit);
        }

        public final void c(long j2) {
            TimeUnit timeUnit = TimeUnit.SECONDS;
            timeUnit.getClass();
            this.y = _UtilJvmKt.b("timeout", j2, timeUnit);
        }

        public final void d(long j2) {
            TimeUnit timeUnit = TimeUnit.SECONDS;
            timeUnit.getClass();
            this.z = _UtilJvmKt.b("timeout", j2, timeUnit);
        }

        public Builder() {
            this.f76960a = new Dispatcher();
            this.f76962c = new ArrayList();
            this.d = new ArrayList();
            EventListener eventListener = EventListener.NONE;
            TimeZone timeZone = _UtilJvmKt.f77018a;
            eventListener.getClass();
            this.f76963e = new s71(eventListener);
            this.f76964f = true;
            this.g = true;
            Authenticator authenticator = Authenticator.f76820a;
            this.f76965h = authenticator;
            this.f76966i = true;
            this.f76967j = true;
            this.f76968k = CookieJar.f76898a;
            this.m = Dns.d;
            this.o = authenticator;
            SocketFactory socketFactory = SocketFactory.getDefault();
            socketFactory.getClass();
            this.p = socketFactory;
            OkHttpClient.E.getClass();
            this.s = OkHttpClient.G;
            this.t = OkHttpClient.F;
            this.u = OkHostnameVerifier.f77347a;
            this.v = CertificatePinner.d;
            this.x = 10000;
            this.y = 10000;
            this.z = 10000;
            this.A = DNSSD.DNSSD_DEFAULT_TIMEOUT;
            this.B = RealWebSocket.DEFAULT_MINIMUM_DEFLATE_SIZE;
        }
    }

    public OkHttpClient() {
        this(new Builder());
    }
}
