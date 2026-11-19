package com.batch.android.json;

import defpackage.a61;
import defpackage.fc;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class JSONStringer {
    private final String indent;
    final StringBuilder out;
    private final List<a> stack;

    public enum a {
        EMPTY_ARRAY,
        NONEMPTY_ARRAY,
        EMPTY_OBJECT,
        DANGLING_KEY,
        NONEMPTY_OBJECT,
        NULL
    }

    public JSONStringer(int i2) {
        this.out = new StringBuilder();
        this.stack = new ArrayList();
        char[] cArr = new char[i2];
        Arrays.fill(cArr, ' ');
        this.indent = new String(cArr);
    }

    private void beforeKey() throws JSONException {
        a aVarPeek = peek();
        if (aVarPeek == a.NONEMPTY_OBJECT) {
            this.out.append(',');
        } else if (aVarPeek != a.EMPTY_OBJECT) {
            a61.o("Nesting problem");
            return;
        }
        newline();
        replaceTop(a.DANGLING_KEY);
    }

    private void beforeValue() throws JSONException {
        if (this.stack.isEmpty()) {
            return;
        }
        a aVarPeek = peek();
        if (aVarPeek == a.EMPTY_ARRAY) {
            replaceTop(a.NONEMPTY_ARRAY);
            newline();
            return;
        }
        if (aVarPeek == a.NONEMPTY_ARRAY) {
            this.out.append(',');
            newline();
        } else if (aVarPeek == a.DANGLING_KEY) {
            this.out.append(this.indent == null ? ":" : ": ");
            replaceTop(a.NONEMPTY_OBJECT);
        } else {
            if (aVarPeek == a.NULL) {
                return;
            }
            a61.o("Nesting problem");
        }
    }

    private void newline() {
        if (this.indent == null) {
            return;
        }
        this.out.append("\n");
        for (int i2 = 0; i2 < this.stack.size(); i2++) {
            this.out.append(this.indent);
        }
    }

    private a peek() throws JSONException {
        if (!this.stack.isEmpty()) {
            return (a) fc.e(1, this.stack);
        }
        a61.o("Nesting problem");
        return null;
    }

    private void replaceTop(a aVar) {
        List<a> list = this.stack;
        list.set(list.size() - 1, aVar);
    }

    private void string(String str) {
        this.out.append("\"");
        int length = str.length();
        for (int i2 = 0; i2 < length; i2++) {
            char cCharAt = str.charAt(i2);
            if (cCharAt == '\f') {
                this.out.append("\\f");
            } else if (cCharAt == '\r') {
                this.out.append("\\r");
            } else if (cCharAt != '\"' && cCharAt != '/' && cCharAt != '\\') {
                switch (cCharAt) {
                    case '\b':
                        this.out.append("\\b");
                        break;
                    case '\t':
                        this.out.append("\\t");
                        break;
                    case '\n':
                        this.out.append("\\n");
                        break;
                    default:
                        StringBuilder sb = this.out;
                        if (cCharAt <= 31) {
                            sb.append(String.format("\\u%04x", Integer.valueOf(cCharAt)));
                        } else {
                            sb.append(cCharAt);
                        }
                        break;
                }
            } else {
                StringBuilder sb2 = this.out;
                sb2.append('\\');
                sb2.append(cCharAt);
            }
        }
        this.out.append("\"");
    }

    public JSONStringer array() throws JSONException {
        return open(a.EMPTY_ARRAY, "[");
    }

    public JSONStringer close(a aVar, a aVar2, String str) throws JSONException {
        a aVarPeek = peek();
        if (aVarPeek != aVar2 && aVarPeek != aVar) {
            a61.o("Nesting problem");
            return null;
        }
        List<a> list = this.stack;
        list.remove(list.size() - 1);
        if (aVarPeek == aVar2) {
            newline();
        }
        this.out.append(str);
        return this;
    }

    public JSONStringer endArray() throws JSONException {
        return close(a.EMPTY_ARRAY, a.NONEMPTY_ARRAY, "]");
    }

    public JSONStringer endObject() throws JSONException {
        return close(a.EMPTY_OBJECT, a.NONEMPTY_OBJECT, "}");
    }

    public JSONStringer key(String str) throws JSONException {
        if (str == null) {
            a61.o("Names must be non-null");
            return null;
        }
        beforeKey();
        string(str);
        return this;
    }

    public JSONStringer object() throws JSONException {
        return open(a.EMPTY_OBJECT, "{");
    }

    public JSONStringer open(a aVar, String str) throws JSONException {
        if (this.stack.isEmpty() && this.out.length() > 0) {
            a61.o("Nesting problem: multiple top-level roots");
            return null;
        }
        beforeValue();
        this.stack.add(aVar);
        this.out.append(str);
        return this;
    }

    public String toString() {
        if (this.out.length() == 0) {
            return null;
        }
        return this.out.toString();
    }

    public JSONStringer value(Object obj) throws JSONException {
        if (this.stack.isEmpty()) {
            a61.o("Nesting problem");
            return null;
        }
        if (obj instanceof JSONArray) {
            ((JSONArray) obj).writeTo(this);
            return this;
        }
        if (obj instanceof JSONObject) {
            ((JSONObject) obj).writeTo(this);
            return this;
        }
        beforeValue();
        if (obj == null || (obj instanceof Boolean) || obj == JSONObject.NULL) {
            this.out.append(obj);
            return this;
        }
        if (obj instanceof Number) {
            this.out.append(JSONObject.numberToString((Number) obj));
            return this;
        }
        string(obj.toString());
        return this;
    }

    public JSONStringer() {
        this.out = new StringBuilder();
        this.stack = new ArrayList();
        this.indent = null;
    }

    public JSONStringer value(boolean z) throws JSONException {
        if (!this.stack.isEmpty()) {
            beforeValue();
            this.out.append(z);
            return this;
        }
        a61.o("Nesting problem");
        return null;
    }

    public JSONStringer value(double d) throws JSONException {
        if (!this.stack.isEmpty()) {
            beforeValue();
            this.out.append(JSONObject.numberToString(Double.valueOf(d)));
            return this;
        }
        a61.o("Nesting problem");
        return null;
    }

    public JSONStringer value(long j2) throws JSONException {
        if (!this.stack.isEmpty()) {
            beforeValue();
            this.out.append(j2);
            return this;
        }
        a61.o("Nesting problem");
        return null;
    }
}
