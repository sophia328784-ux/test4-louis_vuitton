package org.teleal.cling.model.message.header;

import defpackage.fc;
import defpackage.v40;
import org.teleal.cling.model.types.DeviceType;
import org.teleal.cling.model.types.NamedDeviceType;
import org.teleal.cling.model.types.UDN;

/* JADX INFO: loaded from: classes5.dex */
public class DeviceUSNHeader extends UpnpHeader<NamedDeviceType> {
    public DeviceUSNHeader(UDN udn, DeviceType deviceType) {
        this.f78433a = new NamedDeviceType(udn, deviceType);
    }

    @Override // org.teleal.cling.model.message.header.UpnpHeader
    public final String a() {
        return ((NamedDeviceType) this.f78433a).toString();
    }

    @Override // org.teleal.cling.model.message.header.UpnpHeader
    public final void b(String str) {
        try {
            this.f78433a = NamedDeviceType.a(str);
        } catch (Exception e2) {
            v40.m(fc.g(e2, new StringBuilder("Invalid device USN header value, ")));
        }
    }

    public DeviceUSNHeader() {
    }

    public DeviceUSNHeader(NamedDeviceType namedDeviceType) {
        this.f78433a = namedDeviceType;
    }
}
