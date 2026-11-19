package org.teleal.cling.model.types;

import defpackage.tr;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes5.dex */
public class DLNADoc {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final Pattern f78503c = Pattern.compile("(.+?)[ -]([0-9].[0-9]{2})");

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f78504a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f78505b;

    public enum Version {
        V1_0("1.00"),
        V1_5("1.50");

        String s;

        Version(String str) {
            this.s = str;
        }

        @Override // java.lang.Enum
        public final String toString() {
            return this.s;
        }
    }

    public DLNADoc(String str, Version version) {
        this.f78504a = str;
        this.f78505b = version.s;
    }

    public static DLNADoc a(String str) {
        Matcher matcher = f78503c.matcher(str);
        if (matcher.matches()) {
            return new DLNADoc(matcher.group(1), matcher.group(2));
        }
        throw new InvalidValueException(tr.g("Can't parse DLNADoc: ", str));
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        DLNADoc dLNADoc = (DLNADoc) obj;
        return this.f78504a.equals(dLNADoc.f78504a) && this.f78505b.equals(dLNADoc.f78505b);
    }

    public final int hashCode() {
        return this.f78505b.hashCode() + (this.f78504a.hashCode() * 31);
    }

    public final String toString() {
        return this.f78504a + "-" + this.f78505b;
    }

    public DLNADoc(String str, String str2) {
        this.f78504a = str;
        this.f78505b = str2;
    }
}
