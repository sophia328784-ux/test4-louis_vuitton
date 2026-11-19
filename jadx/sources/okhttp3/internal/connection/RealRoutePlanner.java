package okhttp3.internal.connection;

import android.security.NetworkSecurityPolicy;
import defpackage.az;
import defpackage.b21;
import defpackage.fc;
import defpackage.md;
import defpackage.tg0;
import java.io.IOException;
import java.net.Inet6Address;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.Proxy;
import java.net.Socket;
import java.net.SocketAddress;
import java.net.SocketException;
import java.net.UnknownHostException;
import java.net.UnknownServiceException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.collections.ArrayDeque;
import kotlin.collections.CollectionsKt;
import kotlin.collections.builders.ListBuilder;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Regex;
import okhttp3.Address;
import okhttp3.ConnectionSpec;
import okhttp3.Headers;
import okhttp3.HttpUrl;
import okhttp3.Protocol;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.Route;
import okhttp3.internal._HeadersCommonKt;
import okhttp3.internal._HostnamesCommonKt;
import okhttp3.internal._UtilCommonKt;
import okhttp3.internal._UtilJvmKt;
import okhttp3.internal.concurrent.TaskRunner;
import okhttp3.internal.platform.Platform;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001Bq\b\u0000\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\b\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\u0006\u0012\u0006\u0010\n\u001a\u00020\u0006\u0012\u0006\u0010\u000b\u001a\u00020\u0006\u0012\u0006\u0010\r\u001a\u00020\f\u0012\u0006\u0010\u000e\u001a\u00020\f\u0012\u0006\u0010\u0010\u001a\u00020\u000f\u0012\u0006\u0010\u0012\u001a\u00020\u0011\u0012\u0006\u0010\u0014\u001a\u00020\u0013\u0012\u0006\u0010\u0016\u001a\u00020\u0015¢\u0006\u0004\b\u0017\u0010\u0018¨\u0006\u0019"}, d2 = {"Lokhttp3/internal/connection/RealRoutePlanner;", "Lokhttp3/internal/connection/RoutePlanner;", "Lokhttp3/internal/concurrent/TaskRunner;", "taskRunner", "Lokhttp3/internal/connection/RealConnectionPool;", "connectionPool", "", "readTimeoutMillis", "writeTimeoutMillis", "socketConnectTimeoutMillis", "socketReadTimeoutMillis", "pingIntervalMillis", "", "retryOnConnectionFailure", "fastFallback", "Lokhttp3/Address;", "address", "Lokhttp3/internal/connection/RouteDatabase;", "routeDatabase", "Lokhttp3/internal/connection/RealCall;", "call", "Lokhttp3/Request;", "request", "<init>", "(Lokhttp3/internal/concurrent/TaskRunner;Lokhttp3/internal/connection/RealConnectionPool;IIIIIZZLokhttp3/Address;Lokhttp3/internal/connection/RouteDatabase;Lokhttp3/internal/connection/RealCall;Lokhttp3/Request;)V", "okhttp"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class RealRoutePlanner implements RoutePlanner {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final TaskRunner f77140a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final RealConnectionPool f77141b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f77142c;
    public final int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f77143e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int f77144f;
    public final int g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final boolean f77145h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final boolean f77146i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final Address f77147j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final RouteDatabase f77148k;
    public final RealCall l;
    public final boolean m;
    public RouteSelector.Selection n;
    public RouteSelector o;
    public Route p;
    public final ArrayDeque q;

    public RealRoutePlanner(TaskRunner taskRunner, RealConnectionPool realConnectionPool, int i2, int i3, int i4, int i5, int i6, boolean z, boolean z2, Address address, RouteDatabase routeDatabase, RealCall realCall, Request request) {
        taskRunner.getClass();
        realConnectionPool.getClass();
        address.getClass();
        routeDatabase.getClass();
        realCall.getClass();
        request.getClass();
        this.f77140a = taskRunner;
        this.f77141b = realConnectionPool;
        this.f77142c = i2;
        this.d = i3;
        this.f77143e = i4;
        this.f77144f = i5;
        this.g = i6;
        this.f77145h = z;
        this.f77146i = z2;
        this.f77147j = address;
        this.f77148k = routeDatabase;
        this.l = realCall;
        this.m = !Intrinsics.c(request.f76970b, "GET");
        this.q = new ArrayDeque();
    }

    @Override // okhttp3.internal.connection.RoutePlanner
    public final boolean a(RealConnection realConnection) {
        RouteSelector routeSelector;
        Route route;
        if (this.q.isEmpty() && this.p == null) {
            if (realConnection != null) {
                synchronized (realConnection) {
                    route = null;
                    if (realConnection.o == 0 && realConnection.m && _UtilJvmKt.a(realConnection.d.f77006a.f76817i, this.f77147j.f76817i)) {
                        route = realConnection.d;
                    }
                }
                if (route != null) {
                    this.p = route;
                    return true;
                }
            }
            RouteSelector.Selection selection = this.n;
            if ((selection == null || selection.f77162b >= selection.f77161a.size()) && (routeSelector = this.o) != null) {
                return routeSelector.a();
            }
        }
        return true;
    }

    @Override // okhttp3.internal.connection.RoutePlanner
    /* JADX INFO: renamed from: b, reason: from getter */
    public final Address getF77147j() {
        return this.f77147j;
    }

    @Override // okhttp3.internal.connection.RoutePlanner
    /* JADX INFO: renamed from: c, reason: from getter */
    public final ArrayDeque getQ() {
        return this.q;
    }

    @Override // okhttp3.internal.connection.RoutePlanner
    public final RoutePlanner.Plan d() throws IOException {
        boolean z;
        Socket socketH;
        ReusePlan reusePlan;
        ConnectPlan connectPlanF;
        String hostAddress;
        int port;
        List listLookup;
        boolean zContains;
        RealConnection realConnection = this.l.f77125k;
        if (realConnection == null) {
            reusePlan = null;
        } else {
            boolean zG = realConnection.g(this.m);
            synchronized (realConnection) {
                boolean z2 = realConnection.m;
                try {
                    if (zG) {
                        z = false;
                        socketH = (z2 || !e(realConnection.d.f77006a.f76817i)) ? this.l.h() : null;
                    } else {
                        z = !z2;
                        realConnection.m = true;
                        socketH = this.l.h();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            if (this.l.f77125k == null) {
                if (socketH != null) {
                    _UtilJvmKt.c(socketH);
                }
                this.l.eventListener.connectionReleased(this.l, realConnection);
                ConnectionListener connectionListener = realConnection.f77133k;
                RealCall realCall = this.l;
                connectionListener.getClass();
                realCall.getClass();
                if (socketH != null || z) {
                    realConnection.f77133k.getClass();
                }
                reusePlan = null;
            } else {
                if (socketH != null) {
                    md.k("Check failed.");
                    return null;
                }
                reusePlan = new ReusePlan(realConnection);
            }
        }
        if (reusePlan != null) {
            return reusePlan;
        }
        ReusePlan reusePlanG = g(null, null);
        if (reusePlanG != null) {
            return reusePlanG;
        }
        if (!this.q.isEmpty()) {
            return (RoutePlanner.Plan) this.q.removeFirst();
        }
        Route route = this.p;
        if (route != null) {
            this.p = null;
            connectPlanF = f(route, null);
        } else {
            RouteSelector.Selection selection = this.n;
            if (selection == null || selection.f77162b >= selection.f77161a.size()) {
                RouteSelector routeSelector = this.o;
                if (routeSelector == null) {
                    routeSelector = new RouteSelector(this.f77147j, this.f77148k, this.l, this.f77146i);
                    this.o = routeSelector;
                }
                if (!routeSelector.a()) {
                    az.o("exhausted all routes");
                    return null;
                }
                if (!routeSelector.a()) {
                    b21.x();
                    return null;
                }
                ArrayList arrayList = new ArrayList();
                while (routeSelector.f77159f < routeSelector.f77158e.size()) {
                    if (routeSelector.f77159f >= routeSelector.f77158e.size()) {
                        throw new SocketException("No route to " + routeSelector.f77155a.f76817i.d + "; exhausted proxy configurations: " + routeSelector.f77158e);
                    }
                    List list = routeSelector.f77158e;
                    int i2 = routeSelector.f77159f;
                    routeSelector.f77159f = i2 + 1;
                    Proxy proxy = (Proxy) list.get(i2);
                    ArrayList arrayList2 = new ArrayList();
                    routeSelector.g = arrayList2;
                    if (proxy.type() == Proxy.Type.DIRECT || proxy.type() == Proxy.Type.SOCKS) {
                        HttpUrl httpUrl = routeSelector.f77155a.f76817i;
                        hostAddress = httpUrl.d;
                        port = httpUrl.f76922e;
                    } else {
                        SocketAddress socketAddressAddress = proxy.address();
                        if (!(socketAddressAddress instanceof InetSocketAddress)) {
                            tg0.n(socketAddressAddress.getClass(), "Proxy.address() is not an InetSocketAddress: ");
                            return null;
                        }
                        InetSocketAddress inetSocketAddress = (InetSocketAddress) socketAddressAddress;
                        RouteSelector.f77154i.getClass();
                        InetAddress address = inetSocketAddress.getAddress();
                        if (address == null) {
                            hostAddress = inetSocketAddress.getHostName();
                            hostAddress.getClass();
                        } else {
                            hostAddress = address.getHostAddress();
                            hostAddress.getClass();
                        }
                        port = inetSocketAddress.getPort();
                    }
                    if (1 > port || port >= 65536) {
                        throw new SocketException("No route to " + hostAddress + ':' + port + "; port is out of range");
                    }
                    if (proxy.type() == Proxy.Type.SOCKS) {
                        arrayList2.add(InetSocketAddress.createUnresolved(hostAddress, port));
                    } else {
                        Regex regex = _HostnamesCommonKt.f77015a;
                        hostAddress.getClass();
                        if (_HostnamesCommonKt.f77015a.f(hostAddress)) {
                            listLookup = CollectionsKt.O(InetAddress.getByName(hostAddress));
                        } else {
                            routeSelector.f77157c.eventListener.dnsStart(routeSelector.f77157c, hostAddress);
                            listLookup = routeSelector.f77155a.f76811a.lookup(hostAddress);
                            if (listLookup.isEmpty()) {
                                throw new UnknownHostException(routeSelector.f77155a.f76811a + " returned no addresses for " + hostAddress);
                            }
                            routeSelector.f77157c.eventListener.dnsEnd(routeSelector.f77157c, hostAddress, listLookup);
                        }
                        if (routeSelector.d && listLookup.size() >= 2) {
                            ArrayList arrayList3 = new ArrayList();
                            ArrayList arrayList4 = new ArrayList();
                            for (Object obj : listLookup) {
                                if (((InetAddress) obj) instanceof Inet6Address) {
                                    arrayList3.add(obj);
                                } else {
                                    arrayList4.add(obj);
                                }
                            }
                            Pair pair = new Pair(arrayList3, arrayList4);
                            List list2 = (List) pair.f71705b;
                            List list3 = (List) pair.f71706c;
                            if (!list2.isEmpty() && !list3.isEmpty()) {
                                byte[] bArr = _UtilCommonKt.f77016a;
                                Iterator it = list2.iterator();
                                Iterator it2 = list3.iterator();
                                ListBuilder listBuilderV = CollectionsKt.v();
                                while (true) {
                                    if (!it.hasNext() && !it2.hasNext()) {
                                        break;
                                    }
                                    if (it.hasNext()) {
                                        listBuilderV.add(it.next());
                                    }
                                    if (it2.hasNext()) {
                                        listBuilderV.add(it2.next());
                                    }
                                }
                                listLookup = CollectionsKt.r(listBuilderV);
                            }
                        }
                        Iterator it3 = listLookup.iterator();
                        while (it3.hasNext()) {
                            arrayList2.add(new InetSocketAddress((InetAddress) it3.next(), port));
                        }
                    }
                    Iterator it4 = routeSelector.g.iterator();
                    while (it4.hasNext()) {
                        Route route2 = new Route(routeSelector.f77155a, proxy, (InetSocketAddress) it4.next());
                        RouteDatabase routeDatabase = routeSelector.f77156b;
                        synchronized (routeDatabase) {
                            zContains = routeDatabase.f77150a.contains(route2);
                        }
                        if (zContains) {
                            routeSelector.f77160h.add(route2);
                        } else {
                            arrayList.add(route2);
                        }
                    }
                    if (!arrayList.isEmpty()) {
                        break;
                    }
                }
                if (arrayList.isEmpty()) {
                    CollectionsKt.j(arrayList, routeSelector.f77160h);
                    routeSelector.f77160h.clear();
                }
                RouteSelector.Selection selection2 = new RouteSelector.Selection(arrayList);
                this.n = selection2;
                if (this.l.s) {
                    az.o("Canceled");
                    return null;
                }
                int i3 = selection2.f77162b;
                List list4 = selection2.f77161a;
                if (i3 >= list4.size()) {
                    b21.x();
                    return null;
                }
                int i4 = selection2.f77162b;
                selection2.f77162b = i4 + 1;
                connectPlanF = f((Route) list4.get(i4), selection2.f77161a);
            } else {
                int i5 = selection.f77162b;
                List list5 = selection.f77161a;
                if (i5 >= list5.size()) {
                    b21.x();
                    return null;
                }
                int i6 = selection.f77162b;
                selection.f77162b = i6 + 1;
                connectPlanF = f((Route) list5.get(i6), null);
            }
        }
        ReusePlan reusePlanG2 = g(connectPlanF, connectPlanF.m);
        return reusePlanG2 != null ? reusePlanG2 : connectPlanF;
    }

    @Override // okhttp3.internal.connection.RoutePlanner
    public final boolean e(HttpUrl httpUrl) {
        httpUrl.getClass();
        HttpUrl httpUrl2 = this.f77147j.f76817i;
        return httpUrl.f76922e == httpUrl2.f76922e && Intrinsics.c(httpUrl.d, httpUrl2.d);
    }

    public final ConnectPlan f(Route route, List list) throws UnknownServiceException {
        route.getClass();
        Address address = route.f77006a;
        if (address.f76813c == null) {
            if (!address.f76819k.contains(ConnectionSpec.f76874h)) {
                throw new UnknownServiceException("CLEARTEXT communication not enabled for client");
            }
            String str = route.f77006a.f76817i.d;
            Platform.f77312a.getClass();
            Platform.f77313b.getClass();
            str.getClass();
            if (!NetworkSecurityPolicy.getInstance().isCleartextTrafficPermitted(str)) {
                throw new UnknownServiceException(fc.h("CLEARTEXT communication to ", str, " not permitted by network security policy"));
            }
        } else if (address.f76818j.contains(Protocol.H2_PRIOR_KNOWLEDGE)) {
            throw new UnknownServiceException("H2_PRIOR_KNOWLEDGE cannot be used with HTTPS");
        }
        Request request = null;
        if (route.f77007b.type() == Proxy.Type.HTTP) {
            Address address2 = route.f77006a;
            if (address2.f76813c != null || address2.f76818j.contains(Protocol.H2_PRIOR_KNOWLEDGE)) {
                Request.Builder builder = new Request.Builder();
                HttpUrl httpUrl = route.f77006a.f76817i;
                httpUrl.getClass();
                builder.f76974a = httpUrl;
                builder.c("CONNECT", null);
                Address address3 = route.f77006a;
                builder.b("Host", _UtilJvmKt.i(address3.f76817i, true));
                builder.b("Proxy-Connection", "Keep-Alive");
                builder.b("User-Agent", "okhttp/5.4.0");
                request = new Request(builder);
                Response.Builder builder2 = new Response.Builder();
                builder2.f76992a = request;
                Protocol protocol = Protocol.HTTP_1_1;
                protocol.getClass();
                builder2.f76993b = protocol;
                builder2.f76994c = 407;
                builder2.d = "Preemptive Authenticate";
                builder2.l = -1L;
                builder2.m = -1L;
                Headers.Builder builder3 = builder2.f76996f;
                builder3.getClass();
                _HeadersCommonKt.b("Proxy-Authenticate");
                _HeadersCommonKt.c("OkHttp-Preemptive", "Proxy-Authenticate");
                builder3.f("Proxy-Authenticate");
                _HeadersCommonKt.a(builder3, "Proxy-Authenticate", "OkHttp-Preemptive");
                Request requestAuthenticate = address3.f76815f.authenticate(route, builder2.a());
                if (requestAuthenticate != null) {
                    request = requestAuthenticate;
                }
            }
        }
        return new ConnectPlan(this.f77140a, this.f77141b, this.f77142c, this.d, this.f77143e, this.f77144f, this.g, this.f77145h, this.l, this, route, list, 0, request, -1, false);
    }

    /* JADX WARN: Code duplicated, block: B:22:0x0047 A[Catch: all -> 0x0045, TryCatch #0 {all -> 0x0045, blocks: (B:14:0x003a, B:22:0x0047, B:25:0x004e), top: B:53:0x003a }] */
    /* JADX WARN: Code duplicated, block: B:24:0x004d  */
    /* JADX WARN: Code duplicated, block: B:25:0x004e A[Catch: all -> 0x0045, TRY_LEAVE, TryCatch #0 {all -> 0x0045, blocks: (B:14:0x003a, B:22:0x0047, B:25:0x004e), top: B:53:0x003a }] */
    public final ReusePlan g(ConnectPlan connectPlan, List list) {
        RealConnection realConnection;
        boolean z;
        boolean z2;
        Socket socketH;
        RealConnectionPool realConnectionPool = this.f77141b;
        boolean z3 = this.m;
        Address address = this.f77147j;
        RealCall realCall = this.l;
        boolean z4 = connectPlan != null && connectPlan.isReady();
        realConnectionPool.getClass();
        address.getClass();
        realCall.getClass();
        Iterator it = realConnectionPool.f77138f.iterator();
        it.getClass();
        while (true) {
            if (!it.hasNext()) {
                realConnection = null;
                break;
            }
            realConnection = (RealConnection) it.next();
            realConnection.getClass();
            synchronized (realConnection) {
                if (z4) {
                    try {
                        if (!(realConnection.l != null)) {
                            z = false;
                        } else if (realConnection.f(address, list)) {
                            realCall.b(realConnection);
                            z = true;
                        } else {
                            z = false;
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                } else if (realConnection.f(address, list)) {
                    z = false;
                } else {
                    realCall.b(realConnection);
                    z = true;
                }
            }
            if (z) {
                if (realConnection.g(z3)) {
                    break;
                }
                synchronized (realConnection) {
                    z2 = realConnection.m;
                    realConnection.m = true;
                    socketH = realCall.h();
                }
                if (socketH != null) {
                    _UtilJvmKt.c(socketH);
                    realConnectionPool.f77135b.getClass();
                } else if (!z2) {
                    realConnectionPool.f77135b.getClass();
                }
            }
        }
        if (realConnection == null) {
            return null;
        }
        if (connectPlan != null) {
            this.p = connectPlan.l;
            Socket socket = connectPlan.t;
            if (socket != null) {
                _UtilJvmKt.c(socket);
            }
        }
        this.l.eventListener.connectionAcquired(this.l, realConnection);
        ConnectionListener connectionListener = realConnection.f77133k;
        RealCall realCall2 = this.l;
        connectionListener.getClass();
        realCall2.getClass();
        return new ReusePlan(realConnection);
    }

    @Override // okhttp3.internal.connection.RoutePlanner
    public final boolean isCanceled() {
        return this.l.s;
    }
}
