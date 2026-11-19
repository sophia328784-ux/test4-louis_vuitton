package com.sightcall.universal.api;

import com.squareup.moshi.JsonAdapter;
import com.squareup.moshi.JsonReader;
import com.squareup.moshi.JsonWriter;
import defpackage.o60;
import java.io.IOException;
import java.util.LinkedHashSet;
import java.util.Set;

/* JADX INFO: loaded from: classes3.dex */
final class FallbackOnNullJsonAdapter<T> extends JsonAdapter<T> {
    static final Set<Class<?>> PRIMITIVE_CLASSES;
    final JsonAdapter<T> delegate;
    final T fallback;
    final String fallbackType;

    static {
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        PRIMITIVE_CLASSES = linkedHashSet;
        linkedHashSet.add(Boolean.TYPE);
        linkedHashSet.add(Byte.TYPE);
        linkedHashSet.add(Character.TYPE);
        linkedHashSet.add(Double.TYPE);
        linkedHashSet.add(Float.TYPE);
        linkedHashSet.add(Integer.TYPE);
        linkedHashSet.add(Long.TYPE);
        linkedHashSet.add(Short.TYPE);
    }

    public FallbackOnNullJsonAdapter(JsonAdapter<T> jsonAdapter, T t, String str) {
        this.delegate = jsonAdapter;
        this.fallback = t;
        this.fallbackType = str;
    }

    @Override // com.squareup.moshi.JsonAdapter
    public T fromJson(JsonReader jsonReader) throws IOException {
        if (jsonReader.z() != JsonReader.Token.NULL) {
            return this.delegate.fromJson(jsonReader);
        }
        jsonReader.u();
        return this.fallback;
    }

    @Override // com.squareup.moshi.JsonAdapter
    public void toJson(JsonWriter jsonWriter, T t) throws IOException {
        this.delegate.toJson(jsonWriter, t);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.delegate);
        sb.append(".fallbackOnNull(");
        sb.append(this.fallbackType);
        sb.append('=');
        return o60.r(sb, this.fallback, ')');
    }
}
