package com.kakao.sdk.common.json;

import com.google.gson.Gson;
import com.google.gson.TypeAdapter;
import com.google.gson.TypeAdapterFactory;
import com.google.gson.reflect.TypeToken;
import java.util.Date;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0000\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/kakao/sdk/common/json/KakaoTypeAdapterFactory;", "Lcom/google/gson/TypeAdapterFactory;", "<init>", "()V", "common_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class KakaoTypeAdapterFactory implements TypeAdapterFactory {
    @Override // com.google.gson.TypeAdapterFactory
    public final TypeAdapter create(Gson gson, TypeToken typeToken) {
        gson.getClass();
        typeToken.getClass();
        Class rawType = typeToken.getRawType();
        rawType.getClass();
        if (rawType.equals(Date.class)) {
            return new KakaoDateTypeAdapter();
        }
        if (rawType.isEnum()) {
            return new KakaoEnumTypeAdapter(rawType);
        }
        return null;
    }
}
