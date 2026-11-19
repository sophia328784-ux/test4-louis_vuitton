package org.teleal.cling.model.message.header;

import defpackage.v40;
import java.net.URI;
import org.teleal.cling.model.types.DeviceType;

/* JADX INFO: loaded from: classes5.dex */
public class DeviceTypeHeader extends UpnpHeader<DeviceType> {
    public DeviceTypeHeader(URI uri) {
        b(uri.toString());
    }

    @Override // org.teleal.cling.model.message.header.UpnpHeader
    public final String a() {
        return ((DeviceType) this.f78433a).toString();
    }

    @Override // org.teleal.cling.model.message.header.UpnpHeader
    public void b(String str) {
        try {
            this.f78433a = DeviceType.a(str);
        } catch (RuntimeException e2) {
            v40.h(e2.getMessage(), "Invalid device type header value, ");
        }
    }

    public DeviceTypeHeader() {
    }

    public DeviceTypeHeader(DeviceType deviceType) {
        this.f78433a = deviceType;
    }
}
