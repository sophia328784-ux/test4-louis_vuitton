package org.teleal.cling.model.message.header;

import defpackage.v40;
import java.net.URI;
import org.teleal.cling.model.types.SoapActionType;

/* JADX INFO: loaded from: classes5.dex */
public class SoapActionHeader extends UpnpHeader<SoapActionType> {
    public SoapActionHeader(URI uri) {
        this.f78433a = SoapActionType.b(uri.toString());
    }

    @Override // org.teleal.cling.model.message.header.UpnpHeader
    public final String a() {
        return "\"" + ((SoapActionType) this.f78433a).toString() + "\"";
    }

    @Override // org.teleal.cling.model.message.header.UpnpHeader
    public final void b(String str) {
        try {
            if (!str.startsWith("\"") && str.endsWith("\"")) {
                throw new InvalidHeaderException("Invalid SOAP action header, must be enclosed in doublequotes:".concat(str));
            }
            this.f78433a = SoapActionType.b(str.substring(1, str.length() - 1));
        } catch (RuntimeException e2) {
            v40.h(e2.getMessage(), "Invalid SOAP action header value, ");
        }
    }

    public SoapActionHeader() {
    }

    public SoapActionHeader(SoapActionType soapActionType) {
        this.f78433a = soapActionType;
    }

    public SoapActionHeader(String str) throws InvalidHeaderException {
        b(str);
    }
}
