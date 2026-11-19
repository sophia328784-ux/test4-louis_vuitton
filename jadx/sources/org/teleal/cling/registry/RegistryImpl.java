package org.teleal.cling.registry;

import com.linkplay.log.LinkplayLog;
import java.net.URI;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Random;
import java.util.concurrent.locks.ReentrantLock;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.teleal.cling.UpnpService;
import org.teleal.cling.model.gena.LocalGENASubscription;
import org.teleal.cling.model.gena.RemoteGENASubscription;
import org.teleal.cling.model.meta.LocalDevice;
import org.teleal.cling.model.meta.RemoteDevice;
import org.teleal.cling.model.meta.RemoteDeviceIdentity;
import org.teleal.cling.model.resource.Resource;
import org.teleal.cling.model.types.UDN;
import org.teleal.cling.protocol.UpnpUDNManager;

/* JADX INFO: loaded from: classes5.dex */
public class RegistryImpl implements Registry {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final Logger f78547h = Logger.getLogger(Registry.class.getName());

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final UpnpService f78548a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ReentrantLock f78549b = new ReentrantLock(true);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final HashSet f78550c = new HashSet();
    public final HashSet d = new HashSet();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final ArrayList f78551e = new ArrayList();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final RemoteItems f78552f = new RemoteItems(this);
    public final LocalItems g;

    public RegistryImpl(UpnpService upnpService) {
        LocalItems localItems = new LocalItems(this);
        new Random();
        this.g = localItems;
        f78547h.fine("Creating Registry: ".concat(getClass().getName()));
        this.f78548a = upnpService;
    }

    public final void A() {
        this.f78549b.unlock();
    }

    public final synchronized boolean B(RemoteDeviceIdentity remoteDeviceIdentity) {
        return this.f78552f.k(remoteDeviceIdentity);
    }

    public final synchronized boolean C(LocalGENASubscription localGENASubscription) {
        boolean z;
        LocalItems localItems = this.g;
        if (localItems.f(localGENASubscription)) {
            localItems.a(localGENASubscription);
            z = true;
        } else {
            z = false;
        }
        return z;
    }

    @Override // org.teleal.cling.registry.Registry
    public final synchronized LocalDevice a(UDN udn) {
        return (LocalDevice) this.g.c(udn, false);
    }

    @Override // org.teleal.cling.registry.Registry
    public final synchronized boolean b(LocalDevice localDevice) {
        UpnpUDNManager.f78538c.e(localDevice.f78444a.f78458a.toString());
        LinkplayLog.i("UPNP-SEARCH", "RegistryImpl remove localdevice ");
        return this.g.g(localDevice, false);
    }

    @Override // org.teleal.cling.registry.Registry
    public final synchronized Collection c() {
        HashSet hashSet;
        hashSet = new HashSet();
        hashSet.addAll(this.g.b());
        hashSet.addAll(this.f78552f.b());
        return Collections.unmodifiableCollection(hashSet);
    }

    @Override // org.teleal.cling.registry.Registry
    public final synchronized void d(LocalGENASubscription localGENASubscription) {
        this.g.a(localGENASubscription);
    }

    @Override // org.teleal.cling.registry.Registry
    public final synchronized void e() {
        this.g.h(false);
    }

    @Override // org.teleal.cling.registry.Registry
    public final synchronized boolean f(LocalGENASubscription localGENASubscription) {
        return this.g.f(localGENASubscription);
    }

    @Override // org.teleal.cling.registry.Registry
    public final synchronized boolean g(RemoteDevice remoteDevice) {
        UpnpUDNManager.f78538c.e(((RemoteDeviceIdentity) remoteDevice.f78444a).f78458a.toString());
        LinkplayLog.i("UPNP-SEARCH", "RegistryImpl remove Remotedevice ");
        return this.f78552f.h(remoteDevice, false);
    }

    @Override // org.teleal.cling.registry.Registry
    public final synchronized void h() {
        this.f78552f.i(false);
    }

    public final synchronized void i(RemoteDevice remoteDevice) {
        this.f78552f.g(remoteDevice);
    }

    public final synchronized void j(RegistryListener registryListener) {
        this.f78550c.add(registryListener);
    }

    public final synchronized void k(RemoteGENASubscription remoteGENASubscription) {
        this.f78552f.a(remoteGENASubscription);
    }

    public final synchronized Collection l() {
        return Collections.unmodifiableCollection(this.f78550c);
    }

    public final synchronized LocalGENASubscription m(String str) {
        return (LocalGENASubscription) this.g.e(str);
    }

    public final synchronized RemoteDevice n(UDN udn) {
        return (RemoteDevice) this.f78552f.c(udn, true);
    }

