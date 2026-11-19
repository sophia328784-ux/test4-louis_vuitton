package com.linkplay.core.clingx;

import android.text.TextUtils;
import com.android.wiimu.upnp.IWiimuActionCallback;
import com.android.wiimu.upnp.impl.h;
import com.android.wiimu.utils.WiimuWifiScanner;
import com.linkplay.core.app.LPDeviceManager;
import com.linkplay.core.app.LPDeviceManagerObserver;
import com.linkplay.core.device.LPDevice;
import com.linkplay.core.model.LPDeviceStatus;
import com.linkplay.core.status.LPPendingMask;
import com.linkplay.core.status.LPPendingSlave;
import com.linkplay.core.utils.LPDeviceUtils;
import com.linkplay.core.utils.LPWiFiResultUtils;
import com.linkplay.log.LinkplayLog;
import com.linkplay.log.LinkplayLogTags;
import com.linkplay.lpmdpkit.bean.DeviceStreamServices;
import com.linkplay.lpmdpkit.utils.GsonCore;
import com.linkplay.medialib.ContentTree;
import com.linkplay.request.LPRequestAction;
import com.linkplay.request.RequestItem;
import java.net.URL;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Random;
import java.util.concurrent.locks.ReentrantLock;
import org.teleal.cling.model.meta.Device;
import org.teleal.cling.model.meta.DeviceIdentity;
import org.teleal.cling.model.meta.LocalDevice;
import org.teleal.cling.model.meta.RemoteDevice;
import org.teleal.cling.model.meta.RemoteDeviceIdentity;
import org.teleal.cling.model.types.DeviceType;
import org.teleal.cling.model.types.NotificationSubtype;
import org.teleal.cling.model.types.UpnpDeviceType;
import org.teleal.cling.protocol.UpnpUDNManager;
import org.teleal.cling.registry.DefaultRegistryListener;
import org.teleal.cling.registry.Registry;

/* JADX INFO: loaded from: classes2.dex */
public class LPBrowseRegistryListener extends DefaultRegistryListener {
    final String DevDescriptor;
    private Map<String, ThreadGetControlDeviceInfo> infoTaskMap;
    private LPDeviceManagerObserver managerObserver;
    private final Object sourceLock;
    private ReentrantLock upnplock;

    public class ThreadGetControlDeviceInfo implements Runnable {
        LPDevice devItem;
        Device device;
        private boolean stop = false;
        int failCount = 0;
        int failRetryIndex = 0;
        long startFailTimer = 0;

        public ThreadGetControlDeviceInfo(Device device, LPDevice lPDevice) {
            this.device = device;
            this.devItem = lPDevice;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void getControlDeviceInfo() {
            this.stop = false;
            LinkplayLog.i(LinkplayLogTags.LPLogTag, "getControlDeviceInfo: " + this.devItem.getIp());
            try {
                h.c().getControlDeviceInfo(this.device, new IWiimuActionCallback() { // from class: com.linkplay.core.clingx.LPBrowseRegistryListener.ThreadGetControlDeviceInfo.1
                    @Override // com.android.wiimu.upnp.IWiimuActionCallback
                    public void failure(Exception exc) {
                        try {
                            StringBuilder sb = new StringBuilder("getControlDeviceInfo: ");
                            sb.append(exc != null ? exc.getMessage() : "");
                            LinkplayLog.i(LinkplayLogTags.LPLogTag, sb.toString());
                            ThreadGetControlDeviceInfo threadGetControlDeviceInfo = ThreadGetControlDeviceInfo.this;
                            threadGetControlDeviceInfo.failCount++;
                            int i2 = threadGetControlDeviceInfo.failRetryIndex;
                            int iPow = i2 >= 0 ? ((int) Math.pow(2.0d, i2)) * 1000 : 0;
                            ThreadGetControlDeviceInfo threadGetControlDeviceInfo2 = ThreadGetControlDeviceInfo.this;
                            int i3 = threadGetControlDeviceInfo2.failRetryIndex;
                            if (i3 < 3) {
                                threadGetControlDeviceInfo2.failRetryIndex = i3 + 1;
                            }
                            Thread.sleep(iPow);
                            ThreadGetControlDeviceInfo.this.getControlDeviceInfo();
                        } catch (Exception e2) {
                            e2.printStackTrace();
                        }
                    }

                    @Override // com.android.wiimu.upnp.IWiimuActionCallback
                    public void success(Map map) {
                        LinkplayLog.i(LinkplayLogTags.LPLogTag, "rookie:getControlDeviceInfo: success: " + ThreadGetControlDeviceInfo.this.devItem.getIp());
                        ThreadGetControlDeviceInfo threadGetControlDeviceInfo = ThreadGetControlDeviceInfo.this;
                        LPBrowseRegistryListener.this.executeControlDeviceCallback(threadGetControlDeviceInfo.device, threadGetControlDeviceInfo.devItem, map);
                    }
                });
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                int iNextInt = new Random().nextInt(280) + 20;
                LinkplayLog.i(LinkplayLogTags.LPLogTag, "rookie:getControlDeviceInfo: IP=" + this.devItem.getIp() + " :sleepTime=" + iNextInt);
                Thread.sleep((long) iNextInt);
                getControlDeviceInfo();
            } catch (Exception unused) {
            }
        }

        public void stop() {
            LinkplayLog.i(LinkplayLogTags.LPLogTag, "getControlDeviceInfo:stop");
            this.stop = true;
            this.failCount = 0;
        }
    }

