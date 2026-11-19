package okhttp3;

import defpackage.a;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.Proxy;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import okhttp3.internal._HostnamesCommonKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lokhttp3/Route;", "", "Lokhttp3/Address;", "address", "Ljava/net/Proxy;", "proxy", "Ljava/net/InetSocketAddress;", "socketAddress", "<init>", "(Lokhttp3/Address;Ljava/net/Proxy;Ljava/net/InetSocketAddress;)V", "okhttp"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class Route {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Address f77006a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Proxy f77007b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final InetSocketAddress f77008c;

    public Route(Address address, Proxy proxy, InetSocketAddress inetSocketAddress) {
        address.getClass();
        proxy.getClass();
        inetSocketAddress.getClass();
        this.f77006a = address;
        this.f77007b = proxy;
        this.f77008c = inetSocketAddress;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof Route)) {
            return false;
        }
        Route route = (Route) obj;
        return Intrinsics.c(route.f77006a, this.f77006a) && Intrinsics.c(route.f77007b, this.f77007b) && Intrinsics.c(route.f77008c, this.f77008c);
    }

    public final int hashCode() {
        return this.f77008c.hashCode() + ((this.f77007b.hashCode() + ((this.f77006a.hashCode() + 527) * 31)) * 31);
    }

    public final String toString() {
        String hostAddress;
        StringBuilder sb = new StringBuilder();
        Address address = this.f77006a;
        HttpUrl httpUrl = address.f76817i;
        HttpUrl httpUrl2 = address.f76817i;
        String str = httpUrl.d;
        InetSocketAddress inetSocketAddress = this.f77008c;
        InetAddress address2 = inetSocketAddress.getAddress();
        String strB = (address2 == null || (hostAddress = address2.getHostAddress()) == null) ? null : _HostnamesCommonKt.b(hostAddress);
        if (StringsKt.l(str, ':')) {
            a.B(sb, "[", str, "]");
        } else {
            sb.append(str);
        }
        if (httpUrl2.f76922e != inetSocketAddress.getPort() || str.equals(strB)) {
            sb.append(":");
            sb.append(httpUrl2.f76922e);
        }
        if (!str.equals(strB)) {
            if (Intrinsics.c(this.f77007b, Proxy.NO_PROXY)) {
                sb.append(" at ");
            } else {
                sb.append(" via proxy ");
            }
            if (strB == null) {
                sb.append("<unresolved>");
            } else if (StringsKt.l(strB, ':')) {
                a.B(sb, "[", strB, "]");
            } else {
                sb.append(strB);
            }
            sb.append(":");
            sb.append(inetSocketAddress.getPort());
        }
        return sb.toString();
    }
}
