package org.teleal.cling.model.message.header;

import defpackage.v40;
import java.net.MalformedURLException;
import java.net.URL;

/* JADX INFO: loaded from: classes5.dex */
public class LocationHeader extends UpnpHeader<URL> {
    public LocationHeader(String str) {
        b(str);
    }

    @Override // org.teleal.cling.model.message.header.UpnpHeader
    public final String a() {
        return ((URL) this.f78433a).toString();
    }

    @Override // org.teleal.cling.model.message.header.UpnpHeader
    public final void b(String str) {
        try {
            this.f78433a = new URL(str);
        } catch (MalformedURLException e2) {
            v40.h(e2.getMessage(), "Invalid URI: ");
        }
    }

    public LocationHeader(URL url) {
        this.f78433a = url;
    }

    public LocationHeader() {
    }
}
