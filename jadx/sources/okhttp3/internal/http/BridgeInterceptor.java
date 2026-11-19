package okhttp3.internal.http;

import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import lv.nfc.reader.utils.LVConstants;
import okhttp3.Cookie;
import okhttp3.CookieJar;
import okhttp3.Headers;
import okhttp3.HttpUrl;
import okhttp3.Interceptor;
import okhttp3.MediaType;
import okhttp3.Request;
import okhttp3.RequestBody;
import okhttp3.Response;
import okhttp3.internal._UtilJvmKt;
import okio.GzipSource;
import okio.RealBufferedSource;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lokhttp3/internal/http/BridgeInterceptor;", "Lokhttp3/Interceptor;", "<init>", "()V", "okhttp"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class BridgeInterceptor implements Interceptor {
    @Override // okhttp3.Interceptor
    public final Response intercept(Interceptor.Chain chain) {
        boolean z;
        RealInterceptorChain realInterceptorChain = (RealInterceptorChain) chain;
        CookieJar cookieJar = realInterceptorChain.m;
        Request request = realInterceptorChain.f77173e;
        request.getClass();
        HttpUrl httpUrl = request.f76969a;
        Headers headers = request.f76971c;
        Request.Builder builder = new Request.Builder(request);
        RequestBody requestBody = request.d;
        if (requestBody != null) {
            MediaType f76943e = requestBody.getF76981c();
            if (f76943e != null) {
                builder.b("Content-Type", f76943e.f76935a);
            }
            long jA = requestBody.a();
            if (jA != -1) {
                builder.b("Content-Length", String.valueOf(jA));
                builder.f76976c.f("Transfer-Encoding");
            } else {
                builder.b("Transfer-Encoding", "chunked");
                builder.f76976c.f("Content-Length");
            }
        }
        int i2 = 0;
        if (headers.a("Host") == null) {
            builder.b("Host", _UtilJvmKt.i(httpUrl, false));
        }
        if (headers.a("Connection") == null) {
            builder.b("Connection", "Keep-Alive");
        }
        if (headers.a("Accept-Encoding") == null && headers.a("Range") == null) {
            builder.b("Accept-Encoding", "gzip");
            z = true;
        } else {
            z = false;
        }
        List listA = cookieJar.a(httpUrl);
        if (!listA.isEmpty()) {
            StringBuilder sb = new StringBuilder();
            for (Object obj : listA) {
                int i3 = i2 + 1;
                if (i2 < 0) {
                    CollectionsKt.t0();
                    throw null;
                }
                Cookie cookie = (Cookie) obj;
                if (i2 > 0) {
                    sb.append("; ");
                }
                sb.append(cookie.f76882a);
                sb.append('=');
                sb.append(cookie.f76883b);
                i2 = i3;
            }
            builder.b(LVConstants.COOKIE_HEADER, sb.toString());
        }
        if (headers.a("User-Agent") == null) {
            builder.b("User-Agent", "okhttp/5.4.0");
        }
        Request request2 = new Request(builder);
        Response responseB = realInterceptorChain.b(request2);
        Headers headers2 = responseB.g;
        HttpHeaders.d(cookieJar, request2.f76969a, headers2);
        Response.Builder builder2 = new Response.Builder(responseB);
        builder2.f76992a = request2;
        if (z) {
            String strA = headers2.a("Content-Encoding");
            if (strA == null) {
                strA = null;
            }
            if ("gzip".equalsIgnoreCase(strA) && HttpHeaders.a(responseB)) {
                GzipSource gzipSource = new GzipSource(responseB.f76988h.getF77180h());
                Headers.Builder builderH = headers2.h();
                builderH.f("Content-Encoding");
                builderH.f("Content-Length");
                builder2.f76996f = builderH.d().h();
                String strA2 = headers2.a("Content-Type");
                builder2.g = new RealResponseBody(strA2 != null ? strA2 : null, -1L, new RealBufferedSource(gzipSource));
            }
        }
        return builder2.a();
    }
}
