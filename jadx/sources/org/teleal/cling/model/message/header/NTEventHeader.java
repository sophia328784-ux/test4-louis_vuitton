package org.teleal.cling.model.message.header;

import defpackage.v40;

/* JADX INFO: loaded from: classes5.dex */
public class NTEventHeader extends UpnpHeader<String> {
    public NTEventHeader() {
        this.f78433a = "upnp:event";
    }

    @Override // org.teleal.cling.model.message.header.UpnpHeader
    public final String a() {
        return (String) this.f78433a;
    }

    @Override // org.teleal.cling.model.message.header.UpnpHeader
    public final void b(String str) {
        if (str.toLowerCase().equals(this.f78433a)) {
            return;
        }
        v40.m("Invalid event NT header value: ".concat(str));
    }
}
