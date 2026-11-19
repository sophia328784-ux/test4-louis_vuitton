package okhttp3.internal.connection;

import defpackage.az;
import java.io.IOException;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import okhttp3.Interceptor;
import okhttp3.OkHttpClient;
import okhttp3.Response;
import okhttp3.internal.http.ExchangeCodec;
import okhttp3.internal.http.RealInterceptorChain;
import okhttp3.internal.http1.Http1ExchangeCodec;
import okhttp3.internal.http2.Http2Connection;
import okhttp3.internal.http2.Http2ExchangeCodec;
import okio.Timeout;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lokhttp3/internal/connection/ConnectInterceptor;", "Lokhttp3/Interceptor;", "okhttp"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class ConnectInterceptor implements Interceptor {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final ConnectInterceptor f77085a = new ConnectInterceptor();

    @Override // okhttp3.Interceptor
    public final Response intercept(Interceptor.Chain chain) throws IOException {
        ExchangeCodec http1ExchangeCodec;
        RealInterceptorChain realInterceptorChain = (RealInterceptorChain) chain;
        RealCall realCall = realInterceptorChain.f77170a;
        realCall.getClass();
        synchronized (realCall) {
            if (!realCall.r) {
                throw new IllegalStateException("released");
            }
            if (realCall.o || realCall.n || realCall.q || realCall.p) {
                throw new IllegalStateException("Check failed.");
            }
        }
        ExchangeFinder exchangeFinder = realCall.f77124j;
        exchangeFinder.getClass();
        RealConnection realConnectionA = exchangeFinder.a();
        OkHttpClient okHttpClient = realCall.f77118b;
        realConnectionA.getClass();
        okHttpClient.getClass();
        BufferedSocket bufferedSocket = realConnectionA.f77131i;
        Http2Connection http2Connection = realConnectionA.l;
        if (http2Connection != null) {
            http1ExchangeCodec = new Http2ExchangeCodec(okHttpClient, realConnectionA, realInterceptorChain, http2Connection);
        } else {
            realConnectionA.f77129f.setSoTimeout(realInterceptorChain.g);
            Timeout timeout = bufferedSocket.getSource().getF77426c();
            long j2 = realInterceptorChain.g;
            TimeUnit timeUnit = TimeUnit.MILLISECONDS;
            timeout.g(j2, timeUnit);
            bufferedSocket.a().getF77431c().g(realInterceptorChain.f77175h, timeUnit);
            http1ExchangeCodec = new Http1ExchangeCodec(okHttpClient, realConnectionA, bufferedSocket);
        }
        Exchange exchange = new Exchange(realCall, exchangeFinder, http1ExchangeCodec);
        realCall.m = exchange;
        realCall.t = exchange;
        synchronized (realCall) {
            realCall.n = true;
            realCall.o = true;
        }
        if (!realCall.s) {
            return RealInterceptorChain.f(realInterceptorChain, 0, exchange, null, 0, 0, 0, 2097149).b(realInterceptorChain.f77173e);
        }
        az.o("Canceled");
        return null;
    }
}
