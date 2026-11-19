package org.teleal.cling.registry;

import com.linkplay.log.LinkplayLog;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Date;
import java.util.HashSet;
import java.util.Iterator;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.teleal.cling.model.ExpirationDetails;
import org.teleal.cling.model.gena.CancelReason;
import org.teleal.cling.model.gena.RemoteGENASubscription;
import org.teleal.cling.model.meta.Device;
import org.teleal.cling.model.meta.DeviceIdentity;
import org.teleal.cling.model.meta.LocalDevice;
import org.teleal.cling.model.meta.RemoteDevice;
import org.teleal.cling.model.meta.RemoteDeviceIdentity;
import org.teleal.cling.model.meta.RemoteService;
import org.teleal.cling.model.resource.Resource;
import org.teleal.cling.model.types.UDN;

/* JADX INFO: loaded from: classes5.dex */
class RemoteItems extends RegistryItems<RemoteDevice, RemoteGENASubscription> {
    public static final Logger d = Logger.getLogger(Registry.class.getName());

    public final void g(final RemoteDevice remoteDevice) {
        HashSet hashSet;
        LinkplayLog.i("UPNP-SEARCH", "Add RemoteDevice init");
        if (k((RemoteDeviceIdentity) remoteDevice.f78444a)) {
            d.fine("Ignoring addition, device already registered: " + remoteDevice);
            return;
        }
        Resource[] resourceArrD = d(remoteDevice);
        for (Resource resource : resourceArrD) {
            d.fine("Validating remote device resource; " + resource);
            if (this.f78556a.r(resource.f78497a) != null) {
                throw new RegistrationException("URI namespace conflict with already registered resource: " + resource);
            }
        }
        LinkplayLog.i("UPNP-SEARCH", "RemoteItem addResource");
        for (Resource resource2 : resourceArrD) {
            RegistryImpl registryImpl = this.f78556a;
            synchronized (registryImpl) {
                synchronized (registryImpl) {
                    RegistryItem registryItem = new RegistryItem(resource2.f78497a, resource2, 0);
                    registryImpl.d.remove(registryItem);
                    registryImpl.d.add(registryItem);
                }
                d.fine("Added remote device resource: " + resource2);
            }
            d.fine("Added remote device resource: " + resource2);
        }
        LinkplayLog.i("UPNP-SEARCH", "New RegistryItem +++ device");
        RemoteDeviceIdentity remoteDeviceIdentity = (RemoteDeviceIdentity) remoteDevice.f78444a;
        RegistryItem registryItem2 = new RegistryItem(remoteDeviceIdentity.f78458a, remoteDevice, remoteDeviceIdentity.f78459b.intValue());
        Logger logger = d;
        logger.fine("Adding hydrated remote device to registry with " + registryItem2.f78555c.f78374a + " seconds expiration: " + remoteDevice);
        this.f78557b.add(registryItem2);
        if (logger.isLoggable(Level.FINEST)) {
            StringBuilder sb = new StringBuilder("\n-------------------------- START Registry Namespace -----------------------------------\n");
            RegistryImpl registryImpl2 = this.f78556a;
            synchronized (registryImpl2) {
                hashSet = new HashSet();
                Iterator it = registryImpl2.d.iterator();
                while (it.hasNext()) {
                    hashSet.add((Resource) ((RegistryItem) it.next()).f78554b);
                }
            }
            Iterator it2 = hashSet.iterator();
            while (it2.hasNext()) {
                sb.append((Resource) it2.next());
                sb.append("\n");
            }
            sb.append("-------------------------- END Registry Namespace -----------------------------------");
            d.finest(sb.toString());
        }
        d.fine("Completely hydrated remote device graph available, calling listeners: " + remoteDevice);
        for (final RegistryListener registryListener : this.f78556a.l()) {
            this.f78556a.f78548a.getConfiguration().d().execute(new Runnable() { // from class: org.teleal.cling.registry.RemoteItems.1
                @Override // java.lang.Runnable
                public void run() {
                    registryListener.remoteDeviceAdded(RemoteItems.this.f78556a, remoteDevice);
                }
            });
        }
    }

