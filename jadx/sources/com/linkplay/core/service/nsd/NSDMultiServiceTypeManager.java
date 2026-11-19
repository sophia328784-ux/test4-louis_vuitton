package com.linkplay.core.service.nsd;

import android.net.nsd.NsdManager;
import android.net.nsd.NsdServiceInfo;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.linkplay.core.app.LPDeviceManager;
import com.linkplay.core.clingx.LPSearchControlPoint;
import com.linkplay.core.utils.IPUtils;
import com.linkplay.log.LinkplayLog;
import com.linkplay.log.LinkplayLogTags;
import defpackage.pq0;
import h.a;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes2.dex */
public class NSDMultiServiceTypeManager {
    private static final int APP_BACKGROUND = 0;
    private static final int APP_FOREGROUND = 1;
    private static final int WIFI_CONNECTED = 1;
    private static final int WIFI_DISCONNECTED = 0;
    private static NSDMultiServiceTypeManager instance;
    NsdManager nsdManager;
    NsdManager.ResolveListener resolveListener;
    LinkedHashMap<String, NsdManager.DiscoveryListener> nsdDiscoveryListenerMap = new LinkedHashMap<>();
    List<String> serviceTypes = new ArrayList();
    AtomicBoolean resolveListenerBusy = new AtomicBoolean(false);
    ConcurrentLinkedQueue<NsdServiceInfo> pendingNsdServices = new ConcurrentLinkedQueue<>();
    final List<NsdServiceInfo> resolvedNsdServices = pq0.v();
    private Map<String, a> resolvedInfoMap = new HashMap();
    private int APP_STATE = 0;
    private int WIFI_CONNECT_STATE = 0;
    private Handler serviceHandler = new Handler(Looper.getMainLooper()) { // from class: com.linkplay.core.service.nsd.NSDMultiServiceTypeManager.1
        @Override // android.os.Handler
        public void handleMessage(Message message) {
            super.handleMessage(message);
            Object obj = message.obj;
            if (obj instanceof NsdServiceInfo) {
                NSDMultiServiceTypeManager.this.serviceLost((NsdServiceInfo) obj);
            }
        }
    };

    private NSDMultiServiceTypeManager() {
        initializeResolveListener();
    }

