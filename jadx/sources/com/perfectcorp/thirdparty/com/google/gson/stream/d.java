package com.perfectcorp.thirdparty.com.google.gson.stream;

import defpackage.az;
import defpackage.ct0;
import defpackage.md;
import defpackage.r81;
import java.io.Closeable;
import java.io.Flushable;
import java.io.IOException;
import java.io.Writer;

/* JADX INFO: loaded from: classes3.dex */
public class d implements Closeable, Flushable {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final String[] f42575j = new String[128];

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final String[] f42576k;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Writer f42577b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int[] f42578c = new int[32];
    public int d = 0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f42579e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f42580f;
    public boolean g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public String f42581h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public boolean f42582i;

    static {
        for (int i2 = 0; i2 <= 31; i2++) {
            f42575j[i2] = String.format("\\u%04x", Integer.valueOf(i2));
        }
        String[] strArr = f42575j;
        strArr[34] = "\\\"";
        strArr[92] = "\\\\";
        strArr[9] = "\\t";
        strArr[8] = "\\b";
        strArr[10] = "\\n";
        strArr[13] = "\\r";
        strArr[12] = "\\f";
        String[] strArr2 = (String[]) strArr.clone();
        f42576k = strArr2;
        strArr2[60] = "\\u003c";
        strArr2[62] = "\\u003e";
        strArr2[38] = "\\u0026";
        strArr2[61] = "\\u003d";
        strArr2[39] = "\\u0027";
    }

    public d(Writer writer) {
        j(6);
        this.f42579e = ":";
        this.f42582i = true;
        if (writer != null) {
            this.f42577b = writer;
        } else {
            r81.d("out == null");
            throw null;
        }
    }

    public final void B() {
    }

    public final void C() throws IOException {
        int iH = h();
        if (iH == 1) {
            this.f42578c[this.d - 1] = 2;
            B();
            return;
        }
        Writer writer = this.f42577b;
        if (iH == 2) {
            writer.append(',');
            B();
            return;
        }
        if (iH == 4) {
            writer.append((CharSequence) this.f42579e);
            this.f42578c[this.d - 1] = 5;
            return;
        }
        if (iH != 6) {
            if (iH != 7) {
                md.k("Nesting problem.");
                return;
            } else if (!this.f42580f) {
                md.k("JSON must have only one top-level value.");
                return;
            }
        }
        this.f42578c[this.d - 1] = 7;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f42577b.close();
        int i2 = this.d;
        if (i2 > 1 || (i2 == 1 && this.f42578c[i2 - 1] != 7)) {
            az.o("Incomplete document");
        } else {
            this.d = 0;
        }
    }

    public void flush() throws IOException {
        if (this.d != 0) {
            this.f42577b.flush();
        } else {
            md.k("JsonWriter is closed.");
        }
    }

    public final int h() {
        int i2 = this.d;
        if (i2 != 0) {
            return this.f42578c[i2 - 1];
        }
        md.k("JsonWriter is closed.");
        return 0;
    }

    public final void j(int i2) {
        int i3 = this.d;
        int[] iArr = this.f42578c;
        if (i3 == iArr.length) {
            int[] iArr2 = new int[i3 << 1];
            System.arraycopy(iArr, 0, iArr2, 0, i3);
            this.f42578c = iArr2;
        }
        int[] iArr3 = this.f42578c;
        int i4 = this.d;
        this.d = i4 + 1;
        iArr3[i4] = i2;
    }

    public final void k(int i2, int i3, String str) throws IOException {
        int iH = h();
        if (iH != i3 && iH != i2) {
            md.k("Nesting problem.");
            return;
        }
        if (this.f42581h != null) {
            ct0.o(this.f42581h, "Dangling name: ");
            return;
        }
        this.d--;
        if (iH == i3) {
            B();
        }
        this.f42577b.write(str);
    }

    public void m(Boolean bool) throws IOException {
        if (bool == null) {
            y();
            return;
        }
        z();
        C();
        this.f42577b.write(bool.booleanValue() ? "true" : "false");
    }

    public void n(Number number) throws IOException {
        if (number == null) {
            y();
            return;
        }
        z();
        String string = number.toString();
        if (!this.f42580f && (string.equals("-Infinity") || string.equals("Infinity") || string.equals("NaN"))) {
            az.m(number, "Numeric values must be finite, but was ");
        } else {
            C();
            this.f42577b.append((CharSequence) string);
        }
    }

    public void o(String str) {
        if (str == null) {
            r81.d("name == null");
            return;
        }
        if (this.f42581h != null) {
            r81.b();
        } else if (this.d != 0) {
            this.f42581h = str;
        } else {
            md.k("JsonWriter is closed.");
        }
    }

    public void p(boolean z) throws IOException {
        z();
        C();
        this.f42577b.write(z ? "true" : "false");
    }

    public void q() throws IOException {
        z();
        C();
        j(1);
        this.f42577b.write("[");
    }

    public void r(String str) throws IOException {
        if (str == null) {
            y();
            return;
        }
        z();
        C();
        u(str);
    }

    public void s() throws IOException {
        k(1, 2, "]");
    }

    public void t() throws IOException {
        z();
        C();
        j(3);
        this.f42577b.write("{");
    }

    /* JADX WARN: Code duplicated, block: B:20:0x0034  */
    public final void u(String str) throws IOException {
        String str2;
        String[] strArr = this.g ? f42576k : f42575j;
        Writer writer = this.f42577b;
        writer.write("\"");
        int length = str.length();
        int i2 = 0;
        for (int i3 = 0; i3 < length; i3++) {
            char cCharAt = str.charAt(i3);
            if (cCharAt < 128) {
                str2 = strArr[cCharAt];
                if (str2 != null) {
                    if (i2 < i3) {
                        writer.write(str, i2, i3 - i2);
                    }
                    writer.write(str2);
                    i2 = i3 + 1;
                }
            } else {
                if (cCharAt == 8232) {
                    str2 = "\\u2028";
                } else if (cCharAt == 8233) {
                    str2 = "\\u2029";
                }
                if (i2 < i3) {
                    writer.write(str, i2, i3 - i2);
                }
                writer.write(str2);
                i2 = i3 + 1;
            }
        }
        if (i2 < length) {
            writer.write(str, i2, length - i2);
        }
        writer.write("\"");
    }

    public void w() throws IOException {
        k(3, 5, "}");
    }

    public d y() throws IOException {
        if (this.f42581h != null) {
            if (!this.f42582i) {
                this.f42581h = null;
                return this;
            }
            z();
        }
        C();
        this.f42577b.write("null");
        return this;
    }

    public final void z() throws IOException {
        if (this.f42581h != null) {
            int iH = h();
            if (iH == 5) {
                this.f42577b.write(44);
            } else if (iH != 3) {
                md.k("Nesting problem.");
                return;
            }
            B();
            this.f42578c[this.d - 1] = 4;
            u(this.f42581h);
            this.f42581h = null;
        }
    }
}
