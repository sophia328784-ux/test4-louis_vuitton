package org.teleal.cling.registry;

import org.teleal.cling.model.meta.Device;
import org.teleal.cling.model.meta.LocalDevice;
import org.teleal.cling.model.meta.RemoteDevice;
import org.teleal.cling.model.meta.RemoteDeviceIdentity;
import org.teleal.cling.protocol.UpnpUDNManager;

/* JADX INFO: loaded from: classes2.dex */
public class DefaultRegistryListener implements RegistryListener {
    @Override // org.teleal.cling.registry.RegistryListener
    public void afterShutdown() {
    }

    @Override // org.teleal.cling.registry.RegistryListener
    public void beforeShutdown(Registry registry) {
    }

    public void deviceAdded(Registry registry, Device device) {
    }

    public void deviceRemoved(Registry registry, Device device) {
    }

    @Override // org.teleal.cling.registry.RegistryListener
    public void localDeviceRemoved(Registry registry, LocalDevice localDevice) {
        UpnpUDNManager.f78538c.e(localDevice.f78444a.f78458a.toString());
        deviceRemoved(registry, localDevice);
    }

    @Override // org.teleal.cling.registry.RegistryListener
    public void remoteDeviceAdded(Registry registry, RemoteDevice remoteDevice) {
        deviceAdded(registry, remoteDevice);
    }

    @Override // org.teleal.cling.registry.RegistryListener
    public void remoteDeviceDiscoveryFailed(Registry registry, RemoteDevice remoteDevice, Exception exc) {
    }

    @Override // org.teleal.cling.registry.RegistryListener
    public void remoteDeviceDiscoveryStarted(Registry registry, RemoteDevice remoteDevice) {
    }

    @Override // org.teleal.cling.registry.RegistryListener
    public void remoteDeviceRemoved(Registry registry, RemoteDevice remoteDevice) {
        UpnpUDNManager.f78538c.e(((RemoteDeviceIdentity) remoteDevice.f78444a).f78458a.toString());
        deviceRemoved(registry, remoteDevice);
    }

    @Override // org.teleal.cling.registry.RegistryListener
    public void remoteDeviceUpdated(Registry registry, RemoteDevice remoteDevice) {
        UpnpUDNManager.f78538c.a(((RemoteDeviceIdentity) remoteDevice.f78444a).f78458a.toString());
    }
}
