package org.teleal.cling.model.message.header;

import defpackage.fc;
import defpackage.v40;
import java.net.URI;
import org.teleal.cling.model.types.UDAServiceType;

/* JADX INFO: loaded from: classes5.dex */
public class UDAServiceTypeHeader extends ServiceTypeHeader {
    public UDAServiceTypeHeader() {
    }

    @Override // org.teleal.cling.model.message.header.ServiceTypeHeader, org.teleal.cling.model.message.header.UpnpHeader
    public final void b(String str) {
        try {
            this.f78433a = UDAServiceType.c(str);
        } catch (Exception e2) {
            v40.m(fc.g(e2, new StringBuilder("Invalid UDA service type header value, ")));
        }
    }

    public UDAServiceTypeHeader(URI uri) {
        super(uri);
    }

    public UDAServiceTypeHeader(UDAServiceType uDAServiceType) {
        super(uDAServiceType);
    }
}
