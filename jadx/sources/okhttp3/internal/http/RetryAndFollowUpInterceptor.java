package okhttp3.internal.http;

import com.networkbench.agent.impl.performance.coulometry.a;
import defpackage.md;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.ProtocolException;
import java.net.Proxy;
import java.net.SocketTimeoutException;
import java.security.cert.CertificateException;
import java.util.Iterator;
import java.util.List;
import javax.net.SocketFactory;
import javax.net.ssl.SSLHandshakeException;
import javax.net.ssl.SSLPeerUnverifiedException;
import javax.net.ssl.SSLSocketFactory;
import kotlin.ExceptionsKt;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Regex;
import okhttp3.Address;
import okhttp3.Authenticator;
import okhttp3.Dns;
import okhttp3.HttpUrl;
import okhttp3.Interceptor;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.RequestBody;
import okhttp3.Response;
import okhttp3.Route;
import okhttp3.internal.UnreadableResponseBodyKt;
import okhttp3.internal._UtilCommonKt;
import okhttp3.internal._UtilJvmKt;
import okhttp3.internal.concurrent.TaskRunner;
import okhttp3.internal.connection.Exchange;
import okhttp3.internal.connection.ExchangeFinder;
import okhttp3.internal.connection.FastFallbackExchangeFinder;
import okhttp3.internal.connection.RealCall;
import okhttp3.internal.connection.RealConnection;
import okhttp3.internal.connection.RealConnectionPool;
import okhttp3.internal.connection.RealRoutePlanner;
import okhttp3.internal.connection.RoutePlanner;
import okhttp3.internal.connection.SequentialExchangeFinder;
import okhttp3.internal.http2.ConnectionShutdownException;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001:\u0001\u0004B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0005"}, d2 = {"Lokhttp3/internal/http/RetryAndFollowUpInterceptor;", "Lokhttp3/Interceptor;", "<init>", "()V", "Companion", "okhttp"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class RetryAndFollowUpInterceptor implements Interceptor {

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lokhttp3/internal/http/RetryAndFollowUpInterceptor$Companion;", "", "", "MAX_FOLLOW_UPS", "I", "okhttp"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    static {
        new Companion(null);
    }

    /* JADX WARN: Code duplicated, block: B:103:0x0136 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:104:0x0138  */
    /* JADX WARN: Code duplicated, block: B:107:0x013f  */
    /* JADX WARN: Code duplicated, block: B:110:0x015c  */
    /* JADX WARN: Code duplicated, block: B:74:0x00d5  */
    /* JADX WARN: Code duplicated, block: B:77:0x00e0  */
    /* JADX WARN: Code duplicated, block: B:79:0x00ea  */
    /* JADX WARN: Code duplicated, block: B:93:0x0119  */
    /* JADX WARN: Code duplicated, block: B:97:0x0125  */
    public static Request a(Response response, Exchange exchange, RealInterceptorChain realInterceptorChain) throws ProtocolException {
        String strA;
        Request request;
        HttpUrl httpUrlI;
        Request.Builder builder;
        boolean z;
        RequestBody requestBody;
        Response response2;
        Route route = exchange != null ? exchange.c().d : null;
        int i2 = response.f76986e;
        Request request2 = response.f76984b;
        String str = request2.f76970b;
        if (i2 == 307 || i2 == 308) {
            if (realInterceptorChain.f77170a.f77118b.f76956h) {
                strA = response.g.a(a.f37790a);
                if (strA == null) {
                    strA = null;
                }
                request = response.f76984b;
                if (strA != null && (httpUrlI = request.f76969a.i(strA)) != null && (Intrinsics.c(httpUrlI.f76919a, request.f76969a.f76919a) || realInterceptorChain.f77170a.f77118b.f76957i)) {
                    builder = new Request.Builder(request);
                    if (HttpMethod.b(str)) {
                        int i3 = response.f76986e;
                        z = !str.equals("PROPFIND") || i3 == 308 || i3 == 307;
                        if (!str.equals("PROPFIND") || i3 == 308 || i3 == 307) {
                            builder.c(str, z ? request.d : null);
                        } else {
                            builder.c("GET", null);
                        }
                        if (!z) {
                            builder.f76976c.f("Transfer-Encoding");
                            builder.f76976c.f("Content-Length");
                            builder.f76976c.f("Content-Type");
                        }
                    }
                    if (!_UtilJvmKt.a(request.f76969a, httpUrlI)) {
                        builder.f76976c.f("Authorization");
                    }
                    builder.f76974a = httpUrlI;
                    return new Request(builder);
                }
            }
        } else {
            if (i2 == 401) {
                return realInterceptorChain.f77176i.authenticate(route, response);
            }
            if (i2 == 421) {
                RequestBody requestBody2 = request2.d;
                if ((requestBody2 == null || !requestBody2.d()) && exchange != null && !Intrinsics.c(exchange.f77098b.getF77163a().getF77147j().f76817i.d, exchange.f77099c.getF77248a().getL().f77006a.f76817i.d)) {
                    RealConnection realConnectionC = exchange.c();
                    synchronized (realConnectionC) {
                        realConnectionC.n = true;
                    }
                    return response.f76984b;
                }
            } else if (i2 == 503) {
                Response response3 = response.l;
                if ((response3 == null || response3.f76986e != 503) && c(response, Integer.MAX_VALUE) == 0) {
                    return response.f76984b;
                }
            } else {
                if (i2 == 407) {
                    route.getClass();
                    if (route.f77007b.type() == Proxy.Type.HTTP) {
                        return realInterceptorChain.q.authenticate(route, response);
                    }
                    throw new ProtocolException("Received HTTP_PROXY_AUTH (407) code while not using proxy");
                }
                if (i2 != 408) {
                    switch (i2) {
                        case 300:
                        case 301:
                        case 302:
                        case 303:
                            if (realInterceptorChain.f77170a.f77118b.f76956h) {
                                strA = response.g.a(a.f37790a);
                                if (strA == null) {
                                    strA = null;
                                }
                                request = response.f76984b;
                                if (strA != null) {
                                    builder = new Request.Builder(request);
                                    if (HttpMethod.b(str)) {
                                        int i4 = response.f76986e;
                                        if (str.equals("PROPFIND")) {
                                        }
                                        if (str.equals("PROPFIND")) {
                                            builder.c(str, z ? request.d : null);
                                        } else {
                                            builder.c(str, z ? request.d : null);
                                        }
                                        if (!z) {
                                            builder.f76976c.f("Transfer-Encoding");
                                            builder.f76976c.f("Content-Length");
                                            builder.f76976c.f("Content-Type");
                                        }
                                    }
                                    if (!_UtilJvmKt.a(request.f76969a, httpUrlI)) {
                                        builder.f76976c.f("Authorization");
                                    }
                                    builder.f76974a = httpUrlI;
                                    return new Request(builder);
                                }
                            }
                        default:
                            return null;
                    }
                } else if (realInterceptorChain.s && (((requestBody = request2.d) == null || !requestBody.d()) && (((response2 = response.l) == null || response2.f76986e != 408) && c(response, 0) <= 0))) {
                    return response.f76984b;
                }
            }
        }
        return null;
    }

    public static boolean b(IOException iOException, RealCall realCall, RealInterceptorChain realInterceptorChain, Request request) {
        RequestBody requestBody;
        boolean z = iOException instanceof ConnectionShutdownException;
        if (!realInterceptorChain.s) {
            return false;
        }
        if ((!z && (((requestBody = request.d) != null && requestBody.d()) || (iOException instanceof FileNotFoundException))) || (iOException instanceof ProtocolException)) {
            return false;
        }
        if (iOException instanceof InterruptedIOException) {
            if (!(iOException instanceof SocketTimeoutException) || !z) {
                return false;
            }
        } else if (((iOException instanceof SSLHandshakeException) && (iOException.getCause() instanceof CertificateException)) || (iOException instanceof SSLPeerUnverifiedException)) {
            return false;
        }
        Exchange exchange = realCall.t;
        if (exchange == null || !exchange.d) {
            return false;
        }
        ExchangeFinder exchangeFinder = realCall.f77124j;
        exchangeFinder.getClass();
        RoutePlanner routePlannerB = exchangeFinder.getF77163a();
        Exchange exchange2 = realCall.t;
        return routePlannerB.a(exchange2 != null ? exchange2.c() : null);
    }

    public static int c(Response response, int i2) {
        String strA = response.g.a("Retry-After");
        if (strA == null) {
            strA = null;
        }
        if (strA == null) {
            return i2;
        }
        if (!new Regex("\\d+").f(strA)) {
            return Integer.MAX_VALUE;
        }
        Integer numValueOf = Integer.valueOf(strA);
        numValueOf.getClass();
        return numValueOf.intValue();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r14v0, types: [java.lang.Object, okhttp3.Call, okhttp3.internal.connection.RealCall] */
    /* JADX WARN: Type inference failed for: r1v10, types: [okhttp3.EventListener] */
    /* JADX WARN: Type inference failed for: r1v7, types: [okhttp3.EventListener] */
    /* JADX WARN: Type inference failed for: r24v1, types: [javax.net.ssl.SSLSocketFactory] */
    /* JADX WARN: Type inference failed for: r24v2 */
    /* JADX WARN: Type inference failed for: r24v3 */
    /* JADX WARN: Type inference failed for: r25v1, types: [javax.net.ssl.HostnameVerifier] */
    /* JADX WARN: Type inference failed for: r25v2 */
    /* JADX WARN: Type inference failed for: r25v3 */
    /* JADX WARN: Type inference failed for: r26v0 */
    /* JADX WARN: Type inference failed for: r26v1, types: [okhttp3.CertificatePinner] */
    /* JADX WARN: Type inference failed for: r26v2 */
    /* JADX WARN: Type inference failed for: r3v10 */
    /* JADX WARN: Type inference failed for: r3v11, types: [okhttp3.EventListener] */
    /* JADX WARN: Type inference failed for: r3v2 */
    /* JADX WARN: Type inference failed for: r3v3, types: [boolean] */
    /* JADX WARN: Type inference failed for: r3v4, types: [okhttp3.EventListener] */
    /* JADX WARN: Type inference failed for: r3v7 */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    @Override // okhttp3.Interceptor
    public final Response intercept(Interceptor.Chain chain) throws Throwable {
        int i2;
        ?? r3;
        Response response;
        Response responseA;
        boolean z;
        ?? r26;
        ?? r25;
        ?? r24;
        RealInterceptorChain realInterceptorChain = (RealInterceptorChain) chain;
        Request request = realInterceptorChain.f77173e;
        ?? r14 = realInterceptorChain.f77170a;
        boolean z2 = false;
        Response response2 = null;
        boolean z3 = true;
        Request requestA = request;
        List listX = EmptyList.f71768b;
        int i3 = 0;
        Response response3 = null;
        boolean z4 = true;
        while (true) {
            r14.getClass();
            requestA.getClass();
            if (r14.m != null) {
                Response response4 = response2;
                md.k("Check failed.");
                return response4;
            }
            synchronized (r14) {
                if (r14.o) {
                    throw new IllegalStateException("cannot make a new request because the previous response is still open: please call response.close()");
                }
                if (r14.n || r14.q || r14.p) {
                    throw new IllegalStateException("Check failed.");
                }
            }
            if (z4) {
                OkHttpClient okHttpClient = r14.f77118b;
                TaskRunner taskRunner = okHttpClient.C;
                RealConnectionPool realConnectionPool = realInterceptorChain.l.f76871a;
                int i4 = realInterceptorChain.g;
                int i5 = realInterceptorChain.f77175h;
                Response response5 = response2;
                int i6 = realInterceptorChain.f77174f;
                boolean z5 = realInterceptorChain.s;
                boolean z6 = okHttpClient.f76955f;
                HttpUrl httpUrl = requestA.f76969a;
                httpUrl.getClass();
                if (httpUrl.f()) {
                    SSLSocketFactory sSLSocketFactory = realInterceptorChain.u;
                    r25 = realInterceptorChain.o;
                    r26 = realInterceptorChain.f77178k;
                    r24 = sSLSocketFactory;
                } else {
                    Response response6 = response5;
                    Response response7 = response6;
                    r26 = response7;
                    r24 = response6;
                    r25 = response7;
                }
                String str = httpUrl.d;
                int i7 = httpUrl.f76922e;
                Dns dns = realInterceptorChain.n;
                SocketFactory socketFactory = realInterceptorChain.t;
                Authenticator authenticator = realInterceptorChain.q;
                Proxy proxy = realInterceptorChain.p;
                OkHttpClient okHttpClient2 = realInterceptorChain.f77170a.f77118b;
                i2 = i4;
                RealRoutePlanner realRoutePlanner = new RealRoutePlanner(taskRunner, realConnectionPool, i4, i5, i6, i2, 0, z5, z6, new Address(str, i7, dns, socketFactory, r24, r25, r26, authenticator, proxy, okHttpClient2.s, okHttpClient2.r, realInterceptorChain.r), r14.f77118b.B, r14, requestA);
                OkHttpClient okHttpClient3 = r14.f77118b;
                r14.f77124j = okHttpClient3.f76955f ? new FastFallbackExchangeFinder(realRoutePlanner, okHttpClient3.C) : new SequentialExchangeFinder(realRoutePlanner);
            }
            try {
                if (r14.s) {
                    throw new IOException("Canceled");
                }
                try {
                    Response.Builder builder = new Response.Builder(realInterceptorChain.b(requestA));
                    builder.f76992a = requestA;
                    if (response3 != null) {
                        try {
                            responseA = UnreadableResponseBodyKt.a(response3);
                        } catch (Throwable th) {
                            th = th;
                            r3 = 1;
                        }
                    } else {
                        responseA = null;
                    }
                    builder.f77000k = responseA;
                    Response responseA2 = builder.a();
                    requestA = a(responseA2, r14.m, (RealInterceptorChain) chain);
                    if (requestA == null) {
                        try {
                            r14.eventListener.followUpDecision(r14, responseA2, null);
                            r14.d(false);
                            return responseA2;
                        } catch (Throwable th2) {
                            th = th2;
                            z = false;
                        }
                    } else {
                        z = false;
                        response = null;
                        RequestBody requestBody = requestA.d;
                        if (requestBody == null || !requestBody.d()) {
                            _UtilCommonKt.b(responseA2.f76988h);
                            int i8 = i3 + 1;
                            ?? r4 = r14.eventListener;
                            if (i8 > 20) {
                                r4.followUpDecision(r14, responseA2, null);
                                throw new ProtocolException("Too many follow-up requests: " + i8);
                            }
                            r4.followUpDecision(r14, responseA2, requestA);
                            i2 = 1;
                            r14.d(true);
                            response3 = responseA2;
                            i3 = i8;
                            z2 = false;
                            z4 = true;
                            z3 = true;
                            response2 = response;
                        } else {
                            try {
                                r14.eventListener.followUpDecision(r14, responseA2, null);
                                r14.d(false);
                                return responseA2;
                            } catch (Throwable th3) {
                                th = th3;
                            }
                        }
                    }
                    r3 = z;
                } catch (IOException e2) {
                    try {
                        i2 = 1;
                        response = null;
                        boolean zB = b(e2, r14, (RealInterceptorChain) chain, requestA);
                        r14.eventListener.retryDecision(r14, e2, zB);
                        if (!zB) {
                            byte[] bArr = _UtilCommonKt.f77016a;
                            listX.getClass();
                            Iterator it = listX.iterator();
                            while (it.hasNext()) {
                                ExceptionsKt.a(e2, (Exception) it.next());
                            }
                            throw e2;
                        }
                        listX = CollectionsKt.X(e2, listX);
                        r14.d(true);
                        z4 = false;
                        z2 = false;
                        z3 = true;
                    } catch (Throwable th4) {
                        th = th4;
                    }
                }
                r14.d(r3);
                throw th;
            } catch (Throwable th5) {
                th = th5;
                i2 = 1;
            }
            r3 = i2;
            r14.d(r3);
            throw th;
        }
    }
}