    public final boolean h(RemoteDevice remoteDevice, boolean z) {
        RegistryImpl registryImpl;
        final RemoteDevice remoteDevice2 = (RemoteDevice) c(((RemoteDeviceIdentity) remoteDevice.f78444a).f78458a, true);
        int i2 = 0;
        if (remoteDevice2 == null) {
            return false;
        }
        DeviceIdentity deviceIdentity = remoteDevice2.f78444a;
        Logger logger = d;
        logger.fine("Removing remote device from registry: " + remoteDevice);
        Resource[] resourceArrD = d(remoteDevice2);
        int length = resourceArrD.length;
        while (true) {
            registryImpl = this.f78556a;
            if (i2 >= length) {
                break;
            }
            Resource resource = resourceArrD[i2];
            if (registryImpl.x(resource)) {
                logger.fine("Unregistered resource: " + resource);
            }
            i2++;
        }
        Iterator it = this.f78558c.iterator();
        while (it.hasNext()) {
            final RegistryItem registryItem = (RegistryItem) it.next();
            if (((RemoteDeviceIdentity) ((RemoteDevice) ((RemoteService) ((RemoteGENASubscription) registryItem.f78554b).d()).f78482e).f78444a).f78458a.equals(((RemoteDeviceIdentity) deviceIdentity).f78458a)) {
                logger.fine("Removing outgoing subscription: " + ((String) registryItem.f78553a));
                it.remove();
                if (!z) {
                    registryImpl.f78548a.getConfiguration().d().execute(new Runnable(this) { // from class: org.teleal.cling.registry.RemoteItems.4
                        @Override // java.lang.Runnable
                        public void run() {
                            ((RemoteGENASubscription) registryItem.f78554b).f(CancelReason.DEVICE_WAS_REMOVED, null);
                        }
                    });
                }
            }
        }
        if (!z) {
            for (final RegistryListener registryListener : registryImpl.l()) {
                registryImpl.f78548a.getConfiguration().d().execute(new Runnable() { // from class: org.teleal.cling.registry.RemoteItems.5
                    @Override // java.lang.Runnable
                    public void run() {
                        registryListener.remoteDeviceRemoved(RemoteItems.this.f78556a, remoteDevice2);
                    }
                });
            }
        }
        this.f78557b.remove(new RegistryItem(((RemoteDeviceIdentity) deviceIdentity).f78458a));
        return true;
    }

    public final void i(boolean z) {
        for (RemoteDevice remoteDevice : (RemoteDevice[]) ((HashSet) b()).toArray(new RemoteDevice[((HashSet) b()).size()])) {
            h(remoteDevice, z);
        }
    }

    public final void j() {
        Logger logger = d;
        logger.fine("Cancelling all outgoing subscriptions to remote devices during shutdown");
        ArrayList arrayList = new ArrayList();
        Iterator it = this.f78558c.iterator();
        while (it.hasNext()) {
            arrayList.add((RemoteGENASubscription) ((RegistryItem) it.next()).f78554b);
        }
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            this.f78556a.f78548a.a().d((RemoteGENASubscription) it2.next()).run();
        }
        logger.fine("Removing all remote devices from registry during shutdown");
        i(true);
    }

    public final boolean k(RemoteDeviceIdentity remoteDeviceIdentity) {
        Collection<LocalDevice> collectionUnmodifiableCollection;
        RegistryImpl registryImpl = this.f78556a;
        synchronized (registryImpl) {
            collectionUnmodifiableCollection = Collections.unmodifiableCollection(registryImpl.g.b());
        }
        for (LocalDevice localDevice : collectionUnmodifiableCollection) {
            UDN udn = remoteDeviceIdentity.f78458a;
            localDevice.getClass();
            if (((LocalDevice) Device.b(udn, localDevice)) != null) {
                d.fine("Ignoring update, a local device graph contains UDN");
                LinkplayLog.i("UPNP-SEARCH", "LocalDevice find rdIdentity device.");
                return true;
            }
        }
        RemoteDevice remoteDevice = (RemoteDevice) c(remoteDeviceIdentity.f78458a, false);
        if (remoteDevice == null) {
            return false;
        }
        for (RegistryItem registryItem : this.f78557b) {
            if (((UDN) registryItem.f78553a).equals(remoteDeviceIdentity.f78458a)) {
                ExpirationDetails expirationDetails = registryItem.f78555c;
                new Date().getTime();
                expirationDetails.getClass();
                break;
            }
        }
        if (!remoteDevice.n()) {
            d.fine("Updating root device of embedded: " + remoteDevice);
            if (!remoteDevice.n()) {
                while (true) {
                    Device device = remoteDevice.f78449h;
                    if (device == null) {
                        break;
                    }
                    remoteDevice = (RemoteDevice) device;
                }
            }
        }
        if (!remoteDeviceIdentity.f78474c.equals(((RemoteDeviceIdentity) remoteDevice.f78444a).f78474c)) {
            LinkplayLog.w("UPNP-SEARCH", " RemoteItems::DescriptorURL不一致：：remove :: " + remoteDevice.d.f78452b);
            h(remoteDevice, false);
            return false;
        }
        int iK = this.f78556a.f78548a.getConfiguration().k();
        if (iK == 0) {
            iK = 60;
        }
        final RegistryItem registryItem2 = new RegistryItem(((RemoteDeviceIdentity) remoteDevice.f78444a).f78458a, remoteDevice, iK);
        Logger logger = d;
        logger.fine("Updating expiration of: " + remoteDevice);
        this.f78557b.remove(registryItem2);
        this.f78557b.add(registryItem2);
        logger.fine("Remote device updated, calling listeners: " + remoteDevice);
        for (final RegistryListener registryListener : this.f78556a.l()) {
            this.f78556a.f78548a.getConfiguration().d().execute(new Runnable() { // from class: org.teleal.cling.registry.RemoteItems.3
                @Override // java.lang.Runnable
                public void run() {
                    registryListener.remoteDeviceUpdated(RemoteItems.this.f78556a, (RemoteDevice) registryItem2.f78554b);
                }
            });
        }
        return true;
    }
}
