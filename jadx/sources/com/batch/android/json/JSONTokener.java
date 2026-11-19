package com.batch.android.json;

import com.linkplay.medialib.ContentTree;
import defpackage.r81;

/* JADX INFO: loaded from: classes2.dex */
public class JSONTokener {
    private final String in;
    private int pos;

    public JSONTokener(String str) {
        if (str != null && str.startsWith("\ufeff")) {
            str = str.substring(1);
        }
        this.in = str;
    }

    public static int dehexchar(char c2) {
        if (c2 >= '0' && c2 <= '9') {
            return c2 - '0';
        }
        if (c2 >= 'A' && c2 <= 'F') {
            return c2 - '7';
        }
        if (c2 < 'a' || c2 > 'f') {
            return -1;
        }
        return c2 - 'W';
    }

    private int nextCleanInternal() throws JSONException {
        while (this.pos < this.in.length()) {
            String str = this.in;
            int i2 = this.pos;
            this.pos = i2 + 1;
            char cCharAt = str.charAt(i2);
            if (cCharAt != '\t' && cCharAt != '\n' && cCharAt != '\r' && cCharAt != ' ') {
                if (cCharAt != '#') {
                    if (cCharAt == '/' && this.pos != this.in.length()) {
                        char cCharAt2 = this.in.charAt(this.pos);
                        if (cCharAt2 == '*') {
                            int i3 = this.pos + 1;
                            this.pos = i3;
                            int iIndexOf = this.in.indexOf("*/", i3);
                            if (iIndexOf == -1) {
                                throw syntaxError("Unterminated comment");
                            }
                            this.pos = iIndexOf + 2;
                        } else if (cCharAt2 == '/') {
                            this.pos++;
                            skipToEndOfLine();
                        }
                    }
                    return cCharAt;
                }
                skipToEndOfLine();
            }
        }
        return -1;
    }

    private String nextToInternal(String str) {
        int i2 = this.pos;
        while (true) {
            int i3 = this.pos;
            int length = this.in.length();
            String str2 = this.in;
            if (i3 >= length) {
                return str2.substring(i2);
            }
            char cCharAt = str2.charAt(this.pos);
            if (cCharAt == '\r' || cCharAt == '\n' || str.indexOf(cCharAt) != -1) {
                return this.in.substring(i2, this.pos);
            }
            this.pos++;
        }
    }

    private JSONArray readArray() throws JSONException {
        JSONArray jSONArray = new JSONArray();
        boolean z = false;
        while (true) {
            int iNextCleanInternal = nextCleanInternal();
            if (iNextCleanInternal == -1) {
                throw syntaxError("Unterminated array");
            }
            if (iNextCleanInternal != 44 && iNextCleanInternal != 59) {
                if (iNextCleanInternal != 93) {
                    this.pos--;
                    jSONArray.put(nextValue());
                    int iNextCleanInternal2 = nextCleanInternal();
                    if (iNextCleanInternal2 != 44 && iNextCleanInternal2 != 59) {
                        if (iNextCleanInternal2 != 93) {
                            throw syntaxError("Unterminated array");
                        }
                    }
                } else if (z) {
                    jSONArray.put((Object) null);
                }
                return jSONArray;
            }
            jSONArray.put((Object) null);
            z = true;
        }
    }

    private char readEscapeCharacter() throws JSONException {
        String str = this.in;
        int i2 = this.pos;
        this.pos = i2 + 1;
        char cCharAt = str.charAt(i2);
        if (cCharAt == 'b') {
            return '\b';
        }
        if (cCharAt == 'f') {
            return '\f';
        }
        if (cCharAt == 'n') {
            return '\n';
        }
        if (cCharAt == 'r') {
            return '\r';
        }
        if (cCharAt == 't') {
            return '\t';
        }
        if (cCharAt != 'u') {
            return cCharAt;
        }
        if (this.pos + 4 > this.in.length()) {
            throw syntaxError("Unterminated escape sequence");
        }
        String str2 = this.in;
        int i3 = this.pos;
        String strSubstring = str2.substring(i3, i3 + 4);
        this.pos += 4;
        try {
            return (char) Integer.parseInt(strSubstring, 16);
        } catch (NumberFormatException unused) {
            throw syntaxError("Invalid escape sequence: ".concat(strSubstring));
        }
    }

    private Object readLiteral() throws JSONException {
        String strSubstring;
        int i2;
        String strNextToInternal = nextToInternal("{}[]/\\:,=;# \t\f");
        if (strNextToInternal.length() == 0) {
            throw syntaxError("Expected literal value");
        }
        if ("null".equalsIgnoreCase(strNextToInternal)) {
            return JSONObject.NULL;
        }
        if ("true".equalsIgnoreCase(strNextToInternal)) {
            return Boolean.TRUE;
        }
        if ("false".equalsIgnoreCase(strNextToInternal)) {
            return Boolean.FALSE;
        }
        if (strNextToInternal.indexOf(46) == -1) {
            if (strNextToInternal.startsWith("0x") || strNextToInternal.startsWith("0X")) {
                strSubstring = strNextToInternal.substring(2);
                i2 = 16;
            } else if (!strNextToInternal.startsWith(ContentTree.ROOT_ID) || strNextToInternal.length() <= 1) {
                i2 = 10;
                strSubstring = strNextToInternal;
            } else {
                strSubstring = strNextToInternal.substring(1);
                i2 = 8;
            }
            try {
                long j2 = Long.parseLong(strSubstring, i2);
                return (j2 > 2147483647L || j2 < -2147483648L) ? Long.valueOf(j2) : Integer.valueOf((int) j2);
            } catch (NumberFormatException unused) {
            }
        }
        try {
            return Double.valueOf(strNextToInternal);
        } catch (NumberFormatException unused2) {
            return new String(strNextToInternal);
        }
    }

