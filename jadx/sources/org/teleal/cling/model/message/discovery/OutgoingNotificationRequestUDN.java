package org.teleal.cling.model.message.discovery;

import org.teleal.cling.model.Location;
import org.teleal.cling.model.message.UpnpHeaders;
import org.teleal.cling.model.message.header.UDNHeader;
import org.teleal.cling.model.message.header.UpnpHeader;
import org.teleal.cling.model.meta.DeviceIdentity;
import org.teleal.cling.model.meta.LocalDevice;
import org.teleal.cling.model.types.NotificationSubtype;

/* JADX INFO: loaded from: classes5.dex */
public class OutgoingNotificationRequestUDN extends OutgoingNotificationRequest {
    public OutgoingNotificationRequestUDN(Location location, LocalDevice localDevice, NotificationSubtype notificationSubtype) {
        super(location, localDevice, notificationSubtype);
        UpnpHeaders upnpHeaders = this.f78412c;
        UpnpHeader.Type type = UpnpHeader.Type.NT;
        DeviceIdentity deviceIdentity = localDevice.f78444a;
        upnpHeaders.h(type, new UDNHeader(deviceIdentity.f78458a));
        this.f78412c.h(UpnpHeader.Type.USN, new UDNHeader(deviceIdentity.f78458a));
    }
}
