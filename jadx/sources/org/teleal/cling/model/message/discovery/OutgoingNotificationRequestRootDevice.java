package org.teleal.cling.model.message.discovery;

import org.teleal.cling.model.Location;
import org.teleal.cling.model.NetworkAddress;
import org.teleal.cling.model.message.header.InterfaceMacHeader;
import org.teleal.cling.model.message.header.RootDeviceHeader;
import org.teleal.cling.model.message.header.USNRootDeviceHeader;
import org.teleal.cling.model.message.header.UpnpHeader;
import org.teleal.cling.model.meta.LocalDevice;
import org.teleal.cling.model.types.NotificationSubtype;

/* JADX INFO: loaded from: classes5.dex */
public class OutgoingNotificationRequestRootDevice extends OutgoingNotificationRequest {
    public OutgoingNotificationRequestRootDevice(Location location, LocalDevice localDevice, NotificationSubtype notificationSubtype) {
        super(location, localDevice, notificationSubtype);
        this.f78412c.h(UpnpHeader.Type.NT, new RootDeviceHeader());
        this.f78412c.h(UpnpHeader.Type.USN, new USNRootDeviceHeader(localDevice.f78444a.f78458a));
        NetworkAddress networkAddress = location.f78375a;
        if (networkAddress.f78383c != null) {
            this.f78412c.h(UpnpHeader.Type.EXT_IFACE_MAC, new InterfaceMacHeader(networkAddress.f78383c));
        }
    }
}