    private JSONObject readObject() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        int iNextCleanInternal = nextCleanInternal();
        if (iNextCleanInternal != 125) {
            if (iNextCleanInternal != -1) {
                this.pos--;
            }
            while (true) {
                Object objNextValue = nextValue();
                if (!(objNextValue instanceof String)) {
                    if (objNextValue == null) {
                        throw syntaxError("Names cannot be null");
                    }
                    throw syntaxError("Names must be strings, but " + objNextValue + " is of type " + objNextValue.getClass().getName());
                }
                int iNextCleanInternal2 = nextCleanInternal();
                if (iNextCleanInternal2 != 58 && iNextCleanInternal2 != 61) {
                    throw syntaxError("Expected ':' after " + objNextValue);
                }
                if (this.pos < this.in.length() && this.in.charAt(this.pos) == '>') {
                    this.pos++;
                }
                jSONObject.put((String) objNextValue, nextValue());
                int iNextCleanInternal3 = nextCleanInternal();
                if (iNextCleanInternal3 != 44 && iNextCleanInternal3 != 59) {
                    if (iNextCleanInternal3 != 125) {
                        throw syntaxError("Unterminated object");
                    }
                }
            }
        }
        return jSONObject;
    }

    private void skipToEndOfLine() {
        while (this.pos < this.in.length()) {
            char cCharAt = this.in.charAt(this.pos);
            if (cCharAt == '\r' || cCharAt == '\n') {
                this.pos++;
                return;
            }
            this.pos++;
        }
    }

    public void back() {
        int i2 = this.pos - 1;
        this.pos = i2;
        if (i2 == -1) {
            this.pos = 0;
        }
    }

    public boolean more() {
        return this.pos < this.in.length();
    }

    public String next(int i2) throws JSONException {
        if (this.pos + i2 > this.in.length()) {
            throw syntaxError(i2 + " is out of bounds");
        }
        String str = this.in;
        int i3 = this.pos;
        String strSubstring = str.substring(i3, i3 + i2);
        this.pos += i2;
        return strSubstring;
    }

    public char nextClean() throws JSONException {
        int iNextCleanInternal = nextCleanInternal();
        if (iNextCleanInternal == -1) {
            return (char) 0;
        }
        return (char) iNextCleanInternal;
    }

    public String nextString(char c2) throws JSONException {
        int i2 = this.pos;
        StringBuilder sb = null;
        while (this.pos < this.in.length()) {
            String str = this.in;
            int i3 = this.pos;
            this.pos = i3 + 1;
            char cCharAt = str.charAt(i3);
            if (cCharAt == c2) {
                String str2 = this.in;
                if (sb == null) {
                    return new String(str2.substring(i2, this.pos - 1));
                }
                sb.append((CharSequence) str2, i2, this.pos - 1);
                return sb.toString();
            }
            if (cCharAt == '\\') {
                if (this.pos == this.in.length()) {
                    throw syntaxError("Unterminated escape sequence");
                }
                if (sb == null) {
                    sb = new StringBuilder();
                }
                sb.append((CharSequence) this.in, i2, this.pos - 1);
                sb.append(readEscapeCharacter());
                i2 = this.pos;
            }
        }
        throw syntaxError("Unterminated string");
    }

    public String nextTo(String str) {
        if (str != null) {
            return nextToInternal(str).trim();
        }
        r81.d("excluded == null");
        return null;
    }

    public Object nextValue() throws JSONException {
        int iNextCleanInternal = nextCleanInternal();
        if (iNextCleanInternal == -1) {
            throw syntaxError("End of input");
        }
        if (iNextCleanInternal == 34 || iNextCleanInternal == 39) {
            return nextString((char) iNextCleanInternal);
        }
        if (iNextCleanInternal == 91) {
            return readArray();
        }
        if (iNextCleanInternal == 123) {
            return readObject();
        }
        this.pos--;
        return readLiteral();
    }

    public void skipPast(String str) {
        int iIndexOf = this.in.indexOf(str, this.pos);
        this.pos = iIndexOf == -1 ? this.in.length() : str.length() + iIndexOf;
    }

    public char skipTo(char c2) {
        int iIndexOf = this.in.indexOf(c2, this.pos);
        if (iIndexOf == -1) {
            return (char) 0;
        }
        this.pos = iIndexOf;
        return c2;
    }

    public JSONException syntaxError(String str) {
        return new JSONException(str + this);
    }

    public String toString() {
        return " at character " + this.pos + " of " + this.in;
    }

    public String nextTo(char c2) {
        return nextToInternal(String.valueOf(c2)).trim();
    }

    public char next(char c2) throws JSONException {
        char next = next();
        if (next == c2) {
            return next;
        }
        throw syntaxError("Expected " + c2 + " but was " + next);
    }

    public char next() {
        if (this.pos >= this.in.length()) {
            return (char) 0;
        }
        String str = this.in;
        int i2 = this.pos;
        this.pos = i2 + 1;
        return str.charAt(i2);
    }
}
