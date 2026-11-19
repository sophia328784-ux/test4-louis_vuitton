package com.squareup.moshi;

import com.squareup.moshi.internal.Util;
import defpackage.d20;
import defpackage.d21;
import defpackage.fc;
import defpackage.n00;
import defpackage.o60;
import java.io.IOException;
import java.lang.reflect.Field;
import java.lang.reflect.Type;
import java.util.Arrays;
import java.util.Collection;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes3.dex */
abstract class StandardJsonAdapters {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final JsonAdapter.Factory f43414a = new AnonymousClass1();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final JsonAdapter f43415b = new JsonAdapter<Boolean>() { // from class: com.squareup.moshi.StandardJsonAdapters.2
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.squareup.moshi.JsonAdapter
        public Boolean fromJson(JsonReader jsonReader) throws IOException {
            return Boolean.valueOf(jsonReader.p());
        }

        @Override // com.squareup.moshi.JsonAdapter
        public void toJson(JsonWriter jsonWriter, Boolean bool) throws IOException {
            jsonWriter.E(bool.booleanValue());
        }

        public String toString() {
            return "JsonAdapter(Boolean)";
        }
    };

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final JsonAdapter f43416c = new JsonAdapter<Byte>() { // from class: com.squareup.moshi.StandardJsonAdapters.3
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.squareup.moshi.JsonAdapter
        public Byte fromJson(JsonReader jsonReader) throws IOException {
            return Byte.valueOf((byte) StandardJsonAdapters.a(jsonReader, "a byte", -128, 255));
        }

        @Override // com.squareup.moshi.JsonAdapter
        public void toJson(JsonWriter jsonWriter, Byte b2) throws IOException {
            jsonWriter.z(b2.intValue() & 255);
        }

        public String toString() {
            return "JsonAdapter(Byte)";
        }
    };
    public static final JsonAdapter d = new JsonAdapter<Character>() { // from class: com.squareup.moshi.StandardJsonAdapters.4
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.squareup.moshi.JsonAdapter
        public Character fromJson(JsonReader jsonReader) throws IOException {
            String strW = jsonReader.w();
            if (strW.length() <= 1) {
                return Character.valueOf(strW.charAt(0));
            }
            throw new JsonDataException(fc.i("Expected a char but was ", d21.d('\"', "\"", strW), " at path ", jsonReader.n()));
        }

        @Override // com.squareup.moshi.JsonAdapter
        public void toJson(JsonWriter jsonWriter, Character ch) throws IOException {
            jsonWriter.C(ch.toString());
        }

        public String toString() {
            return "JsonAdapter(Character)";
        }
    };

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final JsonAdapter f43417e = new JsonAdapter<Double>() { // from class: com.squareup.moshi.StandardJsonAdapters.5
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.squareup.moshi.JsonAdapter
        public Double fromJson(JsonReader jsonReader) throws IOException {
            return Double.valueOf(jsonReader.q());
        }

        @Override // com.squareup.moshi.JsonAdapter
        public void toJson(JsonWriter jsonWriter, Double d2) throws IOException {
            jsonWriter.y(d2.doubleValue());
        }

        public String toString() {
            return "JsonAdapter(Double)";
        }
    };

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final JsonAdapter f43418f = new JsonAdapter<Float>() { // from class: com.squareup.moshi.StandardJsonAdapters.6
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.squareup.moshi.JsonAdapter
        public Float fromJson(JsonReader jsonReader) throws IOException {
            float fQ = (float) jsonReader.q();
            if (jsonReader.f43361f || !Float.isInfinite(fQ)) {
                return Float.valueOf(fQ);
            }
            throw new JsonDataException("JSON forbids NaN and infinities: " + fQ + " at path " + jsonReader.n());
        }

        @Override // com.squareup.moshi.JsonAdapter
        public void toJson(JsonWriter jsonWriter, Float f2) throws IOException {
            f2.getClass();
            jsonWriter.B(f2);
        }

        public String toString() {
            return "JsonAdapter(Float)";
        }
    };
    public static final JsonAdapter g = new JsonAdapter<Integer>() { // from class: com.squareup.moshi.StandardJsonAdapters.7
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.squareup.moshi.JsonAdapter
        public Integer fromJson(JsonReader jsonReader) throws IOException {
            return Integer.valueOf(jsonReader.r());
        }

        @Override // com.squareup.moshi.JsonAdapter
        public void toJson(JsonWriter jsonWriter, Integer num) throws IOException {
            jsonWriter.z(num.intValue());
        }

        public String toString() {
            return "JsonAdapter(Integer)";
        }
    };

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final JsonAdapter f43419h = new JsonAdapter<Long>() { // from class: com.squareup.moshi.StandardJsonAdapters.8
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.squareup.moshi.JsonAdapter
        public Long fromJson(JsonReader jsonReader) throws IOException {
            return Long.valueOf(jsonReader.s());
        }

        @Override // com.squareup.moshi.JsonAdapter
        public void toJson(JsonWriter jsonWriter, Long l) throws IOException {
            jsonWriter.z(l.longValue());
        }

        public String toString() {
            return "JsonAdapter(Long)";
        }
    };

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final JsonAdapter f43420i = new JsonAdapter<Short>() { // from class: com.squareup.moshi.StandardJsonAdapters.9
        @Override // com.squareup.moshi.JsonAdapter
        public Short fromJson(JsonReader jsonReader) throws IOException {
            return Short.valueOf((short) StandardJsonAdapters.a(jsonReader, "a short", -32768, 32767));
        }

        @Override // com.squareup.moshi.JsonAdapter
        public void toJson(JsonWriter jsonWriter, Short sh) throws IOException {
            jsonWriter.z(sh.intValue());
        }

        public String toString() {
            return "JsonAdapter(Short)";
        }
    };

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final JsonAdapter f43421j = new JsonAdapter<String>() { // from class: com.squareup.moshi.StandardJsonAdapters.10
        public String toString() {
            return "JsonAdapter(String)";
        }

        @Override // com.squareup.moshi.JsonAdapter
        public String fromJson(JsonReader jsonReader) throws IOException {
            return jsonReader.w();
        }

        @Override // com.squareup.moshi.JsonAdapter
        public void toJson(JsonWriter jsonWriter, String str) throws IOException {
            jsonWriter.C(str);
        }
    };

