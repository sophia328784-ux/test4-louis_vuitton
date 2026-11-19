package okhttp3.internal.connection;

import defpackage.q;
import java.io.IOException;
import java.net.Proxy;
import java.net.Socket;
import java.net.SocketException;
import java.net.SocketTimeoutException;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.TimeZone;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.net.ssl.SSLPeerUnverifiedException;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.Address;
import okhttp3.CertificatePinner;
import okhttp3.Connection;
import okhttp3.Handshake;
import okhttp3.HttpUrl;
import okhttp3.OkHttpClient;
import okhttp3.Protocol;
import okhttp3.Route;
import okhttp3.internal._UtilJvmKt;
import okhttp3.internal.concurrent.Lockable;
import okhttp3.internal.concurrent.TaskQueue;
import okhttp3.internal.concurrent.TaskRunner;
import okhttp3.internal.http.ExchangeCodec;
import okhttp3.internal.http2.ConnectionShutdownException;
import okhttp3.internal.http2.ErrorCode;
import okhttp3.internal.http2.FlowControlListener;
import okhttp3.internal.http2.Http2;
import okhttp3.internal.http2.Http2Connection;
import okhttp3.internal.http2.Http2Stream;
import okhttp3.internal.http2.Http2Writer;
import okhttp3.internal.http2.Settings;
import okhttp3.internal.http2.StreamResetException;
import okhttp3.internal.tls.OkHostnameVerifier;
import okio.BufferedSource;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u0004:\u0001\u001aB[\b\u0000\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\u0006\u0010\n\u001a\u00020\t\u0012\u0006\u0010\f\u001a\u00020\u000b\u0012\u0006\u0010\r\u001a\u00020\u000b\u0012\b\u0010\u000f\u001a\u0004\u0018\u00010\u000e\u0012\u0006\u0010\u0011\u001a\u00020\u0010\u0012\u0006\u0010\u0013\u001a\u00020\u0012\u0012\u0006\u0010\u0015\u001a\u00020\u0014\u0012\u0006\u0010\u0017\u001a\u00020\u0016¢\u0006\u0004\b\u0018\u0010\u0019¨\u0006\u001b"}, d2 = {"Lokhttp3/internal/connection/RealConnection;", "Lokhttp3/internal/http2/Http2Connection$Listener;", "Lokhttp3/Connection;", "Lokhttp3/internal/http/ExchangeCodec$Carrier;", "Lokhttp3/internal/concurrent/Lockable;", "Lokhttp3/internal/concurrent/TaskRunner;", "taskRunner", "Lokhttp3/internal/connection/RealConnectionPool;", "connectionPool", "Lokhttp3/Route;", "route", "Ljava/net/Socket;", "rawSocket", "javaNetSocket", "Lokhttp3/Handshake;", "handshake", "Lokhttp3/Protocol;", "protocol", "Lokhttp3/internal/connection/BufferedSocket;", "socket", "", "pingIntervalMillis", "Lokhttp3/internal/connection/ConnectionListener;", "connectionListener", "<init>", "(Lokhttp3/internal/concurrent/TaskRunner;Lokhttp3/internal/connection/RealConnectionPool;Lokhttp3/Route;Ljava/net/Socket;Ljava/net/Socket;Lokhttp3/Handshake;Lokhttp3/Protocol;Lokhttp3/internal/connection/BufferedSocket;ILokhttp3/internal/connection/ConnectionListener;)V", "Companion", "okhttp"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class RealConnection extends Http2Connection.Listener implements Connection, ExchangeCodec.Carrier, Lockable {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final TaskRunner f77127c;
    public final Route d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Socket f77128e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final Socket f77129f;
    public final Handshake g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final Protocol f77130h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final BufferedSocket f77131i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final int f77132j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final ConnectionListener f77133k;
    public Http2Connection l;
    public boolean m;
    public boolean n;
    public int o;
    public int p;
    public int q;
    public int r;
    public final ArrayList s;
    public long t;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\t\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lokhttp3/internal/connection/RealConnection$Companion;", "", "", "IDLE_CONNECTION_HEALTHY_NS", "J", "okhttp"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    static {
        new Companion(null);
    }

    public RealConnection(TaskRunner taskRunner, RealConnectionPool realConnectionPool, Route route, Socket socket, Socket socket2, Handshake handshake, Protocol protocol, BufferedSocket bufferedSocket, int i2, ConnectionListener connectionListener) {
        taskRunner.getClass();
        realConnectionPool.getClass();
        route.getClass();
        socket.getClass();
        socket2.getClass();
        protocol.getClass();
        bufferedSocket.getClass();
        connectionListener.getClass();
        this.f77127c = taskRunner;
        this.d = route;
        this.f77128e = socket;
        this.f77129f = socket2;
        this.g = handshake;
        this.f77130h = protocol;
        this.f77131i = bufferedSocket;
        this.f77132j = i2;
        this.f77133k = connectionListener;
        this.r = 1;
        this.s = new ArrayList();
        this.t = Long.MAX_VALUE;
    }

    public static void d(OkHttpClient okHttpClient, Route route, IOException iOException) {
        okHttpClient.getClass();
        route.getClass();
        iOException.getClass();
        if (route.f77007b.type() != Proxy.Type.DIRECT) {
            Address address = route.f77006a;
            address.f76816h.connectFailed(address.f76817i.j(), route.f77007b.address(), iOException);
        }
        RouteDatabase routeDatabase = okHttpClient.B;
        synchronized (routeDatabase) {
            routeDatabase.f77150a.add(route);
        }
    }

    @Override // okhttp3.internal.http2.Http2Connection.Listener
    public final void a(Http2Connection http2Connection, Settings settings) {
        http2Connection.getClass();
        settings.getClass();
        synchronized (this) {
            this.r = (settings.f77288a & 8) != 0 ? settings.f77289b[3] : Integer.MAX_VALUE;
        }
    }

    @Override // okhttp3.internal.http2.Http2Connection.Listener
    public final void b(Http2Stream http2Stream) {
        http2Stream.d(ErrorCode.REFUSED_STREAM, null);
    }

    @Override // okhttp3.internal.http.ExchangeCodec.Carrier
    public final void c() {
        synchronized (this) {
            this.m = true;
        }
        this.f77133k.getClass();
    }

    @Override // okhttp3.internal.http.ExchangeCodec.Carrier
    public final void cancel() {
        _UtilJvmKt.c(this.f77128e);
    }

    @Override // okhttp3.internal.http.ExchangeCodec.Carrier
    public final void e(RealCall realCall, IOException iOException) {
        boolean z;
        realCall.getClass();
        synchronized (this) {
            try {
                z = false;
                if (!(iOException instanceof StreamResetException)) {
                    if (!(this.l != null) || (iOException instanceof ConnectionShutdownException)) {
                        z = !this.m;
                        this.m = true;
                        if (this.p == 0) {
                            if (iOException != null) {
                                d(realCall.f77118b, this.d, iOException);
                            }
                            this.o++;
                        }
                    }
                } else if (((StreamResetException) iOException).f77290b == ErrorCode.REFUSED_STREAM) {
                    int i2 = this.q + 1;
                    this.q = i2;
                    if (i2 > 1) {
                        z = !this.m;
                        this.m = true;
                        this.o++;
                    }
                } else if (((StreamResetException) iOException).f77290b != ErrorCode.CANCEL || !realCall.s) {
                    z = !this.m;
                    this.m = true;
                    this.o++;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        if (z) {
            this.f77133k.getClass();
        }
    }

    public final boolean f(Address address, List list) {
        address.getClass();
        TimeZone timeZone = _UtilJvmKt.f77018a;
        if (this.s.size() < this.r && !this.m) {
            Route route = this.d;
            Address address2 = route.f77006a;
            Address address3 = route.f77006a;
            boolean zA = address2.a(address);
            HttpUrl httpUrl = address.f76817i;
            if (zA) {
                String str = httpUrl.d;
                String str2 = httpUrl.d;
                if (Intrinsics.c(str, address3.f76817i.d)) {
                    return true;
                }
                if (this.l != null && list != null) {
                    List<Route> list2 = list;
                    if (!(list2 instanceof Collection) || !list2.isEmpty()) {
                        for (Route route2 : list2) {
                            Proxy.Type type = route2.f77007b.type();
                            Proxy.Type type2 = Proxy.Type.DIRECT;
                            if (type == type2 && route.f77007b.type() == type2 && Intrinsics.c(route.f77008c, route2.f77008c)) {
                                if (address.d != OkHostnameVerifier.f77347a) {
                                    break;
                                }
                                TimeZone timeZone2 = _UtilJvmKt.f77018a;
                                HttpUrl httpUrl2 = address3.f76817i;
                                if (httpUrl.f76922e != httpUrl2.f76922e) {
                                    break;
                                }
                                boolean zC = Intrinsics.c(str2, httpUrl2.d);
                                Handshake handshake = this.g;
                                if (!zC) {
                                    if (!this.n && handshake != null) {
                                        List listA = handshake.a();
                                        if (listA.isEmpty()) {
                                            break;
                                        }
                                        Object obj = listA.get(0);
                                        obj.getClass();
                                        if (!OkHostnameVerifier.b(str2, (X509Certificate) obj)) {
                                            break;
                                        }
                                    } else {
                                        break;
                                        break;
                                    }
                                }
                                try {
                                    CertificatePinner certificatePinner = address.f76814e;
                                    certificatePinner.getClass();
                                    handshake.getClass();
                                    List listA2 = handshake.a();
                                    str2.getClass();
                                    listA2.getClass();
                                    certificatePinner.a(str2, new q(certificatePinner, listA2, str2, 26));
                                    return true;
                                } catch (SSLPeerUnverifiedException unused) {
                                    break;
                                }
                            }
                        }
                    }
                }
            }
        }
        return false;
    }

    public final boolean g(boolean z) {
        long j2;
        TimeZone timeZone = _UtilJvmKt.f77018a;
        long jNanoTime = System.nanoTime();
        if (this.f77128e.isClosed() || this.f77129f.isClosed() || this.f77129f.isInputShutdown() || this.f77129f.isOutputShutdown()) {
            return false;
        }
        Http2Connection http2Connection = this.l;
        if (http2Connection != null) {
            synchronized (http2Connection) {
                if (http2Connection.f77233h) {
                    return false;
                }
                return http2Connection.q >= http2Connection.p || jNanoTime < http2Connection.r;
            }
        }
        synchronized (this) {
            j2 = jNanoTime - this.t;
        }
        if (j2 < 10000000000L || !z) {
            return true;
        }
        Socket socket = this.f77129f;
        BufferedSource source = this.f77131i.getSource();
        socket.getClass();
        source.getClass();
        try {
            int soTimeout = socket.getSoTimeout();
            try {
                socket.setSoTimeout(1);
                return !source.Z0();
            } finally {
                socket.setSoTimeout(soTimeout);
            }
        } catch (SocketTimeoutException unused) {
            return true;
        } catch (IOException unused2) {
            return false;
        }
    }

    @Override // okhttp3.internal.http.ExchangeCodec.Carrier
    /* JADX INFO: renamed from: getRoute, reason: from getter */
    public final Route getD() {
        return this.d;
    }

    public final void h() throws SocketException {
        this.t = System.nanoTime();
        Protocol protocol = this.f77130h;
        if (protocol == Protocol.HTTP_2 || protocol == Protocol.H2_PRIOR_KNOWLEDGE) {
            this.f77129f.setSoTimeout(0);
            Object obj = this.f77133k;
            FlowControlListener flowControlListener = obj instanceof FlowControlListener ? (FlowControlListener) obj : null;
            if (flowControlListener == null) {
                flowControlListener = FlowControlListener.None.f77202a;
            }
            Http2Connection.Builder builder = new Http2Connection.Builder(true, this.f77127c);
            BufferedSocket bufferedSocket = this.f77131i;
            String str = this.d.f77006a.f76817i.d;
            bufferedSocket.getClass();
            str.getClass();
            builder.f77239c = bufferedSocket;
            builder.d = builder.f77237a ? _UtilJvmKt.f77019b + ' ' + str : "MockWebServer ".concat(str);
            builder.f77240e = this;
            builder.g = this.f77132j;
            builder.f77242h = flowControlListener;
            Http2Connection http2Connection = new Http2Connection(builder);
            this.l = http2Connection;
            Http2Connection.C.getClass();
            Settings settings = Http2Connection.D;
            this.r = (settings.f77288a & 8) != 0 ? settings.f77289b[3] : Integer.MAX_VALUE;
            Http2Writer http2Writer = http2Connection.z;
            synchronized (http2Writer) {
                try {
                    if (http2Writer.f77280f) {
                        throw new IOException("closed");
                    }
                    if (http2Writer.f77278c) {
                        Logger logger = Http2Writer.f77276h;
                        if (logger.isLoggable(Level.FINE)) {
                            logger.fine(_UtilJvmKt.d(">> CONNECTION " + Http2.f77226a.f(), new Object[0]));
                        }
                        http2Writer.f77277b.G1(Http2.f77226a);
                        http2Writer.f77277b.flush();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            Http2Writer http2Writer2 = http2Connection.z;
            Settings settings2 = http2Connection.t;
            http2Writer2.getClass();
            settings2.getClass();
            synchronized (http2Writer2) {
                try {
                    if (http2Writer2.f77280f) {
                        throw new IOException("closed");
                    }
                    http2Writer2.e(0, Integer.bitCount(settings2.f77288a) * 6, 4, 0);
                    for (int i2 = 0; i2 < 10; i2++) {
                        if (((1 << i2) & settings2.f77288a) != 0) {
                            http2Writer2.f77277b.writeShort(i2);
                            http2Writer2.f77277b.writeInt(settings2.f77289b[i2]);
                        }
                    }
                    http2Writer2.f77277b.flush();
                } catch (Throwable th2) {
                    throw th2;
                }
            }
            int iA = http2Connection.t.a();
            if (iA != 65535) {
                http2Connection.z.m(0, iA - 65535);
            }
            TaskQueue.b(http2Connection.f77234i.d(), http2Connection.f77231e, 0L, http2Connection.A, 6);
        }
    }

    public final String toString() {
        Object obj;
        StringBuilder sb = new StringBuilder("Connection{");
        Route route = this.d;
        sb.append(route.f77006a.f76817i.d);
        sb.append(':');
        sb.append(route.f77006a.f76817i.f76922e);
        sb.append(", proxy=");
        sb.append(route.f77007b);
        sb.append(" hostAddress=");
        sb.append(route.f77008c);
        sb.append(" cipherSuite=");
        Handshake handshake = this.g;
        if (handshake == null || (obj = handshake.f76913b) == null) {
            obj = "none";
        }
        sb.append(obj);
        sb.append(" protocol=");
        sb.append(this.f77130h);
        sb.append('}');
        return sb.toString();
    }
}
