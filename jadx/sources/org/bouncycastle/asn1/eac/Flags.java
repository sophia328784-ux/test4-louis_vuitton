package org.bouncycastle.asn1.eac;

import java.util.Enumeration;
import java.util.Hashtable;

/* JADX INFO: loaded from: classes3.dex */
public class Flags {
    int value;

    public static class StringJoiner {
        boolean First = true;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        StringBuffer f77586b = new StringBuffer();
        String mSeparator;

        public StringJoiner(String str) {
            this.mSeparator = str;
        }

        public void add(String str) {
            if (this.First) {
                this.First = false;
            } else {
                this.f77586b.append(this.mSeparator);
            }
            this.f77586b.append(str);
        }

        public String toString() {
            return this.f77586b.toString();
        }
    }

    public Flags() {
        this.value = 0;
    }

    public String decode(Hashtable hashtable) {
        StringJoiner stringJoiner = new StringJoiner(" ");
        Enumeration enumerationKeys = hashtable.keys();
        while (enumerationKeys.hasMoreElements()) {
            Integer num = (Integer) enumerationKeys.nextElement();
            if (isSet(num.intValue())) {
                stringJoiner.add((String) hashtable.get(num));
            }
        }
        return stringJoiner.toString();
    }

    public int getFlags() {
        return this.value;
    }

    public boolean isSet(int i2) {
        return (this.value & i2) != 0;
    }

    public void set(int i2) {
        this.value = i2 | this.value;
    }

    public Flags(int i2) {
        this.value = i2;
    }
}
