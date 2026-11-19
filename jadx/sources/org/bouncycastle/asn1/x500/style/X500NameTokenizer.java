package org.bouncycastle.asn1.x500.style;

import defpackage.md;

/* JADX INFO: loaded from: classes3.dex */
public class X500NameTokenizer {
    private int index;
    private final char separator;
    private final String value;

    public X500NameTokenizer(String str, char c2) {
        str.getClass();
        if (c2 == '\"' || c2 == '\\') {
            md.n("reserved separator character");
            throw null;
        }
        this.value = str;
        this.separator = c2;
        this.index = str.length() < 1 ? 0 : -1;
    }

    public boolean hasMoreTokens() {
        return this.index < this.value.length();
    }

    public String nextToken() {
        if (this.index >= this.value.length()) {
            return null;
        }
        int i2 = this.index + 1;
        boolean z = false;
        boolean z2 = false;
        while (true) {
            int i3 = this.index + 1;
            this.index = i3;
            if (i3 >= this.value.length()) {
                if (!z && !z2) {
                    break;
                }
                md.n("badly formatted directory string");
                return null;
            }
            char cCharAt = this.value.charAt(this.index);
            if (z) {
                z = false;
            } else if (cCharAt == '\"') {
                z2 = !z2;
            } else if (z2) {
                continue;
            } else if (cCharAt == '\\') {
                z = true;
            } else if (cCharAt == this.separator) {
                break;
            }
        }
        return this.value.substring(i2, this.index);
    }

    public X500NameTokenizer(String str) {
        this(str, ',');
    }
}
