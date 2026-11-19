package com.kakao.sdk.network;

import com.kakao.sdk.common.json.IntDate;
import com.kakao.sdk.common.json.MapToQuery;
import defpackage.d20;
import defpackage.v40;
import java.lang.annotation.Annotation;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Date;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import retrofit2.Converter;
import retrofit2.Retrofit;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/kakao/sdk/network/KakaoRetrofitConverterFactory;", "Lretrofit2/Converter$Factory;", "<init>", "()V", "network_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class KakaoRetrofitConverterFactory extends Converter.Factory {
    @Override // retrofit2.Converter.Factory
    public final Converter c(Type type, Annotation[] annotationArr, Retrofit retrofit) {
        type.getClass();
        if (type.equals(String.class)) {
            return null;
        }
        if ((type instanceof Class) && ((Class) type).isEnum()) {
            return new d20(27);
        }
        if (type.equals(Date.class)) {
            ArrayList arrayList = new ArrayList();
            for (Annotation annotation : annotationArr) {
                if (annotation instanceof IntDate) {
                    arrayList.add(annotation);
                }
            }
            if (((IntDate) CollectionsKt.firstOrNull(arrayList)) != null) {
                return new d20(28);
            }
        }
        if ((type instanceof ParameterizedType) && Intrinsics.c(((ParameterizedType) type).getRawType(), Map.class)) {
            ArrayList arrayList2 = new ArrayList();
            for (Annotation annotation2 : annotationArr) {
                if (annotation2 instanceof MapToQuery) {
                    arrayList2.add(annotation2);
                }
            }
            if (((MapToQuery) CollectionsKt.firstOrNull(arrayList2)) != null) {
                return new d20(29);
            }
        }
        return new v40(0);
    }
}
