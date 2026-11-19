package org.teleal.cling.registry;

import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import org.teleal.cling.model.ValidationException;
import org.teleal.cling.model.gena.GENASubscription;
import org.teleal.cling.model.meta.Device;
import org.teleal.cling.model.resource.Resource;
import org.teleal.cling.model.types.UDN;

/* JADX INFO: loaded from: classes5.dex */
abstract class RegistryItems<D extends Device, S extends GENASubscription> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final RegistryImpl f78556a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final HashSet f78557b = new HashSet();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final HashSet f78558c = new HashSet();

    public RegistryItems(RegistryImpl registryImpl) {
        this.f78556a = registryImpl;
    }

    public final void a(GENASubscription gENASubscription) {
        int i2;
        String strE = gENASubscription.e();
        synchronized (gENASubscription) {
            i2 = gENASubscription.d;
        }
        this.f78558c.add(new RegistryItem(strE, gENASubscription, i2));
    }

    public Collection b() {
        HashSet hashSet = new HashSet();
        Iterator it = this.f78557b.iterator();
        while (it.hasNext()) {
            hashSet.add((Device) ((RegistryItem) it.next()).f78554b);
        }
        return hashSet;
    }

    public final Device c(UDN udn, boolean z) {
        Device deviceC;
        for (RegistryItem registryItem : this.f78557b) {
            Device device = (Device) registryItem.f78554b;
            if (device.f78444a.f78458a.equals(udn)) {
                return device;
            }
            if (!z && (deviceC = ((Device) registryItem.f78554b).c(udn)) != null) {
                return deviceC;
            }
        }
        return null;
    }

    public final Resource[] d(Device device) {
        try {
            return this.f78556a.f78548a.getConfiguration().getNamespace().e(device);
        } catch (ValidationException e2) {
            throw new RegistrationException("Resource discover error: " + e2.toString(), e2);
        }
    }

    public final GENASubscription e(String str) {
        for (RegistryItem registryItem : this.f78558c) {
            if (((String) registryItem.f78553a).equals(str)) {
                return (GENASubscription) registryItem.f78554b;
            }
        }
        return null;
    }

    public final boolean f(GENASubscription gENASubscription) {
        return this.f78558c.remove(new RegistryItem(gENASubscription.e()));
    }
}
