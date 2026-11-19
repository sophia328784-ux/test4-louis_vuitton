package org.teleal.cling.model.message.header;

import defpackage.fc;
import defpackage.o60;
import defpackage.v40;
import org.teleal.cling.model.types.UDN;

/* JADX INFO: loaded from: classes5.dex */
public class USNRootDeviceHeader extends UpnpHeader<UDN> {
    public USNRootDeviceHeader(UDN udn) {
        this.f78433a = udn;
    }

    @Override // org.teleal.cling.model.message.header.UpnpHeader
    public final String a() {
        return ((UDN) this.f78433a).toString().concat("::upnp:rootdevice");
    }

    @Override // org.teleal.cling.model.message.header.UpnpHeader
    public final void b(String str) {
        if (str.startsWith("uuid:") && str.endsWith("::upnp:rootdevice")) {
            this.f78433a = new UDN(o60.g(17, 5, str));
        } else {
            v40.m(fc.h("Invalid root device USN header value, must start with 'uuid:' and end with '::upnp:rootdevice' but is '", str, "'"));
        }
    }

    public USNRootDeviceHeader() {
    }
}
