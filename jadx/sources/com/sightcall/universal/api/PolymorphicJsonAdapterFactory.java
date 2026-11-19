package com.sightcall.universal.api;

import com.squareup.moshi.JsonAdapter;
import com.squareup.moshi.JsonDataException;
import com.squareup.moshi.JsonReader;
import com.squareup.moshi.JsonWriter;
import com.squareup.moshi.Moshi;
import com.squareup.moshi.Types;
import com.squareup.moshi.internal.Util;
import defpackage.d20;
import defpackage.lc0;
import defpackage.md;
import defpackage.n00;
import defpackage.r81;
import java.io.IOException;
import java.lang.annotation.Annotation;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Set;

/* JADX INFO: loaded from: classes3.dex */
public final class PolymorphicJsonAdapterFactory<T> implements JsonAdapter.Factory {
    final Class<T> baseType;
    final T defaultValue;
    final boolean defaultValueSet;
    final String labelKey;
    final List<String> labels;
    final List<Type> subtypes;

    public static final class PolymorphicJsonAdapter extends JsonAdapter<Object> {
        final Object defaultValue;
        final boolean defaultValueSet;
        final List<JsonAdapter<Object>> jsonAdapters;
        final String labelKey;
        final JsonReader.Options labelKeyOptions;
        final JsonReader.Options labelOptions;
        final List<String> labels;
        final List<Type> subtypes;

        public PolymorphicJsonAdapter(String str, List<String> list, List<Type> list2, List<JsonAdapter<Object>> list3, Object obj, boolean z) {
            this.labelKey = str;
            this.labels = list;
            this.subtypes = list2;
            this.jsonAdapters = list3;
            this.defaultValue = obj;
            this.defaultValueSet = z;
            this.labelKeyOptions = JsonReader.Options.a(str);
            this.labelOptions = JsonReader.Options.a((String[]) list.toArray(new String[0]));
        }

        private int labelIndex(JsonReader jsonReader) throws IOException {
            jsonReader.j();
            while (jsonReader.o()) {
                if (jsonReader.G(this.labelKeyOptions) != -1) {
                    int iH = jsonReader.H(this.labelOptions);
                    if (iH != -1 || this.defaultValueSet) {
                        jsonReader.close();
                        return iH;
                    }
                    StringBuilder sb = new StringBuilder("Expected one of ");
                    sb.append(this.labels);
                    d20.l(sb, " for key '", this.labelKey, "' but found '", jsonReader.w(), "'. Register a subtype for this label.");
                    return 0;
                }
                jsonReader.i0();
                jsonReader.j0();
            }
            throw new JsonDataException("Missing label for " + this.labelKey);
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
            jsonWriter.q(this.labelKey).C(this.labels.get(iIndexOf));
            int iJ = jsonWriter.j();
            jsonAdapter.toJson(jsonWriter, obj);
            jsonWriter.f43381j = iJ;
            jsonWriter.o();
        }

        public String toString() {
            return n00.r(this.labelKey, ")", new StringBuilder("PolymorphicJsonAdapter("));
        }
    }

    public PolymorphicJsonAdapterFactory(Class<T> cls, String str, List<String> list, List<Type> list2, T t, boolean z) {
        this.baseType = cls;
        this.labelKey = str;
        this.labels = list;
        this.subtypes = list2;
        this.defaultValue = t;
        this.defaultValueSet = z;
    }

    public static <T> PolymorphicJsonAdapterFactory<T> of(Class<T> cls, String str) {
        if (cls == null) {
            r81.d("baseType == null");
            return null;
        }
        if (str != null) {
            List list = Collections.EMPTY_LIST;
            return new PolymorphicJsonAdapterFactory<>(cls, str, list, list, null, false);
        }
        r81.d("labelKey == null");
        return null;
    }

    @Override // com.squareup.moshi.JsonAdapter.Factory
    public JsonAdapter<?> create(Type type, Set<? extends Annotation> set, Moshi moshi) {
        if (Types.c(type) != this.baseType || !set.isEmpty()) {
            return null;
        }
        ArrayList arrayList = new ArrayList(this.subtypes.size());
        int size = this.subtypes.size();
        for (int i2 = 0; i2 < size; i2++) {
            Type type2 = this.subtypes.get(i2);
            moshi.getClass();
            arrayList.add(moshi.b(type2, Util.f43424a));
        }
        return new PolymorphicJsonAdapter(this.labelKey, this.labels, this.subtypes, arrayList, this.defaultValue, this.defaultValueSet).nullSafe();
    }

    public PolymorphicJsonAdapterFactory<T> withDefaultValue(T t) {
        return new PolymorphicJsonAdapterFactory<>(this.baseType, this.labelKey, this.labels, this.subtypes, t, true);
    }

    public PolymorphicJsonAdapterFactory<T> withSubtype(Class<? extends T> cls, String str) {
        if (cls == null) {
            r81.d("subtype == null");
            return null;
        }
        if (str == null) {
            r81.d("label == null");
            return null;
        }
        if (this.labels.contains(str) || this.subtypes.contains(cls)) {
            md.n("Subtypes and labels must be unique.");
            return null;
        }
        ArrayList arrayList = new ArrayList(this.labels);
        arrayList.add(str);
        ArrayList arrayList2 = new ArrayList(this.subtypes);
        arrayList2.add(cls);
        return new PolymorphicJsonAdapterFactory<>(this.baseType, this.labelKey, arrayList, arrayList2, this.defaultValue, this.defaultValueSet);
    }
}
