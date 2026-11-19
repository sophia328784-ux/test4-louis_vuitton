package okhttp3.internal.http;

import java.io.IOException;
import java.net.ProtocolException;
import kotlin.ExceptionsKt;
import kotlin.Metadata;
import okhttp3.Interceptor;
import okhttp3.Request;
import okhttp3.RequestBody;
import okhttp3.Response;
import okhttp3.TrailersSource;
import okhttp3.internal.UnreadableResponseBody;
import okhttp3.internal.connection.Exchange;
import okhttp3.internal.connection.RealCall;
import okhttp3.internal.http2.ConnectionShutdownException;
import okio.RealBufferedSink;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lokhttp3/internal/http/CallServerInterceptor;", "Lokhttp3/Interceptor;", "okhttp"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class CallServerInterceptor implements Interceptor {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final CallServerInterceptor f77164a = new CallServerInterceptor();

    /* JADX INFO: renamed from: okhttp3.internal.http.CallServerInterceptor$intercept$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0018\u0002\n\u0000\b\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"okhttp3/internal/http/CallServerInterceptor$intercept$1", "Lokhttp3/TrailersSource;", "okhttp"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public final class AnonymousClass1 implements TrailersSource {
    }

    /* JADX WARN: Code duplicated, block: B:112:0x023d A[ADDED_TO_REGION, REMOVE] */
    /* JADX WARN: Code duplicated, block: B:115:0x00f1 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:128:0x0140 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:45:0x00e6  */
    /* JADX WARN: Code duplicated, block: B:51:0x00fa A[Catch: IOException -> 0x0106, TryCatch #1 {IOException -> 0x0106, blocks: (B:49:0x00f1, B:51:0x00fa, B:54:0x0109, B:62:0x012e, B:64:0x0137, B:65:0x0140, B:66:0x0159, B:71:0x016b, B:77:0x0179, B:78:0x0180, B:80:0x0183, B:83:0x018d, B:88:0x0198, B:90:0x01d1, B:92:0x01e2, B:95:0x01ec, B:102:0x0203, B:105:0x0210, B:106:0x0234, B:97:0x01f2, B:89:0x01bb), top: B:115:0x00f1 }] */
    /* JADX WARN: Code duplicated, block: B:64:0x0137 A[Catch: IOException -> 0x0106, TryCatch #1 {IOException -> 0x0106, blocks: (B:49:0x00f1, B:51:0x00fa, B:54:0x0109, B:62:0x012e, B:64:0x0137, B:65:0x0140, B:66:0x0159, B:71:0x016b, B:77:0x0179, B:78:0x0180, B:80:0x0183, B:83:0x018d, B:88:0x0198, B:90:0x01d1, B:92:0x01e2, B:95:0x01ec, B:102:0x0203, B:105:0x0210, B:106:0x0234, B:97:0x01f2, B:89:0x01bb), top: B:115:0x00f1 }] */
    /* JADX WARN: Code duplicated, block: B:68:0x0166  */
    /* JADX WARN: Code duplicated, block: B:69:0x0168  */
    /* JADX WARN: Code duplicated, block: B:71:0x016b A[Catch: IOException -> 0x0106, TryCatch #1 {IOException -> 0x0106, blocks: (B:49:0x00f1, B:51:0x00fa, B:54:0x0109, B:62:0x012e, B:64:0x0137, B:65:0x0140, B:66:0x0159, B:71:0x016b, B:77:0x0179, B:78:0x0180, B:80:0x0183, B:83:0x018d, B:88:0x0198, B:90:0x01d1, B:92:0x01e2, B:95:0x01ec, B:102:0x0203, B:105:0x0210, B:106:0x0234, B:97:0x01f2, B:89:0x01bb), top: B:115:0x00f1 }] */
    /* JADX WARN: Code duplicated, block: B:73:0x0173  */
    /* JADX WARN: Code duplicated, block: B:74:0x0175  */
    /* JADX WARN: Code duplicated, block: B:76:0x0178  */
    /* JADX WARN: Code duplicated, block: B:77:0x0179 A[Catch: IOException -> 0x0106, TryCatch #1 {IOException -> 0x0106, blocks: (B:49:0x00f1, B:51:0x00fa, B:54:0x0109, B:62:0x012e, B:64:0x0137, B:65:0x0140, B:66:0x0159, B:71:0x016b, B:77:0x0179, B:78:0x0180, B:80:0x0183, B:83:0x018d, B:88:0x0198, B:90:0x01d1, B:92:0x01e2, B:95:0x01ec, B:102:0x0203, B:105:0x0210, B:106:0x0234, B:97:0x01f2, B:89:0x01bb), top: B:115:0x00f1 }] */
    /* JADX WARN: Code duplicated, block: B:80:0x0183 A[Catch: IOException -> 0x0106, TryCatch #1 {IOException -> 0x0106, blocks: (B:49:0x00f1, B:51:0x00fa, B:54:0x0109, B:62:0x012e, B:64:0x0137, B:65:0x0140, B:66:0x0159, B:71:0x016b, B:77:0x0179, B:78:0x0180, B:80:0x0183, B:83:0x018d, B:88:0x0198, B:90:0x01d1, B:92:0x01e2, B:95:0x01ec, B:102:0x0203, B:105:0x0210, B:106:0x0234, B:97:0x01f2, B:89:0x01bb), top: B:115:0x00f1 }] */
    /* JADX WARN: Code duplicated, block: B:82:0x018b  */
    /* JADX WARN: Code duplicated, block: B:85:0x0193  */
    /* JADX WARN: Code duplicated, block: B:89:0x01bb A[Catch: IOException -> 0x0106, TryCatch #1 {IOException -> 0x0106, blocks: (B:49:0x00f1, B:51:0x00fa, B:54:0x0109, B:62:0x012e, B:64:0x0137, B:65:0x0140, B:66:0x0159, B:71:0x016b, B:77:0x0179, B:78:0x0180, B:80:0x0183, B:83:0x018d, B:88:0x0198, B:90:0x01d1, B:92:0x01e2, B:95:0x01ec, B:102:0x0203, B:105:0x0210, B:106:0x0234, B:97:0x01f2, B:89:0x01bb), top: B:115:0x00f1 }] */
    /* JADX WARN: Code duplicated, block: B:92:0x01e2 A[Catch: IOException -> 0x0106, TryCatch #1 {IOException -> 0x0106, blocks: (B:49:0x00f1, B:51:0x00fa, B:54:0x0109, B:62:0x012e, B:64:0x0137, B:65:0x0140, B:66:0x0159, B:71:0x016b, B:77:0x0179, B:78:0x0180, B:80:0x0183, B:83:0x018d, B:88:0x0198, B:90:0x01d1, B:92:0x01e2, B:95:0x01ec, B:102:0x0203, B:105:0x0210, B:106:0x0234, B:97:0x01f2, B:89:0x01bb), top: B:115:0x00f1 }] */
    /* JADX WARN: Code duplicated, block: B:94:0x01ea  */
    /* JADX WARN: Code duplicated, block: B:97:0x01f2 A[Catch: IOException -> 0x0106, TryCatch #1 {IOException -> 0x0106, blocks: (B:49:0x00f1, B:51:0x00fa, B:54:0x0109, B:62:0x012e, B:64:0x0137, B:65:0x0140, B:66:0x0159, B:71:0x016b, B:77:0x0179, B:78:0x0180, B:80:0x0183, B:83:0x018d, B:88:0x0198, B:90:0x01d1, B:92:0x01e2, B:95:0x01ec, B:102:0x0203, B:105:0x0210, B:106:0x0234, B:97:0x01f2, B:89:0x01bb), top: B:115:0x00f1 }] */
    @Override // okhttp3.Interceptor
    public final Response intercept(Interceptor.Chain chain) throws Throwable {
        boolean z;
        Response.Builder builderE;
        IOException iOException;
        Response.Builder builderE2;
        Response responseA;
        int i2;
        boolean z2;
        Response responseA2;
        Request request;
        String strA;
        String strA2;
        boolean z3;
        Response.Builder builder;
        RealInterceptorChain realInterceptorChain = (RealInterceptorChain) chain;
        Exchange exchange = realInterceptorChain.d;
        exchange.getClass();
        Request request2 = realInterceptorChain.f77173e;
        RequestBody requestBody = request2.d;
        long jCurrentTimeMillis = System.currentTimeMillis();
        boolean z4 = false;
        boolean z5 = HttpMethod.b(request2.f76970b) && requestBody != null;
        boolean zEqualsIgnoreCase = "upgrade".equalsIgnoreCase(request2.f76971c.a("Connection"));
        try {
            exchange.h(request2);
            if (z5) {
                if ("100-continue".equalsIgnoreCase(request2.f76971c.a("Expect"))) {
                    try {
                        exchange.f77099c.h();
                        builderE = exchange.e(true);
                        try {
                            exchange.f77097a.eventListener.responseHeadersStart(exchange.f77097a);
                            builder = builderE;
                            z = false;
                        } catch (IOException e2) {
                            e = e2;
                            z = true;
                            if (e instanceof ConnectionShutdownException) {
                                throw e;
                            }
                            throw e;
                        }
                    } catch (IOException e3) {
                        exchange.f77097a.eventListener.requestFailed(exchange.f77097a, e3);
                        exchange.f(e3);
                        throw e3;
                    }
                } else {
                    z = true;
                    builder = null;
                }
                try {
                    if (builder == null) {
                        requestBody.getClass();
                        RealBufferedSink realBufferedSink = new RealBufferedSink(exchange.b(request2));
                        requestBody.e(realBufferedSink);
                        realBufferedSink.close();
                    } else {
                        RealCall realCall = exchange.f77097a;
                        int i3 = RealCall.v;
                        realCall.f(exchange, true, false, false, false, null);
                        if (!(exchange.c().l != null)) {
                            exchange.f77099c.j().c();
                        }
                    }
                    builderE = builder;
                } catch (IOException e4) {
                    e = e4;
                    builderE = builder;
                    if (e instanceof ConnectionShutdownException) {
                        throw e;
                    }
                    throw e;
                }
            } else {
                RealCall realCall2 = exchange.f77097a;
                int i4 = RealCall.v;
                realCall2.f(exchange, true, false, false, false, null);
                z = true;
                builderE = null;
            }
            try {
                exchange.f77099c.a();
                builderE2 = builderE;
                iOException = null;
                while (true) {
                    if (i2 != 100 && (102 > i2 || i2 >= 200)) {
                        break;
                    }
                    Response.Builder builderE3 = exchange.e(false);
                    builderE3.getClass();
                    if (z) {
                        exchange.f77097a.eventListener.responseHeadersStart(exchange.f77097a);
                    }
                    builderE3.f76992a = request2;
                    builderE3.f76995e = exchange.c().g;
                    builderE3.l = jCurrentTimeMillis;
                    builderE3.m = System.currentTimeMillis();
                    responseA = builderE3.a();
                    i2 = responseA.f76986e;
                }
            } catch (IOException e5) {
                try {
                    exchange.f77097a.eventListener.requestFailed(exchange.f77097a, e5);
                    exchange.f(e5);
                    throw e5;
                } catch (IOException e6) {
                    e = e6;
                    if ((e instanceof ConnectionShutdownException) || !exchange.d) {
                        throw e;
                    }
                    Response.Builder builder2 = builderE;
                    iOException = e;
                    builderE2 = builder2;
                    if (builderE2 == null) {
                        try {
                            builderE2 = exchange.e(false);
                            builderE2.getClass();
                            if (z) {
                                exchange.f77097a.eventListener.responseHeadersStart(exchange.f77097a);
                                z = false;
                            }
                        } catch (IOException e7) {
                            if (iOException == null) {
                                throw e7;
                            }
                            ExceptionsKt.a(iOException, e7);
                            throw iOException;
                        }
                    }
                    builderE2.f76992a = request2;
                    builderE2.f76995e = exchange.c().g;
                    builderE2.l = jCurrentTimeMillis;
                    builderE2.m = System.currentTimeMillis();
                    responseA = builderE2.a();
                    i2 = responseA.f76986e;
                    while (true) {
                        if (i2 != 100) {
                            break;
                        }
                        Response.Builder builderE4 = exchange.e(false);
                        builderE4.getClass();
                        if (z) {
                            exchange.f77097a.eventListener.responseHeadersStart(exchange.f77097a);
                        }
                        builderE4.f76992a = request2;
                        builderE4.f76995e = exchange.c().g;
                        builderE4.l = jCurrentTimeMillis;
                        builderE4.m = System.currentTimeMillis();
                        responseA = builderE4.a();
                        i2 = responseA.f76986e;
                    }
                    exchange.f77097a.eventListener.responseHeadersEnd(exchange.f77097a, responseA);
                    if (i2 == 101) {
                        z2 = true;
                    } else {
                        z2 = false;
                    }
                    if (z2) {
                        if (exchange.c().l != null) {
                            z3 = true;
                        } else {
                            z3 = false;
                        }
                        if (!z3) {
                            throw new ProtocolException("Unexpected 101 code on HTTP/2 connection");
                        }
                    }
                    if (z2) {
                        strA2 = responseA.g.a("Connection");
                        if (strA2 == null) {
                            strA2 = null;
                        }
                        if ("upgrade".equalsIgnoreCase(strA2)) {
                            z4 = true;
                        }
                    }
                    if (zEqualsIgnoreCase) {
                        RealResponseBody realResponseBodyD = exchange.d(responseA);
                        Response.Builder builder3 = new Response.Builder(responseA);
                        builder3.g = realResponseBodyD;
                        builder3.o = new AnonymousClass1();
                        responseA2 = builder3.a();
                    } else {
                        RealResponseBody realResponseBodyD2 = exchange.d(responseA);
                        Response.Builder builder4 = new Response.Builder(responseA);
                        builder4.g = realResponseBodyD2;
                        builder4.o = new AnonymousClass1();
                        responseA2 = builder4.a();
                    }
                    request = responseA2.f76984b;
                    request.getClass();
                    if ("close".equalsIgnoreCase(request.f76971c.a("Connection"))) {
                        exchange.f77099c.j().c();
                    } else {
                        strA = responseA2.g.a("Connection");
                        if (strA == null) {
                            strA = null;
                        }
                        if ("close".equalsIgnoreCase(strA)) {
                            exchange.f77099c.j().c();
                        }
                    }
                    if (i2 == 204) {
                        throw new ProtocolException("HTTP " + i2 + " had non-zero Content-Length: " + responseA2.f76988h.getG());
                    }
                    throw new ProtocolException("HTTP " + i2 + " had non-zero Content-Length: " + responseA2.f76988h.getG());
                    return responseA2;
                }
            }
        } catch (IOException e8) {
            e = e8;
            z = true;
            builderE = null;
        }
        if (builderE2 == null) {
            builderE2 = exchange.e(false);
            builderE2.getClass();
            if (z) {
                exchange.f77097a.eventListener.responseHeadersStart(exchange.f77097a);
                z = false;
            }
        }
        builderE2.f76992a = request2;
        builderE2.f76995e = exchange.c().g;
        builderE2.l = jCurrentTimeMillis;
        builderE2.m = System.currentTimeMillis();
        responseA = builderE2.a();
        i2 = responseA.f76986e;
        exchange.f77097a.eventListener.responseHeadersEnd(exchange.f77097a, responseA);
        if (i2 == 101) {
            z2 = true;
        } else {
            z2 = false;
        }
        if (z2) {
            if (exchange.c().l != null) {
                z3 = true;
            } else {
                z3 = false;
            }
            if (!z3) {
                throw new ProtocolException("Unexpected 101 code on HTTP/2 connection");
            }
        }
        if (z2) {
            strA2 = responseA.g.a("Connection");
            if (strA2 == null) {
                strA2 = null;
            }
            if ("upgrade".equalsIgnoreCase(strA2)) {
                z4 = true;
            }
        }
        if (zEqualsIgnoreCase || !z4) {
            RealResponseBody realResponseBodyD3 = exchange.d(responseA);
            Response.Builder builder5 = new Response.Builder(responseA);
            builder5.g = realResponseBodyD3;
            builder5.o = new AnonymousClass1();
            responseA2 = builder5.a();
        } else {
            Response.Builder builder6 = new Response.Builder(responseA);
            builder6.g = new UnreadableResponseBody(responseA.f76988h.getF77014f(), responseA.f76988h.getG());
            builder6.f76997h = exchange.g();
            responseA2 = builder6.a();
        }
        request = responseA2.f76984b;
        request.getClass();
        if ("close".equalsIgnoreCase(request.f76971c.a("Connection"))) {
            exchange.f77099c.j().c();
        } else {
            strA = responseA2.g.a("Connection");
            if (strA == null) {
                strA = null;
            }
            if ("close".equalsIgnoreCase(strA)) {
                exchange.f77099c.j().c();
            }
        }
        if ((i2 == 204 && i2 != 205) || responseA2.f76988h.getG() <= 0) {
            return responseA2;
        }
        throw new ProtocolException("HTTP " + i2 + " had non-zero Content-Length: " + responseA2.f76988h.getG());
    }
}
