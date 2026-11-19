package com.networkbench.com.google.gson.internal.a;

import com.networkbench.com.google.gson.Gson;
import com.networkbench.com.google.gson.TypeAdapter;
import com.networkbench.com.google.gson.TypeAdapterFactory;
import com.networkbench.com.google.gson.internal.C$Gson$Types;
import com.networkbench.com.google.gson.reflect.TypeToken;
import com.networkbench.com.google.gson.stream.JsonReader;
import com.networkbench.com.google.gson.stream.JsonToken;
import com.networkbench.com.google.gson.stream.JsonWriter;
import java.io.IOException;
import java.lang.reflect.Array;
import java.lang.reflect.GenericArrayType;
import java.lang.reflect.Type;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes2.dex */
public final class b<E> extends TypeAdapter<Object> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final TypeAdapterFactory f38636a = new TypeAdapterFactory() { // from class: com.networkbench.com.google.gson.internal.a.b.1
        @Override // com.networkbench.com.google.gson.TypeAdapterFactory
        public <T> TypeAdapter<T> create(Gson gson, TypeToken<T> typeToken) {
            Type type = typeToken.getType();
            if (!(type instanceof GenericArrayType) && (!(type instanceof Class) || !((Class) type).isArray())) {
                return null;
            }
            Type arrayComponentType = C$Gson$Types.getArrayComponentType(type);
            return new b(gson, gson.getAdapter(TypeToken.get(arrayComponentType)), C$Gson$Types.getRawType(arrayComponentType));
        }
    };

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Class<E> f38637b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final TypeAdapter<E> f38638c;

    public b(Gson gson, TypeAdapter<E> typeAdapter, Class<E> cls) {
        this.f38638c = new l(gson, typeAdapter, cls);
        this.f38637b = cls;
    }

    @Override // com.networkbench.com.google.gson.TypeAdapter
    public Object read(JsonReader jsonReader) throws IOException {
        if (jsonReader.peek() == JsonToken.NULL) {
            jsonReader.nextNull();
            return null;
        }
        ArrayList arrayList = new ArrayList();
        jsonReader.beginArray();
        while (jsonReader.hasNext()) {
            arrayList.add(this.f38638c.read(jsonReader));
        }
        jsonReader.endArray();
        Object objNewInstance = Array.newInstance((Class<?>) this.f38637b, arrayList.size());
        for (int i2 = 0; i2 < arrayList.size(); i2++) {
            Array.set(objNewInstance, i2, arrayList.get(i2));
        }
        return objNewInstance;
    }

    @Override // com.networkbench.com.google.gson.TypeAdapter
    public void write(JsonWriter jsonWriter, Object obj) throws IOException {
        if (obj == null) {
            jsonWriter.nullValue();
            return;
        }
        jsonWriter.beginArray();
        int length = Array.getLength(obj);
        for (int i2 = 0; i2 < length; i2++) {
            this.f38638c.write(jsonWriter, (E) Array.get(obj, i2));
        }
        jsonWriter.endArray();
    }
}
