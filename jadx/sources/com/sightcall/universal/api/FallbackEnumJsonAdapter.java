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
final class FallbackEnumJsonAdapter<T extends Enum<T>> extends JsonAdapter<T> {
    private final T[] constants;
    private final Class<T> enumType;
    private final T fallbackConstant;
    private final String[] nameStrings;
    private final JsonReader.Options options;

    public FallbackEnumJsonAdapter(Class<T> cls, String str) {
        this.fallbackConstant = (T) Enum.valueOf(cls, str);
        this.enumType = cls;
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
                T t = tArr[i2];
                Json json = (Json) cls.getField(t.name()).getAnnotation(Json.class);
                this.nameStrings[i2] = json != null ? json.name() : t.name();
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
        jsonReader.w();
        return this.fallbackConstant;
    }

    @Override // com.squareup.moshi.JsonAdapter
    public void toJson(JsonWriter jsonWriter, T t) throws IOException {
        jsonWriter.C(this.nameStrings[t.ordinal()]);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("JsonAdapter(");
        o60.z(this.enumType, sb, ").fallbackEnum(");
        sb.append(this.fallbackConstant);
        sb.append(")");
        return sb.toString();
    }
}
