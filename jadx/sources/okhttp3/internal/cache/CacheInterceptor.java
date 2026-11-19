package okhttp3.internal.cache;

import java.io.IOException;
import java.util.Date;
import java.util.List;
import java.util.TimeZone;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.text.StringsKt;
import okhttp3.Cache;
import okhttp3.CacheControl;
import okhttp3.Headers;
import okhttp3.HttpUrl;
import okhttp3.Interceptor;
import okhttp3.Protocol;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.internal.UnreadableResponseBodyKt;
import okhttp3.internal._HeadersCommonKt;
import okhttp3.internal._UtilCommonKt;
import okhttp3.internal._UtilJvmKt;
import okhttp3.internal.connection.RealCall;
import okhttp3.internal.http.HttpHeaders;
import okhttp3.internal.http.HttpMethod;
import okhttp3.internal.http.RealInterceptorChain;
import okhttp3.internal.http.RealResponseBody;
import okio.Buffer;
import okio.BufferedSource;
import okio.Okio;
import okio.RealBufferedSink;
import okio.RealBufferedSource;
import okio.Source;
import okio.Timeout;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001:\u0001\u0004B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0005"}, d2 = {"Lokhttp3/internal/cache/CacheInterceptor;", "Lokhttp3/Interceptor;", "<init>", "()V", "Companion", "okhttp"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class CacheInterceptor implements Interceptor {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Companion f77023a = new Companion(null);

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lokhttp3/internal/cache/CacheInterceptor$Companion;", "", "okhttp"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public static boolean a(String str) {
            return ("Connection".equalsIgnoreCase(str) || "Keep-Alive".equalsIgnoreCase(str) || "Proxy-Authenticate".equalsIgnoreCase(str) || "Proxy-Authorization".equalsIgnoreCase(str) || "TE".equalsIgnoreCase(str) || "Trailers".equalsIgnoreCase(str) || "Transfer-Encoding".equalsIgnoreCase(str) || "Upgrade".equalsIgnoreCase(str)) ? false : true;
        }
    }

    /* JADX WARN: Code duplicated, block: B:100:0x01f8  */
    /* JADX WARN: Code duplicated, block: B:104:0x020d  */
    /* JADX WARN: Code duplicated, block: B:106:0x0211  */
    /* JADX WARN: Code duplicated, block: B:109:0x0222  */
    /* JADX WARN: Code duplicated, block: B:110:0x0229  */
    /* JADX WARN: Code duplicated, block: B:113:0x0230  */
    /* JADX WARN: Code duplicated, block: B:114:0x0231 A[DONT_GENERATE] */
    /* JADX WARN: Code duplicated, block: B:124:0x0276  */
    /* JADX WARN: Code duplicated, block: B:126:0x0295 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:127:0x0297  */
    /* JADX WARN: Code duplicated, block: B:128:0x029f A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:129:0x02a1  */
    /* JADX WARN: Code duplicated, block: B:132:0x02b2  */
    /* JADX WARN: Code duplicated, block: B:134:0x02b8  */
    /* JADX WARN: Code duplicated, block: B:136:0x02d3  */
    /* JADX WARN: Code duplicated, block: B:156:0x031d  */
    /* JADX WARN: Code duplicated, block: B:169:0x037f A[DONT_GENERATE] */
    /* JADX WARN: Code duplicated, block: B:172:0x038b  */
    /* JADX WARN: Code duplicated, block: B:175:0x0397  */
    /* JADX WARN: Code duplicated, block: B:176:0x039c  */
    /* JADX WARN: Code duplicated, block: B:179:0x03b5  */
    /* JADX WARN: Code duplicated, block: B:181:0x03bb  */
    /* JADX WARN: Code duplicated, block: B:183:0x03c6  */
    /* JADX WARN: Code duplicated, block: B:186:0x03da  */
    /* JADX WARN: Code duplicated, block: B:188:0x03f7  */
    /* JADX WARN: Code duplicated, block: B:191:0x0415  */
    /* JADX WARN: Code duplicated, block: B:202:0x0427 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:63:0x0149  */
    /* JADX WARN: Code duplicated, block: B:66:0x0151  */
    /* JADX WARN: Code duplicated, block: B:69:0x0161  */
    /* JADX WARN: Code duplicated, block: B:70:0x0167  */
    /* JADX WARN: Code duplicated, block: B:76:0x017a  */
    /* JADX WARN: Code duplicated, block: B:79:0x0182  */
    /* JADX WARN: Code duplicated, block: B:81:0x0189  */
    /* JADX WARN: Code duplicated, block: B:83:0x0192  */
    /* JADX WARN: Code duplicated, block: B:91:0x01c1  */
    /* JADX WARN: Code duplicated, block: B:93:0x01c5  */
    /* JADX WARN: Code duplicated, block: B:94:0x01c8 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:95:0x01ca  */
    /* JADX WARN: Code duplicated, block: B:97:0x01ce A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:98:0x01d0  */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // okhttp3.Interceptor
    public final Response intercept(Interceptor.Chain chain) {
        Response responseC;
        CacheStrategy cacheStrategy;
        long j2;
        long time;
        String string;
        int i2;
        int i3;
        long millis;
        long millis2;
        String str;
        String str2;
        long j3;
        Response.Builder builder;
        int i4;
        Response response;
        Request request;
        Response response2;
        RealCall realCall;
        Response responseB;
        Response responseA;
        Response responseA2;
        Cache cache;
        final CacheRequest cacheRequestD;
        String strA;
        String str3;
        Headers headers;
        Headers headers2;
        Headers.Builder builder2;
        int size;
        int i5;
        int i6;
        int size2;
        String strF;
        String strF2;
        String strM;
        CacheControl cacheControlA;
        RealInterceptorChain realInterceptorChain = (RealInterceptorChain) chain;
        RealCall realCall2 = realInterceptorChain.f77170a;
        Cache cache2 = realInterceptorChain.f77177j;
        if (cache2 != null) {
            Request request2 = realInterceptorChain.f77173e;
            request2.getClass();
            responseC = cache2.c(request2);
        } else {
            responseC = null;
        }
        CacheStrategy.Factory factory = new CacheStrategy.Factory(System.currentTimeMillis(), realInterceptorChain.f77173e, responseC);
        Date date = factory.f77035h;
        Date date2 = factory.f77034f;
        long j4 = factory.f77036i;
        long j5 = factory.f77037j;
        Date date3 = factory.d;
        TimeUnit timeUnit = TimeUnit.SECONDS;
        Request request3 = factory.f77031b;
        Response response3 = factory.f77032c;
        if (response3 == null) {
            cacheStrategy = new CacheStrategy(request3, null);
        } else {
            HttpUrl httpUrl = request3.f76969a;
            Headers headers3 = request3.f76971c;
            if (!httpUrl.f() || response3.f76987f != null) {
                CacheStrategy.f77027c.getClass();
                if (CacheStrategy.Companion.a(request3, response3)) {
                    CacheControl cacheControlA2 = request3.f76973f;
                    if (cacheControlA2 == null) {
                        CacheControl.Companion companion = CacheControl.n;
                        Headers headers4 = request3.f76971c;
                        companion.getClass();
                        cacheControlA2 = CacheControl.Companion.a(headers4);
                        request3.f76973f = cacheControlA2;
                    }
                    if (!cacheControlA2.f76841a && headers3.a("If-Modified-Since") == null && headers3.a("If-None-Match") == null) {
                        CacheControl cacheControlH = response3.h();
                        long jMax = date3 != null ? Math.max(0L, j5 - date3.getTime()) : 0L;
                        int i7 = factory.l;
                        if (i7 != -1) {
                            jMax = Math.max(jMax, timeUnit.toMillis(i7));
                        }
                        long jMax2 = jMax + Math.max(0L, j5 - j4) + Math.max(0L, factory.f77030a - j5);
                        int i8 = response3.h().f76843c;
                        if (i8 != -1) {
                            time = timeUnit.toMillis(i8);
                        } else {
                            if (date != null) {
                                time = date.getTime() - (date3 != 0 ? date3.getTime() : j5);
                                if (time <= 0) {
                                    time = 0;
                                }
                            } else if (date2 == null) {
                                j2 = 0;
                                time = j2;
                            } else {
                                List list = response3.f76984b.f76969a.g;
                                if (list == null) {
                                    string = null;
                                } else {
                                    StringBuilder sb = new StringBuilder();
                                    HttpUrl.Companion.a(HttpUrl.f76918j, list, sb);
                                    string = sb.toString();
                                }
                                if (string == null) {
                                    long time2 = (date3 != 0 ? date3.getTime() : j4) - date2.getTime();
                                    j2 = 0;
                                    if (time2 > 0) {
                                        time = time2 / 10;
                                    }
                                } else {
                                    j2 = 0;
                                }
                                time = j2;
                            }
                            i2 = cacheControlA2.f76843c;
                            if (i2 != -1) {
                                time = Math.min(time, timeUnit.toMillis(i2));
                            }
                            i3 = cacheControlA2.f76847i;
                            if (i3 != -1) {
                                millis = timeUnit.toMillis(i3);
                            } else {
                                millis = j2;
                            }
                            if (!cacheControlH.g || (i4 = cacheControlA2.f76846h) == -1) {
                                millis2 = j2;
                            } else {
                                millis2 = timeUnit.toMillis(i4);
                            }
                            if (cacheControlH.f76841a) {
                                str = factory.f77038k;
                                if (str != null) {
                                    str2 = "If-None-Match";
                                } else {
                                    if (date2 != null) {
                                        str = factory.g;
                                    } else if (date3 != null) {
                                        str = factory.f77033e;
                                    } else {
                                        cacheStrategy = new CacheStrategy(request3, null);
                                    }
                                    str2 = "If-Modified-Since";
                                }
                                Headers.Builder builderH = headers3.h();
                                str.getClass();
                                _HeadersCommonKt.a(builderH, str2, str);
                                Request.Builder builder3 = new Request.Builder(request3);
                                builder3.f76976c = builderH.d().h();
                                cacheStrategy = new CacheStrategy(new Request(builder3), response3);
                            } else {
                                j3 = jMax2 + millis;
                                if (j3 < millis2 + time) {
                                    builder = new Response.Builder(response3);
                                    if (j3 >= time) {
                                        builder.f76996f.a("Warning", "110 HttpURLConnection \"Response is stale\"");
                                    }
                                    if (jMax2 > 86400000 && response3.h().f76843c == -1 && date == null) {
                                        builder.f76996f.a("Warning", "113 HttpURLConnection \"Heuristic expiration\"");
                                    }
                                    cacheStrategy = new CacheStrategy(null, builder.a());
                                } else {
                                    str = factory.f77038k;
                                    if (str != null) {
                                        str2 = "If-None-Match";
                                    } else {
                                        if (date2 != null) {
                                            str = factory.g;
                                        } else if (date3 != null) {
                                            str = factory.f77033e;
                                        } else {
                                            cacheStrategy = new CacheStrategy(request3, null);
                                        }
                                        str2 = "If-Modified-Since";
                                    }
                                    Headers.Builder builderH2 = headers3.h();
                                    str.getClass();
                                    _HeadersCommonKt.a(builderH2, str2, str);
                                    Request.Builder builder4 = new Request.Builder(request3);
                                    builder4.f76976c = builderH2.d().h();
                                    cacheStrategy = new CacheStrategy(new Request(builder4), response3);
                                }
                            }
                        }
                        j2 = 0;
                        i2 = cacheControlA2.f76843c;
                        if (i2 != -1) {
                            time = Math.min(time, timeUnit.toMillis(i2));
                        }
                        i3 = cacheControlA2.f76847i;
                        if (i3 != -1) {
                            millis = timeUnit.toMillis(i3);
                        } else {
                            millis = j2;
                        }
                        if (cacheControlH.g) {
                            millis2 = j2;
                        } else {
                            millis2 = j2;
                        }
                        if (cacheControlH.f76841a) {
                            j3 = jMax2 + millis;
                            if (j3 < millis2 + time) {
                                builder = new Response.Builder(response3);
                                if (j3 >= time) {
                                    builder.f76996f.a("Warning", "110 HttpURLConnection \"Response is stale\"");
                                }
                                if (jMax2 > 86400000) {
                                    builder.f76996f.a("Warning", "113 HttpURLConnection \"Heuristic expiration\"");
                                }
                                cacheStrategy = new CacheStrategy(null, builder.a());
                            } else {
                                str = factory.f77038k;
                                if (str != null) {
                                    str2 = "If-None-Match";
                                } else {
                                    if (date2 != null) {
                                        str = factory.g;
                                    } else if (date3 != null) {
                                        str = factory.f77033e;
                                    } else {
                                        cacheStrategy = new CacheStrategy(request3, null);
                                    }
                                    str2 = "If-Modified-Since";
                                }
                                Headers.Builder builderH3 = headers3.h();
                                str.getClass();
                                _HeadersCommonKt.a(builderH3, str2, str);
                                Request.Builder builder5 = new Request.Builder(request3);
                                builder5.f76976c = builderH3.d().h();
                                cacheStrategy = new CacheStrategy(new Request(builder5), response3);
                            }
                        } else {
                            str = factory.f77038k;
                            if (str != null) {
                                str2 = "If-None-Match";
                            } else {
                                if (date2 != null) {
                                    str = factory.g;
                                } else if (date3 != null) {
                                    str = factory.f77033e;
                                } else {
                                    cacheStrategy = new CacheStrategy(request3, null);
                                }
                                str2 = "If-Modified-Since";
                            }
                            Headers.Builder builderH4 = headers3.h();
                            str.getClass();
                            _HeadersCommonKt.a(builderH4, str2, str);
                            Request.Builder builder6 = new Request.Builder(request3);
                            builder6.f76976c = builderH4.d().h();
                            cacheStrategy = new CacheStrategy(new Request(builder6), response3);
                        }
                    } else {
                        realCall2 = realCall2;
                        cache2 = cache2;
                        cacheStrategy = new CacheStrategy(request3, null);
                    }
                } else {
                    cacheStrategy = new CacheStrategy(request3, null);
                }
                if (cacheStrategy.f77028a == null) {
                    response = null;
                } else {
                    cacheControlA = request3.f76973f;
                    if (cacheControlA == null) {
                        CacheControl.Companion companion2 = CacheControl.n;
                        Headers headers5 = request3.f76971c;
                        companion2.getClass();
                        cacheControlA = CacheControl.Companion.a(headers5);
                        request3.f76973f = cacheControlA;
                    }
                    if (cacheControlA.f76848j) {
                        response = null;
                        cacheStrategy = new CacheStrategy(null, null);
                    } else {
                        response = null;
                    }
                }
                request = cacheStrategy.f77028a;
                response2 = cacheStrategy.f77029b;
                if (cache2 != null) {
                    synchronized (cache2) {
                    }
                }
                if (responseC != null && response2 == null) {
                    _UtilCommonKt.b(responseC.f76988h);
                }
                if (request != null && response2 == null) {
                    Response.Builder builder7 = new Response.Builder();
                    Request request4 = realInterceptorChain.f77173e;
                    request4.getClass();
                    builder7.f76992a = request4;
                    Protocol protocol = Protocol.HTTP_1_1;
                    protocol.getClass();
                    builder7.f76993b = protocol;
                    builder7.f76994c = 504;
                    builder7.d = "Unsatisfiable Request (only-if-cached)";
                    builder7.l = -1L;
                    builder7.m = System.currentTimeMillis();
                    Response responseA3 = builder7.a();
                    realInterceptorChain.f77170a.eventListener.satisfactionFailure(realCall2, responseA3);
                    return responseA3;
                }
                realCall = realCall2;
                if (request == null) {
                    response2.getClass();
                    Response.Builder builder8 = new Response.Builder(response2);
                    Response responseA4 = UnreadableResponseBodyKt.a(response2);
                    Response.Builder.b("cacheResponse", responseA4);
                    builder8.f76999j = responseA4;
                    Response responseA5 = builder8.a();
                    realInterceptorChain.f77170a.eventListener.cacheHit(realCall, responseA5);
                    return responseA5;
                }
                if (response2 != null) {
                    realInterceptorChain.f77170a.eventListener.cacheConditionalHit(realCall, response2);
                } else if (cache2 != null) {
                    realInterceptorChain.f77170a.eventListener.cacheMiss(realCall);
                }
                try {
                    responseB = ((RealInterceptorChain) chain).b(request);
                    if (response2 != null) {
                        if (responseB.f76986e == 304) {
                            Response.Builder builder9 = new Response.Builder(response2);
                            Companion companion3 = f77023a;
                            headers = response2.g;
                            headers2 = responseB.g;
                            companion3.getClass();
                            builder2 = new Headers.Builder();
                            size = headers.size();
                            for (i6 = 0; i6 < size; i6++) {
                                strF2 = headers.f(i6);
                                strM = headers.m(i6);
                                if (("Warning".equalsIgnoreCase(strF2) || !StringsKt.P(strM, "1", false)) && ("Content-Length".equalsIgnoreCase(strF2) || "Content-Encoding".equalsIgnoreCase(strF2) || "Content-Type".equalsIgnoreCase(strF2) || !Companion.a(strF2) || headers2.a(strF2) == null)) {
                                    _HeadersCommonKt.a(builder2, strF2, strM);
                                }
                            }
                            size2 = headers2.size();
                            for (i5 = 0; i5 < size2; i5++) {
                                strF = headers2.f(i5);
                                if ("Content-Length".equalsIgnoreCase(strF) && !"Content-Encoding".equalsIgnoreCase(strF) && !"Content-Type".equalsIgnoreCase(strF) && Companion.a(strF)) {
                                    _HeadersCommonKt.a(builder2, strF, headers2.m(i5));
                                }
                            }
                            builder9.f76996f = builder2.d().h();
                            builder9.l = responseB.m;
                            builder9.m = responseB.n;
                            Response responseA6 = UnreadableResponseBodyKt.a(response2);
                            Response.Builder.b("cacheResponse", responseA6);
                            builder9.f76999j = responseA6;
                            Response responseA7 = UnreadableResponseBodyKt.a(responseB);
                            Response.Builder.b("networkResponse", responseA7);
                            builder9.f76998i = responseA7;
                            Response responseA8 = builder9.a();
                            responseB.f76988h.close();
                            cache2.getClass();
                            synchronized (cache2) {
                            }
                            Cache.g(response2, responseA8);
                            realInterceptorChain.f77170a.eventListener.cacheHit(realCall, responseA8);
                            return responseA8;
                        }
                        _UtilCommonKt.b(response2.f76988h);
                    }
                    Response.Builder builder10 = new Response.Builder(responseB);
                    if (response2 != null) {
                        responseA = UnreadableResponseBodyKt.a(response2);
                    } else {
                        responseA = response;
                    }
                    Response.Builder.b("cacheResponse", responseA);
                    builder10.f76999j = responseA;
                    Response responseA9 = UnreadableResponseBodyKt.a(responseB);
                    Response.Builder.b("networkResponse", responseA9);
                    builder10.f76998i = responseA9;
                    responseA2 = builder10.a();
                    if (cache2 != null) {
                        if (HttpHeaders.a(responseA2)) {
                            CacheStrategy.f77027c.getClass();
                            if (CacheStrategy.Companion.a(request, responseA2)) {
                                Response.Builder builder11 = new Response.Builder(responseA2);
                                builder11.f76992a = request;
                                cacheRequestD = cache2.d(builder11.a());
                                if (cacheRequestD != null) {
                                    Cache.RealCacheRequest.AnonymousClass1 anonymousClass1A = cacheRequestD.getF76838c();
                                    final BufferedSource f77005h = responseA2.f76988h.getF77180h();
                                    final RealBufferedSink realBufferedSinkB = Okio.b(anonymousClass1A);
                                    Source source = new Source() { // from class: okhttp3.internal.cache.CacheInterceptor$cacheWritingResponse$cacheWritingSource$1

                                        /* JADX INFO: renamed from: b, reason: collision with root package name */
                                        public boolean f77024b;

                                        @Override // java.io.Closeable, java.lang.AutoCloseable
                                        public final void close() throws IOException {
                                            boolean zG;
                                            if (!this.f77024b) {
                                                TimeZone timeZone = _UtilJvmKt.f77018a;
                                                TimeUnit.MILLISECONDS.getClass();
                                                try {
                                                    zG = _UtilJvmKt.g(this, 100);
                                                } catch (IOException unused) {
                                                    zG = false;
                                                }
                                                if (!zG) {
                                                    this.f77024b = true;
                                                    cacheRequestD.abort();
                                                }
                                            }
                                            f77005h.close();
                                        }

                                        @Override // okio.Source
                                        public final long read(Buffer buffer, long j6) throws Throwable {
                                            buffer.getClass();
                                            try {
                                                long j7 = f77005h.read(buffer, j6);
                                                RealBufferedSink realBufferedSink = realBufferedSinkB;
                                                if (j7 != -1) {
                                                    buffer.u(realBufferedSink.f77441c, buffer.f77390c - j7, j7);
                                                    realBufferedSink.X();
                                                    return j7;
                                                }
                                                if (!this.f77024b) {
                                                    this.f77024b = true;
                                                    realBufferedSink.close();
                                                }
                                                return -1L;
                                            } catch (IOException e2) {
                                                if (this.f77024b) {
                                                    throw e2;
                                                }
                                                this.f77024b = true;
                                                cacheRequestD.abort();
                                                throw e2;
                                            }
                                        }

                                        @Override // okio.Source
                                        /* JADX INFO: renamed from: timeout */
                                        public final Timeout getF77426c() {
                                            return f77005h.getF77426c();
                                        }
                                    };
                                    strA = responseA2.g.a("Content-Type");
                                    if (strA == null) {
                                        str3 = strA;
                                        str3 = response;
                                    }
                                    str3 = strA;
                                    long g = responseA2.f76988h.getG();
                                    Response.Builder builder12 = new Response.Builder(responseA2);
                                    builder12.g = new RealResponseBody(str3, g, new RealBufferedSource(source));
                                    responseA2 = builder12.a();
                                }
                                if (response2 != null) {
                                    realInterceptorChain.f77170a.eventListener.cacheMiss(realCall);
                                }
                                return responseA2;
                            }
                        }
                        cache = cache2;
                        if (HttpMethod.a(request.f76970b)) {
                            try {
                                cache.e(request);
                            } catch (IOException unused) {
                            }
                        }
                    }
                    return responseA2;
                } catch (Throwable th) {
                    if (responseC != null) {
                        _UtilCommonKt.b(responseC.f76988h);
                    }
                    throw th;
                }
            }
            cacheStrategy = new CacheStrategy(request3, null);
        }
        realCall2 = realCall2;
        cache2 = cache2;
        if (cacheStrategy.f77028a == null) {
            response = null;
        } else {
            cacheControlA = request3.f76973f;
            if (cacheControlA == null) {
                CacheControl.Companion companion4 = CacheControl.n;
                Headers headers6 = request3.f76971c;
                companion4.getClass();
                cacheControlA = CacheControl.Companion.a(headers6);
                request3.f76973f = cacheControlA;
            }
            if (cacheControlA.f76848j) {
                response = null;
                cacheStrategy = new CacheStrategy(null, null);
            } else {
                response = null;
            }
        }
        request = cacheStrategy.f77028a;
        response2 = cacheStrategy.f77029b;
        if (cache2 != null) {
            synchronized (cache2) {
            }
        }
        if (responseC != null) {
            _UtilCommonKt.b(responseC.f76988h);
        }
        if (request != null) {
        }
        realCall = realCall2;
        if (request == null) {
            response2.getClass();
            Response.Builder builder13 = new Response.Builder(response2);
            Response responseA10 = UnreadableResponseBodyKt.a(response2);
            Response.Builder.b("cacheResponse", responseA10);
            builder13.f76999j = responseA10;
            Response responseA11 = builder13.a();
            realInterceptorChain.f77170a.eventListener.cacheHit(realCall, responseA11);
            return responseA11;
        }
        if (response2 != null) {
            realInterceptorChain.f77170a.eventListener.cacheConditionalHit(realCall, response2);
        } else if (cache2 != null) {
            realInterceptorChain.f77170a.eventListener.cacheMiss(realCall);
        }
        responseB = ((RealInterceptorChain) chain).b(request);
        if (response2 != null) {
            if (responseB.f76986e == 304) {
                Response.Builder builder14 = new Response.Builder(response2);
                Companion companion5 = f77023a;
                headers = response2.g;
                headers2 = responseB.g;
                companion5.getClass();
                builder2 = new Headers.Builder();
                size = headers.size();
                while (i6 < size) {
                    strF2 = headers.f(i6);
                    strM = headers.m(i6);
                    if ("Warning".equalsIgnoreCase(strF2)) {
                        _HeadersCommonKt.a(builder2, strF2, strM);
                    } else {
                        _HeadersCommonKt.a(builder2, strF2, strM);
                    }
                }
                size2 = headers2.size();
                while (i5 < size2) {
                    strF = headers2.f(i5);
                    if ("Content-Length".equalsIgnoreCase(strF)) {
                    }
                }
                builder14.f76996f = builder2.d().h();
                builder14.l = responseB.m;
                builder14.m = responseB.n;
                Response responseA12 = UnreadableResponseBodyKt.a(response2);
                Response.Builder.b("cacheResponse", responseA12);
                builder14.f76999j = responseA12;
                Response responseA13 = UnreadableResponseBodyKt.a(responseB);
                Response.Builder.b("networkResponse", responseA13);
                builder14.f76998i = responseA13;
                Response responseA14 = builder14.a();
                responseB.f76988h.close();
                cache2.getClass();
                synchronized (cache2) {
                    Cache.g(response2, responseA14);
                    realInterceptorChain.f77170a.eventListener.cacheHit(realCall, responseA14);
                    return responseA14;
                }
            }
            _UtilCommonKt.b(response2.f76988h);
        }
        Response.Builder builder15 = new Response.Builder(responseB);
        if (response2 != null) {
            responseA = UnreadableResponseBodyKt.a(response2);
        } else {
            responseA = response;
        }
        Response.Builder.b("cacheResponse", responseA);
        builder15.f76999j = responseA;
        Response responseA15 = UnreadableResponseBodyKt.a(responseB);
        Response.Builder.b("networkResponse", responseA15);
        builder15.f76998i = responseA15;
        responseA2 = builder15.a();
        if (cache2 != null) {
            if (HttpHeaders.a(responseA2)) {
                CacheStrategy.f77027c.getClass();
                if (CacheStrategy.Companion.a(request, responseA2)) {
                    Response.Builder builder16 = new Response.Builder(responseA2);
                    builder16.f76992a = request;
                    cacheRequestD = cache2.d(builder16.a());
                    if (cacheRequestD != null) {
                        Cache.RealCacheRequest.AnonymousClass1 anonymousClass1A2 = cacheRequestD.getF76838c();
                        final BufferedSource f77005h2 = responseA2.f76988h.getF77180h();
                        final RealBufferedSink realBufferedSinkB2 = Okio.b(anonymousClass1A2);
                        Source source2 = new Source() { // from class: okhttp3.internal.cache.CacheInterceptor$cacheWritingResponse$cacheWritingSource$1

                            /* JADX INFO: renamed from: b, reason: collision with root package name */
                            public boolean f77024b;

                            @Override // java.io.Closeable, java.lang.AutoCloseable
                            public final void close() throws IOException {
                                boolean zG;
                                if (!this.f77024b) {
                                    TimeZone timeZone = _UtilJvmKt.f77018a;
                                    TimeUnit.MILLISECONDS.getClass();
                                    try {
                                        zG = _UtilJvmKt.g(this, 100);
                                    } catch (IOException unused2) {
                                        zG = false;
                                    }
                                    if (!zG) {
                                        this.f77024b = true;
                                        cacheRequestD.abort();
                                    }
                                }
                                f77005h2.close();
                            }

                            @Override // okio.Source
                            public final long read(Buffer buffer, long j6) throws Throwable {
                                buffer.getClass();
                                try {
                                    long j7 = f77005h2.read(buffer, j6);
                                    RealBufferedSink realBufferedSink = realBufferedSinkB2;
                                    if (j7 != -1) {
                                        buffer.u(realBufferedSink.f77441c, buffer.f77390c - j7, j7);
                                        realBufferedSink.X();
                                        return j7;
                                    }
                                    if (!this.f77024b) {
                                        this.f77024b = true;
                                        realBufferedSink.close();
                                    }
                                    return -1L;
                                } catch (IOException e2) {
                                    if (this.f77024b) {
                                        throw e2;
                                    }
                                    this.f77024b = true;
                                    cacheRequestD.abort();
                                    throw e2;
                                }
                            }

                            @Override // okio.Source
                            /* JADX INFO: renamed from: timeout */
                            public final Timeout getF77426c() {
                                return f77005h2.getF77426c();
                            }
                        };
                        strA = responseA2.g.a("Content-Type");
                        if (strA == null) {
                            str3 = strA;
                            str3 = response;
                        }
                        str3 = strA;
                        long g2 = responseA2.f76988h.getG();
                        Response.Builder builder17 = new Response.Builder(responseA2);
                        builder17.g = new RealResponseBody(str3, g2, new RealBufferedSource(source2));
                        responseA2 = builder17.a();
                    }
                    if (response2 != null) {
                        realInterceptorChain.f77170a.eventListener.cacheMiss(realCall);
                    }
                    return responseA2;
                }
            }
            cache = cache2;
            if (HttpMethod.a(request.f76970b)) {
                cache.e(request);
            }
        }
        return responseA2;
    }
}
