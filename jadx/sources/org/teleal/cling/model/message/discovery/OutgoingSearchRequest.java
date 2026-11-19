package org.teleal.cling.model.message.discovery;

import defpackage.x1;
import java.net.InetAddress;
import org.teleal.cling.model.ModelUtil;
import org.teleal.cling.model.message.OutgoingDatagramMessage;
import org.teleal.cling.model.message.UpnpRequest;
import org.teleal.cling.model.message.header.HostHeader;
import org.teleal.cling.model.message.header.MANHeader;
import org.teleal.cling.model.message.header.MXHeader;
import org.teleal.cling.model.message.header.UpnpHeader;
import org.teleal.cling.model.types.NotificationSubtype;

/* JADX INFO: loaded from: classes5.dex */
public class OutgoingSearchRequest extends OutgoingDatagramMessage<UpnpRequest> {
    public OutgoingSearchRequest(UpnpHeader upnpHeader, int i2) {
        UpnpRequest upnpRequest = new UpnpRequest(UpnpRequest.Method.MSEARCH);
        boolean z = ModelUtil.f78377a;
        try {
            super(upnpRequest, InetAddress.getByName("239.255.255.250"), 1900);
            this.f78412c.h(UpnpHeader.Type.MAN, new MANHeader(NotificationSubtype.DISCOVER.a()));
            this.f78412c.h(UpnpHeader.Type.MX, new MXHeader(Integer.valueOf(i2)));
            this.f78412c.h(UpnpHeader.Type.ST, upnpHeader);
            this.f78412c.h(UpnpHeader.Type.HOST, new HostHeader());
        } catch (Exception e2) {
            x1.m(e2);
            throw null;
        }
    }
}
