package com.sightcall.universal.api;

import com.squareup.moshi.JsonAdapter;
import com.squareup.moshi.JsonDataException;
import com.squareup.moshi.JsonReader;
import com.squareup.moshi.JsonWriter;
import com.squareup.moshi.Moshi;
import java.io.IOException;
import java.lang.annotation.Annotation;
import java.lang.reflect.Type;
import java.util.Set;

/* JADX INFO: loaded from: classes3.dex */
public final class DefaultOnDataMismatchAdapter<T> extends JsonAdapter<T> {
    private final T defaultValue;
    private final JsonAdapter<T> delegate;

    private DefaultOnDataMismatchAdapter(JsonAdapter<T> jsonAdapter, T t) {
        this.delegate = jsonAdapter;
        this.defaultValue = t;
    }

    public static <T> JsonAdapter.Factory newFactory(final Class<T> cls, final T t) {
        return new JsonAdapter.Factory() { // from class: com.sightcall.universal.api.DefaultOnDataMismatchAdapter.1
            @Override // com.squareup.moshi.JsonAdapter.Factory
            public JsonAdapter<?> create(Type type, Set<? extends Annotation> set, Moshi moshi) {
                Class cls2 = cls;
                if (cls2 != type) {
                    return null;
                }
                return new DefaultOnDataMismatchAdapter(moshi.d(this, cls2, set), t, 0);
            }
        };
    }

    @Override // com.squareup.moshi.JsonAdapter
    public T fromJson(JsonReader jsonReader) throws IOException {
        try {
            return this.delegate.fromJsonValue(jsonReader.F());
        } catch (JsonDataException unused) {
            return this.defaultValue;
        }
    }

    @Override // com.squareup.moshi.JsonAdapter
    public void toJson(JsonWriter jsonWriter, T t) throws IOException {
        this.delegate.toJson(jsonWriter, t);
    }

    public /* synthetic */ DefaultOnDataMismatchAdapter(JsonAdapter jsonAdapter, Object obj, int i2) {
        this(jsonAdapter, obj);
    }
}
