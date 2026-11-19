package com.sightcall.universal.api;

import com.squareup.moshi.Json;
import com.squareup.moshi.JsonAdapter;
import com.squareup.moshi.JsonReader;
import com.squareup.moshi.JsonWriter;
import defpackage.md;
import defpackage.o60;
import java.io.IOException;
import java.lang.Enum;

/* JADX INFO: loaded from: classes3.dex */
public final class FallbackEnumFieldJsonAdapter<T extends Enum<T>> extends JsonAdapter<T> {
    final T[] constants;
    final T defaultValue;
    final Class<T> enumType;
    final String[] nameStrings;
    final JsonReader.Options options;

    public FallbackEnumFieldJsonAdapter(Class<T> cls, T t) {
        this.enumType = cls;
        this.defaultValue = t;
        try {
            T[] enumConstants = cls.getEnumConstants();
            this.constants = enumConstants;
            this.nameStrings = new String[enumConstants.length];
            int i2 = 0;
            while (true) {
                T[] tArr = this.constants;
                if (i2 >= tArr.length) {
                    this.options = JsonReader.Options.a(this.nameStrings);
                    return;
                }
                T t2 = tArr[i2];
                Json json = (Json) cls.getField(t2.name()).getAnnotation(Json.class);
                this.nameStrings[i2] = json != null ? json.name() : t2.name();
                i2++;
            }
        } catch (NoSuchFieldException e2) {
            md.h(e2);
            throw null;
        }
    }

    @Override // com.squareup.moshi.JsonAdapter
    public T fromJson(JsonReader jsonReader) throws IOException {
        int iH = jsonReader.H(this.options);
        if (iH != -1) {
            return this.constants[iH];
        }
        jsonReader.j0();
        return this.defaultValue;
    }

    @Override // com.squareup.moshi.JsonAdapter
    public void toJson(JsonWriter jsonWriter, T t) throws IOException {
        jsonWriter.C(t == null ? null : this.nameStrings[t.ordinal()]);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("JsonAdapter(");
        o60.z(this.enumType, sb, ").defaultValue( ");
        sb.append(this.defaultValue);
        sb.append(")");
        return sb.toString();
    }
}
