package com.squareup.moshi.adapters;

import com.squareup.moshi.Json;
import com.squareup.moshi.JsonAdapter;
import com.squareup.moshi.JsonDataException;
import com.squareup.moshi.JsonReader;
import com.squareup.moshi.JsonWriter;
import defpackage.d20;
import defpackage.n00;
import defpackage.o60;
import defpackage.r81;
import java.io.IOException;
import java.lang.Enum;
import java.util.Arrays;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes3.dex */
public final class EnumJsonAdapter<T extends Enum<T>> extends JsonAdapter<T> {
    final T[] constants;
    final Class<T> enumType;

    @Nullable
    final T fallbackValue;
    final String[] nameStrings;
    final JsonReader.Options options;
    final boolean useFallbackValue;

    public EnumJsonAdapter(Class<T> cls, @Nullable T t, boolean z) {
        this.enumType = cls;
        this.fallbackValue = t;
        this.useFallbackValue = z;
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
                String strName = tArr[i2].name();
                Json json = (Json) cls.getField(strName).getAnnotation(Json.class);
                if (json != null) {
                    strName = json.name();
                }
                this.nameStrings[i2] = strName;
                i2++;
            }
        } catch (NoSuchFieldException e2) {
            throw new AssertionError("Missing field in ".concat(cls.getName()), e2);
        }
    }

    public static <T extends Enum<T>> EnumJsonAdapter<T> create(Class<T> cls) {
        return new EnumJsonAdapter<>(cls, null, false);
    }

    @Override // com.squareup.moshi.JsonAdapter
    @Nullable
    public T fromJson(JsonReader jsonReader) throws IOException {
        int iH = jsonReader.H(this.options);
        if (iH != -1) {
            return this.constants[iH];
        }
        String strN = jsonReader.n();
        if (this.useFallbackValue) {
            if (jsonReader.z() == JsonReader.Token.STRING) {
                jsonReader.j0();
                return this.fallbackValue;
            }
            d20.i("Expected a string but was ", jsonReader.z(), " at path ", strN);
            return null;
        }
        String strW = jsonReader.w();
        StringBuilder sb = new StringBuilder("Expected one of ");
        o60.B(" but was ", strW, " at path ", sb, Arrays.asList(this.nameStrings));
        sb.append(strN);
        throw new JsonDataException(sb.toString());
    }

    @Override // com.squareup.moshi.JsonAdapter
    public void toJson(JsonWriter jsonWriter, T t) throws IOException {
        if (t != null) {
            jsonWriter.C(this.nameStrings[t.ordinal()]);
        } else {
            r81.d("value was null! Wrap in .nullSafe() to write nullable values.");
        }
    }

    public String toString() {
        return n00.p(this.enumType, new StringBuilder("EnumJsonAdapter("), ")");
    }

    public EnumJsonAdapter<T> withUnknownFallback(@Nullable T t) {
        return new EnumJsonAdapter<>(this.enumType, t, true);
    }
}
