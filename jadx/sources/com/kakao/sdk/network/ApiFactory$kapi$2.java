package com.kakao.sdk.network;

import com.kakao.sdk.common.KakaoSdk;
import kotlin.Lazy;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import okhttp3.OkHttpClient;
import okhttp3.logging.HttpLoggingInterceptor;
import retrofit2.Retrofit;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "Lretrofit2/Retrofit;", "invoke"}, k = 3, mv = {1, 8, 0}, xi = 48)
public final class ApiFactory$kapi$2 extends Lambda implements Function0<Retrofit> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final ApiFactory$kapi$2 f35903c = new ApiFactory$kapi$2(0);

    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        Lazy lazy = ApiFactory.f35897a;
        String str = "https://" + KakaoSdk.b().getKapi();
        OkHttpClient.Builder builder = new OkHttpClient.Builder();
        builder.a((KakaoAgentInterceptor) ApiFactory.f35897a.getF71699b());
        builder.a((AppKeyInterceptor) ApiFactory.f35898b.getF71699b());
        builder.a((HttpLoggingInterceptor) ApiFactory.f35899c.getF71699b());
        return ApiFactory.a(str, builder);
    }
}
