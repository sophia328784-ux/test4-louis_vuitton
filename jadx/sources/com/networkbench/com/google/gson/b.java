package com.networkbench.com.google.gson;

import com.networkbench.com.google.gson.internal.C$Gson$Preconditions;
import com.networkbench.com.google.gson.internal.Streams;
import com.networkbench.com.google.gson.reflect.TypeToken;
import com.networkbench.com.google.gson.stream.JsonReader;
import com.networkbench.com.google.gson.stream.JsonWriter;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
final class b<T> extends TypeAdapter<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final JsonSerializer<T> f38543a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final JsonDeserializer<T> f38544b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Gson f38545c;
    private final TypeToken<T> d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final TypeAdapterFactory f38546e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private TypeAdapter<T> f38547f;

    public static class a implements TypeAdapterFactory {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final TypeToken<?> f38548a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final boolean f38549b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final Class<?> f38550c;
        private final JsonSerializer<?> d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private final JsonDeserializer<?> f38551e;

        private a(Object obj, TypeToken<?> typeToken, boolean z, Class<?> cls) {
            JsonSerializer<?> jsonSerializer = obj instanceof JsonSerializer ? (JsonSerializer) obj : null;
            this.d = jsonSerializer;
            JsonDeserializer<?> jsonDeserializer = obj instanceof JsonDeserializer ? (JsonDeserializer) obj : null;
            this.f38551e = jsonDeserializer;
            C$Gson$Preconditions.checkArgument((jsonSerializer == null && jsonDeserializer == null) ? false : true);
            this.f38548a = typeToken;
            this.f38549b = z;
            this.f38550c = cls;
        }

        @Override // com.networkbench.com.google.gson.TypeAdapterFactory
        public <T> TypeAdapter<T> create(Gson gson, TypeToken<T> typeToken) {
            boolean zIsAssignableFrom;
            TypeToken<?> typeToken2 = this.f38548a;
            if (typeToken2 != null) {
                zIsAssignableFrom = typeToken2.equals(typeToken) || (this.f38549b && this.f38548a.getType() == typeToken.getRawType());
            } else {
                zIsAssignableFrom = this.f38550c.isAssignableFrom(typeToken.getRawType());
            }
            if (zIsAssignableFrom) {
                return new b(this.d, this.f38551e, gson, typeToken, this);
            }
            return null;
        }
    }

    private b(JsonSerializer<T> jsonSerializer, JsonDeserializer<T> jsonDeserializer, Gson gson, TypeToken<T> typeToken, TypeAdapterFactory typeAdapterFactory) {
        this.f38543a = jsonSerializer;
        this.f38544b = jsonDeserializer;
        this.f38545c = gson;
        this.d = typeToken;
        this.f38546e = typeAdapterFactory;
    }

    private TypeAdapter<T> a() {
        TypeAdapter<T> typeAdapter = this.f38547f;
        if (typeAdapter != null) {
            return typeAdapter;
        }
        TypeAdapter<T> delegateAdapter = this.f38545c.getDelegateAdapter(this.f38546e, this.d);
        this.f38547f = delegateAdapter;
        return delegateAdapter;
    }

    public static TypeAdapterFactory b(TypeToken<?> typeToken, Object obj) {
        return new a(obj, typeToken, typeToken.getType() == typeToken.getRawType(), null);
    }

    @Override // com.networkbench.com.google.gson.TypeAdapter
    public T read(JsonReader jsonReader) throws IOException {
        if (this.f38544b == null) {
            return a().read(jsonReader);
        }
        JsonElement jsonElement = Streams.parse(jsonReader);
        if (jsonElement.isJsonNull()) {
            return null;
        }
        return this.f38544b.deserialize(jsonElement, this.d.getType(), this.f38545c.f38530b);
    }

    @Override // com.networkbench.com.google.gson.TypeAdapter
    public void write(JsonWriter jsonWriter, T t) throws IOException {
        JsonSerializer<T> jsonSerializer = this.f38543a;
        if (jsonSerializer == null) {
            a().write(jsonWriter, t);
        } else if (t == null) {
            jsonWriter.nullValue();
        } else {
            Streams.write(jsonSerializer.serialize(t, this.d.getType(), this.f38545c.f38531c), jsonWriter);
        }
    }

    public static TypeAdapterFactory a(TypeToken<?> typeToken, Object obj) {
        return new a(obj, typeToken, false, null);
    }

    public static TypeAdapterFactory a(Class<?> cls, Object obj) {
        return new a(obj, null, false, cls);
    }
}