    public LPBrowseRegistryListener() {
        this.upnplock = new ReentrantLock();
        this.sourceLock = new Object();
        this.DevDescriptor = "Descriptor";
        this.infoTaskMap = new HashMap();
    }

    private void deviceAdded(Device device) {
        if (device == null) {
            return;
        }
        String string = device.f78446c.toString();
        if (string.indexOf("MediaServer") > 0) {
            LPDlnaMediaServerData.me().addMediaServer(device);
            return;
        }
        if (string.indexOf("MediaRenderer") <= 0) {
            Device[] deviceArrI = device.i();
            for (Device device2 : deviceArrI) {
                if (device2.f78446c.toString().indexOf("MediaServer") > 0) {
                    LPDlnaMediaServerData.me().addMediaServer(device2);
                }
            }
            return;
        }
        LPDlnaPlayerData.me().addMediaRenderer(device);
        LPDevice lPDeviceConvert2LPDevice = LPDeviceUtils.convert2LPDevice(device);
        ThreadGetControlDeviceInfo threadGetControlDeviceInfoRemove = this.infoTaskMap.remove(lPDeviceConvert2LPDevice.getUpnpUUID());
        if (threadGetControlDeviceInfoRemove != null) {
            threadGetControlDeviceInfoRemove.stop();
        }
        ThreadGetControlDeviceInfo threadGetControlDeviceInfo = new ThreadGetControlDeviceInfo(device, lPDeviceConvert2LPDevice);
        new Thread(threadGetControlDeviceInfo).start();
        this.infoTaskMap.put(lPDeviceConvert2LPDevice.getUpnpUUID(), threadGetControlDeviceInfo);
    }

