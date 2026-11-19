package com.squareup.moshi;

import defpackage.az;
import defpackage.ct0;
import defpackage.md;
import defpackage.r81;
import java.io.IOException;
import okio.BufferedSink;

/* JADX INFO: loaded from: classes3.dex */
final class JsonUtf8Writer extends JsonWriter {
    public static final String[] n = new String[128];

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final BufferedSink f43369k;
    public String l = ":";
    public String m;

    static {
        for (int i2 = 0; i2 <= 31; i2++) {
            n[i2] = String.format("\\u%04x", Integer.valueOf(i2));
        }
        String[] strArr = n;
        strArr[34] = "\\\"";
        strArr[92] = "\\\\";
        strArr[9] = "\\t";
        strArr[8] = "\\b";
        strArr[10] = "\\n";
        strArr[13] = "\\r";
        strArr[12] = "\\f";
    }

    public JsonUtf8Writer(BufferedSink bufferedSink) {
        if (bufferedSink == null) {
            r81.d("sink == null");
            throw null;
        }
        this.f43369k = bufferedSink;
        u(6);
    }

    /* JADX WARN: Code duplicated, block: B:16:0x002b  */
    public static void j0(BufferedSink bufferedSink, String str) {
        String str2;
        bufferedSink.writeByte(34);
        int length = str.length();
        int i2 = 0;
        for (int i3 = 0; i3 < length; i3++) {
            char cCharAt = str.charAt(i3);
            if (cCharAt < 128) {
                str2 = n[cCharAt];
                if (str2 != null) {
                    if (i2 < i3) {
                        bufferedSink.r1(i2, i3, str);
                    }
                    bufferedSink.r0(str2);
                    i2 = i3 + 1;
                }
            } else {
                if (cCharAt == 8232) {
                    str2 = "\\u2028";
                } else if (cCharAt == 8233) {
                    str2 = "\\u2029";
                }
                if (i2 < i3) {
                    bufferedSink.r1(i2, i3, str);
                }
                bufferedSink.r0(str2);
                i2 = i3 + 1;
            }
        }
        if (i2 < length) {
            bufferedSink.r1(i2, length, str);
        }
        bufferedSink.writeByte(34);
    }

    @Override // com.squareup.moshi.JsonWriter
    public final JsonWriter B(Float f2) {
        if (f2 == null) {
            r();
            return this;
        }
        String string = f2.toString();
        if (!this.g && (string.equals("-Infinity") || string.equals("Infinity") || string.equals("NaN"))) {
            az.m(f2, "Numeric values must be finite, but was ");
            return null;
        }
        if (this.f43380i) {
            this.f43380i = false;
            q(string);
            return this;
        }
        k0();
        F();
        this.f43369k.r0(string);
        int[] iArr = this.f43377e;
        int i2 = this.f43375b - 1;
        iArr[i2] = iArr[i2] + 1;
        return this;
    }

    @Override // com.squareup.moshi.JsonWriter
    public final JsonWriter C(String str) {
        if (str == null) {
            r();
            return this;
        }
        if (this.f43380i) {
            this.f43380i = false;
            q(str);
            return this;
        }
        k0();
        F();
        j0(this.f43369k, str);
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
        k0();
        F();
        this.f43369k.r0(z ? "true" : "false");
        int[] iArr = this.f43377e;
        int i2 = this.f43375b - 1;
        iArr[i2] = iArr[i2] + 1;
        return this;
    }

    public final void F() {
        int iT = t();
        int i2 = 2;
        if (iT != 1) {
            BufferedSink bufferedSink = this.f43369k;
            if (iT == 2) {
                bufferedSink.writeByte(44);
                H();
            } else if (iT == 4) {
                bufferedSink.r0(this.l);
                i2 = 5;
            } else {
                if (iT == 9) {
                    md.k("Sink from valueSink() was not closed");
                    return;
                }
                if (iT != 6) {
                    if (iT != 7) {
                        md.k("Nesting problem.");
                        return;
                    } else if (!this.g) {
                        md.k("JSON must have only one top-level value.");
                        return;
                    }
                }
                i2 = 7;
            }
        } else {
            H();
        }
        this.f43376c[this.f43375b - 1] = i2;
    }

