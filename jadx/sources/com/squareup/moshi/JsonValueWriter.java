package com.squareup.moshi;

import defpackage.az;
import defpackage.ct0;
import defpackage.md;
import defpackage.r81;
import java.io.IOException;
import java.io.Serializable;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
final class JsonValueWriter extends JsonWriter {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public Object[] f43374k;
    public String l;

    @Override // com.squareup.moshi.JsonWriter
    public final JsonWriter B(Float f2) {
        if (f2 != null) {
            y(f2.doubleValue());
            return this;
        }
        if (f2 == null) {
            r();
            return this;
        }
        BigDecimal bigDecimal = new BigDecimal(f2.toString());
        if (this.f43380i) {
            this.f43380i = false;
            q(bigDecimal.toString());
            return this;
        }
        F(bigDecimal);
        int[] iArr = this.f43377e;
        int i2 = this.f43375b - 1;
        iArr[i2] = iArr[i2] + 1;
        return this;
    }

    @Override // com.squareup.moshi.JsonWriter
    public final JsonWriter C(String str) {
        if (this.f43380i) {
            this.f43380i = false;
            q(str);
            return this;
        }
        F(str);
        int[] iArr = this.f43377e;
        int i2 = this.f43375b - 1;
        iArr[i2] = iArr[i2] + 1;
        return this;
    }

    @Override // com.squareup.moshi.JsonWriter
    public final JsonWriter E(boolean z) {
        if (this.f43380i) {
            md.k("Boolean cannot be used as a map key in JSON at path ".concat(p()));
            return null;
        }
        F(Boolean.valueOf(z));
        int[] iArr = this.f43377e;
        int i2 = this.f43375b - 1;
        iArr[i2] = iArr[i2] + 1;
        return this;
    }

    public final void F(Serializable serializable) {
        String str;
        Object objPut;
        int iT = t();
        int i2 = this.f43375b;
        if (i2 == 1) {
            if (iT != 6) {
                md.k("JSON must have only one top-level value.");
                return;
            }
            int i3 = i2 - 1;
            this.f43376c[i3] = 7;
            this.f43374k[i3] = serializable;
            return;
        }
        if (iT != 3 || (str = this.l) == null) {
            if (iT == 1) {
                ((List) this.f43374k[i2 - 1]).add(serializable);
                return;
            } else if (iT == 9) {
                md.k("Sink from valueSink() was not closed");
                return;
            } else {
                md.k("Nesting problem.");
                return;
            }
        }
        if ((serializable == null && !this.f43379h) || (objPut = ((Map) this.f43374k[i2 - 1]).put(str, serializable)) == null) {
            this.l = null;
            return;
        }
        throw new IllegalArgumentException("Map key '" + this.l + "' has multiple values at path " + p() + ": " + objPut + " and " + serializable);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        int i2 = this.f43375b;
        if (i2 > 1 || (i2 == 1 && this.f43376c[i2 - 1] != 7)) {
            az.o("Incomplete document");
        } else {
            this.f43375b = 0;
        }
    }

    @Override // java.io.Flushable
    public final void flush() {
        if (this.f43375b != 0) {
            return;
        }
        md.k("JsonWriter is closed.");
    }

    @Override // com.squareup.moshi.JsonWriter
    public final JsonWriter h() {
        if (this.f43380i) {
            md.k("Array cannot be used as a map key in JSON at path ".concat(p()));
            return null;
        }
        int i2 = this.f43375b;
        int i3 = this.f43381j;
        if (i2 == i3 && this.f43376c[i2 - 1] == 1) {
            this.f43381j = ~i3;
            return this;
        }
        m();
        ArrayList arrayList = new ArrayList();
        F(arrayList);
        Object[] objArr = this.f43374k;
        int i4 = this.f43375b;
        objArr[i4] = arrayList;
        this.f43377e[i4] = 0;
        u(1);
        return this;
    }

