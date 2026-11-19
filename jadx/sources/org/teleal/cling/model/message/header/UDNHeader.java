package org.teleal.cling.model.message.header;

import defpackage.v40;
import org.teleal.cling.model.types.UDN;

/* JADX INFO: loaded from: classes5.dex */
public class UDNHeader extends UpnpHeader<UDN> {
    public UDNHeader(UDN udn) {
        this.f78433a = udn;
    }

    @Override // org.teleal.cling.model.message.header.UpnpHeader
    public final String a() {
        return ((UDN) this.f78433a).toString();
    }

    @Override // org.teleal.cling.model.message.header.UpnpHeader
    public final void b(String str) {
        if (!str.startsWith("uuid:")) {
            v40.m("Invalid UDA header value, must start with 'uuid:': ".concat(str));
        } else if (str.contains("::urn")) {
            v40.m("Invalid UDA header value, must not contain '::urn': ".concat(str));
        } else {
            this.f78433a = new UDN(str.substring(5));
        }
    }

    public UDNHeader() {
    }
}