    private void deviceRemoved(Device device) {
        if (device == null) {
            return;
        }
        deviceRemove(device.f78444a.f78458a.toString());
        DeviceType deviceType = device.f78446c;
        if (deviceType != null && deviceType.toString().indexOf("MediaServer") > 0) {
            LPDlnaMediaServerData.me().removeMediaServer(device);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void executeControlDeviceCallback(Device device, LPDevice lPDevice, Map map) {
        List<LPDevice> slaveDevices;
        if (map == null || !map.containsKey("MultiType")) {
            return;
        }
        String string = map.get("MultiType").toString();
        String string2 = map.get("SlaveMask").toString();
        if (string.equals("1")) {
            if (LPWiFiResultUtils.isWiFiConnectAP() || lPDevice.getIp().equals("10.10.10.254")) {
                lPDevice.getDeviceStatus().setPendSlave(LPPendingSlave.LP_PENDING_MASTER);
            } else {
                lPDevice.getDeviceStatus().setPendSlave(LPPendingSlave.LP_PENDING_SLAVE);
            }
        } else if (!string.equals(ContentTree.ROOT_ID)) {
            return;
        } else {
            lPDevice.getDeviceStatus().setPendSlave(LPPendingSlave.LP_PENDING_SLAVE);
        }
        if (map.containsKey("Status")) {
            LPDeviceStatus deviceStatus = lPDevice.getDeviceStatus();
            deviceStatus.setDeviceStatus(map.get("Status").toString());
            if (deviceStatus.hasVersionControl()) {
                getStreamServicesCapability(device, lPDevice, 2);
            }
            deviceStatus.setInternet(1);
            deviceStatus.setPendMask(LPPendingMask.byOrdinal(string2));
            deviceStatus.setSSID(deviceStatus.getSSID());
            deviceStatus.setFriendlyName(deviceStatus.getFriendlyName());
            deviceStatus.setGroupName(deviceStatus.getGroupName());
            deviceStatus.setProject(deviceStatus.getProject());
            deviceStatus.setUpnpVersion(deviceStatus.getUpnpVersion());
            if (lPDevice.getDeviceStatus().getGroup() == 0) {
                if (LPWiFiResultUtils.isWiFiConnectAP() || lPDevice.getIp().equals("10.10.10.254")) {
                    lPDevice.getDeviceStatus().setPendSlave(LPPendingSlave.LP_PENDING_MASTER);
                } else {
                    lPDevice.getDeviceStatus().setPendSlave(LPPendingSlave.LP_PENDING_SLAVE);
                }
            } else if (lPDevice.getDeviceStatus().getGroup() == 1) {
                lPDevice.getDeviceStatus().setPendSlave(LPPendingSlave.LP_PENDING_SLAVE);
            }
        }
        if (!string.equals("1")) {
            if (string.equals(ContentTree.ROOT_ID)) {
                if (!WiimuWifiScanner.isWiimuWifi(LPDeviceManager.getInstance().getContext().getApplicationContext())) {
                    updateDlna(lPDevice);
                    return;
                }
                List<LPDevice> masterDevices = LPDeviceManager.getInstance().getMasterDevices();
                if (masterDevices == null || masterDevices.size() <= 0) {
                    updateDlna(lPDevice);
                    return;
                } else {
                    lPDevice.getDeviceStatus().setRouter(masterDevices.get(0).getUpnpUUID());
                    updateDlna(lPDevice);
                    return;
                }
            }
            return;
        }
        updateDlna(lPDevice);
        boolean zIsA98 = LPDeviceUtils.isA98(lPDevice);
        if (!map.containsKey("SlaveList") || zIsA98 || (slaveDevices = LPDeviceUtils.getSlaveDevices(map.get("SlaveList").toString())) == null) {
            return;
        }
        int size = slaveDevices.size();
        for (int i2 = 0; i2 < size; i2++) {
            LPDevice lPDevice2 = slaveDevices.get(i2);
            lPDevice2.getDeviceStatus().setRouter(lPDevice.getUpnpUUID());
            lPDevice2.getDeviceStatus().setMaster_uuid(lPDevice.getUpnpUUID());
            LPDeviceManager.getInstance().addLPDevice(lPDevice2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void getStreamServicesCapability(final Device device, final LPDevice lPDevice, int i2) {
        if (i2 <= 0) {
            return;
        }
        final int i3 = i2 - 1;
        try {
            h.c().getStreamServicesCapability(device, new IWiimuActionCallback() { // from class: com.linkplay.core.clingx.LPBrowseRegistryListener.2
                @Override // com.android.wiimu.upnp.IWiimuActionCallback
                public void failure(Exception exc) {
                    LPBrowseRegistryListener.this.getStreamServicesCapability(device, lPDevice, i3);
                }

                @Override // com.android.wiimu.upnp.IWiimuActionCallback
                public void success(Map map) {
                    Object obj;
                    DeviceStreamServices deviceStreamServices;
                    if (map == null || !map.containsKey("StreamCapability") || (obj = map.get("StreamCapability")) == null || (deviceStreamServices = (DeviceStreamServices) GsonCore.fromJson(obj.toString(), DeviceStreamServices.class)) == null || TextUtils.isEmpty(deviceStreamServices.getVersion())) {
                        return;
                    }
                    lPDevice.setDeviceStreamServices(deviceStreamServices);
                }
            });
        } catch (Exception e2) {
            e2.printStackTrace();
            getStreamServicesCapability(device, lPDevice, i3);
        }
    }

    private void removeDevice(Device device) {
        LPControlPointSearchTemplate lPSearchTemplate;
        Registry registryListener;
        if (device == null || (lPSearchTemplate = LPSearchControlPoint.getInstance().getLPSearchTemplate()) == null || (registryListener = lPSearchTemplate.getRegistryListener()) == null) {
            return;
        }
        try {
            if (device instanceof LocalDevice) {
                registryListener.b((LocalDevice) device);
            } else if (device instanceof RemoteDevice) {
                registryListener.g((RemoteDevice) device);
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    private void updateDlna(LPDevice lPDevice) {
        if (lPDevice == null) {
            return;
        }
        lPDevice.getDeviceStatus().setUpnpUUID(lPDevice.getUpnpUUID());
        if (LPDeviceManager.getInstance().deviceForID(lPDevice.getUpnpUUID()) == null && lPDevice.getDeviceStatus().getGroup() == 1) {
            LinkplayLog.i(LinkplayLogTags.LPLogTag, "slave device master uuid = " + lPDevice.getDeviceStatus().getMaster_uuid());
            lPDevice.getDeviceStatus().setRouter(lPDevice.getDeviceStatus().getMaster_uuid());
        }
        LPDeviceManager.getInstance().addLPDevice(lPDevice);
        LPDlnaServiceProvider dlanHelper = LPDlnaServiceProviderPool.me().getDlanHelper(lPDevice.getUpnpUUID());
        if (dlanHelper == null) {
            dlanHelper = new LPDlnaServiceProvider(lPDevice);
        }
        LPDlnaServiceProviderPool.me().addDlnaHelper(lPDevice.getUpnpUUID(), dlanHelper);
        dlanHelper.execute();
        LPDeviceManagerObserver lPDeviceManagerObserver = this.managerObserver;
        if (lPDeviceManagerObserver != null) {
            lPDeviceManagerObserver.LPDeviceOnline(lPDevice);
        }
    }

    public void deviceRemove(String str) {
        this.upnplock.lock();
        try {
            try {
                LPDevice lPDeviceDeviceForID = LPDeviceManager.getInstance().deviceForID(str);
                if (lPDeviceDeviceForID == null && lPDeviceDeviceForID == null) {
                    return;
                }
                Device mediaRenderByuuid = LPDlnaPlayerData.me().getMediaRenderByuuid(str);
                if (mediaRenderByuuid != null) {
                    removeDevice(mediaRenderByuuid);
                }
                LPDlnaServiceProviderPool.me().removeDlnaHelper(str);
                LPDlnaPlayerData.me().removeMediaRenderByuuid(str);
                UpnpUDNManager.f78538c.e(str);
                LPDeviceManager.getInstance().deleteLPDevice(str);
                LPDeviceManagerObserver lPDeviceManagerObserver = this.managerObserver;
                if (lPDeviceManagerObserver != null) {
                    lPDeviceManagerObserver.LPDeviceOffline(lPDeviceDeviceForID);
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        } finally {
            this.upnplock.unlock();
        }
    }

    public synchronized void deviceUpdate(String str, String str2, RemoteDevice remoteDevice) {
        try {
            ThreadGetControlDeviceInfo threadGetControlDeviceInfo = this.infoTaskMap.get(str);
            if (threadGetControlDeviceInfo == null) {
                return;
            }
            if (!TextUtils.isEmpty(str2)) {
                threadGetControlDeviceInfo.devItem.setIp(str2);
            }
            final LPDevice lPDeviceDeviceForID = LPDeviceManager.getInstance().deviceForID(str);
            if (lPDeviceDeviceForID == null) {
                new Thread(threadGetControlDeviceInfo).start();
                return;
            }
            lPDeviceDeviceForID.setIp(str2);
            LPRequestAction.getInstance().getStatusEx(new RequestItem.Builder().ip(lPDeviceDeviceForID.getDeviceStatus().getIP()).security(lPDeviceDeviceForID.getDeviceStatus().getSecurity()).build(), new LPRequestAction.IRequestListener(this) { // from class: com.linkplay.core.clingx.LPBrowseRegistryListener.1
                @Override // com.linkplay.request.LPRequestAction.IRequestListener
                public void onFailed(Throwable th) {
                }

                @Override // com.linkplay.request.LPRequestAction.IRequestListener
                public void onSuccess(String str3) {
                    lPDeviceDeviceForID.getDeviceStatus().setDeviceStatus(str3);
                }
            });
            if (LPDlnaServiceProviderPool.me().getDlanHelper(lPDeviceDeviceForID.getUpnpUUID()) != null) {
                LPDlnaServiceProviderPool.me().removeDlnaHelper(lPDeviceDeviceForID.getUpnpUUID());
            }
            LPDlnaServiceProvider lPDlnaServiceProvider = new LPDlnaServiceProvider(lPDeviceDeviceForID);
            lPDlnaServiceProvider.execute();
            LPDlnaServiceProviderPool.me().addDlnaHelper(lPDeviceDeviceForID.getUpnpUUID(), lPDlnaServiceProvider);
            lPDlnaServiceProvider.makeDlnaSubscriptionAll();
            LPDeviceManager.getInstance().addLPDevice(lPDeviceDeviceForID);
        } catch (Throwable th) {
            throw th;
        }
    }

    public String getIPFromDevice(RemoteDevice remoteDevice) {
        try {
            String string = ((RemoteDeviceIdentity) remoteDevice.f78444a).toString();
            String strSubstring = string.substring(string.indexOf("Descriptor") + 11);
            try {
                return new URL(strSubstring).getHost();
            } catch (Exception unused) {
                return strSubstring;
            }
        } catch (Exception unused2) {
            return null;
        }
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
        synchronized (this.sourceLock) {
            deviceAdded(remoteDevice);
        }
    }

    @Override // org.teleal.cling.registry.DefaultRegistryListener, org.teleal.cling.registry.RegistryListener
    public void remoteDeviceRemoved(Registry registry, RemoteDevice remoteDevice) {
        super.remoteDeviceRemoved(registry, remoteDevice);
        deviceRemoved(remoteDevice);
    }

    @Override // org.teleal.cling.registry.DefaultRegistryListener, org.teleal.cling.registry.RegistryListener
    public void remoteDeviceUpdated(Registry registry, RemoteDevice remoteDevice) {
        synchronized (this.sourceLock) {
            if (remoteDevice != null) {
                try {
                    DeviceIdentity deviceIdentity = remoteDevice.f78444a;
                    if (deviceIdentity != null) {
                        String string = ((RemoteDeviceIdentity) deviceIdentity).f78458a.toString();
                        String iPFromDevice = getIPFromDevice(remoteDevice);
                        String string2 = remoteDevice.f78446c.toString();
                        boolean z = false;
                        if (!TextUtils.isEmpty(string2) && (string2.equals(UpnpDeviceType.MediaRenderer.a()) || string2.equals(NotificationSubtype.DMALL.a()))) {
                            Locale locale = Locale.ENGLISH;
                            if (!string.toUpperCase(locale).startsWith("UUID:FF".toUpperCase(locale))) {
                            } else {
                                deviceUpdate(string, iPFromDevice, remoteDevice);
                            }
                        } else {
                            if (!TextUtils.isEmpty(string2) && (string2.equalsIgnoreCase(UpnpDeviceType.MediaServer.a()) || string2.equalsIgnoreCase(UpnpDeviceType.ContentDirectory.a()) || string2.equalsIgnoreCase(NotificationSubtype.DMSALL.a()) || string2.equalsIgnoreCase(NotificationSubtype.ContentDirectory.a()))) {
                                z = true;
                            }
                            if (z) {
                                LPDlnaMediaServerData.me().addMediaServer(remoteDevice);
                            }
                        }
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    public LPBrowseRegistryListener(LPDeviceManagerObserver lPDeviceManagerObserver) {
        this();
        this.managerObserver = lPDeviceManagerObserver;
    }
}