    private void confirmServices() {
        List<NsdServiceInfo> list;
        if (this.APP_STATE != 1 || this.WIFI_CONNECT_STATE != 1 || (list = this.resolvedNsdServices) == null || list.size() <= 0) {
            return;
        }
        synchronized (this.resolvedNsdServices) {
            try {
                for (NsdServiceInfo nsdServiceInfo : this.resolvedNsdServices) {
                    this.serviceHandler.removeMessages(nsdServiceInfo.getServiceName().hashCode());
                    Message messageObtainMessage = this.serviceHandler.obtainMessage(nsdServiceInfo.getServiceName().hashCode());
                    messageObtainMessage.obj = nsdServiceInfo;
                    this.serviceHandler.sendMessageDelayed(messageObtainMessage, 15000L);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void discoveryServiceFound(NsdServiceInfo nsdServiceInfo) {
        if (this.APP_STATE == 0) {
            return;
        }
        LinkplayLog.i(LinkplayLogTags.LPLogTag, "onServiceFound->NsdServiceInfo=" + nsdServiceInfo.toString());
        if (!this.resolveListenerBusy.compareAndSet(false, true)) {
            this.pendingNsdServices.add(nsdServiceInfo);
            return;
        }
        NsdManager nsdManager = this.nsdManager;
        if (nsdManager != null) {
            nsdManager.resolveService(nsdServiceInfo, this.resolveListener);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void discoveryServiceLost(NsdServiceInfo nsdServiceInfo) {
        Iterator<NsdServiceInfo> it = this.pendingNsdServices.iterator();
        boolean z = false;
        while (it.hasNext()) {
            if (it.next().getServiceName().equals(nsdServiceInfo.getServiceName())) {
                it.remove();
                z = true;
            }
        }
        synchronized (this.resolvedNsdServices) {
            try {
                Iterator<NsdServiceInfo> it2 = this.resolvedNsdServices.iterator();
                while (it2.hasNext()) {
                    if (it2.next().getServiceName().equals(nsdServiceInfo.getServiceName())) {
                        it2.remove();
                        z = true;
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        if (z) {
            StringBuilder sb = new StringBuilder("onServiceLost->NsdServiceInfo=");
            sb.append(nsdServiceInfo != null ? nsdServiceInfo.toString() : "");
            LinkplayLog.i(LinkplayLogTags.LPLogTag, sb.toString());
            this.serviceHandler.removeMessages(nsdServiceInfo.getServiceName().hashCode());
            Message messageObtainMessage = this.serviceHandler.obtainMessage(nsdServiceInfo.getServiceName().hashCode());
            messageObtainMessage.obj = nsdServiceInfo;
            this.serviceHandler.sendMessageDelayed(messageObtainMessage, 15000L);
        }
    }

    public static NSDMultiServiceTypeManager getInstance() {
        if (instance == null) {
            instance = new NSDMultiServiceTypeManager();
        }
        return instance;
    }

    private void initDiscoveryListener() {
        for (int i2 = 0; i2 < this.serviceTypes.size(); i2++) {
            this.nsdDiscoveryListenerMap.put(this.serviceTypes.get(i2), new NsdManager.DiscoveryListener() { // from class: com.linkplay.core.service.nsd.NSDMultiServiceTypeManager.2
                @Override // android.net.nsd.NsdManager.DiscoveryListener
                public void onDiscoveryStarted(String str) {
                    LinkplayLog.i(LinkplayLogTags.LPLogTag, "onDiscoveryStarted->serviceType=" + str);
                }

                @Override // android.net.nsd.NsdManager.DiscoveryListener
                public void onDiscoveryStopped(String str) {
                    LinkplayLog.i(LinkplayLogTags.LPLogTag, "onDiscoveryStopped->serviceType=" + str);
                }

                @Override // android.net.nsd.NsdManager.DiscoveryListener
                public void onServiceFound(NsdServiceInfo nsdServiceInfo) {
                    NSDMultiServiceTypeManager.this.discoveryServiceFound(nsdServiceInfo);
                }

                @Override // android.net.nsd.NsdManager.DiscoveryListener
                public void onServiceLost(NsdServiceInfo nsdServiceInfo) {
                    NSDMultiServiceTypeManager.this.discoveryServiceLost(nsdServiceInfo);
                }

                @Override // android.net.nsd.NsdManager.DiscoveryListener
                public void onStartDiscoveryFailed(String str, int i3) {
                    LinkplayLog.i(LinkplayLogTags.LPLogTag, "onStartDiscoveryFailed->serviceType=" + str + ",errorCode=" + i3);
                }

                @Override // android.net.nsd.NsdManager.DiscoveryListener
                public void onStopDiscoveryFailed(String str, int i3) {
                    LinkplayLog.i(LinkplayLogTags.LPLogTag, "onStopDiscoveryFailed->serviceType=" + str + ",errorCode=" + i3);
                    NsdManager nsdManager = NSDMultiServiceTypeManager.this.nsdManager;
                    if (nsdManager != null) {
                        nsdManager.stopServiceDiscovery(this);
                    }
                }
            });
        }
    }

    private void initializeResolveListener() {
        this.resolveListener = new NsdManager.ResolveListener() { // from class: com.linkplay.core.service.nsd.NSDMultiServiceTypeManager.3
            @Override // android.net.nsd.NsdManager.ResolveListener
            public void onResolveFailed(NsdServiceInfo nsdServiceInfo, int i2) {
                LinkplayLog.i(LinkplayLogTags.LPLogTag, "onResolveFailed->NsdServiceInfo=" + nsdServiceInfo.toString() + ", errorCoe=" + i2);
                NSDMultiServiceTypeManager.this.resolveNextInQueue();
            }

            @Override // android.net.nsd.NsdManager.ResolveListener
            public void onServiceResolved(NsdServiceInfo nsdServiceInfo) {
                NSDMultiServiceTypeManager.this.resolvedNsdServices.add(nsdServiceInfo);
                for (int i2 = 0; i2 < NSDMultiServiceTypeManager.this.serviceTypes.size(); i2++) {
                    if (nsdServiceInfo.getServiceType().contains(NSDMultiServiceTypeManager.this.serviceTypes.get(i2))) {
                        a aVarB = com.android.wiimu.service.online_service.util.a.a().b(nsdServiceInfo);
                        LinkplayLog.i(LinkplayLogTags.LPLogTag, "onServiceResolved->NsdServiceInfo=".concat(aVarB.toString()));
                        NSDMultiServiceTypeManager.this.serviceHandler.removeMessages(nsdServiceInfo.getServiceName().hashCode());
                        NSDMultiServiceTypeManager.this.resolvedInfoMap.put(aVarB.f69527b, aVarB);
                        com.android.wiimu.service.online_service.util.a.a().b(aVarB);
                        break;
                    }
                }
                NSDMultiServiceTypeManager.this.resolveNextInQueue();
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void resolveNextInQueue() {
        NsdServiceInfo nsdServiceInfoPoll = this.pendingNsdServices.poll();
        if (nsdServiceInfoPoll == null) {
            this.resolveListenerBusy.set(false);
            return;
        }
        NsdManager nsdManager = this.nsdManager;
        if (nsdManager != null) {
            nsdManager.resolveService(nsdServiceInfoPoll, this.resolveListener);
        }
    }

    private void runningWiFiAvailable() {
        confirmServices();
        startNsdService();
    }

    private void runningWiFiLost() {
        stopNsdService();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void serviceLost(final NsdServiceInfo nsdServiceInfo) {
        final a aVar;
        if (nsdServiceInfo == null || (aVar = this.resolvedInfoMap.get(nsdServiceInfo.getServiceName())) == null) {
            return;
        }
        new Thread(new Runnable() { // from class: com.linkplay.core.service.nsd.NSDMultiServiceTypeManager.4
            @Override // java.lang.Runnable
            public void run() {
                try {
                    boolean zConnectTCP = IPUtils.connectTCP(aVar.f69530f);
                    if (!zConnectTCP) {
                        NSDMultiServiceTypeManager.this.resolvedInfoMap.remove(nsdServiceInfo.getServiceName());
                        if (LPSearchControlPoint.getInstance().getLPBrowseListener() != null) {
                            LPSearchControlPoint.getInstance().getLPBrowseListener().deviceRemove(aVar.d);
                            return;
                        }
                        return;
                    }
                    LinkplayLog.i(LinkplayLogTags.LPLogTag, "serviceLost:connectTCP" + nsdServiceInfo.getServiceName() + " tcp connected status=" + zConnectTCP);
                } catch (IOException e2) {
                    e2.printStackTrace();
                }
            }
        }).start();
    }

    public void onWiFiAvailable() {
        if (this.WIFI_CONNECT_STATE == 1) {
            return;
        }
        this.WIFI_CONNECT_STATE = 1;
        runningWiFiAvailable();
    }

    public void onWiFiLost() {
        if (this.WIFI_CONNECT_STATE == 0) {
            return;
        }
        this.WIFI_CONNECT_STATE = 0;
        runningWiFiLost();
    }

    public void runningBackGround() {
        if (this.APP_STATE == 0) {
            return;
        }
        this.APP_STATE = 0;
        this.WIFI_CONNECT_STATE = 0;
        stopNsdService();
    }

    public void runningForeGround() {
        if (this.APP_STATE == 1) {
            return;
        }
        this.APP_STATE = 1;
        this.WIFI_CONNECT_STATE = 1;
        confirmServices();
        startNsdService();
    }

    public NSDMultiServiceTypeManager setServiceTypes(List<String> list) {
        this.serviceTypes = list;
        return this;
    }

    public void startNsdService() {
        if (this.APP_STATE == 1 && this.WIFI_CONNECT_STATE == 1) {
            LinkplayLog.i(LinkplayLogTags.LPLogTag, "NsdService start");
            initDiscoveryListener();
            this.nsdManager = (NsdManager) LPDeviceManager.getInstance().getContext().getSystemService("servicediscovery");
            for (Map.Entry<String, NsdManager.DiscoveryListener> entry : this.nsdDiscoveryListenerMap.entrySet()) {
                this.nsdManager.discoverServices(entry.getKey(), 1, entry.getValue());
            }
        }
    }

    public void stopNsdService() {
        LinkplayLog.i(LinkplayLogTags.LPLogTag, "NsdService stop");
        Iterator<Map.Entry<String, NsdManager.DiscoveryListener>> it = this.nsdDiscoveryListenerMap.entrySet().iterator();
        while (it.hasNext()) {
            this.nsdManager.stopServiceDiscovery(it.next().getValue());
        }
        this.nsdManager = null;
        this.nsdDiscoveryListenerMap.clear();
    }
}
