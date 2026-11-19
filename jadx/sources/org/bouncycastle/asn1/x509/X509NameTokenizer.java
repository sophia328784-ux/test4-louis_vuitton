package org.bouncycastle.asn1.x509;

/* JADX INFO: loaded from: classes3.dex */
public class X509NameTokenizer {
    private StringBuffer buf;
    private int index;
    private char separator;
    private String value;

    public X509NameTokenizer(String str, char c2) {
        this.buf = new StringBuffer();
        this.value = str;
        this.index = -1;
        this.separator = c2;
    }

    public boolean hasMoreTokens() {
        return this.index != this.value.length();
    }

    public String nextToken() {
        if (this.index == this.value.length()) {
            return null;
        }
        int i2 = this.index + 1;
        this.buf.setLength(0);
        boolean z = false;
        boolean z2 = false;
        while (i2 != this.value.length()) {
            char cCharAt = this.value.charAt(i2);
            if (cCharAt != '\"') {
                if (!z && !z2) {
                    if (cCharAt == '\\') {
                        this.buf.append(cCharAt);
                        z = true;
                    } else {
                        if (cCharAt == this.separator) {
                            break;
                        }
                        this.buf.append(cCharAt);
                    }
                }
                i2++;
            } else if (!z) {
                z2 = !z2;
            }
            this.buf.append(cCharAt);
            z = false;
            i2++;
        }
        this.index = i2;
        return this.buf.toString();
    }

    public X509NameTokenizer(String str) {
        this(str, ',');
    }
}
