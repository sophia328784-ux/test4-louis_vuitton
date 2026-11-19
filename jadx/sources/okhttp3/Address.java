package okhttp3;

import com.linkplay.network.SecurityConstants;
import defpackage.b21;
import defpackage.fc;
import defpackage.md;
import defpackage.n00;
import defpackage.pq0;
import java.net.Proxy;
import java.net.ProxySelector;
import java.util.List;
import java.util.Objects;
import javax.net.SocketFactory;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLSocketFactory;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.internal._HostnamesCommonKt;
import okhttp3.internal._UtilJvmKt;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000V\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B{\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\b\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\n\u0012\b\u0010\r\u001a\u0004\u0018\u00010\f\u0012\b\u0010\u000f\u001a\u0004\u0018\u00010\u000e\u0012\u0006\u0010\u0011\u001a\u00020\u0010\u0012\b\u0010\u0013\u001a\u0004\u0018\u00010\u0012\u0012\f\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00150\u0014\u0012\f\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u00170\u0014\u0012\u0006\u0010\u001a\u001a\u00020\u0019¢\u0006\u0004\b\u001b\u0010\u001c¨\u0006\u001d"}, d2 = {"Lokhttp3/Address;", "", "", "uriHost", "", "uriPort", "Lokhttp3/Dns;", "dns", "Ljavax/net/SocketFactory;", "socketFactory", "Ljavax/net/ssl/SSLSocketFactory;", "sslSocketFactory", "Ljavax/net/ssl/HostnameVerifier;", "hostnameVerifier", "Lokhttp3/CertificatePinner;", "certificatePinner", "Lokhttp3/Authenticator;", "proxyAuthenticator", "Ljava/net/Proxy;", "proxy", "", "Lokhttp3/Protocol;", "protocols", "Lokhttp3/ConnectionSpec;", "connectionSpecs", "Ljava/net/ProxySelector;", "proxySelector", "<init>", "(Ljava/lang/String;ILokhttp3/Dns;Ljavax/net/SocketFactory;Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/HostnameVerifier;Lokhttp3/CertificatePinner;Lokhttp3/Authenticator;Ljava/net/Proxy;Ljava/util/List;Ljava/util/List;Ljava/net/ProxySelector;)V", "okhttp"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class Address {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Dns f76811a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final SocketFactory f76812b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final SSLSocketFactory f76813c;
    public final HostnameVerifier d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final CertificatePinner f76814e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final Authenticator f76815f;
    public final Proxy g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final ProxySelector f76816h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final HttpUrl f76817i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final List f76818j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final List f76819k;

    public Address(String str, int i2, Dns dns, SocketFactory socketFactory, SSLSocketFactory sSLSocketFactory, HostnameVerifier hostnameVerifier, CertificatePinner certificatePinner, Authenticator authenticator, Proxy proxy, List<? extends Protocol> list, List<ConnectionSpec> list2, ProxySelector proxySelector) {
        str.getClass();
        dns.getClass();
        socketFactory.getClass();
        authenticator.getClass();
        list.getClass();
        list2.getClass();
        proxySelector.getClass();
        this.f76811a = dns;
        this.f76812b = socketFactory;
        this.f76813c = sSLSocketFactory;
        this.d = hostnameVerifier;
        this.f76814e = certificatePinner;
        this.f76815f = authenticator;
        this.g = proxy;
        this.f76816h = proxySelector;
        HttpUrl.Builder builder = new HttpUrl.Builder();
        String str2 = sSLSocketFactory != null ? SecurityConstants.SECURITY_HTTPS : SecurityConstants.SECURITY_NONE;
        if (str2.equalsIgnoreCase(SecurityConstants.SECURITY_NONE)) {
            builder.f76926a = SecurityConstants.SECURITY_NONE;
        } else {
            if (!str2.equalsIgnoreCase(SecurityConstants.SECURITY_HTTPS)) {
                md.n("unexpected scheme: ".concat(str2));
                throw null;
            }
            builder.f76926a = SecurityConstants.SECURITY_HTTPS;
        }
        String strB = _HostnamesCommonKt.b(_UrlKt.d(0, 0, 7, str));
        if (strB == null) {
            md.n("unexpected host: ".concat(str));
            throw null;
        }
        builder.d = strB;
        if (1 > i2 || i2 >= 65536) {
            b21.n(pq0.k(i2, "unexpected port: "));
            throw null;
        }
        builder.f76929e = i2;
        this.f76817i = builder.c();
        this.f76818j = _UtilJvmKt.j(list);
        this.f76819k = _UtilJvmKt.j(list2);
    }

    public final boolean a(Address address) {
        address.getClass();
        return Intrinsics.c(this.f76811a, address.f76811a) && Intrinsics.c(this.f76815f, address.f76815f) && Intrinsics.c(this.f76818j, address.f76818j) && Intrinsics.c(this.f76819k, address.f76819k) && Intrinsics.c(this.f76816h, address.f76816h) && Intrinsics.c(this.g, address.g) && Intrinsics.c(this.f76813c, address.f76813c) && Intrinsics.c(this.d, address.d) && Intrinsics.c(this.f76814e, address.f76814e) && this.f76817i.f76922e == address.f76817i.f76922e;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof Address)) {
            return false;
        }
        Address address = (Address) obj;
        return Intrinsics.c(this.f76817i, address.f76817i) && a(address);
    }

    public final int hashCode() {
        return Objects.hashCode(this.f76814e) + ((Objects.hashCode(this.d) + ((Objects.hashCode(this.f76813c) + ((Objects.hashCode(this.g) + ((this.f76816h.hashCode() + n00.a(n00.a((this.f76815f.hashCode() + ((this.f76811a.hashCode() + fc.b(527, 31, this.f76817i.f76925i)) * 31)) * 31, 31, this.f76818j), 31, this.f76819k)) * 31)) * 31)) * 31)) * 31);
    }

    public final String toString() {
        String str;
        StringBuilder sb = new StringBuilder("Address{");
        HttpUrl httpUrl = this.f76817i;
        sb.append(httpUrl.d);
        sb.append(':');
        sb.append(httpUrl.f76922e);
        sb.append(", ");
        Proxy proxy = this.g;
        if (proxy != null) {
            str = "proxy=" + proxy;
        } else {
            str = "proxySelector=" + this.f76816h;
        }
        return fc.l(sb, str, '}');
    }
}
