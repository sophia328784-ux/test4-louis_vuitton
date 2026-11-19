package org.teleal.cling.model.types;

import defpackage.fc;
import defpackage.md;
import defpackage.tr;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes5.dex */
public class ServiceType {
    public static final Pattern d = Pattern.compile("urn:([a-zA-Z0-9\\-\\.]+):service:([a-zA-Z_0-9\\-]{1,64}):([0-9]+).*");

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f78521a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f78522b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f78523c;

    public ServiceType(String str, String str2, int i2) {
        this.f78523c = 1;
        if (str != null && !str.matches("[a-zA-Z0-9\\-\\.]+")) {
            md.n("Service type namespace contains illegal characters");
            throw null;
        }
        this.f78521a = str;
        if (str2 != null && !str2.matches("[a-zA-Z_0-9\\-]{1,64}")) {
            md.n("Service type suffix too long (64) or contains illegal characters");
            throw null;
        }
        this.f78522b = str2;
        this.f78523c = i2;
    }

    public static ServiceType b(String str) {
        UDAServiceType uDAServiceTypeC;
        String strReplaceAll = str.replaceAll("\\s", "");
        try {
            uDAServiceTypeC = UDAServiceType.c(strReplaceAll);
        } catch (Exception unused) {
            uDAServiceTypeC = null;
        }
        if (uDAServiceTypeC != null) {
            return uDAServiceTypeC;
        }
        Matcher matcher = d.matcher(strReplaceAll);
        if (matcher.matches()) {
            return new ServiceType(matcher.group(1), matcher.group(2), Integer.valueOf(matcher.group(3)).intValue());
        }
        throw new InvalidValueException(tr.g("Can't parse service type string (namespace/type/version): ", strReplaceAll));
    }

    public final boolean a(ServiceType serviceType) {
        return serviceType != null && this.f78521a.equals(serviceType.f78521a) && this.f78522b.equals(serviceType.f78522b) && this.f78523c >= serviceType.f78523c;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof ServiceType)) {
            return false;
        }
        ServiceType serviceType = (ServiceType) obj;
        return this.f78523c == serviceType.f78523c && this.f78521a.equals(serviceType.f78521a) && this.f78522b.equals(serviceType.f78522b);
    }

    public final int hashCode() {
        return fc.b(this.f78521a.hashCode() * 31, 31, this.f78522b) + this.f78523c;
    }

    public final String toString() {
        return "urn:" + this.f78521a + ":service:" + this.f78522b + ":" + this.f78523c;
    }

    public ServiceType(String str, String str2) {
        this(str, str2, 1);
    }
}
