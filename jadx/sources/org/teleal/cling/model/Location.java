package org.teleal.cling.model;

import com.linkplay.medialib.FinalDataUtil;
import defpackage.r81;
import java.net.Inet4Address;
import java.net.Inet6Address;
import java.net.InetAddress;
import java.net.URI;
import java.net.URL;
import java.util.BitSet;
import org.teleal.common.util.URIUtil;

/* JADX INFO: loaded from: classes5.dex */
public class Location {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final NetworkAddress f78375a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final URI f78376b;

    public Location(NetworkAddress networkAddress, URI uri) {
        this.f78375a = networkAddress;
        this.f78376b = uri;
    }

    public final URL a() {
        NetworkAddress networkAddress = this.f78375a;
        InetAddress inetAddress = networkAddress.f78381a;
        int i2 = networkAddress.f78382b;
        BitSet bitSet = URIUtil.f78649a;
        try {
            boolean z = inetAddress instanceof Inet6Address;
            URI uri = this.f78376b;
            if (z) {
                return URIUtil.b(new URL("http://[" + inetAddress.getHostAddress() + "]:" + i2), uri);
            }
            if (!(inetAddress instanceof Inet4Address)) {
                throw new IllegalArgumentException("InetAddress is neither IPv4 nor IPv6: " + inetAddress);
            }
            return URIUtil.b(new URL(FinalDataUtil.HTTP_HEAD + inetAddress.getHostAddress() + ":" + i2), uri);
        } catch (Exception e2) {
            r81.j("Address, port, and URI can not be converted to URL", e2);
            return null;
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        Location location = (Location) obj;
        return this.f78375a.equals(location.f78375a) && this.f78376b.equals(location.f78376b);
    }

    public final int hashCode() {
        return this.f78376b.hashCode() + (this.f78375a.hashCode() * 31);
    }
}
