package org.teleal.cling.model.message.header;

import defpackage.v40;

/* JADX INFO: loaded from: classes5.dex */
public class SubscriptionIdHeader extends UpnpHeader<String> {
    public SubscriptionIdHeader(String str) {
        this.f78433a = str;
    }

    @Override // org.teleal.cling.model.message.header.UpnpHeader
    public final String a() {
        return (String) this.f78433a;
    }

    @Override // org.teleal.cling.model.message.header.UpnpHeader
    public final void b(String str) {
        if (str.startsWith("uuid:")) {
            this.f78433a = str;
        } else {
            v40.m("Invalid subscription ID header value, must start with 'uuid:': ".concat(str));
        }
    }

    public SubscriptionIdHeader() {
    }
}
