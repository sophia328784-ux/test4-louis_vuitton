package com.vuitton.android.data.net.interceptor;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import kotlin.Metadata;
import kotlin.text.StringsKt;
import okhttp3.HttpUrl;
import okhttp3.Interceptor;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.internal.http.RealInterceptorChain;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/net/interceptor/EphemeralEnvironmentHeaderInterceptor;", "Lokhttp3/Interceptor;", "", "ephemeralEnvValue", "<init>", "(Ljava/lang/String;)V", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class EphemeralEnvironmentHeaderInterceptor implements Interceptor {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f47070a;

    public EphemeralEnvironmentHeaderInterceptor(String str) {
        str.getClass();
        this.f47070a = str;
    }

    @Override // okhttp3.Interceptor
    public final Response intercept(Interceptor.Chain chain) {
        RealInterceptorChain realInterceptorChain = (RealInterceptorChain) chain;
        Request request = realInterceptorChain.f77173e;
        if (StringsKt.k(request.f76969a.f76925i, "/health", false)) {
            return realInterceptorChain.b(request);
        }
        Request.Builder builder = new Request.Builder(request);
        HttpUrl.Builder builderG = request.f76969a.g();
        builderG.b("env", this.f47070a);
        builder.f76974a = builderG.c();
        return realInterceptorChain.b(new Request(builder));
    }
}
