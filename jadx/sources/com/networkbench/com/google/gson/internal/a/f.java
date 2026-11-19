package com.networkbench.com.google.gson.internal.a;

import com.networkbench.com.google.gson.JsonArray;
import com.networkbench.com.google.gson.JsonElement;
import com.networkbench.com.google.gson.JsonNull;
import com.networkbench.com.google.gson.JsonObject;
import com.networkbench.com.google.gson.JsonPrimitive;
import com.networkbench.com.google.gson.stream.JsonWriter;
import defpackage.az;
import defpackage.ct0;
import defpackage.fc;
import defpackage.r81;
import java.io.IOException;
import java.io.Writer;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class f extends JsonWriter {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final Writer f38648a = new Writer() { // from class: com.networkbench.com.google.gson.internal.a.f.1
        @Override // java.io.Writer, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            throw new AssertionError();
        }

        @Override // java.io.Writer, java.io.Flushable
        public void flush() throws IOException {
            throw new AssertionError();
        }

        @Override // java.io.Writer
        public void write(char[] cArr, int i2, int i3) {
            throw new AssertionError();
        }
    };

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final JsonPrimitive f38649b = new JsonPrimitive("closed");

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final List<JsonElement> f38650c;
    private String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private JsonElement f38651e;

    public f() {
        super(f38648a);
        this.f38650c = new ArrayList();
        this.f38651e = JsonNull.INSTANCE;
    }

    private void a(JsonElement jsonElement) {
        if (this.d != null) {
            if (!jsonElement.isJsonNull() || getSerializeNulls()) {
                ((JsonObject) b()).add(this.d, jsonElement);
            }
            this.d = null;
            return;
        }
        if (this.f38650c.isEmpty()) {
            this.f38651e = jsonElement;
            return;
        }
        JsonElement jsonElementB = b();
        if (jsonElementB instanceof JsonArray) {
            ((JsonArray) jsonElementB).add(jsonElement);
        } else {
            r81.b();
        }
    }

    private JsonElement b() {
        return (JsonElement) fc.e(1, this.f38650c);
    }

    @Override // com.networkbench.com.google.gson.stream.JsonWriter
    public JsonWriter beginArray() throws IOException {
        JsonArray jsonArray = new JsonArray();
        a(jsonArray);
        this.f38650c.add(jsonArray);
        return this;
    }

    @Override // com.networkbench.com.google.gson.stream.JsonWriter
    public JsonWriter beginObject() throws IOException {
        JsonObject jsonObject = new JsonObject();
        a(jsonObject);
        this.f38650c.add(jsonObject);
        return this;
    }

    @Override // com.networkbench.com.google.gson.stream.JsonWriter, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        if (this.f38650c.isEmpty()) {
            this.f38650c.add(f38649b);
        } else {
            az.o("Incomplete document");
        }
    }

    @Override // com.networkbench.com.google.gson.stream.JsonWriter
    public JsonWriter endArray() throws IOException {
        if (this.f38650c.isEmpty() || this.d != null) {
            r81.b();
            return null;
        }
        if (!(b() instanceof JsonArray)) {
            r81.b();
            return null;
        }
        List<JsonElement> list = this.f38650c;
        list.remove(list.size() - 1);
        return this;
    }

    @Override // com.networkbench.com.google.gson.stream.JsonWriter
    public JsonWriter endObject() throws IOException {
        if (this.f38650c.isEmpty() || this.d != null) {
            r81.b();
            return null;
        }
        if (!(b() instanceof JsonObject)) {
            r81.b();
            return null;
        }
        List<JsonElement> list = this.f38650c;
        list.remove(list.size() - 1);
        return this;
    }

    @Override // com.networkbench.com.google.gson.stream.JsonWriter, java.io.Flushable
    public void flush() throws IOException {
    }

    @Override // com.networkbench.com.google.gson.stream.JsonWriter
    public JsonWriter name(String str) throws IOException {
        if (this.f38650c.isEmpty() || this.d != null) {
            r81.b();
            return null;
        }
        if (b() instanceof JsonObject) {
            this.d = str;
            return this;
        }
        r81.b();
        return null;
    }

    @Override // com.networkbench.com.google.gson.stream.JsonWriter
    public JsonWriter nullValue() throws IOException {
        a(JsonNull.INSTANCE);
        return this;
    }

    @Override // com.networkbench.com.google.gson.stream.JsonWriter
    public JsonWriter value(Number number) throws IOException {
        if (number == null) {
            return nullValue();
        }
        if (!isLenient()) {
            double dDoubleValue = number.doubleValue();
            if (Double.isNaN(dDoubleValue) || Double.isInfinite(dDoubleValue)) {
                az.m(number, "JSON forbids NaN and infinities: ");
                return null;
            }
        }
        a(new JsonPrimitive(number));
        return this;
    }

    @Override // com.networkbench.com.google.gson.stream.JsonWriter
    public JsonWriter value(boolean z) throws IOException {
        a(new JsonPrimitive(Boolean.valueOf(z)));
        return this;
    }

    @Override // com.networkbench.com.google.gson.stream.JsonWriter
    public JsonWriter value(double d) throws IOException {
        if (!isLenient() && (Double.isNaN(d) || Double.isInfinite(d))) {
            az.p("JSON forbids NaN and infinities: ", d);
            return null;
        }
        a(new JsonPrimitive((Number) Double.valueOf(d)));
        return this;
    }

    @Override // com.networkbench.com.google.gson.stream.JsonWriter
    public JsonWriter value(long j2) throws IOException {
        a(new JsonPrimitive((Number) Long.valueOf(j2)));
        return this;
    }

    @Override // com.networkbench.com.google.gson.stream.JsonWriter
    public JsonWriter value(String str) throws IOException {
        if (str == null) {
            return nullValue();
        }
        a(new JsonPrimitive(str));
        return this;
    }

    public JsonElement a() {
        if (this.f38650c.isEmpty()) {
            return this.f38651e;
        }
        ct0.o(this.f38650c, "Expected one JSON element but was ");
        return null;
    }
}
