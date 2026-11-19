package com.networkbench.com.google.gson.internal.a;

import com.networkbench.com.google.gson.Gson;
import com.networkbench.com.google.gson.TypeAdapter;
import com.networkbench.com.google.gson.reflect.TypeToken;
import com.networkbench.com.google.gson.stream.JsonReader;
import com.networkbench.com.google.gson.stream.JsonWriter;
import java.io.IOException;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;

/* JADX INFO: loaded from: classes2.dex */
final class l<T> extends TypeAdapter<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Gson f38676a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final TypeAdapter<T> f38677b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Type f38678c;

    public l(Gson gson, TypeAdapter<T> typeAdapter, Type type) {
        this.f38676a = gson;
        this.f38677b = typeAdapter;
        this.f38678c = type;
    }

    private Type a(Type type, Object obj) {
        return (obj == null || !(type == Object.class || (type instanceof TypeVariable) || (type instanceof Class))) ? type : obj.getClass();
    }

    @Override // com.networkbench.com.google.gson.TypeAdapter
    public T read(JsonReader jsonReader) throws IOException {
        return this.f38677b.read(jsonReader);
    }

    @Override // com.networkbench.com.google.gson.TypeAdapter
    public void write(JsonWriter jsonWriter, T t) throws IOException {
        TypeAdapter<T> adapter = this.f38677b;
        Type typeA = a(this.f38678c, t);
        if (typeA != this.f38678c) {
            adapter = this.f38676a.getAdapter(TypeToken.get(typeA));
            if (adapter instanceof i.a) {
                TypeAdapter<T> typeAdapter = this.f38677b;
                if (!(typeAdapter instanceof i.a)) {
                    adapter = typeAdapter;
                }
            }
        }
        adapter.write(jsonWriter, t);
    }
}
