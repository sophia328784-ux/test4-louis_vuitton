package com.squareup.moshi.adapters;

import com.squareup.moshi.JsonAdapter;
import com.squareup.moshi.JsonDataException;
import com.squareup.moshi.JsonReader;
import com.squareup.moshi.JsonWriter;
import defpackage.d20;
import defpackage.lc0;
import defpackage.n00;
import java.io.IOException;
import java.lang.reflect.Type;
import java.util.List;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes3.dex */
public abstract class PolymorphicJsonAdapterFactory<T> implements JsonAdapter.Factory {

    /* JADX INFO: renamed from: com.squareup.moshi.adapters.PolymorphicJsonAdapterFactory$1, reason: invalid class name */
    class AnonymousClass1 extends JsonAdapter<Object> {
        final /* synthetic */ PolymorphicJsonAdapterFactory this$0;
        final /* synthetic */ Object val$defaultValue;

        public AnonymousClass1(PolymorphicJsonAdapterFactory polymorphicJsonAdapterFactory, Object obj) {
            this.val$defaultValue = obj;
        }

        @Override // com.squareup.moshi.JsonAdapter
        @Nullable
        public Object fromJson(JsonReader jsonReader) throws IOException {
            jsonReader.j0();
            return this.val$defaultValue;
        }

        @Override // com.squareup.moshi.JsonAdapter
        public void toJson(JsonWriter jsonWriter, Object obj) throws IOException {
            throw null;
        }
    }

    public static final class PolymorphicJsonAdapter extends JsonAdapter<Object> {

        @Nullable
        final JsonAdapter<Object> fallbackJsonAdapter;
        final List<JsonAdapter<Object>> jsonAdapters;
        final String labelKey;
        final JsonReader.Options labelKeyOptions;
        final JsonReader.Options labelOptions;
        final List<String> labels;
        final List<Type> subtypes;

        public PolymorphicJsonAdapter(String str, List<String> list, List<Type> list2, List<JsonAdapter<Object>> list3, @Nullable JsonAdapter<Object> jsonAdapter) {
            this.labelKey = str;
            this.labels = list;
            this.subtypes = list2;
            this.jsonAdapters = list3;
            this.fallbackJsonAdapter = jsonAdapter;
            this.labelKeyOptions = JsonReader.Options.a(str);
            this.labelOptions = JsonReader.Options.a((String[]) list.toArray(new String[0]));
        }

        private int labelIndex(JsonReader jsonReader) throws IOException {
            jsonReader.j();
            while (jsonReader.o()) {
                if (jsonReader.G(this.labelKeyOptions) != -1) {
                    int iH = jsonReader.H(this.labelOptions);
                    if (iH != -1 || this.fallbackJsonAdapter != null) {
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
            JsonReader jsonReaderB = jsonReader.B();
            jsonReaderB.g = false;
            try {
                int iLabelIndex = labelIndex(jsonReaderB);
                jsonReaderB.close();
                return iLabelIndex == -1 ? this.fallbackJsonAdapter.fromJson(jsonReader) : this.jsonAdapters.get(iLabelIndex).fromJson(jsonReader);
            } catch (Throwable th) {
                jsonReaderB.close();
                throw th;
            }
        }

        @Override // com.squareup.moshi.JsonAdapter
        public void toJson(JsonWriter jsonWriter, Object obj) throws IOException {
            JsonAdapter<Object> jsonAdapter;
            int iIndexOf = this.subtypes.indexOf(obj.getClass());
            if (iIndexOf == -1) {
                jsonAdapter = this.fallbackJsonAdapter;
                if (jsonAdapter == null) {
                    StringBuilder sb = new StringBuilder("Expected one of ");
                    sb.append(this.subtypes);
                    sb.append(" but found ");
                    sb.append(obj);
                    lc0.t(sb, ", a ", obj.getClass(), ". Register this subtype.");
                    return;
                }
            } else {
                jsonAdapter = this.jsonAdapters.get(iIndexOf);
            }
            jsonWriter.k();
            if (jsonAdapter != this.fallbackJsonAdapter) {
                jsonWriter.q(this.labelKey).C(this.labels.get(iIndexOf));
            }
            int iJ = jsonWriter.j();
            jsonAdapter.toJson(jsonWriter, obj);
            jsonWriter.f43381j = iJ;
            jsonWriter.o();
        }

        public String toString() {
            return n00.r(this.labelKey, ")", new StringBuilder("PolymorphicJsonAdapter("));
        }
    }
}
