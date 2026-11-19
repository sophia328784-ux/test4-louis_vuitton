package org.teleal.cling.model.message.header;

import defpackage.fc;
import defpackage.v40;
import org.teleal.cling.model.types.NamedServiceType;
import org.teleal.cling.model.types.ServiceType;
import org.teleal.cling.model.types.UDN;

/* JADX INFO: loaded from: classes5.dex */
public class ServiceUSNHeader extends UpnpHeader<NamedServiceType> {
    public ServiceUSNHeader(UDN udn, ServiceType serviceType) {
        this.f78433a = new NamedServiceType(udn, serviceType);
    }

    @Override // org.teleal.cling.model.message.header.UpnpHeader
    public final String a() {
        return ((NamedServiceType) this.f78433a).toString();
    }

    @Override // org.teleal.cling.model.message.header.UpnpHeader
    public final void b(String str) {
        try {
            this.f78433a = NamedServiceType.a(str);
        } catch (Exception e2) {
            v40.m(fc.g(e2, new StringBuilder("Invalid service USN header value, ")));
        }
    }

    public ServiceUSNHeader() {
    }

    public ServiceUSNHeader(NamedServiceType namedServiceType) {
        this.f78433a = namedServiceType;
    }
}
