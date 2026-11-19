package org.teleal.cling.model.message.header;

import defpackage.fc;
import defpackage.v40;
import java.net.URI;
import org.teleal.cling.model.types.DeviceType;
import org.teleal.cling.model.types.UDADeviceType;

/* JADX INFO: loaded from: classes5.dex */
public class UDADeviceTypeHeader extends DeviceTypeHeader {
    public UDADeviceTypeHeader() {
    }

    @Override // org.teleal.cling.model.message.header.DeviceTypeHeader, org.teleal.cling.model.message.header.UpnpHeader
    public final void b(String str) {
        try {
            this.f78433a = UDADeviceType.b(str);
        } catch (Exception e2) {
            v40.m(fc.g(e2, new StringBuilder("Invalid UDA device type header value, ")));
        }
    }

    public UDADeviceTypeHeader(URI uri) {
        super(uri);
    }

    public UDADeviceTypeHeader(DeviceType deviceType) {
        super(deviceType);
    }
}