    /* JADX INFO: renamed from: com.squareup.moshi.StandardJsonAdapters$1, reason: invalid class name */
    public class AnonymousClass1 implements JsonAdapter.Factory {
        @Override // com.squareup.moshi.JsonAdapter.Factory
        public final JsonAdapter create(Type type, Set set, Moshi moshi) {
            if (!set.isEmpty()) {
                return null;
            }
            if (type == Boolean.TYPE) {
                return StandardJsonAdapters.f43415b;
            }
            if (type == Byte.TYPE) {
                return StandardJsonAdapters.f43416c;
            }
            if (type == Character.TYPE) {
                return StandardJsonAdapters.d;
            }
            if (type == Double.TYPE) {
                return StandardJsonAdapters.f43417e;
            }
            if (type == Float.TYPE) {
                return StandardJsonAdapters.f43418f;
            }
            if (type == Integer.TYPE) {
                return StandardJsonAdapters.g;
            }
            if (type == Long.TYPE) {
                return StandardJsonAdapters.f43419h;
            }
            if (type == Short.TYPE) {
                return StandardJsonAdapters.f43420i;
            }
            if (type == Boolean.class) {
                return StandardJsonAdapters.f43415b.nullSafe();
            }
            if (type == Byte.class) {
                return StandardJsonAdapters.f43416c.nullSafe();
            }
            if (type == Character.class) {
                return StandardJsonAdapters.d.nullSafe();
            }
            if (type == Double.class) {
                return StandardJsonAdapters.f43417e.nullSafe();
            }
            if (type == Float.class) {
                return StandardJsonAdapters.f43418f.nullSafe();
            }
            if (type == Integer.class) {
                return StandardJsonAdapters.g.nullSafe();
            }
            if (type == Long.class) {
                return StandardJsonAdapters.f43419h.nullSafe();
            }
            if (type == Short.class) {
                return StandardJsonAdapters.f43420i.nullSafe();
            }
            if (type == String.class) {
                return StandardJsonAdapters.f43421j.nullSafe();
            }
            if (type == Object.class) {
                return new ObjectJsonAdapter(moshi).nullSafe();
            }
            Class clsC = Types.c(type);
            JsonAdapter jsonAdapterC = Util.c(moshi, type, clsC);
            if (jsonAdapterC != null) {
                return jsonAdapterC;
            }
            if (clsC.isEnum()) {
                return new EnumJsonAdapter(clsC).nullSafe();
            }
            return null;
        }
    }

