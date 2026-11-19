package com.android.wiimu.upnp;

import com.android.wiimu.model.WiimuPendingMask;
import com.android.wiimu.model.WiimuPendingSlave;
import com.android.wiimu.upnp.impl.h;
import com.android.wiimu.utils.WiimuDeviceUtils;
import com.android.wiimu.utils.WiimuWifiScanner;
import com.linkplay.core.app.LPDeviceManager;
import com.linkplay.core.clingx.LPSearchControlPoint;
import com.linkplay.core.utils.LPWiFiResultUtils;
import com.linkplay.medialib.ContentTree;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.concurrent.locks.ReentrantLock;
import org.teleal.cling.model.meta.Device;
import org.teleal.cling.model.meta.LocalDevice;
import org.teleal.cling.model.meta.RemoteDevice;
import org.teleal.cling.model.types.DeviceType;
import org.teleal.cling.protocol.UpnpUDNManager;
import org.teleal.cling.registry.DefaultRegistryListener;
import org.teleal.cling.registry.Registry;

/* JADX INFO: loaded from: classes2.dex */
public class d extends DefaultRegistryListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private ReentrantLock f22509a = new ReentrantLock();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private WiimuUpnpBrowseListener f22510b;

    /* JADX INFO: loaded from: classes.dex */
    public class a extends Thread {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        Device f22511a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        b.c f22512b;

        /* JADX INFO: renamed from: com.android.wiimu.upnp.d$a$a, reason: collision with other inner class name */
        public class C0038a implements IWiimuActionCallback {
            public C0038a() {
            }

            @Override // com.android.wiimu.upnp.IWiimuActionCallback
            public void failure(Exception exc) {
                String str = a.this.f22512b.f20678e.f20682b;
                if (exc != null) {
                    exc.getLocalizedMessage();
                }
                int i2 = a.a.f348a;
            }

            @Override // com.android.wiimu.upnp.IWiimuActionCallback
            public void success(Map map) {
                a aVar = a.this;
                b.c cVar = aVar.f22512b;
                String str = cVar.f20678e.f20682b;
                int i2 = a.a.f348a;
                d.this.a(cVar, map);
            }
        }

        public a(Device device, b.c cVar) {
            this.f22511a = device;
            this.f22512b = cVar;
        }

        private void a() {
            String str = this.f22512b.f20678e.f20682b;
            int i2 = a.a.f348a;
            try {
                h.c().getControlDeviceInfo(this.f22511a, new C0038a());
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            super.run();
            a();
        }
    }

    public d(WiimuUpnpBrowseListener wiimuUpnpBrowseListener) {
        this.f22510b = wiimuUpnpBrowseListener;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(b.c cVar, Map map) {
        List<b.c> slaveDevices;
        if (map == null || !map.containsKey("MultiType")) {
            return;
        }
        String string = map.get("MultiType").toString();
        String string2 = map.get("SlaveMask").toString();
        if (string.equals("1")) {
            if (LPWiFiResultUtils.isWiFiConnectAP() || cVar.f20678e.f20682b.equals("10.10.10.254")) {
                cVar.f20677c = WiimuPendingSlave.Master;
            } else {
                cVar.f20677c = WiimuPendingSlave.Slave;
            }
        } else if (!string.equals(ContentTree.ROOT_ID)) {
            return;
        } else {
            cVar.f20677c = WiimuPendingSlave.Slave;
        }
        if (map.containsKey("Status")) {
            b.e masterDeviceStatus = WiimuDeviceUtils.getMasterDeviceStatus(map.get("Status").toString());
            cVar.f20678e = masterDeviceStatus;
            masterDeviceStatus.getClass();
            cVar.d = string2.equals("1") ? WiimuPendingMask.Mask : WiimuPendingMask.Unmask;
            b.e eVar = cVar.f20678e;
            eVar.f20683c = masterDeviceStatus.f20683c;
            eVar.f20685f = masterDeviceStatus.f20685f;
            b.c cVarB = i.a.f69820c.b(cVar.f20676b);
            if (cVarB != null) {
                cVarB.f20678e = masterDeviceStatus;
            }
        }
        if (string.equals("1")) {
            i.a.f69820c.d(cVar.f20676b);
            a(cVar);
            b(cVar);
            if (!map.containsKey("SlaveList") || (slaveDevices = WiimuDeviceUtils.getSlaveDevices(map.get("SlaveList").toString())) == null) {
                return;
            }
            int size = slaveDevices.size();
            for (int i2 = 0; i2 < size; i2++) {
                b.c cVar2 = slaveDevices.get(i2);
                cVar2.f20678e.getClass();
                i.a.f69820c.a(cVar2);
            }
            return;
        }
        if (string.equals(ContentTree.ROOT_ID)) {
            if (!WiimuWifiScanner.isWiimuWifi(LPDeviceManager.getInstance().getContext().getApplicationContext())) {
                b(cVar);
                return;
            }
            ArrayList arrayListC = i.a.f69820c.c();
            if (arrayListC.size() <= 0) {
                b(cVar);
                return;
            }
            b.c cVar3 = (b.c) arrayListC.get(0);
            b.e eVar2 = cVar.f20678e;
            String str = cVar3.f20676b;
            eVar2.getClass();
            b(cVar);
        }
    }

    private void b(b.c cVar) {
        if (cVar == null) {
            return;
        }
        i.a aVar = i.a.f69820c;
        if (aVar.b(cVar.f20676b) == null) {
            aVar.a(cVar);
        } else {
            ReentrantLock reentrantLock = aVar.f69822b;
            if (cVar.f20677c.contains(WiimuPendingSlave.Master)) {
                reentrantLock.lock();
                try {
                    aVar.f69821a.put(cVar.f20676b, cVar);
                    reentrantLock.unlock();
                } catch (Throwable th) {
                    reentrantLock.unlock();
                    throw th;
                }
            }
        }
        b bVarA = c.c().a(cVar.f20676b);
        if (bVarA != null) {
            c.c().b(cVar.f20676b);
            bVarA = null;
        }
        if (bVarA == null) {
            bVarA = new b(cVar);
        }
        c.c().a(cVar.f20676b, bVarA);
        WiimuUpnpBrowseListener wiimuUpnpBrowseListener = this.f22510b;
        if (wiimuUpnpBrowseListener != null) {
            wiimuUpnpBrowseListener.deviceAdded(cVar);
            bVarA.a();
        }
    }

    private void deviceAdded(Device device) {
        if (device == null) {
            return;
        }
        String string = device.f78446c.toString();
        if (string.indexOf("MediaServer") > 0) {
            com.android.wiimu.upnp.a.f().b(device);
            return;
        }
        if (string.indexOf("MediaRenderer") > 0) {
            com.android.wiimu.upnp.a.f().a(device);
        } else {
            for (Device device2 : device.i()) {
                if (device2.f78446c.toString().indexOf("MediaServer") > 0) {
                    com.android.wiimu.upnp.a.f().b(device2);
                }
            }
        }
        new a(device, WiimuDeviceUtils.convertDeviceItem(device)).start();
    }

    private void deviceRemoved(Device device) {
        if (device == null) {
            return;
        }
        deviceRemove(device.f78444a.f78458a.toString());
        DeviceType deviceType = device.f78446c;
        if (deviceType != null && deviceType.toString().indexOf("MediaServer") > 0) {
            com.android.wiimu.upnp.a.f().c(device);
        }
    }

    private void removeDevice(Device device) {
        e wiimuUpnpTemplate;
        Registry registryC;
        if (device == null || (wiimuUpnpTemplate = LPSearchControlPoint.getInstance().getWiimuUpnpTemplate()) == null || (registryC = wiimuUpnpTemplate.c()) == null) {
            return;
        }
        try {
            if (device instanceof LocalDevice) {
                registryC.b((LocalDevice) device);
            } else if (device instanceof RemoteDevice) {
                registryC.g((RemoteDevice) device);
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public void deviceRemove(String str) {
        this.f22509a.lock();
        i.a aVar = i.a.f69820c;
        b.c cVarB = aVar.b(str);
        if (cVarB == null) {
            this.f22509a.unlock();
            return;
        }
        removeDevice(com.android.wiimu.upnp.a.f().a(str));
        c.c().b(str);
        com.android.wiimu.upnp.a.f().b(str);
        aVar.d(str);
        WiimuUpnpBrowseListener wiimuUpnpBrowseListener = this.f22510b;
        if (wiimuUpnpBrowseListener != null) {
            wiimuUpnpBrowseListener.deviceRemoved(cVarB);
        }
        this.f22509a.unlock();
    }

    public void localDeviceAdded(Registry registry, LocalDevice localDevice) {
        UpnpUDNManager.f78538c.a(localDevice.f78444a.f78458a.toString());
        deviceAdded(registry, localDevice);
        deviceAdded(localDevice);
    }

    @Override // org.teleal.cling.registry.DefaultRegistryListener, org.teleal.cling.registry.RegistryListener
    public void localDeviceRemoved(Registry registry, LocalDevice localDevice) {
        super.localDeviceRemoved(registry, localDevice);
        deviceRemoved(localDevice);
    }

    @Override // org.teleal.cling.registry.DefaultRegistryListener, org.teleal.cling.registry.RegistryListener
    public void remoteDeviceAdded(Registry registry, RemoteDevice remoteDevice) {
        deviceAdded(registry, remoteDevice);
        deviceAdded(remoteDevice);
    }

    @Override // org.teleal.cling.registry.DefaultRegistryListener, org.teleal.cling.registry.RegistryListener
    public void remoteDeviceDiscoveryFailed(Registry registry, RemoteDevice remoteDevice, Exception exc) {
        super.remoteDeviceDiscoveryFailed(registry, remoteDevice, exc);
    }

    @Override // org.teleal.cling.registry.DefaultRegistryListener, org.teleal.cling.registry.RegistryListener
    public void remoteDeviceDiscoveryStarted(Registry registry, RemoteDevice remoteDevice) {
        super.remoteDeviceDiscoveryStarted(registry, remoteDevice);
    }

    @Override // org.teleal.cling.registry.DefaultRegistryListener, org.teleal.cling.registry.RegistryListener
    public void remoteDeviceRemoved(Registry registry, RemoteDevice remoteDevice) {
        super.remoteDeviceRemoved(registry, remoteDevice);
        deviceRemoved(remoteDevice);
    }

    private void a(b.c cVar) {
        ArrayList arrayListC = i.a.f69820c.c();
        if (arrayListC.isEmpty()) {
            return;
        }
        int size = arrayListC.size();
        for (int i2 = 0; i2 < size; i2++) {
            if (cVar.f20676b.equals(((b.c) arrayListC.get(i2)).f20676b)) {
                i.a aVar = i.a.f69820c;
                String str = cVar.f20676b;
                aVar.f69822b.lock();
                try {
                    if (aVar.f69821a.containsKey(str)) {
                        aVar.f69821a.remove(str);
                    }
                    aVar.e();
                    c.c().b(cVar.f20676b);
                    return;
                } catch (Throwable th) {
                    aVar.e();
                    throw th;
                }
            }
            if (cVar.f20678e.equals(((b.c) arrayListC.get(i2)).f20678e)) {
                deviceRemove(((b.c) arrayListC.get(i2)).f20676b);
                return;
            }
        }
    }
}
