package org.teleal.cling.model.types;

/* JADX INFO: loaded from: classes5.dex */
public class NamedDeviceType {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final UDN f78514a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final DeviceType f78515b;

    public NamedDeviceType(UDN udn, DeviceType deviceType) {
        this.f78514a = udn;
        this.f78515b = deviceType;
    }

    public static NamedDeviceType a(String str) {
        String[] strArrSplit = str.split("::");
        if (strArrSplit.length != 2) {
            throw new InvalidValueException("Can't parse UDN::DeviceType from: ".concat(str));
        }
        try {
            return new NamedDeviceType(UDN.a(strArrSplit[0]), DeviceType.a(strArrSplit[1]));
        } catch (Exception unused) {
            throw new InvalidValueException("Can't parse UDN: " + strArrSplit[0]);
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof NamedDeviceType)) {
            return false;
        }
        NamedDeviceType namedDeviceType = (NamedDeviceType) obj;
        return this.f78515b.equals(namedDeviceType.f78515b) && this.f78514a.equals(namedDeviceType.f78514a);
    }

    public final int hashCode() {
        return this.f78515b.hashCode() + (this.f78514a.f78532a.hashCode() * 31);
    }

    public final String toString() {
        return this.f78514a.toString() + "::" + this.f78515b.toString();
    }
}
