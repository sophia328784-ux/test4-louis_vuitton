package org.teleal.cling.model.message.discovery;

import org.teleal.cling.model.Location;
import org.teleal.cling.model.message.UpnpHeaders;
import org.teleal.cling.model.message.header.DeviceTypeHeader;
import org.teleal.cling.model.message.header.DeviceUSNHeader;
import org.teleal.cling.model.message.header.UpnpHeader;
import org.teleal.cling.model.meta.LocalDevice;
import org.teleal.cling.model.types.DeviceType;
import org.teleal.cling.model.types.NotificationSubtype;

/* JADX INFO: loaded from: classes5.dex */
public class OutgoingNotificationRequestDeviceType extends OutgoingNotificationRequest {
    public OutgoingNotificationRequestDeviceType(Location location, LocalDevice localDevice, NotificationSubtype notificationSubtype) {
        super(location, localDevice, notificationSubtype);
        UpnpHeaders upnpHeaders = this.f78412c;
        UpnpHeader.Type type = UpnpHeader.Type.NT;
        DeviceType deviceType = localDevice.f78446c;
        upnpHeaders.h(type, new DeviceTypeHeader(deviceType));
        this.f78412c.h(UpnpHeader.Type.USN, new DeviceUSNHeader(localDevice.f78444a.f78458a, deviceType));
    }
}
