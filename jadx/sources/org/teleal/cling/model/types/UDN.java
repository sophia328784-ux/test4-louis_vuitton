package org.teleal.cling.model.types;

import java.util.UUID;

/* JADX INFO: loaded from: classes5.dex */
public class UDN {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f78532a;

    public UDN(UUID uuid) {
        this.f78532a = uuid.toString();
    }

    public static UDN a(String str) {
        if (str.startsWith("uuid:")) {
            str = str.substring(5);
        }
        return new UDN(str);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof UDN)) {
            return false;
        }
        return this.f78532a.equals(((UDN) obj).f78532a);
    }

    public final int hashCode() {
        return this.f78532a.hashCode();
    }

    public final String toString() {
        return "uuid:" + this.f78532a;
    }

    public UDN(String str) {
        this.f78532a = str;
    }
}
