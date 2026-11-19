package org.teleal.cling.registry;

import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.logging.Logger;
import org.teleal.cling.model.gena.CancelReason;
import org.teleal.cling.model.gena.LocalGENASubscription;
import org.teleal.cling.model.meta.LocalDevice;
import org.teleal.cling.model.meta.LocalService;
import org.teleal.cling.model.resource.Resource;
import org.teleal.cling.protocol.ProtocolFactoryImpl;
import org.teleal.cling.protocol.async.SendingNotificationByebye;

/* JADX INFO: loaded from: classes5.dex */
class LocalItems extends RegistryItems<LocalDevice, LocalGENASubscription> {
    public static final Logger d = Logger.getLogger(Registry.class.getName());

    @Override // org.teleal.cling.registry.RegistryItems
    public final Collection b() {
        HashSet hashSet = new HashSet();
        Iterator it = this.f78557b.iterator();
        while (it.hasNext()) {
            hashSet.add((LocalDevice) ((RegistryItem) it.next()).f78554b);
        }
        return Collections.unmodifiableCollection(hashSet);
    }

    public final boolean g(final LocalDevice localDevice, boolean z) {
        Logger logger = d;
        RegistryImpl registryImpl = this.f78556a;
        LocalDevice localDevice2 = (LocalDevice) c(localDevice.f78444a.f78458a, true);
        if (localDevice2 == null) {
            return false;
        }
        logger.fine("Removing local device from registry: " + localDevice);
        this.f78557b.remove(new RegistryItem(localDevice.f78444a.f78458a));
        for (Resource resource : d(localDevice)) {
            if (registryImpl.x(resource)) {
                logger.fine("Unregistered resource: " + resource);
            }
        }
        Iterator it = this.f78558c.iterator();
        while (it.hasNext()) {
            final RegistryItem registryItem = (RegistryItem) it.next();
            if (((LocalService) ((LocalGENASubscription) registryItem.f78554b).d()).f78482e.f78444a.f78458a.equals(localDevice2.f78444a.f78458a)) {
                logger.fine("Removing incoming subscription: " + ((String) registryItem.f78553a));
                it.remove();
                if (!z) {
                    registryImpl.f78548a.getConfiguration().d().execute(new Runnable(this) { // from class: org.teleal.cling.registry.LocalItems.1
                        @Override // java.lang.Runnable
                        public void run() {
                            ((LocalGENASubscription) registryItem.f78554b).f(CancelReason.DEVICE_WAS_REMOVED);
                        }
                    });
                }
            }
        }
        ProtocolFactoryImpl protocolFactoryImplA = registryImpl.f78548a.a();
        protocolFactoryImplA.getClass();
        SendingNotificationByebye sendingNotificationByebye = new SendingNotificationByebye(protocolFactoryImplA.f78536a, localDevice);
        if (z) {
            sendingNotificationByebye.run();
        } else {
            synchronized (registryImpl) {
                registryImpl.f78551e.add(sendingNotificationByebye);
            }
        }
        if (!z) {
            for (final RegistryListener registryListener : registryImpl.l()) {
                registryImpl.f78548a.getConfiguration().d().execute(new Runnable() { // from class: org.teleal.cling.registry.LocalItems.2
                    @Override // java.lang.Runnable
                    public void run() {
                        registryListener.localDeviceRemoved(LocalItems.this.f78556a, localDevice);
                    }
                });
            }
        }
        return true;
    }

    public final void h(boolean z) {
        for (LocalDevice localDevice : (LocalDevice[]) b().toArray(new LocalDevice[b().size()])) {
            g(localDevice, z);
        }
    }
}
