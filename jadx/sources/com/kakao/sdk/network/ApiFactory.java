package com.kakao.sdk.network;

import com.google.gson.Gson;
import com.kakao.sdk.common.util.KakaoJson;
import defpackage.r81;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import okhttp3.OkHttpClient;
import retrofit2.Retrofit;
import retrofit2.converter.gson.GsonConverterFactory;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/kakao/sdk/network/ApiFactory;", "", "network_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class ApiFactory {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Lazy f35897a = LazyKt.b(ApiFactory$kakaoAgentInterceptor$2.f35902c);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Lazy f35898b = LazyKt.b(ApiFactory$appKeyInterceptor$2.f35901c);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final Lazy f35899c = LazyKt.b(ApiFactory$loggingInterceptor$2.f35905c);
    public static final Lazy d = LazyKt.b(ApiFactory$kapi$2.f35903c);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final Lazy f35900e = LazyKt.b(ApiFactory$kapiNoLog$2.f35904c);

    public static Retrofit a(String str, OkHttpClient.Builder builder) {
        Retrofit.Builder builder2 = new Retrofit.Builder();
        builder2.b(str);
        builder2.a(new KakaoRetrofitConverterFactory());
        Gson gson = KakaoJson.f35885a;
        if (gson == null) {
            r81.d("gson == null");
            return null;
        }
        builder2.a(new GsonConverterFactory(gson));
        builder2.f79461a = new OkHttpClient(builder);
        return builder2.d();
    }
}
