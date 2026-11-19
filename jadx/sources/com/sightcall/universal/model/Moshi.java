package com.sightcall.universal.model;

import com.sightcall.universal.api.FallbackEnum;
import com.sightcall.universal.api.Transient;
import com.squareup.moshi.JsonAdapter;

/* JADX INFO: loaded from: classes3.dex */
public final class Moshi {
    private static final com.squareup.moshi.Moshi MOSHI;

    static {
        com.squareup.moshi.Moshi.Builder builder = new com.squareup.moshi.Moshi.Builder();
        builder.b(Transient.ADAPTER_FACTORY);
        builder.b(FallbackEnum.ADAPTER_FACTORY);
        MOSHI = new com.squareup.moshi.Moshi(builder);
    }

    public static <T> JsonAdapter<T> adapter(Class<T> cls) {
        return MOSHI.a(cls);
    }

    public static <T> T fromJson(Class<T> cls, String str) {
        try {
            return (T) MOSHI.a(cls).fromJson(str);
        } catch (Exception e2) {
            e2.printStackTrace();
            return null;
        }
    }

    public static <T> String toJson(Class<T> cls, T t) {
        return MOSHI.a(cls).toJson(t);
    }
}
