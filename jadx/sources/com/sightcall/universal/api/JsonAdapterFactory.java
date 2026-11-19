package com.sightcall.universal.api;

import com.squareup.moshi.JsonAdapter;
import com.squareup.moshi.JsonReader;
import com.squareup.moshi.JsonWriter;
import com.squareup.moshi.Moshi;
import com.squareup.moshi.Types;
import com.squareup.moshi.internal.Util;
import defpackage.lc0;
import defpackage.r81;
import java.io.IOException;
import java.lang.annotation.Annotation;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Set;

/* JADX INFO: loaded from: classes3.dex */
public final class JsonAdapterFactory<T> implements JsonAdapter.Factory {
    final Class<T> baseType;
    final T defaultValue;
    final boolean defaultValueSet;
    final List<Type> subtypes;

    public static final class PolymorphicJsonAdapter extends JsonAdapter<Object> {
        final Object defaultValue;
        final boolean defaultValueSet;
        final List<JsonAdapter<Object>> jsonAdapters;
        final List<Type> subtypes;

        public PolymorphicJsonAdapter(List<Type> list, List<JsonAdapter<Object>> list2, Object obj, boolean z) {
            this.subtypes = list;
            this.jsonAdapters = list2;
            this.defaultValue = obj;
            this.defaultValueSet = z;
        }

        private int labelIndex(JsonReader jsonReader) throws IOException {
            jsonReader.j();
            jsonReader.close();
            return 0;
        }

        @Override // com.squareup.moshi.JsonAdapter
        public Object fromJson(JsonReader jsonReader) throws IOException {
            int iLabelIndex = labelIndex(jsonReader.B());
            if (iLabelIndex != -1) {
                return this.jsonAdapters.get(iLabelIndex).fromJson(jsonReader);
            }
            jsonReader.j0();
            return this.defaultValue;
        }

        @Override // com.squareup.moshi.JsonAdapter
        public void toJson(JsonWriter jsonWriter, Object obj) throws IOException {
            int iIndexOf = this.subtypes.indexOf(obj.getClass());
            if (iIndexOf == -1) {
                StringBuilder sb = new StringBuilder("Expected one of ");
                sb.append(this.subtypes);
                sb.append(" but found ");
                sb.append(obj);
                lc0.t(sb, ", a ", obj.getClass(), ". Register this subtype.");
                return;
            }
            JsonAdapter<Object> jsonAdapter = this.jsonAdapters.get(iIndexOf);
            jsonWriter.k();
            int iJ = jsonWriter.j();
            jsonAdapter.toJson(jsonWriter, obj);
            jsonWriter.f43381j = iJ;
            jsonWriter.o();
        }
    }

    public JsonAdapterFactory(Class<T> cls, List<Type> list, T t, boolean z) {
        this.baseType = cls;
        this.subtypes = list;
        this.defaultValue = t;
        this.defaultValueSet = z;
    }

    public static <T> JsonAdapterFactory<T> of(Class<T> cls) {
        if (cls != null) {
            return new JsonAdapterFactory<>(cls, Collections.EMPTY_LIST, null, false);
        }
        r81.d("baseType == null");
        return null;
    }

    @Override // com.squareup.moshi.JsonAdapter.Factory
    public JsonAdapter<?> create(Type type, Set<? extends Annotation> set, Moshi moshi) {
        if (Types.c(type) != this.baseType || !set.isEmpty()) {
            return null;
        }
        ArrayList arrayList = new ArrayList(this.subtypes.size());
        int size = this.subtypes.size();
        int i2 = 0;
        while (true) {
            List<Type> list = this.subtypes;
            if (i2 >= size) {
                return new PolymorphicJsonAdapter(list, arrayList, this.defaultValue, this.defaultValueSet).nullSafe();
            }
            Type type2 = list.get(i2);
            moshi.getClass();
            arrayList.add(moshi.b(type2, Util.f43424a));
            i2++;
        }
    }

    public JsonAdapterFactory<T> withDefaultValue(T t) {
        return new JsonAdapterFactory<>(this.baseType, this.subtypes, t, true);
    }

    public JsonAdapterFactory<T> withSubtype(Class<? extends T> cls) {
        if (cls == null) {
            r81.d("subtype == null");
            return null;
        }
        ArrayList arrayList = new ArrayList(this.subtypes);
        arrayList.add(cls);
        return new JsonAdapterFactory<>(this.baseType, arrayList, this.defaultValue, this.defaultValueSet);
    }
}
