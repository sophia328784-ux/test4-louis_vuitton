package com.networkbench.com.google.gson.internal.a;

import com.networkbench.com.google.gson.JsonArray;
import com.networkbench.com.google.gson.JsonElement;
import com.networkbench.com.google.gson.JsonNull;
import com.networkbench.com.google.gson.JsonObject;
import com.networkbench.com.google.gson.JsonPrimitive;
import com.networkbench.com.google.gson.stream.JsonReader;
import com.networkbench.com.google.gson.stream.JsonToken;
import defpackage.a61;
import defpackage.d20;
import defpackage.fc;
import defpackage.md;
import defpackage.mt;
import java.io.IOException;
import java.io.Reader;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public final class e extends JsonReader {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final Reader f38645a = new Reader() { // from class: com.networkbench.com.google.gson.internal.a.e.1
        @Override // java.io.Reader, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            throw new AssertionError();
        }

        @Override // java.io.Reader
        public int read(char[] cArr, int i2, int i3) throws IOException {
            throw new AssertionError();
        }
    };

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final Object f38646b = new Object();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final List<Object> f38647c;

    public e(JsonElement jsonElement) {
        super(f38645a);
        ArrayList arrayList = new ArrayList();
        this.f38647c = arrayList;
        arrayList.add(jsonElement);
    }

    private Object b() {
        return fc.e(1, this.f38647c);
    }

    private Object c() {
        List<Object> list = this.f38647c;
        return list.remove(list.size() - 1);
    }

    public void a() throws IOException {
        a(JsonToken.NAME);
        Map.Entry entry = (Map.Entry) ((Iterator) b()).next();
        this.f38647c.add(entry.getValue());
        this.f38647c.add(new JsonPrimitive((String) entry.getKey()));
    }

    @Override // com.networkbench.com.google.gson.stream.JsonReader
    public void beginArray() throws IOException {
        a(JsonToken.BEGIN_ARRAY);
        this.f38647c.add(((JsonArray) b()).iterator());
    }

    @Override // com.networkbench.com.google.gson.stream.JsonReader
    public void beginObject() throws IOException {
        a(JsonToken.BEGIN_OBJECT);
        this.f38647c.add(((JsonObject) b()).entrySet().iterator());
    }

    @Override // com.networkbench.com.google.gson.stream.JsonReader, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f38647c.clear();
        this.f38647c.add(f38646b);
    }

    @Override // com.networkbench.com.google.gson.stream.JsonReader
    public void endArray() throws IOException {
        a(JsonToken.END_ARRAY);
        c();
        c();
    }

    @Override // com.networkbench.com.google.gson.stream.JsonReader
    public void endObject() throws IOException {
        a(JsonToken.END_OBJECT);
        c();
        c();
    }

    @Override // com.networkbench.com.google.gson.stream.JsonReader
    public boolean hasNext() throws IOException {
        JsonToken jsonTokenPeek = peek();
        return (jsonTokenPeek == JsonToken.END_OBJECT || jsonTokenPeek == JsonToken.END_ARRAY) ? false : true;
    }

    @Override // com.networkbench.com.google.gson.stream.JsonReader
    public boolean nextBoolean() throws IOException {
        a(JsonToken.BOOLEAN);
        return ((JsonPrimitive) c()).getAsBoolean();
    }

    @Override // com.networkbench.com.google.gson.stream.JsonReader
    public double nextDouble() throws IOException {
        JsonToken jsonTokenPeek = peek();
        JsonToken jsonToken = JsonToken.NUMBER;
        if (jsonTokenPeek != jsonToken && jsonTokenPeek != JsonToken.STRING) {
            mt.k("Expected ", jsonToken, " but was ", jsonTokenPeek);
            return 0.0d;
        }
        double asDouble = ((JsonPrimitive) b()).getAsDouble();
        if (isLenient() || !(Double.isNaN(asDouble) || Double.isInfinite(asDouble))) {
            c();
            return asDouble;
        }
        throw new NumberFormatException("JSON forbids NaN and infinities: " + asDouble);
    }

    @Override // com.networkbench.com.google.gson.stream.JsonReader
    public int nextInt() throws IOException {
        JsonToken jsonTokenPeek = peek();
        JsonToken jsonToken = JsonToken.NUMBER;
        if (jsonTokenPeek != jsonToken && jsonTokenPeek != JsonToken.STRING) {
            mt.k("Expected ", jsonToken, " but was ", jsonTokenPeek);
            return 0;
        }
        int asInt = ((JsonPrimitive) b()).getAsInt();
        c();
        return asInt;
    }

    @Override // com.networkbench.com.google.gson.stream.JsonReader
    public long nextLong() throws IOException {
        JsonToken jsonTokenPeek = peek();
        JsonToken jsonToken = JsonToken.NUMBER;
        if (jsonTokenPeek != jsonToken && jsonTokenPeek != JsonToken.STRING) {
            mt.k("Expected ", jsonToken, " but was ", jsonTokenPeek);
            return 0L;
        }
        long asLong = ((JsonPrimitive) b()).getAsLong();
        c();
        return asLong;
    }

    @Override // com.networkbench.com.google.gson.stream.JsonReader
    public String nextName() throws IOException {
        a(JsonToken.NAME);
        Map.Entry entry = (Map.Entry) ((Iterator) b()).next();
        this.f38647c.add(entry.getValue());
        return (String) entry.getKey();
    }

    @Override // com.networkbench.com.google.gson.stream.JsonReader
    public void nextNull() throws IOException {
        a(JsonToken.NULL);
        c();
    }

    @Override // com.networkbench.com.google.gson.stream.JsonReader
    public String nextString() throws IOException {
        JsonToken jsonTokenPeek = peek();
        JsonToken jsonToken = JsonToken.STRING;
        if (jsonTokenPeek == jsonToken || jsonTokenPeek == JsonToken.NUMBER) {
            return ((JsonPrimitive) c()).getAsString();
        }
        mt.k("Expected ", jsonToken, " but was ", jsonTokenPeek);
        return null;
    }

    @Override // com.networkbench.com.google.gson.stream.JsonReader
    public JsonToken peek() throws IOException {
        if (this.f38647c.isEmpty()) {
            return JsonToken.END_DOCUMENT;
        }
        Object objB = b();
        if (objB instanceof Iterator) {
            boolean z = fc.e(2, this.f38647c) instanceof JsonObject;
            Iterator it = (Iterator) objB;
            if (!it.hasNext()) {
                return z ? JsonToken.END_OBJECT : JsonToken.END_ARRAY;
            }
            if (z) {
                return JsonToken.NAME;
            }
            this.f38647c.add(it.next());
            return peek();
        }
        if (objB instanceof JsonObject) {
            return JsonToken.BEGIN_OBJECT;
        }
        if (objB instanceof JsonArray) {
            return JsonToken.BEGIN_ARRAY;
        }
        if (!(objB instanceof JsonPrimitive)) {
            if (objB instanceof JsonNull) {
                return JsonToken.NULL;
            }
            if (objB == f38646b) {
                md.k("JsonReader is closed");
                return null;
            }
            a61.h();
            return null;
        }
        JsonPrimitive jsonPrimitive = (JsonPrimitive) objB;
        if (jsonPrimitive.isString()) {
            return JsonToken.STRING;
        }
        if (jsonPrimitive.isBoolean()) {
            return JsonToken.BOOLEAN;
        }
        if (jsonPrimitive.isNumber()) {
            return JsonToken.NUMBER;
        }
        a61.h();
        return null;
    }

    @Override // com.networkbench.com.google.gson.stream.JsonReader
    public void skipValue() throws IOException {
        if (peek() == JsonToken.NAME) {
            nextName();
        } else {
            c();
        }
    }

    @Override // com.networkbench.com.google.gson.stream.JsonReader
    public String toString() {
        return "e";
    }

    private void a(JsonToken jsonToken) throws IOException {
        if (peek() == jsonToken) {
            return;
        }
        StringBuilder sb = new StringBuilder("Expected ");
        sb.append(jsonToken);
        d20.k(sb, " but was ", peek());
    }
}
