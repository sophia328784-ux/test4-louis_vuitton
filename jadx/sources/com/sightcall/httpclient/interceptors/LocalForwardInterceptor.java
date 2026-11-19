package com.sightcall.httpclient.interceptors;

import java.io.IOException;
import kotlin.Metadata;
import okhttp3.Interceptor;
import okhttp3.Request;
import okhttp3.Response;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016¨\u0006\b"}, d2 = {"Lcom/sightcall/httpclient/interceptors/LocalForwardInterceptor;", "Lokhttp3/Interceptor;", "<init>", "()V", "intercept", "Lokhttp3/Response;", "chain", "Lokhttp3/Interceptor$Chain;", "httpclient_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class LocalForwardInterceptor implements Interceptor {
    @Override // okhttp3.Interceptor
    public Response intercept(Interceptor.Chain chain) throws IOException {
        chain.getClass();
        Request f77173e = chain.getF77173e();
        f77173e.getClass();
        Request.Builder builder = new Request.Builder(f77173e);
        builder.b("X-Forwarded-For", "127.0.0.1");
        return chain.b(new Request(builder));
    }
}