    /* JADX INFO: renamed from: com.squareup.moshi.StandardJsonAdapters$11, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass11 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f43422a;

        static {
            int[] iArr = new int[JsonReader.Token.values().length];
            f43422a = iArr;
            try {
                iArr[JsonReader.Token.BEGIN_ARRAY.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f43422a[JsonReader.Token.BEGIN_OBJECT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f43422a[JsonReader.Token.STRING.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f43422a[JsonReader.Token.NUMBER.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f43422a[JsonReader.Token.BOOLEAN.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f43422a[JsonReader.Token.NULL.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
        }
    }

    public static final class EnumJsonAdapter<T extends Enum<T>> extends JsonAdapter<T> {
        private final T[] constants;
        private final Class<T> enumType;
        private final String[] nameStrings;
        private final JsonReader.Options options;

        public EnumJsonAdapter(Class<T> cls) {
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
                    String strName = tArr[i2].name();
                    String[] strArr = this.nameStrings;
                    Field field = cls.getField(strName);
                    Set set = Util.f43424a;
                    Json json = (Json) field.getAnnotation(Json.class);
                    if (json != null) {
                        String strName2 = json.name();
                        if (!"\u0000".equals(strName2)) {
                            strName = strName2;
                        }
                    }
                    strArr[i2] = strName;
                    i2++;
                }
            } catch (NoSuchFieldException e2) {
                throw new AssertionError("Missing field in ".concat(cls.getName()), e2);
            }
        }

        @Override // com.squareup.moshi.JsonAdapter
        public T fromJson(JsonReader jsonReader) throws IOException {
            int iH = jsonReader.H(this.options);
            if (iH != -1) {
                return this.constants[iH];
            }
            String strN = jsonReader.n();
            String strW = jsonReader.w();
            StringBuilder sb = new StringBuilder("Expected one of ");
            o60.B(" but was ", strW, " at path ", sb, Arrays.asList(this.nameStrings));
            sb.append(strN);
            throw new JsonDataException(sb.toString());
        }

        @Override // com.squareup.moshi.JsonAdapter
        public void toJson(JsonWriter jsonWriter, T t) throws IOException {
            jsonWriter.C(this.nameStrings[t.ordinal()]);
        }

        public String toString() {
            return n00.p(this.enumType, new StringBuilder("JsonAdapter("), ")");
        }
    }

    public static final class ObjectJsonAdapter extends JsonAdapter<Object> {
        private final JsonAdapter<Boolean> booleanAdapter;
        private final JsonAdapter<Double> doubleAdapter;
        private final JsonAdapter<List> listJsonAdapter;
        private final JsonAdapter<Map> mapAdapter;
        private final Moshi moshi;
        private final JsonAdapter<String> stringAdapter;

        public ObjectJsonAdapter(Moshi moshi) {
            this.moshi = moshi;
            this.listJsonAdapter = moshi.a(List.class);
            this.mapAdapter = moshi.a(Map.class);
            this.stringAdapter = moshi.a(String.class);
            this.doubleAdapter = moshi.a(Double.class);
            this.booleanAdapter = moshi.a(Boolean.class);
        }

        private Class<?> toJsonType(Class<?> cls) {
            if (Map.class.isAssignableFrom(cls)) {
                return Map.class;
            }
            return Collection.class.isAssignableFrom(cls) ? Collection.class : cls;
        }

        @Override // com.squareup.moshi.JsonAdapter
        public Object fromJson(JsonReader jsonReader) throws IOException {
            switch (AnonymousClass11.f43422a[jsonReader.z().ordinal()]) {
                case 1:
                    return this.listJsonAdapter.fromJson(jsonReader);
                case 2:
                    return this.mapAdapter.fromJson(jsonReader);
                case 3:
                    return this.stringAdapter.fromJson(jsonReader);
                case 4:
                    return this.doubleAdapter.fromJson(jsonReader);
                case 5:
                    return this.booleanAdapter.fromJson(jsonReader);
                case 6:
                    jsonReader.u();
                    return null;
                default:
                    StringBuilder sb = new StringBuilder("Expected a value but was ");
                    sb.append(jsonReader.z());
                    d20.k(sb, " at path ", jsonReader.n());
                    return null;
            }
        }

        @Override // com.squareup.moshi.JsonAdapter
        public void toJson(JsonWriter jsonWriter, Object obj) throws IOException {
            Class<?> cls = obj.getClass();
            if (cls != Object.class) {
                this.moshi.c(toJsonType(cls), Util.f43424a, null).toJson(jsonWriter, obj);
            } else {
                jsonWriter.k();
                jsonWriter.o();
            }
        }

        public String toString() {
            return "JsonAdapter(Object)";
        }
    }

    public static int a(JsonReader jsonReader, String str, int i2, int i3) {
        int iR = jsonReader.r();
        if (iR >= i2 && iR <= i3) {
            return iR;
        }
        String strN = jsonReader.n();
        StringBuilder sbR = fc.r(iR, "Expected ", str, " but was ", " at path ");
        sbR.append(strN);
        throw new JsonDataException(sbR.toString());
    }
}
