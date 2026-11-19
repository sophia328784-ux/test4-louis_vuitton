package com.kakao.sdk.network;

import com.kakao.sdk.common.KakaoSdk;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import okhttp3.Interceptor;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.internal.http.RealInterceptorChain;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0011\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/kakao/sdk/network/AppKeyInterceptor;", "Lokhttp3/Interceptor;", "", "appKey", "<init>", "(Ljava/lang/String;)V", "network_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class AppKeyInterceptor implements Interceptor {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f35906a;

    public /* synthetic */ AppKeyInterceptor(String str, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? KakaoSdk.a().getMClientId() : str);
    }

    @Override // okhttp3.Interceptor
    public final Response intercept(Interceptor.Chain chain) {
        RealInterceptorChain realInterceptorChain = (RealInterceptorChain) chain;
        Request request = realInterceptorChain.f77173e;
        request.getClass();
        Request.Builder builder = new Request.Builder(request);
        builder.a("Authorization", "KakaoAK " + this.f35906a);
        return realInterceptorChain.b(new Request(builder));
    }

    public AppKeyInterceptor(String str) {
        str.getClass();
        this.f35906a = str;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public AppKeyInterceptor() {
        this(null, 1, 0 == true ? 1 : 0);
    }
}
