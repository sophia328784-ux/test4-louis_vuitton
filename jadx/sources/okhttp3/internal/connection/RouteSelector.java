package okhttp3.internal.connection;

import java.net.Proxy;
import java.net.URI;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import kotlin.jvm.internal.DefaultConstructorMarker;
import okhttp3.Address;
import okhttp3.HttpUrl;
import okhttp3.Route;
import okhttp3.internal._UtilJvmKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0006\u0018\u00002\u00020\u0001:\u0002\f\rB)\b\u0000\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\b¢\u0006\u0004\b\n\u0010\u000b¨\u0006\u000e"}, d2 = {"Lokhttp3/internal/connection/RouteSelector;", "", "Lokhttp3/Address;", "address", "Lokhttp3/internal/connection/RouteDatabase;", "routeDatabase", "Lokhttp3/internal/connection/RealCall;", "call", "", "fastFallback", "<init>", "(Lokhttp3/Address;Lokhttp3/internal/connection/RouteDatabase;Lokhttp3/internal/connection/RealCall;Z)V", "Selection", "Companion", "okhttp"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class RouteSelector {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final Companion f77154i = new Companion(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Address f77155a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final RouteDatabase f77156b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final RealCall f77157c;
    public final boolean d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final List f77158e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f77159f;
    public List g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final ArrayList f77160h;

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lokhttp3/internal/connection/RouteSelector$Companion;", "", "okhttp"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0015\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lokhttp3/internal/connection/RouteSelector$Selection;", "", "", "Lokhttp3/Route;", "routes", "<init>", "(Ljava/util/List;)V", "okhttp"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Selection {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final List f77161a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f77162b;

        public Selection(List<Route> list) {
            list.getClass();
            this.f77161a = list;
        }
    }

    public RouteSelector(Address address, RouteDatabase routeDatabase, RealCall realCall, boolean z) {
        List listK;
        address.getClass();
        routeDatabase.getClass();
        realCall.getClass();
        this.f77155a = address;
        this.f77156b = routeDatabase;
        this.f77157c = realCall;
        this.d = z;
        EmptyList emptyList = EmptyList.f71768b;
        this.f77158e = emptyList;
        this.g = emptyList;
        this.f77160h = new ArrayList();
        HttpUrl httpUrl = address.f76817i;
        Proxy proxy = address.g;
        realCall.eventListener.proxySelectStart(realCall, httpUrl);
        if (proxy != null) {
            listK = CollectionsKt.O(proxy);
        } else {
            URI uriJ = httpUrl.j();
            if (uriJ.getHost() == null) {
                listK = _UtilJvmKt.k(new Proxy[]{Proxy.NO_PROXY});
            } else {
                List<Proxy> listSelect = address.f76816h.select(uriJ);
                List<Proxy> list = listSelect;
                listK = (list == null || list.isEmpty()) ? _UtilJvmKt.k(new Proxy[]{Proxy.NO_PROXY}) : _UtilJvmKt.j(listSelect);
            }
        }
        this.f77158e = listK;
        this.f77159f = 0;
        realCall.eventListener.proxySelectEnd(realCall, httpUrl, this.f77158e);
    }

    public final boolean a() {
        return this.f77159f < this.f77158e.size() || !this.f77160h.isEmpty();
    }
}