    public final synchronized Collection o() {
        return Collections.unmodifiableCollection(this.f78552f.b());
    }

    public final synchronized RemoteGENASubscription p(String str) {
        return (RemoteGENASubscription) this.f78552f.e(str);
    }

    public final synchronized Resource q(Class cls, URI uri) {
        Resource resourceR = r(uri);
        if (resourceR == null || !cls.isAssignableFrom(resourceR.getClass())) {
            return null;
        }
        return resourceR;
    }

    public final synchronized Resource r(URI uri) {
        if (uri.isAbsolute()) {
            throw new IllegalArgumentException("Resource URI can not be absolute, only path and query:" + uri);
        }
        Iterator it = this.d.iterator();
        while (it.hasNext()) {
            Resource resource = (Resource) ((RegistryItem) it.next()).f78554b;
            if (uri.equals(resource.f78497a)) {
                return resource;
            }
        }
        if (uri.getPath().endsWith("/")) {
            URI uriCreate = URI.create(uri.toString().substring(0, uri.toString().length() - 1));
            Iterator it2 = this.d.iterator();
            while (it2.hasNext()) {
                Resource resource2 = (Resource) ((RegistryItem) it2.next()).f78554b;
                if (uriCreate.equals(resource2.f78497a)) {
                    return resource2;
                }
            }
        }
        return null;
    }

    public final void s() {
        this.f78549b.lock();
    }

    public final synchronized void t(final RemoteDevice remoteDevice, final Exception exc) {
        for (final RegistryListener registryListener : l()) {
            this.f78548a.getConfiguration().d().execute(new Runnable() { // from class: org.teleal.cling.registry.RegistryImpl.2
                @Override // java.lang.Runnable
                public void run() {
                    registryListener.remoteDeviceDiscoveryFailed(RegistryImpl.this, remoteDevice, exc);
                }
            });
        }
    }

    public final synchronized boolean u(final RemoteDevice remoteDevice) {
        if (this.f78548a.b().n(((RemoteDeviceIdentity) remoteDevice.f78444a).f78458a) != null) {
            f78547h.finer("Not notifying listeners, already registered: " + remoteDevice);
            return false;
        }
        for (final RegistryListener registryListener : l()) {
            this.f78548a.getConfiguration().d().execute(new Runnable() { // from class: org.teleal.cling.registry.RegistryImpl.1
                @Override // java.lang.Runnable
                public void run() {
                    registryListener.remoteDeviceDiscoveryStarted(RegistryImpl.this, remoteDevice);
                }
            });
        }
        return true;
    }

    public final synchronized void v(RegistryListener registryListener) {
        this.f78550c.remove(registryListener);
    }

    public final synchronized void w(RemoteGENASubscription remoteGENASubscription) {
        this.f78552f.f(remoteGENASubscription);
    }

    public final synchronized boolean x(Resource resource) {
        return this.d.remove(new RegistryItem(resource.f78497a));
    }

    public final synchronized void y(boolean z) {
        try {
            Logger logger = f78547h;
            if (logger.isLoggable(Level.FINEST)) {
                logger.finest("Executing pending operations: " + this.f78551e.size());
            }
            for (Runnable runnable : this.f78551e) {
                if (z) {
                    this.f78548a.getConfiguration().m().execute(runnable);
                } else {
                    runnable.run();
                }
            }
            if (this.f78551e.size() > 0) {
                this.f78551e.clear();
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public final synchronized void z() {
        try {
            Logger logger = f78547h;
            logger.fine("Shutting down registry...");
            logger.finest("Executing final pending operations on shutdown: " + this.f78551e.size());
            y(false);
            Iterator it = this.f78550c.iterator();
            while (it.hasNext()) {
                ((RegistryListener) it.next()).beforeShutdown(this);
            }
            HashSet hashSet = this.d;
            for (RegistryItem registryItem : (RegistryItem[]) hashSet.toArray(new RegistryItem[hashSet.size()])) {
                ((Resource) registryItem.f78554b).getClass();
            }
            this.f78552f.j();
            LocalItems localItems = this.g;
            localItems.getClass();
            Logger logger2 = LocalItems.d;
            logger2.fine("Clearing all registered subscriptions to local devices during shutdown");
            localItems.f78558c.clear();
            logger2.fine("Removing all local devices from registry during shutdown");
            localItems.h(true);
            Iterator it2 = this.f78550c.iterator();
            while (it2.hasNext()) {
                ((RegistryListener) it2.next()).afterShutdown();
            }
        } catch (Throwable th) {
            throw th;
        }
    }
}
