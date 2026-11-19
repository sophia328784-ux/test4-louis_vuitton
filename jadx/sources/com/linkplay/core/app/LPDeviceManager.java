package com.linkplay.core.app;

import android.app.ActivityManager;
import android.app.Application;
import android.content.Context;
import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkRequest;
import android.os.Build;
import android.text.TextUtils;
import com.android.wiimu.config.LinkplayConfiguration;
import com.android.wiimu.onlineprotect.a;
import com.android.wiimu.upnp.c;
import com.linkplay.bonjour.model.LinkplayConstants;
import com.linkplay.bonjour.utils.BonjourLog;
import com.linkplay.core.clingx.InitUpnpListener;
import com.linkplay.core.clingx.LPBrowseRegistryListener;
import com.linkplay.core.clingx.LPDlnaMediaServerData;
import com.linkplay.core.clingx.LPDlnaPlayerData;
import com.linkplay.core.clingx.LPSearchControlPoint;
import com.linkplay.core.device.LPDevice;
import com.linkplay.core.service.nsd.NSDMultiServiceTypeManager;
import com.linkplay.core.service.nsd.NSDServiceManager;
import com.linkplay.core.status.LPPendingSlave;
import com.linkplay.core.utils.UTCTimeUtils;
import com.linkplay.log.LinkplayLog;
import com.linkplay.log.LinkplayLogTags;
import com.linkplay.lpmdpkit.utils.LPLogUtil;
import com.linkplay.lpmdpkit.utils.Version;
import com.linkplay.network.LPNetworkResponseItem;
import com.linkplay.request.LPNetwork;
import com.linkplay.request.LPNetworkListener;
import com.linkplay.request.LPRequestAction;
import com.linkplay.request.LPRequestUrl;
import com.linkplay.request.RequestItem;
import com.networkbench.agent.impl.floatbtnmanager.ActionFloatingViewItem;
import defpackage.d21;
import defpackage.n00;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.concurrent.locks.ReentrantReadWriteLock;

/* JADX INFO: loaded from: classes2.dex */
public class LPDeviceManager implements BonjourLog.BonjourLogCallback, Serializable {
    private static LPDeviceManager instance;
    private Application mContext;
    private LPDeviceManagerParam managerParam;
    private LPDeviceManagerObserver observer;
    private a onlineDeviceManager;
    private LinkedHashMap<String, LPDevice> devicelist = new LinkedHashMap<>();
    private ReentrantReadWriteLock lock = new ReentrantReadWriteLock();
    LPBonjourManager bonjourManager = null;
    private String version = "1.0.1";
    private boolean bInitLifecycleObserver = false;

    private LPDeviceManager() {
    }

    private String filterUUID(String str) {
        if (TextUtils.isEmpty(str)) {
            return "";
        }
        if (str.contains("uuid:")) {
            str = str.replaceAll("uuid:", "");
        }
        return str.contains("-") ? str.replaceAll("-", "") : str;
    }

