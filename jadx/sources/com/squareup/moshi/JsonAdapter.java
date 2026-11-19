package com.squareup.moshi;

import com.squareup.moshi.internal.NonNullJsonAdapter;
import com.squareup.moshi.internal.NullSafeJsonAdapter;
import defpackage.md;
import defpackage.n00;
import defpackage.r81;
import java.io.IOException;
import java.lang.reflect.Type;
import java.util.Set;
import javax.annotation.CheckReturnValue;
import javax.annotation.Nullable;
import okio.Buffer;
import okio.BufferedSink;
import okio.BufferedSource;

/* JADX INFO: loaded from: classes3.dex */
public abstract class JsonAdapter<T> {

    public interface Factory {
        JsonAdapter create(Type type, Set set, Moshi moshi);
    }

    @CheckReturnValue
    public final JsonAdapter<T> failOnUnknown() {
        return new JsonAdapter<T>() { // from class: com.squareup.moshi.JsonAdapter.3
            @Override // com.squareup.moshi.JsonAdapter
            @Nullable
            public T fromJson(JsonReader jsonReader) throws IOException {
                boolean z = jsonReader.g;
                jsonReader.g = true;
                try {
                    return (T) this.fromJson(jsonReader);
                } finally {
                    jsonReader.g = z;
                }
            }

            @Override // com.squareup.moshi.JsonAdapter
            public boolean isLenient() {
                return this.isLenient();
            }

            @Override // com.squareup.moshi.JsonAdapter
            public void toJson(JsonWriter jsonWriter, @Nullable T t) throws IOException {
                this.toJson(jsonWriter, t);
            }

            public String toString() {
                return this + ".failOnUnknown()";
            }
        };
    }

    @CheckReturnValue
    @Nullable
    public abstract T fromJson(JsonReader jsonReader) throws IOException;

    @CheckReturnValue
    @Nullable
    public final T fromJson(String str) throws IOException {
        Buffer buffer = new Buffer();
        buffer.M0(str);
        JsonUtf8Reader jsonUtf8Reader = new JsonUtf8Reader(buffer);
        T tFromJson = fromJson(jsonUtf8Reader);
        if (isLenient() || jsonUtf8Reader.z() == JsonReader.Token.END_DOCUMENT) {
            return tFromJson;
        }
        throw new JsonDataException("JSON document was not fully consumed.");
    }

    @CheckReturnValue
    @Nullable
    public final T fromJsonValue(@Nullable Object obj) {
        JsonValueReader jsonValueReader = new JsonValueReader();
        int[] iArr = jsonValueReader.f43359c;
        int i2 = jsonValueReader.f43358b;
        iArr[i2] = 7;
        Object[] objArr = new Object[32];
        jsonValueReader.f43371h = objArr;
        jsonValueReader.f43358b = i2 + 1;
        objArr[i2] = obj;
        try {
            return fromJson(jsonValueReader);
        } catch (IOException e2) {
            md.h(e2);
            return null;
        }
    }

    @CheckReturnValue
    public JsonAdapter<T> indent(final String str) {
        if (str != null) {
            return new JsonAdapter<T>() { // from class: com.squareup.moshi.JsonAdapter.4
                @Override // com.squareup.moshi.JsonAdapter
                @Nullable
                public T fromJson(JsonReader jsonReader) throws IOException {
                    return (T) this.fromJson(jsonReader);
                }

                @Override // com.squareup.moshi.JsonAdapter
                public boolean isLenient() {
                    return this.isLenient();
                }

                @Override // com.squareup.moshi.JsonAdapter
                public void toJson(JsonWriter jsonWriter, @Nullable T t) throws IOException {
                    String str2 = jsonWriter.f43378f;
                    if (str2 == null) {
                        str2 = "";
                    }
                    jsonWriter.w(str);
                    try {
                        this.toJson(jsonWriter, t);
                    } finally {
                        jsonWriter.w(str2);
                    }
                }

                public String toString() {
                    StringBuilder sb = new StringBuilder();
                    sb.append(this);
                    sb.append(".indent(\"");
                    return n00.r(str, "\")", sb);
                }
            };
        }
        r81.d("indent == null");
        return null;
    }

