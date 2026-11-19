package com.perfectcorp.thirdparty.com.google.gson.internal.bind;

import com.perfectcorp.thirdparty.com.google.gson.JsonArray;
import com.perfectcorp.thirdparty.com.google.gson.JsonElement;
import com.perfectcorp.thirdparty.com.google.gson.JsonNull;
import com.perfectcorp.thirdparty.com.google.gson.JsonObject;
import com.perfectcorp.thirdparty.com.google.gson.JsonPrimitive;
import defpackage.a61;
import defpackage.az;
import defpackage.cj;
import defpackage.r81;
import java.io.IOException;
import java.io.Writer;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes3.dex */
public final class f extends com.perfectcorp.thirdparty.com.google.gson.stream.d {
    public static final Writer o = new g();
    public static final JsonPrimitive p = new JsonPrimitive("closed");
    public final ArrayList l;
    public String m;
    public JsonElement n;

    public f() {
        super(o);
        this.l = new ArrayList();
        this.n = JsonNull.f42453b;
    }

    public final JsonElement E() {
        ArrayList arrayList = this.l;
        if (arrayList.isEmpty()) {
            return this.n;
        }
        a61.q(arrayList, "Expected one JSON element but was ");
        return null;
    }

    public final void F(JsonElement jsonElement) {
        if (this.m != null) {
            if (!(jsonElement instanceof JsonNull) || this.f42582i) {
                ((JsonObject) G()).o(this.m, jsonElement);
            }
            this.m = null;
            return;
        }
        if (this.l.isEmpty()) {
            this.n = jsonElement;
            return;
        }
        JsonElement jsonElementG = G();
        if (jsonElementG instanceof JsonArray) {
            ((JsonArray) jsonElementG).o(jsonElement);
        } else {
            r81.b();
        }
    }

    public final JsonElement G() {
        return (JsonElement) cj.c(1, this.l);
    }

    @Override // com.perfectcorp.thirdparty.com.google.gson.stream.d, java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        ArrayList arrayList = this.l;
        if (arrayList.isEmpty()) {
            arrayList.add(p);
        } else {
            az.o("Incomplete document");
        }
    }

    @Override // com.perfectcorp.thirdparty.com.google.gson.stream.d, java.io.Flushable
    public final void flush() {
    }

    @Override // com.perfectcorp.thirdparty.com.google.gson.stream.d
    public final void m(Boolean bool) {
        if (bool == null) {
            F(JsonNull.f42453b);
        } else {
            F(new JsonPrimitive(bool));
        }
    }

    @Override // com.perfectcorp.thirdparty.com.google.gson.stream.d
    public final void n(Number number) {
        if (number == null) {
            F(JsonNull.f42453b);
            return;
        }
        if (!this.f42580f) {
            double dDoubleValue = number.doubleValue();
            if (Double.isNaN(dDoubleValue) || Double.isInfinite(dDoubleValue)) {
                az.m(number, "JSON forbids NaN and infinities: ");
                return;
            }
        }
        F(new JsonPrimitive(number));
    }

    @Override // com.perfectcorp.thirdparty.com.google.gson.stream.d
    public final void o(String str) {
        if (this.l.isEmpty() || this.m != null) {
            r81.b();
        } else if (G() instanceof JsonObject) {
            this.m = str;
        } else {
            r81.b();
        }
    }

    @Override // com.perfectcorp.thirdparty.com.google.gson.stream.d
    public final void p(boolean z) {
        F(new JsonPrimitive(Boolean.valueOf(z)));
    }

    @Override // com.perfectcorp.thirdparty.com.google.gson.stream.d
    public final void q() {
        JsonArray jsonArray = new JsonArray();
        F(jsonArray);
        this.l.add(jsonArray);
    }

    @Override // com.perfectcorp.thirdparty.com.google.gson.stream.d
    public final void r(String str) {
        if (str == null) {
            F(JsonNull.f42453b);
        } else {
            F(new JsonPrimitive(str));
        }
    }

    @Override // com.perfectcorp.thirdparty.com.google.gson.stream.d
    public final void s() {
        ArrayList arrayList = this.l;
        if (arrayList.isEmpty() || this.m != null) {
            r81.b();
        } else if (G() instanceof JsonArray) {
            arrayList.remove(arrayList.size() - 1);
        } else {
            r81.b();
        }
    }

    @Override // com.perfectcorp.thirdparty.com.google.gson.stream.d
    public final void t() {
        JsonObject jsonObject = new JsonObject();
        F(jsonObject);
        this.l.add(jsonObject);
    }

    @Override // com.perfectcorp.thirdparty.com.google.gson.stream.d
    public final void w() {
        ArrayList arrayList = this.l;
        if (arrayList.isEmpty() || this.m != null) {
            r81.b();
        } else if (G() instanceof JsonObject) {
            arrayList.remove(arrayList.size() - 1);
        } else {
            r81.b();
        }
    }

    @Override // com.perfectcorp.thirdparty.com.google.gson.stream.d
    public final com.perfectcorp.thirdparty.com.google.gson.stream.d y() {
        F(JsonNull.f42453b);
        return this;
    }
}
