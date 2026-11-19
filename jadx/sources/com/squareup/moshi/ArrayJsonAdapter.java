package com.squareup.moshi;

import com.squareup.moshi.internal.Util;
import java.io.IOException;
import java.lang.reflect.Array;
import java.lang.reflect.GenericArrayType;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Set;

/* JADX INFO: loaded from: classes3.dex */
final class ArrayJsonAdapter extends JsonAdapter<Object> {
    public static final JsonAdapter.Factory FACTORY = new AnonymousClass1();
    private final JsonAdapter<Object> elementAdapter;
    private final Class<?> elementClass;

    /* JADX INFO: renamed from: com.squareup.moshi.ArrayJsonAdapter$1, reason: invalid class name */
    public class AnonymousClass1 implements JsonAdapter.Factory {
        @Override // com.squareup.moshi.JsonAdapter.Factory
        public final JsonAdapter create(Type type, Set set, Moshi moshi) {
            Type componentType;
            if (type instanceof GenericArrayType) {
                componentType = ((GenericArrayType) type).getGenericComponentType();
            } else {
                componentType = type instanceof Class ? ((Class) type).getComponentType() : null;
            }
            if (componentType != null && set.isEmpty()) {
                return new ArrayJsonAdapter(Types.c(componentType), moshi.c(componentType, Util.f43424a, null)).nullSafe();
            }
            return null;
        }
    }

    public ArrayJsonAdapter(Class<?> cls, JsonAdapter<Object> jsonAdapter) {
        this.elementClass = cls;
        this.elementAdapter = jsonAdapter;
    }

    @Override // com.squareup.moshi.JsonAdapter
    public Object fromJson(JsonReader jsonReader) throws IOException {
        ArrayList arrayList = new ArrayList();
        jsonReader.h();
        while (jsonReader.o()) {
            arrayList.add(this.elementAdapter.fromJson(jsonReader));
        }
        jsonReader.k();
        Object objNewInstance = Array.newInstance(this.elementClass, arrayList.size());
        for (int i2 = 0; i2 < arrayList.size(); i2++) {
            Array.set(objNewInstance, i2, arrayList.get(i2));
        }
        return objNewInstance;
    }

    @Override // com.squareup.moshi.JsonAdapter
    public void toJson(JsonWriter jsonWriter, Object obj) throws IOException {
        jsonWriter.h();
        int length = Array.getLength(obj);
        for (int i2 = 0; i2 < length; i2++) {
            this.elementAdapter.toJson(jsonWriter, Array.get(obj, i2));
        }
        jsonWriter.n();
    }

    public String toString() {
        return this.elementAdapter + ".array()";
    }
}
