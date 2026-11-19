package org.teleal.cling.protocol.async;

import com.linkplay.log.LinkplayLog;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.logging.Logger;
import org.teleal.cling.UpnpService;
import org.teleal.cling.model.Location;
import org.teleal.cling.model.NetworkAddress;
import org.teleal.cling.model.message.discovery.OutgoingNotificationRequest;
import org.teleal.cling.model.message.discovery.OutgoingNotificationRequestDeviceType;
import org.teleal.cling.model.message.discovery.OutgoingNotificationRequestRootDevice;
import org.teleal.cling.model.message.discovery.OutgoingNotificationRequestServiceType;
import org.teleal.cling.model.message.discovery.OutgoingNotificationRequestUDN;
import org.teleal.cling.model.meta.Device;
import org.teleal.cling.model.meta.LocalDevice;
import org.teleal.cling.model.meta.Service;
import org.teleal.cling.model.types.NotificationSubtype;
import org.teleal.cling.model.types.ServiceType;
import org.teleal.cling.protocol.SendingAsync;

/* JADX INFO: loaded from: classes5.dex */
public abstract class SendingNotification extends SendingAsync {
    private static final Logger log = Logger.getLogger(SendingNotification.class.getName());
    private LocalDevice device;

    public SendingNotification(UpnpService upnpService, LocalDevice localDevice) {
        super(upnpService);
        this.device = localDevice;
    }

    public List<OutgoingNotificationRequest> createDeviceMessages(LocalDevice localDevice, Location location) {
        ArrayList arrayList = new ArrayList();
        if (localDevice.n()) {
            arrayList.add(new OutgoingNotificationRequestRootDevice(location, localDevice, getNotificationSubtype()));
        }
        arrayList.add(new OutgoingNotificationRequestUDN(location, localDevice, getNotificationSubtype()));
        arrayList.add(new OutgoingNotificationRequestDeviceType(location, localDevice, getNotificationSubtype()));
        return arrayList;
    }

    public List<OutgoingNotificationRequest> createServiceTypeMessages(LocalDevice localDevice, Location location) {
        ArrayList arrayList = new ArrayList();
        localDevice.getClass();
        HashSet hashSetF = Device.f(null, null, localDevice);
        HashSet hashSet = new HashSet();
        Iterator it = hashSetF.iterator();
        while (it.hasNext()) {
            hashSet.add(((Service) it.next()).f78479a);
        }
        for (ServiceType serviceType : (ServiceType[]) hashSet.toArray(new ServiceType[hashSet.size()])) {
            arrayList.add(new OutgoingNotificationRequestServiceType(location, localDevice, getNotificationSubtype(), serviceType));
        }
        return arrayList;
    }

    @Override // org.teleal.cling.protocol.SendingAsync
    public void execute() {
        List listD = getUpnpService().c().d(null);
        if (listD.size() == 0) {
            log.fine("Aborting notifications, no active stream servers found (network disabled?)");
            return;
        }
        ArrayList arrayList = new ArrayList();
        Iterator it = listD.iterator();
        while (it.hasNext()) {
            arrayList.add(new Location((NetworkAddress) it.next(), getUpnpService().getConfiguration().getNamespace().a(getDevice())));
        }
        for (int i2 = 0; i2 < getBulkRepeat(); i2++) {
            try {
                Iterator it2 = arrayList.iterator();
                while (it2.hasNext()) {
                    sendMessages((Location) it2.next());
                }
                log.finer("Sleeping " + getBulkIntervalMilliseconds() + " milliseconds");
                Thread.sleep((long) getBulkIntervalMilliseconds());
            } catch (InterruptedException e2) {
                log.warning("Advertisement thread was interrupted: " + e2);
            }
        }
    }

    public int getBulkIntervalMilliseconds() {
        return 150;
    }

    public int getBulkRepeat() {
        return 3;
    }

    public LocalDevice getDevice() {
        return this.device;
    }

    public abstract NotificationSubtype getNotificationSubtype();

    public void sendMessages(Location location) {
        log.finer("Sending root device messages: " + getDevice());
        for (OutgoingNotificationRequest outgoingNotificationRequest : createDeviceMessages(getDevice(), location)) {
            LinkplayLog.i("UPNP-SEARCH", "send sendMessages rootDeviceMsgs");
            getUpnpService().c().send(outgoingNotificationRequest);
        }
        if (getDevice().k()) {
            LocalDevice device = getDevice();
            device.getClass();
            HashSet hashSetD = Device.d(device);
            for (LocalDevice localDevice : (LocalDevice[]) hashSetD.toArray(new LocalDevice[hashSetD.size()])) {
                log.finer("Sending embedded device messages: " + localDevice);
                LinkplayLog.i("UPNP-SEARCH", "send sendMessages embeddedDevice");
                Iterator<OutgoingNotificationRequest> it = createDeviceMessages(localDevice, location).iterator();
                while (it.hasNext()) {
                    getUpnpService().c().send(it.next());
                }
            }
        }
        List<OutgoingNotificationRequest> listCreateServiceTypeMessages = createServiceTypeMessages(getDevice(), location);
        if (listCreateServiceTypeMessages.size() > 0) {
            log.finer("Sending service type messages");
            for (OutgoingNotificationRequest outgoingNotificationRequest2 : listCreateServiceTypeMessages) {
                LinkplayLog.i("UPNP-SEARCH", "send sendMessages serviceTypeMsgs");
                getUpnpService().c().send(outgoingNotificationRequest2);
            }
        }
    }
}
