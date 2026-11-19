package org.teleal.cling.model.message.discovery;

import defpackage.x1;
import java.net.InetAddress;
import org.teleal.cling.model.Location;
import org.teleal.cling.model.ModelUtil;
import org.teleal.cling.model.message.OutgoingDatagramMessage;
import org.teleal.cling.model.message.UpnpRequest;
import org.teleal.cling.model.message.header.HostHeader;
import org.teleal.cling.model.message.header.LocationHeader;
import org.teleal.cling.model.message.header.MaxAgeHeader;
import org.teleal.cling.model.message.header.NTSHeader;
import org.teleal.cling.model.message.header.ServerHeader;
import org.teleal.cling.model.message.header.UpnpHeader;
import org.teleal.cling.model.meta.LocalDevice;
import org.teleal.cling.model.types.NotificationSubtype;

/* JADX INFO: loaded from: classes5.dex */
public abstract class OutgoingNotificationRequest extends OutgoingDatagramMessage<UpnpRequest> {
    public OutgoingNotificationRequest(Location location, LocalDevice localDevice, NotificationSubtype notificationSubtype) {
        UpnpRequest upnpRequest = new UpnpRequest(UpnpRequest.Method.NOTIFY);
        boolean z = ModelUtil.f78377a;
        try {
            super(upnpRequest, InetAddress.getByName("239.255.255.250"), 1900);
            this.f78412c.h(UpnpHeader.Type.MAX_AGE, new MaxAgeHeader(localDevice.f78444a.f78459b));
            this.f78412c.h(UpnpHeader.Type.LOCATION, new LocationHeader(location.a()));
            this.f78412c.h(UpnpHeader.Type.SERVER, new ServerHeader());
            this.f78412c.h(UpnpHeader.Type.HOST, new HostHeader());
            this.f78412c.h(UpnpHeader.Type.NTS, new NTSHeader(notificationSubtype));
        } catch (Exception e2) {
            x1.m(e2);
            throw null;
        }
    }
}