    public static synchronized LPDeviceManager getInstance() {
        try {
            if (instance == null) {
                synchronized (LPDeviceManager.class) {
                    try {
                        if (instance == null) {
                            instance = new LPDeviceManager();
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }
        } catch (Throwable th2) {
            throw th2;
        }
        return instance;
    }

    private void initProcessLifecycleObserver(InitUpnpListener initUpnpListener) {
        if (this.bInitLifecycleObserver) {
            return;
        }
        this.bInitLifecycleObserver = true;
        ((ConnectivityManager) this.mContext.getApplicationContext().getSystemService("connectivity")).registerNetworkCallback(new NetworkRequest.Builder().addTransportType(3).addTransportType(1).build(), new ConnectivityManager.NetworkCallback() { // from class: com.linkplay.core.app.LPDeviceManager.1
            private void restartUpnpSearchTask() {
                if (LPSearchControlPoint.getInstance().getLPSearchTemplate() == null) {
                    return;
                }
                LPDeviceManager.this.runningForeground();
            }

            @Override // android.net.ConnectivityManager.NetworkCallback
            public void onAvailable(Network network) {
                super.onAvailable(network);
                LinkplayLog.i(LinkplayLogTags.LPLogTag, "App Network onAvailable");
                LPDeviceManager.this.onWifiReconnected();
                restartUpnpSearchTask();
                LPDeviceManager.this.runWiFiConnect();
            }

            @Override // android.net.ConnectivityManager.NetworkCallback
            public void onLost(Network network) {
                super.onLost(network);
                LinkplayLog.i(LinkplayLogTags.LPLogTag, "App Network onLost");
            }
        });
    }

    private boolean isSameDevice(String str, String str2) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            return false;
        }
        String strFilterUUID = filterUUID(str);
        String strFilterUUID2 = filterUUID(str2);
        return strFilterUUID.toLowerCase().contains(strFilterUUID2.toLowerCase()) || strFilterUUID2.toLowerCase().contains(strFilterUUID.toLowerCase());
    }

    private void runningBackground() {
        if (Build.VERSION.SDK_INT < 31) {
            LPBonjourManager lPBonjourManager = this.bonjourManager;
            if (lPBonjourManager != null) {
                lPBonjourManager.stop();
                this.bonjourManager = null;
                return;
            }
            return;
        }
        List<String> list = this.managerParam.mdnsServiceTypes;
        if (list == null || list.size() == 0) {
            NSDServiceManager.getInstance().setServiceType(LinkplayConstants.regType).runningBackGround();
        } else if (this.managerParam.mdnsServiceTypes.size() == 1) {
            NSDServiceManager.getInstance().setServiceType(this.managerParam.mdnsServiceTypes.get(0)).runningBackGround();
        } else {
            NSDMultiServiceTypeManager.getInstance().setServiceTypes(this.managerParam.mdnsServiceTypes).runningBackGround();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void runningForeground() {
        if (Build.VERSION.SDK_INT < 31) {
            if (this.bonjourManager == null) {
                this.bonjourManager = new LPBonjourManager(this.mContext);
            }
            this.bonjourManager.setLogCallback(this);
            this.bonjourManager.start(LinkplayConstants.regType);
            return;
        }
        List<String> list = this.managerParam.mdnsServiceTypes;
        if (list == null || list.size() == 0) {
            NSDServiceManager.getInstance().setServiceType(LinkplayConstants.regType).runningForeGround();
        } else if (this.managerParam.mdnsServiceTypes.size() == 1) {
            NSDServiceManager.getInstance().setServiceType(this.managerParam.mdnsServiceTypes.get(0)).runningForeGround();
        } else {
            NSDMultiServiceTypeManager.getInstance().setServiceTypes(this.managerParam.mdnsServiceTypes).runningForeGround();
        }
    }

    private void setTimeZone(LPDevice lPDevice) {
        String tz_info_ver = lPDevice.getDeviceStatus().getTz_info_ver();
        if (lPDevice.getDeviceStatus().getTz() == UTCTimeUtils.getTimeZoneOffset()) {
            return;
        }
        if (!TextUtils.isEmpty(tz_info_ver) && new Version(tz_info_ver).isAtLeast("1.0")) {
            LPRequestAction.getInstance().setTimezoneEx(lPDevice, new LPNetworkListener(this) { // from class: com.linkplay.core.app.LPDeviceManager.2
                @Override // com.linkplay.request.LPNetworkListener
                public void onFailure(Exception exc) {
                    super.onFailure(exc);
                    LinkplayLog.i(LinkplayLogTags.LPLogTag, "set setTimezoneEx failed " + (exc != null ? exc.getLocalizedMessage() : ""));
                }

                @Override // com.linkplay.request.LPNetworkListener
                public void onSuccess(LPNetworkResponseItem lPNetworkResponseItem) {
                    super.onSuccess(lPNetworkResponseItem);
                    LinkplayLog.i(LinkplayLogTags.LPLogTag, "set setTimezoneEx success " + (lPNetworkResponseItem != null ? lPNetworkResponseItem.body : ""));
                }
            });
            return;
        }
        LPNetwork.getInstance().get(d21.j(LPRequestUrl.getTimeZoneURL(n00.k(lPDevice, new RequestItem.Builder()).security(lPDevice.getDeviceStatus().getSecurity()).build(), UTCTimeUtils.getTimeZoneNum(true)), ":0"), null, new LPNetworkListener(this) { // from class: com.linkplay.core.app.LPDeviceManager.3
            @Override // com.linkplay.request.LPNetworkListener
            public void onFailure(Exception exc) {
                super.onFailure(exc);
                LinkplayLog.i(LinkplayLogTags.LPLogTag, "set timezone failed " + (exc != null ? exc.getLocalizedMessage() : ""));
            }

            @Override // com.linkplay.request.LPNetworkListener
            public void onSuccess(LPNetworkResponseItem lPNetworkResponseItem) {
                super.onSuccess(lPNetworkResponseItem);
                LinkplayLog.i(LinkplayLogTags.LPLogTag, "set timezone success " + (lPNetworkResponseItem != null ? lPNetworkResponseItem.body : ""));
            }
        });
    }

    public void addLPDevice(LPDevice lPDevice) {
        try {
            this.lock.writeLock().lock();
            if (this.devicelist == null) {
                this.devicelist = new LinkedHashMap<>();
            }
            LinkplayLog.i(LinkplayLogTags.LPLogTag, "device added:" + lPDevice.getDeviceStatus().getSSID());
            this.devicelist.put(LPDeviceManagerUtil.uuid2UpnpUUID(lPDevice.getUpnpUUID()), lPDevice);
            setTimeZone(lPDevice);
        } finally {
            this.lock.writeLock().unlock();
        }
    }

    public void addObserver(LPDeviceManagerObserver lPDeviceManagerObserver) {
        this.observer = lPDeviceManagerObserver;
    }

    public void clear() {
        try {
            try {
                this.lock.writeLock().lock();
                List<LPDevice> masterDevices = getMasterDevices();
                LPBrowseRegistryListener lPBrowseListener = LPSearchControlPoint.getInstance().getLPBrowseListener();
                for (LPDevice lPDevice : masterDevices) {
                    if (lPBrowseListener != null) {
                        lPBrowseListener.deviceRemove(lPDevice.getUpnpUUID());
                    }
                }
                c.c().a();
                LPDlnaMediaServerData.me().clearMediaServers();
                LPDlnaPlayerData.me().clearMediaRenderers();
                LinkedHashMap<String, LPDevice> linkedHashMap = this.devicelist;
                if (linkedHashMap != null) {
                    linkedHashMap.clear();
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        } finally {
            this.lock.writeLock().unlock();
        }
    }

    public LPDevice deleteLPDevice(String str) {
        try {
            this.lock.writeLock().lock();
            String strUuid2UpnpUUID = LPDeviceManagerUtil.uuid2UpnpUUID(str);
            LinkedHashMap<String, LPDevice> linkedHashMap = this.devicelist;
            if (linkedHashMap == null || !linkedHashMap.containsKey(strUuid2UpnpUUID)) {
                return null;
            }
            return this.devicelist.remove(strUuid2UpnpUUID);
        } finally {
            this.lock.writeLock().unlock();
        }
    }

    public LPDevice deviceForID(String str) {
        LPDevice lPDevice;
        try {
            this.lock.readLock().lock();
            Iterator<LPDevice> it = this.devicelist.values().iterator();
            while (it.hasNext()) {
                String upnpUUID = it.next().getUpnpUUID();
                if (isSameDevice(str, upnpUUID)) {
                    lPDevice = this.devicelist.get(upnpUUID);
                    return lPDevice;
                }
            }
            lPDevice = null;
            return lPDevice;
        } finally {
            this.lock.readLock().unlock();
        }
    }

    public LPDevice deviceForIP(String str) {
        LPDevice next;
        try {
            this.lock.readLock().lock();
            LinkedHashMap<String, LPDevice> linkedHashMap = this.devicelist;
            if (linkedHashMap != null) {
                Iterator<LPDevice> it = linkedHashMap.values().iterator();
                while (it.hasNext()) {
                    next = it.next();
                    if (next.getDeviceStatus().getIP().contains(str)) {
                    }
                }
                next = null;
            } else {
                next = null;
            }
            return next;
        } finally {
            this.lock.readLock().unlock();
        }
    }

    public LPDevice deviceForMac(String str) {
        LPDevice lPDevice = null;
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            this.lock.readLock().lock();
            LinkedHashMap<String, LPDevice> linkedHashMap = this.devicelist;
            if (linkedHashMap == null) {
                return null;
            }
            for (LPDevice lPDevice2 : linkedHashMap.values()) {
                if (lPDevice2.getDeviceStatus() != null && !TextUtils.isEmpty(lPDevice2.getDeviceStatus().getMAC()) && lPDevice2.getDeviceStatus().getMAC().replace("-", ":").toUpperCase().equals(str.replace("-", ":").toUpperCase())) {
                    lPDevice = lPDevice2;
                    break;
                }
            }
            return lPDevice;
        } finally {
            this.lock.readLock().unlock();
        }
    }

    public Context getContext() {
        return this.mContext;
    }

    public List<LPDevice> getDevices() {
        try {
            this.lock.readLock().lock();
            ArrayList arrayList = new ArrayList();
            LinkedHashMap<String, LPDevice> linkedHashMap = this.devicelist;
            if (linkedHashMap != null) {
                Iterator<LPDevice> it = linkedHashMap.values().iterator();
                while (it.hasNext()) {
                    arrayList.add(it.next());
                }
            }
            return arrayList;
        } finally {
            this.lock.readLock().unlock();
        }
    }

    public LPDevice getMasterDeviceWithSlaveDevice(LPDevice lPDevice) {
        if (lPDevice == null || lPDevice.getDeviceStatus().getGroup() == 0) {
            return null;
        }
        try {
            this.lock.readLock().lock();
            String master_uuid = lPDevice.getDeviceStatus().getMaster_uuid();
            if (TextUtils.isEmpty(master_uuid)) {
                return null;
            }
            for (LPDevice lPDevice2 : this.devicelist.values()) {
                if (master_uuid.equals(lPDevice2.getDeviceStatus().getUUID())) {
                    return lPDevice2;
                }
            }
            return null;
        } finally {
            this.lock.readLock().unlock();
        }
    }

    public synchronized List<LPDevice> getMasterDevices() {
        ArrayList arrayList;
        try {
            this.lock.readLock().lock();
            arrayList = new ArrayList();
            LinkedHashMap<String, LPDevice> linkedHashMap = this.devicelist;
            if (linkedHashMap != null) {
                for (LPDevice lPDevice : linkedHashMap.values()) {
                    if (lPDevice.getDeviceStatus().getPendSlave().equals(LPPendingSlave.LP_PENDING_MASTER)) {
                        arrayList.add(lPDevice);
                    }
                }
            }
            this.lock.readLock().unlock();
        } catch (Throwable th) {
            this.lock.readLock().unlock();
            throw th;
        }
        return arrayList;
    }

    public List<LPDevice> getSlaveDevices(String str) {
        try {
            this.lock.readLock().lock();
            ArrayList arrayList = new ArrayList();
            for (LPDevice lPDevice : this.devicelist.values()) {
                if (isSameDevice(str, lPDevice.getDeviceStatus().getMaster_uuid())) {
                    arrayList.add(lPDevice);
                }
            }
            this.lock.readLock().unlock();
            return arrayList;
        } catch (Throwable th) {
            this.lock.readLock().unlock();
            throw th;
        }
    }

    public String getVersion() {
        return this.version;
    }

    public void init(LPDeviceManagerParam lPDeviceManagerParam, InitUpnpListener initUpnpListener) {
        this.managerParam = lPDeviceManagerParam;
        this.mContext = lPDeviceManagerParam.context;
        initProcessLifecycleObserver(initUpnpListener);
    }

    public void initUpnp(Application application, InitUpnpListener initUpnpListener) {
        LPSearchControlPoint.getInstance().initUpnp(application, this.observer, initUpnpListener);
    }

    public boolean isAppOnForeground() {
        ActivityManager activityManager = (ActivityManager) this.mContext.getApplicationContext().getSystemService(ActionFloatingViewItem.f37018a);
        String packageName = this.mContext.getApplicationContext().getPackageName();
        List<ActivityManager.RunningAppProcessInfo> runningAppProcesses = activityManager.getRunningAppProcesses();
        if (runningAppProcesses == null) {
            return false;
        }
        Iterator<ActivityManager.RunningAppProcessInfo> it = runningAppProcesses.iterator();
        while (it.hasNext()) {
            it.next().processName.equals(packageName);
        }
        for (ActivityManager.RunningAppProcessInfo runningAppProcessInfo : runningAppProcesses) {
            if (runningAppProcessInfo.processName.equals(packageName) && runningAppProcessInfo.importance == 100) {
                return true;
            }
        }
        return false;
    }

    @Override // com.linkplay.bonjour.utils.BonjourLog.BonjourLogCallback
    public void log(String str, String str2) {
        LPLogUtil.i(str, str2);
    }

    public void onWifiReconnected() {
    }

    public void removeObserver() {
        this.observer = null;
    }

    public void runWiFiConnect() {
        if (Build.VERSION.SDK_INT < 31) {
            if (this.bonjourManager == null) {
                this.bonjourManager = new LPBonjourManager(this.mContext);
            }
            this.bonjourManager.setLogCallback(this);
            this.bonjourManager.start(LinkplayConstants.regType);
            return;
        }
        List<String> list = this.managerParam.mdnsServiceTypes;
        if (list == null || list.size() == 0) {
            NSDServiceManager.getInstance().setServiceType(LinkplayConstants.regType).onWiFiAvailable();
        } else if (this.managerParam.mdnsServiceTypes.size() == 1) {
            NSDServiceManager.getInstance().setServiceType(this.managerParam.mdnsServiceTypes.get(0)).onWiFiAvailable();
        } else {
            NSDMultiServiceTypeManager.getInstance().setServiceTypes(this.managerParam.mdnsServiceTypes).onWiFiAvailable();
        }
    }

    public void runWiFiDisconnect() {
        if (Build.VERSION.SDK_INT < 31) {
            LPBonjourManager lPBonjourManager = this.bonjourManager;
            if (lPBonjourManager != null) {
                lPBonjourManager.stop();
                this.bonjourManager = null;
                return;
            }
            return;
        }
        List<String> list = this.managerParam.mdnsServiceTypes;
        if (list == null || list.size() == 0) {
            NSDServiceManager.getInstance().setServiceType(LinkplayConstants.regType).onWiFiLost();
        } else if (this.managerParam.mdnsServiceTypes.size() == 1) {
            NSDServiceManager.getInstance().setServiceType(this.managerParam.mdnsServiceTypes.get(0)).onWiFiLost();
        } else {
            NSDMultiServiceTypeManager.getInstance().setServiceTypes(this.managerParam.mdnsServiceTypes).onWiFiLost();
        }
    }

    public void search(String[] strArr) {
        if (this.managerParam != null) {
            LPSearchControlPoint.getInstance().search(this.managerParam, strArr, this.observer);
        }
    }

    public void setLPConfiguration(LinkplayConfiguration linkplayConfiguration) {
        j.a.f71243a = linkplayConfiguration.isUpnpService();
    }

    public void stop() {
        if (LPSearchControlPoint.getInstance() != null) {
            LPSearchControlPoint.getInstance().destroy();
        }
        if (Build.VERSION.SDK_INT < 31) {
            LPBonjourManager lPBonjourManager = this.bonjourManager;
            if (lPBonjourManager != null) {
                lPBonjourManager.stop();
                return;
            }
            return;
        }
        List<String> list = this.managerParam.mdnsServiceTypes;
        if (list == null || list.size() == 0) {
            NSDServiceManager.getInstance().setServiceType(LinkplayConstants.regType).stopNsdService();
        } else if (this.managerParam.mdnsServiceTypes.size() == 1) {
            NSDServiceManager.getInstance().setServiceType(this.managerParam.mdnsServiceTypes.get(0)).stopNsdService();
        } else {
            NSDMultiServiceTypeManager.getInstance().setServiceTypes(this.managerParam.mdnsServiceTypes).stopNsdService();
        }
    }
}
