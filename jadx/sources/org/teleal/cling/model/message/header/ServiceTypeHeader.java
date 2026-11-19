package org.teleal.cling.model.message.header;

import defpackage.v40;
import java.net.URI;
import org.teleal.cling.model.types.ServiceType;

/* JADX INFO: loaded from: classes5.dex */
public class ServiceTypeHeader extends UpnpHeader<ServiceType> {
    public ServiceTypeHeader(URI uri) {
        b(uri.toString());
    }

    @Override // org.teleal.cling.model.message.header.UpnpHeader
    public final String a() {
        return ((ServiceType) this.f78433a).toString();
    }

    @Override // org.teleal.cling.model.message.header.UpnpHeader
    public void b(String str) {
        try {
            this.f78433a = ServiceType.b(str);
        } catch (RuntimeException e2) {
            v40.h(e2.getMessage(), "Invalid service type header value, ");
        }
    }

    public ServiceTypeHeader() {
    }

    public ServiceTypeHeader(ServiceType serviceType) {
        this.f78433a = serviceType;
    }
}
