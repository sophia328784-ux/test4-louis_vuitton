package com.networkbench.com.google.gson.stream;

import defpackage.az;
import defpackage.ct0;
import defpackage.md;
import defpackage.r81;
import java.io.Closeable;
import java.io.Flushable;
import java.io.IOException;
import java.io.Writer;

/* JADX INFO: loaded from: classes2.dex */
public class JsonWriter implements Closeable, Flushable {
    private static final String[] HTML_SAFE_REPLACEMENT_CHARS;
    private static final String[] REPLACEMENT_CHARS = new String[128];
    private String deferredName;
    private boolean htmlSafe;
    private String indent;
    private boolean lenient;
    private final Writer out;
    private String separator;
    private boolean serializeNulls;
    private int[] stack = new int[32];
    private int stackSize = 0;

    static {
        for (int i2 = 0; i2 <= 31; i2++) {
            REPLACEMENT_CHARS[i2] = String.format("\\u%04x", Integer.valueOf(i2));
        }
        String[] strArr = REPLACEMENT_CHARS;
        strArr[34] = "\\\"";
        strArr[92] = "\\\\";
        strArr[9] = "\\t";
        strArr[8] = "\\b";
        strArr[10] = "\\n";
        strArr[13] = "\\r";
        strArr[12] = "\\f";
        String[] strArr2 = (String[]) strArr.clone();
        HTML_SAFE_REPLACEMENT_CHARS = strArr2;
        strArr2[60] = "\\u003c";
        strArr2[62] = "\\u003e";
        strArr2[38] = "\\u0026";
        strArr2[61] = "\\u003d";
        strArr2[39] = "\\u0027";
    }

    public JsonWriter(Writer writer) {
        push(6);
        this.separator = ":";
        this.serializeNulls = true;
        if (writer != null) {
            this.out = writer;
        } else {
            r81.d("out == null");
            throw null;
        }
    }

    private void beforeName() throws IOException {
        int iPeek = peek();
        if (iPeek == 5) {
            this.out.write(44);
        } else if (iPeek != 3) {
            md.k("Nesting problem.");
            return;
        }
        newline();
        replaceTop(4);
    }

    private void beforeValue(boolean z) throws IOException {
        int iPeek = peek();
        if (iPeek == 1) {
            replaceTop(2);
            newline();
            return;
        }
        if (iPeek == 2) {
            this.out.append(',');
            newline();
            return;
        }
        if (iPeek == 4) {
            this.out.append((CharSequence) this.separator);
            replaceTop(5);
            return;
        }
        if (iPeek != 6) {
            if (iPeek != 7) {
                md.k("Nesting problem.");
                return;
            } else if (!this.lenient) {
                md.k("JSON must have only one top-level value.");
                return;
            }
        }
        if (this.lenient || z) {
            replaceTop(7);
        } else {
            md.k("JSON must start with an array or an object.");
        }
    }

    private JsonWriter close(int i2, int i3, String str) throws IOException {
        int iPeek = peek();
        if (iPeek != i3 && iPeek != i2) {
            md.k("Nesting problem.");
            return null;
        }
        if (this.deferredName != null) {
            ct0.o(this.deferredName, "Dangling name: ");
            return null;
        }
        this.stackSize--;
        if (iPeek == i3) {
            newline();
        }
        this.out.write(str);
        return this;
    }

    private void newline() throws IOException {
        if (this.indent == null) {
            return;
        }
        this.out.write("\n");
        int i2 = this.stackSize;
        for (int i3 = 1; i3 < i2; i3++) {
            this.out.write(this.indent);
        }
    }

    private JsonWriter open(int i2, String str) throws IOException {
        beforeValue(true);
        push(i2);
        this.out.write(str);
        return this;
    }

    private int peek() {
        int i2 = this.stackSize;
        if (i2 != 0) {
            return this.stack[i2 - 1];
        }
        md.k("JsonWriter is closed.");
        return 0;
    }

    private void push(int i2) {
        int i3 = this.stackSize;
        int[] iArr = this.stack;
        if (i3 == iArr.length) {
            int[] iArr2 = new int[i3 * 2];
            System.arraycopy(iArr, 0, iArr2, 0, i3);
            this.stack = iArr2;
        }
        int[] iArr3 = this.stack;
        int i4 = this.stackSize;
        this.stackSize = i4 + 1;
        iArr3[i4] = i2;
    }

    private void replaceTop(int i2) {
        this.stack[this.stackSize - 1] = i2;
    }

