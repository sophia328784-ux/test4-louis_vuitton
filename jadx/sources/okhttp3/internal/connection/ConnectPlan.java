package okhttp3.internal.connection;

import defpackage.az;
import defpackage.md;
import defpackage.pq0;
import defpackage.q;
import defpackage.w1;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.ConnectException;
import java.net.InetSocketAddress;
import java.net.ProtocolException;
import java.net.Proxy;
import java.net.Socket;
import java.net.UnknownServiceException;
import java.security.cert.CertificateException;
import java.security.cert.X509Certificate;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.TimeZone;
import java.util.concurrent.TimeUnit;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLException;
import javax.net.ssl.SSLHandshakeException;
import javax.net.ssl.SSLPeerUnverifiedException;
import javax.net.ssl.SSLSession;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.SSLSocketFactory;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.comparisons.ComparisonsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import okhttp3.Address;
import okhttp3.CertificatePinner;
import okhttp3.CipherSuite;
import okhttp3.ConnectionSpec;
import okhttp3.EventListener;
import okhttp3.Handshake;
import okhttp3.HttpUrl;
import okhttp3.Protocol;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.Route;
import okhttp3.internal._UtilCommonKt;
import okhttp3.internal._UtilJvmKt;
import okhttp3.internal.concurrent.TaskRunner;
import okhttp3.internal.http.ExchangeCodec;
import okhttp3.internal.http1.Http1ExchangeCodec;
import okhttp3.internal.platform.Android10Platform;
import okhttp3.internal.platform.Platform;
import okhttp3.internal.platform.android.SocketAdapter;
import okhttp3.internal.tls.OkHostnameVerifier;
import okio.Timeout;
import okio.internal.DefaultSocket;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u00002\u00020\u00012\u00020\u0002:\u0001\u001eB\u0093\u0001\b\u0000\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\u0006\u0010\t\u001a\u00020\u0007\u0012\u0006\u0010\n\u001a\u00020\u0007\u0012\u0006\u0010\u000b\u001a\u00020\u0007\u0012\u0006\u0010\f\u001a\u00020\u0007\u0012\u0006\u0010\u000e\u001a\u00020\r\u0012\u0006\u0010\u0010\u001a\u00020\u000f\u0012\u0006\u0010\u0012\u001a\u00020\u0011\u0012\u0006\u0010\u0014\u001a\u00020\u0013\u0012\u000e\u0010\u0016\u001a\n\u0012\u0004\u0012\u00020\u0013\u0018\u00010\u0015\u0012\u0006\u0010\u0017\u001a\u00020\u0007\u0012\b\u0010\u0019\u001a\u0004\u0018\u00010\u0018\u0012\u0006\u0010\u001a\u001a\u00020\u0007\u0012\u0006\u0010\u001b\u001a\u00020\r¢\u0006\u0004\b\u001c\u0010\u001d¨\u0006\u001f"}, d2 = {"Lokhttp3/internal/connection/ConnectPlan;", "Lokhttp3/internal/connection/RoutePlanner$Plan;", "Lokhttp3/internal/http/ExchangeCodec$Carrier;", "Lokhttp3/internal/concurrent/TaskRunner;", "taskRunner", "Lokhttp3/internal/connection/RealConnectionPool;", "connectionPool", "", "readTimeoutMillis", "writeTimeoutMillis", "socketConnectTimeoutMillis", "socketReadTimeoutMillis", "pingIntervalMillis", "", "retryOnConnectionFailure", "Lokhttp3/internal/connection/RealCall;", "call", "Lokhttp3/internal/connection/RealRoutePlanner;", "routePlanner", "Lokhttp3/Route;", "route", "", "routes", "attempt", "Lokhttp3/Request;", "tunnelRequest", "connectionSpecIndex", "isTlsFallback", "<init>", "(Lokhttp3/internal/concurrent/TaskRunner;Lokhttp3/internal/connection/RealConnectionPool;IIIIIZLokhttp3/internal/connection/RealCall;Lokhttp3/internal/connection/RealRoutePlanner;Lokhttp3/Route;Ljava/util/List;ILokhttp3/Request;IZ)V", "Companion", "okhttp"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class ConnectPlan implements RoutePlanner.Plan, ExchangeCodec.Carrier {
    public static final /* synthetic */ int y = 0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final TaskRunner f77086b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final RealConnectionPool f77087c;
    public final int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f77088e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int f77089f;
    public final int g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final int f77090h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final boolean f77091i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final RealCall f77092j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final RealRoutePlanner f77093k;
    public final Route l;
    public final List m;
    public final int n;
    public final Request o;
    public final int p;
    public final boolean q;
    public volatile boolean r;
    public Socket s;
    public Socket t;
    public Handshake u;
    public Protocol v;
    public BufferedSocketKt$asBufferedSocket$1 w;
    public RealConnection x;

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004R\u0014\u0010\u0006\u001a\u00020\u00058\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lokhttp3/internal/connection/ConnectPlan$Companion;", "", "", "NPE_THROW_WITH_NULL", "Ljava/lang/String;", "", "MAX_TUNNEL_ATTEMPTS", "I", "okhttp"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f77094a;

        static {
            int[] iArr = new int[Proxy.Type.values().length];
            try {
                iArr[Proxy.Type.DIRECT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[Proxy.Type.HTTP.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            f77094a = iArr;
        }
    }

    static {
        new Companion(null);
    }

    public ConnectPlan(TaskRunner taskRunner, RealConnectionPool realConnectionPool, int i2, int i3, int i4, int i5, int i6, boolean z, RealCall realCall, RealRoutePlanner realRoutePlanner, Route route, List<Route> list, int i7, Request request, int i8, boolean z2) {
        taskRunner.getClass();
        realConnectionPool.getClass();
        realCall.getClass();
        realRoutePlanner.getClass();
        route.getClass();
        this.f77086b = taskRunner;
        this.f77087c = realConnectionPool;
        this.d = i2;
        this.f77088e = i3;
        this.f77089f = i4;
        this.g = i5;
        this.f77090h = i6;
        this.f77091i = z;
        this.f77092j = realCall;
        this.f77093k = realRoutePlanner;
        this.l = route;
        this.m = list;
        this.n = i7;
        this.o = request;
        this.p = i8;
        this.q = z2;
    }

    public static ConnectPlan j(ConnectPlan connectPlan, int i2, Request request, int i3, boolean z, int i4) {
        return new ConnectPlan(connectPlan.f77086b, connectPlan.f77087c, connectPlan.d, connectPlan.f77088e, connectPlan.f77089f, connectPlan.g, connectPlan.f77090h, connectPlan.f77091i, connectPlan.f77092j, connectPlan.f77093k, connectPlan.l, connectPlan.m, (i4 & 1) != 0 ? connectPlan.n : i2, (i4 & 2) != 0 ? connectPlan.o : request, (i4 & 4) != 0 ? connectPlan.p : i3, (i4 & 8) != 0 ? connectPlan.q : z);
    }

    @Override // okhttp3.internal.connection.RoutePlanner.Plan
    public final RoutePlanner.Plan a() {
        return new ConnectPlan(this.f77086b, this.f77087c, this.d, this.f77088e, this.f77089f, this.g, this.f77090h, this.f77091i, this.f77092j, this.f77093k, this.l, this.m, this.n, this.o, this.p, this.q);
    }

    @Override // okhttp3.internal.connection.RoutePlanner.Plan
    /* JADX INFO: renamed from: b */
    public final RealConnection getF77149b() {
        RouteDatabase routeDatabase = this.f77092j.f77118b.B;
        Route route = this.l;
        synchronized (routeDatabase) {
            route.getClass();
            routeDatabase.f77150a.remove(route);
        }
        RealConnection realConnection = this.x;
        realConnection.getClass();
        ConnectionListener connectionListener = realConnection.f77133k;
        Route route2 = this.l;
        RealCall realCall = this.f77092j;
        connectionListener.getClass();
        route2.getClass();
        realCall.getClass();
        ReusePlan reusePlanG = this.f77093k.g(this, this.m);
        if (reusePlanG != null) {
            return reusePlanG.f77149b;
        }
        synchronized (realConnection) {
            RealConnectionPool realConnectionPool = this.f77087c;
            realConnectionPool.getClass();
            TimeZone timeZone = _UtilJvmKt.f77018a;
            realConnectionPool.f77138f.add(realConnection);
            realConnectionPool.d.d(realConnectionPool.f77137e, 0L);
            this.f77092j.b(realConnection);
        }
        this.f77092j.eventListener.connectionAcquired(this.f77092j, realConnection);
        ConnectionListener connectionListener2 = realConnection.f77133k;
        RealCall realCall2 = this.f77092j;
        connectionListener2.getClass();
        realCall2.getClass();
        return realConnection;
    }

    @Override // okhttp3.internal.http.ExchangeCodec.Carrier
    public final void c() {
    }

    @Override // okhttp3.internal.connection.RoutePlanner.Plan, okhttp3.internal.http.ExchangeCodec.Carrier
    public final void cancel() {
        this.r = true;
        Socket socket = this.s;
        if (socket != null) {
            _UtilJvmKt.c(socket);
        }
    }

    /* JADX WARN: Code duplicated, block: B:87:0x0188  */
    /* JADX WARN: Code duplicated, block: B:89:0x018c  */
    @Override // okhttp3.internal.connection.RoutePlanner.Plan
    /* JADX INFO: renamed from: d */
    public final RoutePlanner.ConnectResult getF77111b() throws Throwable {
        IOException iOException;
        ConnectPlan connectPlan;
        Socket socket;
        Socket socket2 = this.s;
        ConnectPlan connectPlan2 = null;
        if (socket2 == null) {
            md.n("TCP not connected");
            return null;
        }
        if (isReady()) {
            md.k("already connected");
            return null;
        }
        List list = this.l.f77006a.f76819k;
        this.f77092j.u.add(this);
        boolean z = false;
        try {
            try {
                if (this.o != null) {
                    RoutePlanner.ConnectResult connectResultI = i();
                    if (connectResultI.f77152b != null || connectResultI.f77153c != null) {
                        this.f77092j.u.remove(this);
                        Socket socket3 = this.t;
                        if (socket3 != null) {
                            _UtilJvmKt.c(socket3);
                        }
                        _UtilJvmKt.c(socket2);
                        return connectResultI;
                    }
                }
                Address address = this.l.f77006a;
                if (address.f76813c != null) {
                    BufferedSocketKt$asBufferedSocket$1 bufferedSocketKt$asBufferedSocket$1 = this.w;
                    if (bufferedSocketKt$asBufferedSocket$1 == null) {
                        Intrinsics.h("socket");
                        throw null;
                    }
                    if (bufferedSocketKt$asBufferedSocket$1.f77084c.f77444c.Z0()) {
                        BufferedSocketKt$asBufferedSocket$1 bufferedSocketKt$asBufferedSocket$2 = this.w;
                        if (bufferedSocketKt$asBufferedSocket$2 == null) {
                            Intrinsics.h("socket");
                            throw null;
                        }
                        if (bufferedSocketKt$asBufferedSocket$2.d.f77441c.Z0()) {
                            this.f77092j.eventListener.secureConnectStart(this.f77092j);
                            Address address2 = this.l.f77006a;
                            SSLSocketFactory sSLSocketFactory = address2.f76813c;
                            HttpUrl httpUrl = address2.f76817i;
                            Socket socketCreateSocket = sSLSocketFactory.createSocket(socket2, httpUrl.d, httpUrl.f76922e, true);
                            socketCreateSocket.getClass();
                            SSLSocket sSLSocket = (SSLSocket) socketCreateSocket;
                            ConnectPlan connectPlanL = l(list, sSLSocket);
                            ConnectionSpec connectionSpec = (ConnectionSpec) list.get(connectPlanL.p);
                            ConnectPlan connectPlanK = connectPlanL.k(list, sSLSocket);
                            try {
                                connectionSpec.a(sSLSocket, connectPlanL.q);
                                h(sSLSocket, connectionSpec);
                                this.f77092j.eventListener.secureConnectEnd(this.f77092j, this.u);
                                connectPlan = connectPlanK;
                            } catch (IOException e2) {
                                iOException = e2;
                                connectPlan = connectPlanK;
                                EventListener eventListener = this.f77092j.eventListener;
                                RealCall realCall = this.f77092j;
                                Route route = this.l;
                                eventListener.connectFailed(realCall, route.f77008c, route.f77007b, null, iOException);
                                ConnectionListener connectionListener = this.f77087c.f77135b;
                                Route route2 = this.l;
                                RealCall realCall2 = this.f77092j;
                                connectionListener.getClass();
                                route2.getClass();
                                realCall2.getClass();
                                if (this.f77091i && !(iOException instanceof ProtocolException) && !(iOException instanceof InterruptedIOException) && ((!(iOException instanceof SSLHandshakeException) || !(iOException.getCause() instanceof CertificateException)) && !(iOException instanceof SSLPeerUnverifiedException) && (iOException instanceof SSLException))) {
                                    connectPlan2 = connectPlan;
                                }
                                RoutePlanner.ConnectResult connectResult = new RoutePlanner.ConnectResult(this, connectPlan2, iOException);
                                this.f77092j.u.remove(this);
                                if (!z) {
                                    socket = this.t;
                                    if (socket != null) {
                                        _UtilJvmKt.c(socket);
                                    }
                                    _UtilJvmKt.c(socket2);
                                }
                                return connectResult;
                            }
                        }
                    }
                    throw new IOException("TLS tunnel buffered too many bytes!");
                }
                this.t = socket2;
                List list2 = address.f76818j;
                Protocol protocol = Protocol.H2_PRIOR_KNOWLEDGE;
                if (!list2.contains(protocol)) {
                    protocol = Protocol.HTTP_1_1;
                }
                this.v = protocol;
                connectPlan = null;
                try {
                    TaskRunner taskRunner = this.f77086b;
                    RealConnectionPool realConnectionPool = this.f77087c;
                    Route route3 = this.l;
                    Socket socket4 = this.t;
                    socket4.getClass();
                    Handshake handshake = this.u;
                    Protocol protocol2 = this.v;
                    protocol2.getClass();
                    BufferedSocketKt$asBufferedSocket$1 bufferedSocketKt$asBufferedSocket$3 = this.w;
                    if (bufferedSocketKt$asBufferedSocket$3 == null) {
                        Intrinsics.h("socket");
                        throw null;
                    }
                    RealConnection realConnection = new RealConnection(taskRunner, realConnectionPool, route3, socket2, socket4, handshake, protocol2, bufferedSocketKt$asBufferedSocket$3, this.f77090h, this.f77087c.f77135b);
                    this.x = realConnection;
                    realConnection.h();
                    EventListener eventListener2 = this.f77092j.eventListener;
                    RealCall realCall3 = this.f77092j;
                    Route route4 = this.l;
                    eventListener2.connectEnd(realCall3, route4.f77008c, route4.f77007b, this.v);
                    try {
                        RoutePlanner.ConnectResult connectResult2 = new RoutePlanner.ConnectResult(this, null, null, 6, null);
                        this.f77092j.u.remove(this);
                        return connectResult2;
                    } catch (IOException e3) {
                        iOException = e3;
                        z = true;
                        EventListener eventListener3 = this.f77092j.eventListener;
                        RealCall realCall4 = this.f77092j;
                        Route route5 = this.l;
                        eventListener3.connectFailed(realCall4, route5.f77008c, route5.f77007b, null, iOException);
                        ConnectionListener connectionListener2 = this.f77087c.f77135b;
                        Route route6 = this.l;
                        RealCall realCall5 = this.f77092j;
                        connectionListener2.getClass();
                        route6.getClass();
                        realCall5.getClass();
                        if (this.f77091i) {
                            connectPlan2 = connectPlan;
                        }
                        RoutePlanner.ConnectResult connectResult3 = new RoutePlanner.ConnectResult(this, connectPlan2, iOException);
                        this.f77092j.u.remove(this);
                        if (!z) {
                            socket = this.t;
                            if (socket != null) {
                                _UtilJvmKt.c(socket);
                            }
                            _UtilJvmKt.c(socket2);
                        }
                        return connectResult3;
                    } catch (Throwable th) {
                        th = th;
                        z = true;
                        this.f77092j.u.remove(this);
                        if (!z) {
                            Socket socket5 = this.t;
                            if (socket5 != null) {
                                _UtilJvmKt.c(socket5);
                            }
                            _UtilJvmKt.c(socket2);
                        }
                        throw th;
                    }
                } catch (IOException e4) {
                    iOException = e4;
                }
            } catch (IOException e5) {
                iOException = e5;
                connectPlan = null;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    @Override // okhttp3.internal.http.ExchangeCodec.Carrier
    public final void e(RealCall realCall, IOException iOException) {
        realCall.getClass();
    }

    /* JADX WARN: Code duplicated, block: B:40:0x00c4  */
    /* JADX WARN: Code duplicated, block: B:54:? A[ADDED_TO_REGION, REMOVE, SYNTHETIC] */
    @Override // okhttp3.internal.connection.RoutePlanner.Plan
    public final RoutePlanner.ConnectResult f() throws Throwable {
        ConnectPlan connectPlan;
        ConnectPlan connectPlan2;
        Throwable th;
        Socket socket;
        Socket socket2;
        if (this.s != null) {
            md.k("TCP already connected");
            return null;
        }
        this.f77092j.u.add(this);
        boolean z = false;
        try {
            try {
                try {
                    EventListener eventListener = this.f77092j.eventListener;
                    RealCall realCall = this.f77092j;
                    Route route = this.l;
                    eventListener.connectStart(realCall, route.f77008c, route.f77007b);
                    ConnectionListener connectionListener = this.f77087c.f77135b;
                    Route route2 = this.l;
                    RealCall realCall2 = this.f77092j;
                    try {
                        connectionListener.getClass();
                        route2.getClass();
                        realCall2.getClass();
                        g();
                        z = true;
                        connectPlan = this;
                        try {
                            RoutePlanner.ConnectResult connectResult = new RoutePlanner.ConnectResult(connectPlan, null, null, 6, null);
                            connectPlan.f77092j.u.remove(connectPlan);
                            return connectResult;
                        } catch (IOException e2) {
                            e = e2;
                            IOException iOException = e;
                            Route route3 = connectPlan.l;
                            if (route3.f77006a.g == null && route3.f77007b.type() != Proxy.Type.DIRECT) {
                                Address address = connectPlan.l.f77006a;
                                address.f76816h.connectFailed(address.f76817i.j(), connectPlan.l.f77007b.address(), iOException);
                            }
                            EventListener eventListener2 = connectPlan.f77092j.eventListener;
                            RealCall realCall3 = connectPlan.f77092j;
                            Route route4 = connectPlan.l;
                            eventListener2.connectFailed(realCall3, route4.f77008c, route4.f77007b, null, iOException);
                            ConnectionListener connectionListener2 = connectPlan.f77087c.f77135b;
                            Route route5 = connectPlan.l;
                            RealCall realCall4 = connectPlan.f77092j;
                            connectionListener2.getClass();
                            route5.getClass();
                            realCall4.getClass();
                            ConnectPlan connectPlan3 = connectPlan;
                            try {
                                RoutePlanner.ConnectResult connectResult2 = new RoutePlanner.ConnectResult(connectPlan3, null, iOException, 2, null);
                                connectPlan.f77092j.u.remove(connectPlan);
                                if (!z && (socket2 = connectPlan.s) != null) {
                                    _UtilJvmKt.c(socket2);
                                }
                                return connectResult2;
                            } catch (Throwable th2) {
                                th = th2;
                                connectPlan2 = connectPlan3;
                                th = th;
                                connectPlan2.f77092j.u.remove(connectPlan2);
                                if (z) {
                                    throw th;
                                }
                                throw th;
                            }
                        }
                    } catch (IOException e3) {
                        e = e3;
                        connectPlan = this;
                    }
                } catch (Throwable th3) {
                    th = th3;
                    th = th;
                    connectPlan2.f77092j.u.remove(connectPlan2);
                    if (z || (socket = connectPlan2.s) == null) {
                        throw th;
                    }
                    _UtilJvmKt.c(socket);
                    throw th;
                }
            } catch (Throwable th4) {
                th = th4;
                connectPlan2 = this;
                th = th;
                connectPlan2.f77092j.u.remove(connectPlan2);
                if (z) {
                    throw th;
                }
                throw th;
            }
        } catch (IOException e4) {
            e = e4;
            connectPlan = this;
        }
    }

    public final void g() throws IOException {
        Socket socketCreateSocket;
        Proxy.Type type = this.l.f77007b.type();
        int i2 = type == null ? -1 : WhenMappings.f77094a[type.ordinal()];
        if (i2 == 1 || i2 == 2) {
            socketCreateSocket = this.l.f77006a.f76812b.createSocket();
            socketCreateSocket.getClass();
        } else {
            socketCreateSocket = new Socket(this.l.f77007b);
        }
        this.s = socketCreateSocket;
        if (this.r) {
            az.o("canceled");
            return;
        }
        socketCreateSocket.setSoTimeout(this.g);
        try {
            Platform.f77312a.getClass();
            Android10Platform android10Platform = Platform.f77313b;
            InetSocketAddress inetSocketAddress = this.l.f77008c;
            int i3 = this.f77089f;
            android10Platform.getClass();
            inetSocketAddress.getClass();
            socketCreateSocket.connect(inetSocketAddress, i3);
            try {
                this.w = new BufferedSocketKt$asBufferedSocket$1(new DefaultSocket(socketCreateSocket));
            } catch (NullPointerException e2) {
                if (Intrinsics.c(e2.getMessage(), "throw with null exception")) {
                    throw new IOException(e2);
                }
            }
        } catch (ConnectException e3) {
            ConnectException connectException = new ConnectException("Failed to connect to " + this.l.f77008c);
            connectException.initCause(e3);
            throw connectException;
        }
    }

    @Override // okhttp3.internal.http.ExchangeCodec.Carrier
    /* JADX INFO: renamed from: getRoute, reason: from getter */
    public final Route getL() {
        return this.l;
    }

    public final void h(SSLSocket sSLSocket, ConnectionSpec connectionSpec) {
        Protocol protocolA;
        Object next;
        Object next2;
        Address address = this.l.f77006a;
        try {
            String strB = null;
            if (connectionSpec.f76876b) {
                Platform.f77312a.getClass();
                Android10Platform android10Platform = Platform.f77313b;
                String str = address.f76817i.d;
                List list = address.f76818j;
                android10Platform.getClass();
                list.getClass();
                Iterator it = android10Platform.f77308e.iterator();
                do {
                    if (!it.hasNext()) {
                        next2 = null;
                        break;
                    }
                    next2 = it.next();
                } while (!((SocketAdapter) next2).a(sSLSocket));
                SocketAdapter socketAdapter = (SocketAdapter) next2;
                if (socketAdapter != null) {
                    socketAdapter.c(sSLSocket, str, list);
                }
            }
            sSLSocket.startHandshake();
            SSLSession session = sSLSocket.getSession();
            Handshake.Companion companion = Handshake.f76911e;
            session.getClass();
            companion.getClass();
            Handshake handshakeA = Handshake.Companion.a(session);
            HostnameVerifier hostnameVerifier = address.d;
            hostnameVerifier.getClass();
            if (!hostnameVerifier.verify(address.f76817i.d, session)) {
                List listA = handshakeA.a();
                if (listA.isEmpty()) {
                    throw new SSLPeerUnverifiedException("Hostname " + address.f76817i.d + " not verified (no certificates)");
                }
                Object obj = listA.get(0);
                obj.getClass();
                X509Certificate x509Certificate = (X509Certificate) obj;
                StringBuilder sb = new StringBuilder();
                sb.append("\n            |Hostname ");
                sb.append(address.f76817i.d);
                sb.append(" not verified:\n            |    certificate: ");
                CertificatePinner.f76853c.getClass();
                sb.append(CertificatePinner.Companion.a(x509Certificate));
                sb.append("\n            |    DN: ");
                sb.append(x509Certificate.getSubjectDN().getName());
                sb.append("\n            |    subjectAltNames: ");
                sb.append(CollectionsKt.Y(OkHostnameVerifier.a(x509Certificate, 7), OkHostnameVerifier.a(x509Certificate, 2)));
                sb.append("\n            ");
                throw new SSLPeerUnverifiedException(StringsKt.c0(sb.toString()));
            }
            CertificatePinner certificatePinner = address.f76814e;
            certificatePinner.getClass();
            Handshake handshake = new Handshake(handshakeA.f76912a, handshakeA.f76913b, handshakeA.f76914c, new q(certificatePinner, handshakeA, address, 28));
            this.u = handshake;
            certificatePinner.a(address.f76817i.d, new w1(handshake, 26));
            if (connectionSpec.f76876b) {
                Platform.f77312a.getClass();
                Android10Platform android10Platform2 = Platform.f77313b;
                android10Platform2.getClass();
                Iterator it2 = android10Platform2.f77308e.iterator();
                do {
                    if (!it2.hasNext()) {
                        next = null;
                        break;
                    }
                    next = it2.next();
                } while (!((SocketAdapter) next).a(sSLSocket));
                SocketAdapter socketAdapter2 = (SocketAdapter) next;
                if (socketAdapter2 != null) {
                    strB = socketAdapter2.b(sSLSocket);
                }
            }
            this.t = sSLSocket;
            this.w = new BufferedSocketKt$asBufferedSocket$1(new DefaultSocket(sSLSocket));
            if (strB != null) {
                Protocol.INSTANCE.getClass();
                protocolA = Protocol.Companion.a(strB);
            } else {
                protocolA = Protocol.HTTP_1_1;
            }
            this.v = protocolA;
            Platform.f77312a.getClass();
            Platform.f77313b.getClass();
        } catch (Throwable th) {
            Platform.f77312a.getClass();
            Platform.f77313b.getClass();
            _UtilJvmKt.c(sSLSocket);
            throw th;
        }
    }

    public final RoutePlanner.ConnectResult i() throws IOException {
        Request request;
        Request request2 = this.o;
        request2.getClass();
        Route route = this.l;
        String str = "CONNECT " + _UtilJvmKt.i(route.f77006a.f76817i, true) + " HTTP/1.1";
        while (true) {
            BufferedSocketKt$asBufferedSocket$1 bufferedSocketKt$asBufferedSocket$1 = this.w;
            if (bufferedSocketKt$asBufferedSocket$1 == null) {
                Intrinsics.h("socket");
                throw null;
            }
            Http1ExchangeCodec http1ExchangeCodec = new Http1ExchangeCodec(null, this, bufferedSocketKt$asBufferedSocket$1);
            BufferedSocketKt$asBufferedSocket$1 bufferedSocketKt$asBufferedSocket$2 = this.w;
            if (bufferedSocketKt$asBufferedSocket$2 == null) {
                Intrinsics.h("socket");
                throw null;
            }
            Timeout f77426c = bufferedSocketKt$asBufferedSocket$2.f77084c.f77443b.getF77426c();
            long j2 = this.d;
            TimeUnit timeUnit = TimeUnit.MILLISECONDS;
            f77426c.g(j2, timeUnit);
            BufferedSocketKt$asBufferedSocket$1 bufferedSocketKt$asBufferedSocket$3 = this.w;
            if (bufferedSocketKt$asBufferedSocket$3 == null) {
                Intrinsics.h("socket");
                throw null;
            }
            bufferedSocketKt$asBufferedSocket$3.d.f77440b.getF77431c().g(this.f77088e, timeUnit);
            http1ExchangeCodec.n(request2.f76971c, str);
            http1ExchangeCodec.a();
            Response.Builder builderG = http1ExchangeCodec.g(false);
            builderG.getClass();
            builderG.f76992a = request2;
            Response responseA = builderG.a();
            int i2 = responseA.f76986e;
            http1ExchangeCodec.m(responseA);
            if (i2 == 200) {
                request = null;
                break;
            }
            if (i2 != 407) {
                az.o(pq0.k(i2, "Unexpected response code for CONNECT: "));
                return null;
            }
            Request requestAuthenticate = route.f77006a.f76815f.authenticate(route, responseA);
            if (requestAuthenticate == null) {
                az.o("Failed to authenticate with proxy");
                return null;
            }
            String strA = responseA.g.a("Connection");
            if (strA == null) {
                strA = null;
            }
            if ("close".equalsIgnoreCase(strA)) {
                request = requestAuthenticate;
                break;
            }
            request2 = requestAuthenticate;
        }
        if (request == null) {
            return new RoutePlanner.ConnectResult(this, null, null, 6, null);
        }
        Socket socket = this.s;
        if (socket != null) {
            _UtilJvmKt.c(socket);
        }
        int i3 = this.n + 1;
        if (i3 < 21) {
            EventListener eventListener = this.f77092j.eventListener;
            RealCall realCall = this.f77092j;
            Route route2 = this.l;
            eventListener.connectEnd(realCall, route2.f77008c, route2.f77007b, null);
            return new RoutePlanner.ConnectResult(this, j(this, i3, request, 0, false, 12), null, 4, null);
        }
        ProtocolException protocolException = new ProtocolException("Too many tunnel connections attempted: 21");
        EventListener eventListener2 = this.f77092j.eventListener;
        RealCall realCall2 = this.f77092j;
        Route route3 = this.l;
        eventListener2.connectFailed(realCall2, route3.f77008c, route3.f77007b, null, protocolException);
        ConnectionListener connectionListener = this.f77087c.f77135b;
        Route route4 = this.l;
        RealCall realCall3 = this.f77092j;
        connectionListener.getClass();
        route4.getClass();
        realCall3.getClass();
        return new RoutePlanner.ConnectResult(this, null, protocolException, 2, null);
    }

    @Override // okhttp3.internal.connection.RoutePlanner.Plan
    public final boolean isReady() {
        return this.v != null;
    }

    public final ConnectPlan k(List list, SSLSocket sSLSocket) {
        String[] strArr;
        list.getClass();
        int i2 = this.p;
        int size = list.size();
        for (int i3 = i2 + 1; i3 < size; i3++) {
            ConnectionSpec connectionSpec = (ConnectionSpec) list.get(i3);
            connectionSpec.getClass();
            if (connectionSpec.f76875a && ((strArr = connectionSpec.d) == null || _UtilCommonKt.h(strArr, sSLSocket.getEnabledProtocols(), ComparisonsKt.c()))) {
                String[] strArr2 = connectionSpec.f76877c;
                if (strArr2 != null) {
                    String[] enabledCipherSuites = sSLSocket.getEnabledCipherSuites();
                    CipherSuite.f76862b.getClass();
                    if (!_UtilCommonKt.h(strArr2, enabledCipherSuites, CipherSuite.f76863c)) {
                    }
                }
                return j(this, 0, null, i3, i2 != -1, 3);
            }
        }
        return null;
    }

    public final ConnectPlan l(List list, SSLSocket sSLSocket) throws UnknownServiceException {
        list.getClass();
        if (this.p != -1) {
            return this;
        }
        ConnectPlan connectPlanK = k(list, sSLSocket);
        if (connectPlanK != null) {
            return connectPlanK;
        }
        StringBuilder sb = new StringBuilder("Unable to find acceptable protocols. isFallback=");
        sb.append(this.q);
        sb.append(", modes=");
        sb.append(list);
        String[] enabledProtocols = sSLSocket.getEnabledProtocols();
        enabledProtocols.getClass();
        String string = Arrays.toString(enabledProtocols);
        string.getClass();
        sb.append(", supported protocols=");
        sb.append(string);
        throw new UnknownServiceException(sb.toString());
    }
}
