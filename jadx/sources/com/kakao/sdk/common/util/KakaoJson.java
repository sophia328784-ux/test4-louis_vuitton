package com.kakao.sdk.common.util;

import com.google.gson.FieldNamingPolicy;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.kakao.sdk.common.json.KakaoTypeAdapterFactory;
import java.lang.reflect.Type;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/kakao/sdk/common/util/KakaoJson;", "", "common_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public abstract class KakaoJson {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Gson f35885a;

    static {
        KakaoJson$kakaoExclusionStrategy$1 kakaoJson$kakaoExclusionStrategy$1 = new KakaoJson$kakaoExclusionStrategy$1();
        GsonBuilder gsonBuilderAddDeserializationExclusionStrategy = new GsonBuilder().registerTypeAdapterFactory(new KakaoTypeAdapterFactory()).setFieldNamingPolicy(FieldNamingPolicy.LOWER_CASE_WITH_UNDERSCORES).addSerializationExclusionStrategy(kakaoJson$kakaoExclusionStrategy$1).addDeserializationExclusionStrategy(kakaoJson$kakaoExclusionStrategy$1);
        Gson gsonCreate = gsonBuilderAddDeserializationExclusionStrategy.create();
        gsonCreate.getClass();
        f35885a = gsonCreate;
        gsonBuilderAddDeserializationExclusionStrategy.setPrettyPrinting().create().getClass();
    }

    public static Object a(String str, Class cls) {
        str.getClass();
        return f35885a.fromJson(str, (Type) cls);
    }
}
