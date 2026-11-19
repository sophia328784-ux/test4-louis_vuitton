package org.teleal.cling.model.meta;

import org.teleal.cling.model.types.UDN;

/* JADX INFO: loaded from: classes5.dex */
public class DeviceIdentity {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public UDN f78458a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Integer f78459b;

    public DeviceIdentity(UDN udn) {
        this.f78458a = udn;
        this.f78459b = 1800;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return obj != null && getClass() == obj.getClass() && this.f78458a.equals(((DeviceIdentity) obj).f78458a);
    }

    public final int hashCode() {
        return this.f78458a.f78532a.hashCode();
    }

    public String toString() {
        return "(" + getClass().getSimpleName() + ") UDN: " + this.f78458a;
    }

    public DeviceIdentity(UDN udn, DeviceIdentity deviceIdentity) {
        this.f78458a = udn;
        this.f78459b = deviceIdentity.f78459b;
    }

    public DeviceIdentity(UDN udn, Integer num) {
        this.f78458a = udn;
        this.f78459b = num;
    }
}