    public final void G(int i2, int i3, char c2) {
        int iT = t();
        if (iT != i3 && iT != i2) {
            md.k("Nesting problem.");
            return;
        }
        if (this.m != null) {
            ct0.o(this.m, "Dangling name: ");
            return;
        }
        int i4 = this.f43375b;
        int i5 = ~this.f43381j;
        if (i4 == i5) {
            this.f43381j = i5;
            return;
        }
        int i6 = i4 - 1;
        this.f43375b = i6;
        this.d[i6] = null;
        int[] iArr = this.f43377e;
        int i7 = i4 - 2;
        iArr[i7] = iArr[i7] + 1;
        if (iT == i3) {
            H();
        }
        this.f43369k.writeByte(c2);
    }

    public final void H() {
        if (this.f43378f == null) {
            return;
        }
        BufferedSink bufferedSink = this.f43369k;
        bufferedSink.writeByte(10);
        int i2 = this.f43375b;
        for (int i3 = 1; i3 < i2; i3++) {
            bufferedSink.r0(this.f43378f);
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        this.f43369k.close();
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
            this.f43369k.flush();
        } else {
            md.k("JsonWriter is closed.");
        }
    }

    @Override // com.squareup.moshi.JsonWriter
    public final JsonWriter h() {
        if (this.f43380i) {
            md.k("Array cannot be used as a map key in JSON at path ".concat(p()));
            return null;
        }
        k0();
        i0(1, 2, '[');
        return this;
    }

    public final void i0(int i2, int i3, char c2) {
        int i4;
        int i5 = this.f43375b;
        int i6 = this.f43381j;
        if (i5 == i6 && ((i4 = this.f43376c[i5 - 1]) == i2 || i4 == i3)) {
            this.f43381j = ~i6;
            return;
        }
        F();
        m();
        u(i2);
        this.f43377e[this.f43375b - 1] = 0;
        this.f43369k.writeByte(c2);
    }

    @Override // com.squareup.moshi.JsonWriter
    public final JsonWriter k() {
        if (this.f43380i) {
            md.k("Object cannot be used as a map key in JSON at path ".concat(p()));
            return null;
        }
        k0();
        i0(3, 5, '{');
        return this;
    }

    public final void k0() {
        if (this.m != null) {
            int iT = t();
            BufferedSink bufferedSink = this.f43369k;
            if (iT == 5) {
                bufferedSink.writeByte(44);
            } else if (iT != 3) {
                md.k("Nesting problem.");
                return;
            }
            H();
            this.f43376c[this.f43375b - 1] = 4;
            j0(bufferedSink, this.m);
            this.m = null;
        }
    }

    @Override // com.squareup.moshi.JsonWriter
    public final JsonWriter n() {
        G(1, 2, ']');
        return this;
    }

    @Override // com.squareup.moshi.JsonWriter
    public final JsonWriter o() {
        this.f43380i = false;
        G(3, 5, '}');
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
        int iT = t();
        if ((iT != 3 && iT != 5) || this.m != null || this.f43380i) {
            md.k("Nesting problem.");
            return null;
        }
        this.m = str;
        this.d[this.f43375b - 1] = str;
        return this;
    }

    @Override // com.squareup.moshi.JsonWriter
    public final JsonWriter r() {
        if (this.f43380i) {
            md.k("null cannot be used as a map key in JSON at path ".concat(p()));
            return null;
        }
        if (this.m != null) {
            if (!this.f43379h) {
                this.m = null;
                return this;
            }
            k0();
        }
        F();
        this.f43369k.r0("null");
        int[] iArr = this.f43377e;
        int i2 = this.f43375b - 1;
        iArr[i2] = iArr[i2] + 1;
        return this;
    }

    @Override // com.squareup.moshi.JsonWriter
    public final void w(String str) {
        super.w(str);
        this.l = !str.isEmpty() ? ": " : ":";
    }

    @Override // com.squareup.moshi.JsonWriter
    public final JsonWriter y(double d) {
        if (!this.g && (Double.isNaN(d) || Double.isInfinite(d))) {
            az.p("Numeric values must be finite, but was ", d);
            return null;
        }
        if (this.f43380i) {
            this.f43380i = false;
            q(Double.toString(d));
            return this;
        }
        k0();
        F();
        this.f43369k.r0(Double.toString(d));
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
        k0();
        F();
        this.f43369k.r0(Long.toString(j2));
        int[] iArr = this.f43377e;
        int i2 = this.f43375b - 1;
        iArr[i2] = iArr[i2] + 1;
        return this;
    }
}
