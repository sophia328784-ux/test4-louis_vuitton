package okhttp3.internal.authenticator;

import defpackage.tr;
import java.io.EOFException;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.PasswordAuthentication;
import java.net.Proxy;
import java.net.SocketAddress;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.text.Charsets;
import okhttp3.Address;
import okhttp3.Authenticator;
import okhttp3.Challenge;
import okhttp3.Dns;
import okhttp3.Headers;
import okhttp3.HttpUrl;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.Route;
import okhttp3.internal.http.HttpHeaders;
import okhttp3.internal.platform.Platform;
import okio.Buffer;
import okio.ByteString;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0011\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lokhttp3/internal/authenticator/JavaNetAuthenticator;", "Lokhttp3/Authenticator;", "Lokhttp3/Dns;", "defaultDns", "<init>", "(Lokhttp3/Dns;)V", "okhttp"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class JavaNetAuthenticator implements Authenticator {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Dns f77021b;

    @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f77022a;

        static {
            int[] iArr = new int[Proxy.Type.values().length];
            try {
                iArr[Proxy.Type.DIRECT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            f77022a = iArr;
        }
    }

    public /* synthetic */ JavaNetAuthenticator(Dns dns, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? Dns.d : dns);
    }

    public static InetAddress a(Proxy proxy, HttpUrl httpUrl, Dns dns) {
        Proxy.Type type = proxy.type();
        if ((type == null ? -1 : WhenMappings.f77022a[type.ordinal()]) == 1) {
            return (InetAddress) CollectionsKt.B(dns.lookup(httpUrl.d));
        }
        SocketAddress socketAddressAddress = proxy.address();
        socketAddressAddress.getClass();
        InetAddress address = ((InetSocketAddress) socketAddressAddress).getAddress();
        address.getClass();
        return address;
    }

    /* JADX WARN: Code duplicated, block: B:22:0x0060  */
    /* JADX WARN: Code duplicated, block: B:26:0x0067  */
    /* JADX WARN: Code duplicated, block: B:30:0x0073  */
    /* JADX WARN: Code duplicated, block: B:38:0x008e  */
    /* JADX WARN: Code duplicated, block: B:43:0x009b  */
    /* JADX WARN: Code duplicated, block: B:44:0x00ca  */
    /* JADX WARN: Code duplicated, block: B:47:0x00f2  */
    /* JADX WARN: Code duplicated, block: B:48:0x00f5  */
    /* JADX WARN: Code duplicated, block: B:53:0x011e  */
    /* JADX WARN: Code duplicated, block: B:59:0x0116 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:64:0x0084 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:65:0x00f0 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:67:0x006d A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:68:0x006d A[SYNTHETIC] */
    @Override // okhttp3.Authenticator
    public final Request authenticate(Route route, Response response) {
        String str;
        List<Challenge> list;
        Request request;
        HttpUrl httpUrl;
        boolean z;
        Proxy proxy;
        Dns dns;
        PasswordAuthentication passwordAuthenticationRequestPasswordAuthentication;
        String str2;
        String str3;
        Charset charsetForName;
        Address address;
        Dns dns2;
        Headers headers = response.g;
        int i2 = response.f76986e;
        if (i2 != 401) {
            if (i2 != 407) {
                list = EmptyList.f71768b;
            } else {
                str = "Proxy-Authenticate";
            }
            request = response.f76984b;
            httpUrl = request.f76969a;
            z = response.f76986e == 407;
            if (route != null || (proxy = route.f77007b) == null) {
                proxy = Proxy.NO_PROXY;
            }
            for (Challenge challenge : list) {
                if ("Basic".equalsIgnoreCase(challenge.f76860a)) {
                    dns = (route != null || (address = route.f77006a) == null || (dns2 = address.f76811a) == null) ? this.f77021b : dns2;
                    if (z) {
                        SocketAddress socketAddressAddress = proxy.address();
                        socketAddressAddress.getClass();
                        InetSocketAddress inetSocketAddress = (InetSocketAddress) socketAddressAddress;
                        passwordAuthenticationRequestPasswordAuthentication = java.net.Authenticator.requestPasswordAuthentication(inetSocketAddress.getHostName(), a(proxy, httpUrl, dns), inetSocketAddress.getPort(), httpUrl.f76919a, (String) challenge.f76861b.get("realm"), challenge.f76860a, httpUrl.k(), java.net.Authenticator.RequestorType.PROXY);
                    } else {
                        String str4 = httpUrl.d;
                        proxy.getClass();
                        passwordAuthenticationRequestPasswordAuthentication = java.net.Authenticator.requestPasswordAuthentication(str4, a(proxy, httpUrl, dns), httpUrl.f76922e, httpUrl.f76919a, (String) challenge.f76861b.get("realm"), challenge.f76860a, httpUrl.k(), java.net.Authenticator.RequestorType.SERVER);
                    }
                    if (passwordAuthenticationRequestPasswordAuthentication != null) {
                        if (z) {
                            str2 = "Proxy-Authorization";
                        } else {
                            str2 = "Authorization";
                        }
                        String userName = passwordAuthenticationRequestPasswordAuthentication.getUserName();
                        userName.getClass();
                        char[] password = passwordAuthenticationRequestPasswordAuthentication.getPassword();
                        password.getClass();
                        String str5 = new String(password);
                        str3 = (String) challenge.f76861b.get("charset");
                        if (str3 != null) {
                            try {
                                charsetForName = Charset.forName(str3);
                                charsetForName.getClass();
                            } catch (Exception unused) {
                                charsetForName = Charsets.d;
                            }
                        } else {
                            charsetForName = Charsets.d;
                        }
                        userName.getClass();
                        charsetForName.getClass();
                        ByteString.f77398e.getClass();
                        charsetForName.getClass();
                        byte[] bytes = (userName + ':' + str5).getBytes(charsetForName);
                        bytes.getClass();
                        String strG = tr.g("Basic ", new ByteString(bytes).a());
                        Request.Builder builder = new Request.Builder(request);
                        builder.b(str2, strG);
                        return new Request(builder);
                    }
                }
            }
            return null;
        }
        str = "WWW-Authenticate";
        String str6 = str;
        ByteString byteString = HttpHeaders.f77168a;
        headers.getClass();
        ArrayList arrayList = new ArrayList();
        int size = headers.size();
        for (int i3 = 0; i3 < size; i3++) {
            if (str6.equalsIgnoreCase(headers.f(i3))) {
                Buffer buffer = new Buffer();
                buffer.M0(headers.m(i3));
                try {
                    HttpHeaders.b(buffer, arrayList);
                } catch (EOFException e2) {
                    Platform.f77312a.getClass();
                    Platform.f77313b.e(5, "Unable to parse challenge", e2);
                }
            }
        }
        list = arrayList;
        request = response.f76984b;
        httpUrl = request.f76969a;
        if (response.f76986e == 407) {
        }
        if (route != null) {
            proxy = Proxy.NO_PROXY;
        } else {
            proxy = Proxy.NO_PROXY;
        }
        while (r0.hasNext()) {
            if ("Basic".equalsIgnoreCase(challenge.f76860a)) {
                if (route != null) {
                }
                if (z) {
                    SocketAddress socketAddressAddress2 = proxy.address();
                    socketAddressAddress2.getClass();
                    InetSocketAddress inetSocketAddress2 = (InetSocketAddress) socketAddressAddress2;
                    passwordAuthenticationRequestPasswordAuthentication = java.net.Authenticator.requestPasswordAuthentication(inetSocketAddress2.getHostName(), a(proxy, httpUrl, dns), inetSocketAddress2.getPort(), httpUrl.f76919a, (String) challenge.f76861b.get("realm"), challenge.f76860a, httpUrl.k(), java.net.Authenticator.RequestorType.PROXY);
                } else {
                    String str7 = httpUrl.d;
                    proxy.getClass();
                    passwordAuthenticationRequestPasswordAuthentication = java.net.Authenticator.requestPasswordAuthentication(str7, a(proxy, httpUrl, dns), httpUrl.f76922e, httpUrl.f76919a, (String) challenge.f76861b.get("realm"), challenge.f76860a, httpUrl.k(), java.net.Authenticator.RequestorType.SERVER);
                }
                if (passwordAuthenticationRequestPasswordAuthentication != null) {
                    if (z) {
                        str2 = "Proxy-Authorization";
                    } else {
                        str2 = "Authorization";
                    }
                    String userName2 = passwordAuthenticationRequestPasswordAuthentication.getUserName();
                    userName2.getClass();
                    char[] password2 = passwordAuthenticationRequestPasswordAuthentication.getPassword();
                    password2.getClass();
                    String str8 = new String(password2);
                    str3 = (String) challenge.f76861b.get("charset");
                    if (str3 != null) {
                        charsetForName = Charset.forName(str3);
                        charsetForName.getClass();
                    } else {
                        charsetForName = Charsets.d;
                    }
                    userName2.getClass();
                    charsetForName.getClass();
                    ByteString.f77398e.getClass();
                    charsetForName.getClass();
                    byte[] bytes2 = (userName2 + ':' + str8).getBytes(charsetForName);
                    bytes2.getClass();
                    String strG2 = tr.g("Basic ", new ByteString(bytes2).a());
                    Request.Builder builder2 = new Request.Builder(request);
                    builder2.b(str2, strG2);
                    return new Request(builder2);
                }
            }
        }
        return null;
    }

    public JavaNetAuthenticator(Dns dns) {
        dns.getClass();
        this.f77021b = dns;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public JavaNetAuthenticator() {
        this(null, 1, 0 == true ? 1 : 0);
    }
}