    /* JADX WARN: Code duplicated, block: B:20:0x0034  */
    private void string(String str) throws IOException {
        String str2;
        String[] strArr = this.htmlSafe ? HTML_SAFE_REPLACEMENT_CHARS : REPLACEMENT_CHARS;
        this.out.write("\"");
        int length = str.length();
        int i2 = 0;
        for (int i3 = 0; i3 < length; i3++) {
            char cCharAt = str.charAt(i3);
            if (cCharAt < 128) {
                str2 = strArr[cCharAt];
                if (str2 != null) {
                    if (i2 < i3) {
                        this.out.write(str, i2, i3 - i2);
                    }
                    this.out.write(str2);
                    i2 = i3 + 1;
                }
            } else {
                if (cCharAt == 8232) {
                    str2 = "\\u2028";
                } else if (cCharAt == 8233) {
                    str2 = "\\u2029";
                }
                if (i2 < i3) {
                    this.out.write(str, i2, i3 - i2);
                }
                this.out.write(str2);
                i2 = i3 + 1;
            }
        }
        if (i2 < length) {
            this.out.write(str, i2, length - i2);
        }
        this.out.write("\"");
    }

    private void writeDeferredName() throws IOException {
        if (this.deferredName != null) {
            beforeName();
            string(this.deferredName);
            this.deferredName = null;
        }
    }

    public JsonWriter beginArray() throws IOException {
        writeDeferredName();
        return open(1, "[");
    }

    public JsonWriter beginObject() throws IOException {
        writeDeferredName();
        return open(3, "{");
    }

    public JsonWriter endArray() throws IOException {
        return close(1, 2, "]");
    }

    public JsonWriter endObject() throws IOException {
        return close(3, 5, "}");
    }

    public void flush() throws IOException {
        if (this.stackSize != 0) {
            this.out.flush();
        } else {
            md.k("JsonWriter is closed.");
        }
    }

    public final boolean getSerializeNulls() {
        return this.serializeNulls;
    }

    public final boolean isHtmlSafe() {
        return this.htmlSafe;
    }

    public boolean isLenient() {
        return this.lenient;
    }

    public JsonWriter name(String str) throws IOException {
        if (str == null) {
            r81.d("name == null");
            return null;
        }
        if (this.deferredName != null) {
            r81.b();
            return null;
        }
        if (this.stackSize != 0) {
            this.deferredName = str;
            return this;
        }
        md.k("JsonWriter is closed.");
        return null;
    }

    public JsonWriter nullValue() throws IOException {
        if (this.deferredName != null) {
            if (!this.serializeNulls) {
                this.deferredName = null;
                return this;
            }
            writeDeferredName();
        }
        beforeValue(false);
        this.out.write("null");
        return this;
    }

    public final void setHtmlSafe(boolean z) {
        this.htmlSafe = z;
    }

    public final void setIndent(String str) {
        if (str.length() == 0) {
            this.indent = null;
            this.separator = ":";
        } else {
            this.indent = str;
            this.separator = ": ";
        }
    }

    public final void setLenient(boolean z) {
        this.lenient = z;
    }

    public final void setSerializeNulls(boolean z) {
        this.serializeNulls = z;
    }

    public JsonWriter value(Number number) throws IOException {
        if (number == null) {
            return nullValue();
        }
        writeDeferredName();
        String string = number.toString();
        if (!this.lenient && (string.equals("-Infinity") || string.equals("Infinity") || string.equals("NaN"))) {
            az.m(number, "Numeric values must be finite, but was ");
            return null;
        }
        beforeValue(false);
        this.out.append((CharSequence) string);
        return this;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.out.close();
        int i2 = this.stackSize;
        if (i2 <= 1 && (i2 != 1 || this.stack[i2 - 1] == 7)) {
            this.stackSize = 0;
        } else {
            az.o("Incomplete document");
        }
    }

    public JsonWriter value(boolean z) throws IOException {
        writeDeferredName();
        beforeValue(false);
        this.out.write(z ? "true" : "false");
        return this;
    }

    public JsonWriter value(double d) throws IOException {
        if (!Double.isNaN(d) && !Double.isInfinite(d)) {
            writeDeferredName();
            beforeValue(false);
            this.out.append((CharSequence) Double.toString(d));
            return this;
        }
        az.p("Numeric values must be finite, but was ", d);
        return null;
    }

    public JsonWriter value(long j2) throws IOException {
        writeDeferredName();
        beforeValue(false);
        this.out.write(Long.toString(j2));
        return this;
    }

    public JsonWriter value(String str) throws IOException {
        if (str == null) {
            return nullValue();
        }
        writeDeferredName();
        beforeValue(false);
        string(str);
        return this;
    }
}
