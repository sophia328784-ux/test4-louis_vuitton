package org.teleal.cling.model.types;

/* JADX INFO: loaded from: classes5.dex */
public class NamedServiceType {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final UDN f78516a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ServiceType f78517b;

    public NamedServiceType(UDN udn, ServiceType serviceType) {
        this.f78516a = udn;
        this.f78517b = serviceType;
    }

    public static NamedServiceType a(String str) {
        String[] strArrSplit = str.split("::");
        if (strArrSplit.length != 2) {
            throw new InvalidValueException("Can't parse UDN::ServiceType from: ".concat(str));
        }
        try {
            return new NamedServiceType(UDN.a(strArrSplit[0]), ServiceType.b(strArrSplit[1]));
        } catch (Exception unused) {
            throw new InvalidValueException("Can't parse UDN: " + strArrSplit[0]);
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof NamedServiceType)) {
            return false;
        }
        NamedServiceType namedServiceType = (NamedServiceType) obj;
        return this.f78517b.equals(namedServiceType.f78517b) && this.f78516a.equals(namedServiceType.f78516a);
    }

    public final int hashCode() {
        return this.f78517b.hashCode() + (this.f78516a.f78532a.hashCode() * 31);
    }

    public final String toString() {
        return this.f78516a.toString() + "::" + this.f78517b.toString();
    }
}
