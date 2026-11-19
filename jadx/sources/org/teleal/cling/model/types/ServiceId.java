package org.teleal.cling.model.types;

import defpackage.md;
import defpackage.tr;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes5.dex */
public class ServiceId {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final Pattern f78518c = Pattern.compile("urn:([a-zA-Z0-9\\-\\.]+):serviceId:([a-zA-Z_0-9\\-:\\.]{1,64})");

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f78519a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f78520b;

    public ServiceId(String str, String str2) {
        if (str != null && !str.matches("[a-zA-Z0-9\\-\\.]+")) {
            md.n("Service ID namespace contains illegal characters");
            throw null;
        }
        this.f78519a = str;
        if (str2 == null || str2.matches("[a-zA-Z_0-9\\-:\\.]{1,64}")) {
            this.f78520b = str2;
        } else {
            md.n("Service ID suffix too long (64) or contains illegal characters");
            throw null;
        }
    }

    public static ServiceId a(String str) {
        UDAServiceId uDAServiceIdB;
        try {
            uDAServiceIdB = UDAServiceId.b(str);
        } catch (Exception unused) {
            uDAServiceIdB = null;
        }
        if (uDAServiceIdB != null) {
            return uDAServiceIdB;
        }
        Matcher matcher = f78518c.matcher(str);
        if (matcher.matches()) {
            return new ServiceId(matcher.group(1), matcher.group(2));
        }
        throw new InvalidValueException(tr.g("Can't parse Service ID string (namespace/id): ", str));
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof ServiceId)) {
            return false;
        }
        ServiceId serviceId = (ServiceId) obj;
        return this.f78520b.equals(serviceId.f78520b) && this.f78519a.equals(serviceId.f78519a);
    }

    public final int hashCode() {
        return this.f78520b.hashCode() + (this.f78519a.hashCode() * 31);
    }

    public final String toString() {
        return "urn:" + this.f78519a + ":serviceId:" + this.f78520b;
    }
}