    @Override // com.squareup.moshi.JsonWriter
    public final JsonWriter k() {
        if (this.f43380i) {
            md.k("Object cannot be used as a map key in JSON at path ".concat(p()));
            return null;
        }
        int i2 = this.f43375b;
        int i3 = this.f43381j;
        if (i2 == i3 && this.f43376c[i2 - 1] == 3) {
            this.f43381j = ~i3;
            return this;
        }
        m();
        LinkedHashTreeMap linkedHashTreeMap = new LinkedHashTreeMap();
        F(linkedHashTreeMap);
        this.f43374k[this.f43375b] = linkedHashTreeMap;
        u(3);
        return this;
    }

    @Override // com.squareup.moshi.JsonWriter
    public final JsonWriter n() {
        if (t() != 1) {
            md.k("Nesting problem.");
            return null;
        }
        int i2 = this.f43375b;
        int i3 = ~this.f43381j;
        if (i2 == i3) {
            this.f43381j = i3;
            return this;
        }
        int i4 = i2 - 1;
        this.f43375b = i4;
        this.f43374k[i4] = null;
        int[] iArr = this.f43377e;
        int i5 = i2 - 2;
        iArr[i5] = iArr[i5] + 1;
        return this;
    }

    @Override // com.squareup.moshi.JsonWriter
    public final JsonWriter o() {
        if (t() != 3) {
            md.k("Nesting problem.");
            return null;
        }
        if (this.l != null) {
            ct0.o(this.l, "Dangling name: ");
            return null;
        }
        int i2 = this.f43375b;
        int i3 = ~this.f43381j;
        if (i2 == i3) {
            this.f43381j = i3;
            return this;
        }
        this.f43380i = false;
        int i4 = i2 - 1;
        this.f43375b = i4;
        this.f43374k[i4] = null;
        this.d[i4] = null;
        int[] iArr = this.f43377e;
        int i5 = i2 - 2;
        iArr[i5] = iArr[i5] + 1;
        return this;
    }

    @Override // com.squareup.moshi.JsonWriter
    public final JsonWriter q(String str) {
        if (str == null) {
            r81.d("name == null");
            return null;
        }
        if (this.f43375b == 0) {
            md.k("JsonWriter is closed.");
            return null;
        }
        if (t() != 3 || this.l != null || this.f43380i) {
            md.k("Nesting problem.");
            return null;
        }
        this.l = str;
        this.d[this.f43375b - 1] = str;
        return this;
    }

    @Override // com.squareup.moshi.JsonWriter
    public final JsonWriter r() {
        if (this.f43380i) {
            md.k("null cannot be used as a map key in JSON at path ".concat(p()));
            return null;
        }
        F(null);
        int[] iArr = this.f43377e;
        int i2 = this.f43375b - 1;
        iArr[i2] = iArr[i2] + 1;
        return this;
    }

    @Override // com.squareup.moshi.JsonWriter
    public final JsonWriter y(double d) {
        if (!this.g && (Double.isNaN(d) || d == Double.NEGATIVE_INFINITY || d == Double.POSITIVE_INFINITY)) {
            az.p("Numeric values must be finite, but was ", d);
            return null;
        }
        if (this.f43380i) {
            this.f43380i = false;
            q(Double.toString(d));
            return this;
        }
        F(Double.valueOf(d));
        int[] iArr = this.f43377e;
        int i2 = this.f43375b - 1;
        iArr[i2] = iArr[i2] + 1;
        return this;
    }

    @Override // com.squareup.moshi.JsonWriter
    public final JsonWriter z(long j2) {
        if (this.f43380i) {
            this.f43380i = false;
            q(Long.toString(j2));
            return this;
        }
        F(Long.valueOf(j2));
        int[] iArr = this.f43377e;
        int i2 = this.f43375b - 1;
        iArr[i2] = iArr[i2] + 1;
        return this;
    }
}