    public boolean isLenient() {
        return false;
    }

    @CheckReturnValue
    public final JsonAdapter<T> lenient() {
        return new JsonAdapter<T>() { // from class: com.squareup.moshi.JsonAdapter.2
            @Override // com.squareup.moshi.JsonAdapter
            @Nullable
            public T fromJson(JsonReader jsonReader) throws IOException {
                boolean z = jsonReader.f43361f;
                jsonReader.f43361f = true;
                try {
                    return (T) this.fromJson(jsonReader);
                } finally {
                    jsonReader.f43361f = z;
                }
            }

            @Override // com.squareup.moshi.JsonAdapter
            public boolean isLenient() {
                return true;
            }

            @Override // com.squareup.moshi.JsonAdapter
            public void toJson(JsonWriter jsonWriter, @Nullable T t) throws IOException {
                boolean z = jsonWriter.g;
                jsonWriter.g = true;
                try {
                    this.toJson(jsonWriter, t);
                } finally {
                    jsonWriter.g = z;
                }
            }

            public String toString() {
                return this + ".lenient()";
            }
        };
    }

    @CheckReturnValue
    public final JsonAdapter<T> nonNull() {
        return this instanceof NonNullJsonAdapter ? this : new NonNullJsonAdapter(this);
    }

    @CheckReturnValue
    public final JsonAdapter<T> nullSafe() {
        return this instanceof NullSafeJsonAdapter ? this : new NullSafeJsonAdapter(this);
    }

    @CheckReturnValue
    public final JsonAdapter<T> serializeNulls() {
        return new JsonAdapter<T>() { // from class: com.squareup.moshi.JsonAdapter.1
            @Override // com.squareup.moshi.JsonAdapter
            @Nullable
            public T fromJson(JsonReader jsonReader) throws IOException {
                return (T) this.fromJson(jsonReader);
            }

            @Override // com.squareup.moshi.JsonAdapter
            public boolean isLenient() {
                return this.isLenient();
            }

            @Override // com.squareup.moshi.JsonAdapter
            public void toJson(JsonWriter jsonWriter, @Nullable T t) throws IOException {
                boolean z = jsonWriter.f43379h;
                jsonWriter.f43379h = true;
                try {
                    this.toJson(jsonWriter, t);
                } finally {
                    jsonWriter.f43379h = z;
                }
            }

            public String toString() {
                return this + ".serializeNulls()";
            }
        };
    }

    @CheckReturnValue
    public final String toJson(@Nullable T t) {
        Buffer buffer = new Buffer();
        try {
            toJson(buffer, t);
            return buffer.H();
        } catch (IOException e2) {
            md.h(e2);
            return null;
        }
    }

    public abstract void toJson(JsonWriter jsonWriter, @Nullable T t) throws IOException;

    @CheckReturnValue
    @Nullable
    public final Object toJsonValue(@Nullable T t) {
        JsonValueWriter jsonValueWriter = new JsonValueWriter();
        jsonValueWriter.f43374k = new Object[32];
        jsonValueWriter.u(6);
        try {
            toJson(jsonValueWriter, t);
            int i2 = jsonValueWriter.f43375b;
            if (i2 > 1 || (i2 == 1 && jsonValueWriter.f43376c[i2 - 1] != 7)) {
                throw new IllegalStateException("Incomplete document");
            }
            return jsonValueWriter.f43374k[0];
        } catch (IOException e2) {
            md.h(e2);
            return null;
        }
    }

    public final void toJson(BufferedSink bufferedSink, @Nullable T t) throws IOException {
        toJson(new JsonUtf8Writer(bufferedSink), t);
    }

    @CheckReturnValue
    @Nullable
    public final T fromJson(BufferedSource bufferedSource) throws IOException {
        return fromJson(new JsonUtf8Reader(bufferedSource));
    }
}
