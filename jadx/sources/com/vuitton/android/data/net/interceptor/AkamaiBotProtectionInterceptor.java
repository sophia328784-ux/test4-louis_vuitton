package com.vuitton.android.data.net.interceptor;

import com.akamai.botman.CYFMonitor;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.extensions.StringAndroidExtKt;
import com.vuitton.android.domain.provider.environment.EnvironmentProvider;
import kotlin.Metadata;
import okhttp3.Interceptor;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.internal.http.RealInterceptorChain;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/net/interceptor/AkamaiBotProtectionInterceptor;", "Lokhttp3/Interceptor;", "Lcom/vuitton/android/domain/provider/environment/EnvironmentProvider;", "environmentProvider", "<init>", "(Lcom/vuitton/android/domain/provider/environment/EnvironmentProvider;)V", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class AkamaiBotProtectionInterceptor implements Interceptor {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final EnvironmentProvider f47062a;

    public AkamaiBotProtectionInterceptor(EnvironmentProvider environmentProvider) {
        environmentProvider.getClass();
        this.f47062a = environmentProvider;
    }

    @Override // okhttp3.Interceptor
    public final Response intercept(Interceptor.Chain chain) {
        String strA;
        RealInterceptorChain realInterceptorChain = (RealInterceptorChain) chain;
        Request request = realInterceptorChain.f77173e;
        if (!StringAndroidExtKt.a(request.f76969a.f76925i, this.f47062a)) {
            return realInterceptorChain.b(request);
        }
        Request.Builder builder = new Request.Builder(request);
        synchronized (CYFMonitor.class) {
            try {
                strA = com.cyberfend.cyfsecurity.CYFMonitor.f();
            } catch (Throwable unused) {
                strA = CYFMonitor.a();
            }
        }
        builder.b("X-acf-sensor-data", strA);
        return realInterceptorChain.b(new Request(builder));
    }
}
