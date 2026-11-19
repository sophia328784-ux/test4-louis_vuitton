package org.teleal.cling.model.message.header;

import defpackage.v40;

/* JADX INFO: loaded from: classes5.dex */
public class EXTHeader extends UpnpHeader<String> {
    public EXTHeader() {
        this.f78433a = "";
    }

    @Override // org.teleal.cling.model.message.header.UpnpHeader
    public final String a() {
        return (String) this.f78433a;
    }

    @Override // org.teleal.cling.model.message.header.UpnpHeader
    public final void b(String str) {
        if (str.length() <= 0) {
            return;
        }
        v40.m("Invalid EXT header, it has no value: ".concat(str));
    }
}
