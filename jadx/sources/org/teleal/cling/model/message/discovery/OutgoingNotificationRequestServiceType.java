package org.teleal.cling.model.message.discovery;

import org.teleal.cling.model.Location;
import org.teleal.cling.model.message.header.ServiceTypeHeader;
import org.teleal.cling.model.message.header.ServiceUSNHeader;
import org.teleal.cling.model.message.header.UpnpHeader;
import org.teleal.cling.model.meta.LocalDevice;
import org.teleal.cling.model.types.NotificationSubtype;
import org.teleal.cling.model.types.ServiceType;

/* JADX INFO: loaded from: classes5.dex */
public class OutgoingNotificationRequestServiceType extends OutgoingNotificationRequest {
    public OutgoingNotificationRequestServiceType(Location location, LocalDevice localDevice, NotificationSubtype notificationSubtype, ServiceType serviceType) {
        super(location, localDevice, notificationSubtype);
        this.f78412c.h(UpnpHeader.Type.NT, new ServiceTypeHeader(serviceType));
        this.f78412c.h(UpnpHeader.Type.USN, new ServiceUSNHeader(localDevice.f78444a.f78458a, serviceType));
    }
}
