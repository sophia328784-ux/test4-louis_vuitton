package com.linkplay.core.service.nsd;

import android.net.nsd.NsdManager;
import android.net.nsd.NsdServiceInfo;
import android.text.TextUtils;
import com.linkplay.core.app.LPDeviceManager;
import com.linkplay.core.clingx.LPSearchControlPoint;
import com.linkplay.core.device.LPDevice;
import com.linkplay.core.utils.IPUtils;
import com.linkplay.log.LinkplayLog;
import com.linkplay.log.LinkplayLogTags;
import defpackage.et;
import h.a;
import java.io.IOException;
import java.util.List;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes2.dex */
public final class NSDCustomServiceManager {
    public static final Companion Companion = new Companion(null);
    private final String NSDTAG;
    private NsdManager.DiscoveryListener mNsdListener;
    private NsdManager mNsdManager;
    private String mServiceType;

    private NSDCustomServiceManager() {
        this.NSDTAG = "NSD-SERVICE";
        this.mServiceType = "";
    }

    private final void initDiscoveryListener() {
        this.mNsdListener = new NsdManager.DiscoveryListener() { // from class: com.linkplay.core.service.nsd.NSDCustomServiceManager.initDiscoveryListener.1
            @Override // android.net.nsd.NsdManager.DiscoveryListener
            public void onDiscoveryStarted(String str) {
                LinkplayLog.i(LinkplayLogTags.LPLogTag, NSDCustomServiceManager.this.NSDTAG + " onDiscoveryStarted:serviceType=" + str);
            }

            @Override // android.net.nsd.NsdManager.DiscoveryListener
            public void onDiscoveryStopped(String str) {
                LinkplayLog.i(LinkplayLogTags.LPLogTag, NSDCustomServiceManager.this.NSDTAG + " onDiscoveryStopped:serviceType=" + str);
            }

            @Override // android.net.nsd.NsdManager.DiscoveryListener
            public void onServiceFound(NsdServiceInfo nsdServiceInfo) throws InterruptedException {
                NsdManager nsdManager;
                String serviceType;
                LinkplayLog.i(LinkplayLogTags.LPLogTag, NSDCustomServiceManager.this.NSDTAG + " onServiceFound:serviceInfo=" + nsdServiceInfo);
                Thread.sleep(1000L);
                String str = NSDCustomServiceManager.this.mServiceType;
                boolean zC = false;
                if (str != null) {
                    zC = Intrinsics.c((nsdServiceInfo == null || (serviceType = nsdServiceInfo.getServiceType()) == null) ? null : Boolean.valueOf(StringsKt.k(serviceType, str, false)), Boolean.TRUE);
                }
                if (!zC || (nsdManager = NSDCustomServiceManager.this.mNsdManager) == null) {
                    return;
                }
                final NSDCustomServiceManager nSDCustomServiceManager = NSDCustomServiceManager.this;
                nsdManager.resolveService(nsdServiceInfo, new NsdManager.ResolveListener() { // from class: com.linkplay.core.service.nsd.NSDCustomServiceManager$initDiscoveryListener$1$onServiceFound$2
                    @Override // android.net.nsd.NsdManager.ResolveListener
                    public void onResolveFailed(NsdServiceInfo nsdServiceInfo2, int i2) {
                        LinkplayLog.i(LinkplayLogTags.LPLogTag, nSDCustomServiceManager.NSDTAG + " onStopDiscoveryFailed:serviceInfo=" + nsdServiceInfo2 + ",errorCode=" + i2);
                    }

                    @Override // android.net.nsd.NsdManager.ResolveListener
                    public void onServiceResolved(NsdServiceInfo nsdServiceInfo2) {
                        String serviceType2;
                        if (nsdServiceInfo2 == null || (serviceType2 = nsdServiceInfo2.getServiceType()) == null) {
                            return;
                        }
                        String str2 = nSDCustomServiceManager.mServiceType;
                        str2.getClass();
                        if (StringsKt.k(serviceType2, str2, false)) {
                            a aVarB = com.android.wiimu.service.online_service.util.a.a().b(nsdServiceInfo2);
                            LinkplayLog.i(LinkplayLogTags.LPLogTag, nSDCustomServiceManager.NSDTAG + " onServiceResolved->NsdServiceInfo=" + (aVarB != null ? aVarB.toString() : null));
                            com.android.wiimu.service.online_service.util.a.a().b(aVarB);
                        }
                    }
                });
            }

            @Override // android.net.nsd.NsdManager.DiscoveryListener
            public void onServiceLost(NsdServiceInfo nsdServiceInfo) {
                LinkplayLog.i(LinkplayLogTags.LPLogTag, NSDCustomServiceManager.this.NSDTAG + " onServiceLost->NsdServiceInfo=" + (nsdServiceInfo != null ? nsdServiceInfo.toString() : null));
                NSDCustomServiceManager.this.serviceLost(nsdServiceInfo);
            }

            @Override // android.net.nsd.NsdManager.DiscoveryListener
            public void onStartDiscoveryFailed(String str, int i2) {
                LinkplayLog.i(LinkplayLogTags.LPLogTag, NSDCustomServiceManager.this.NSDTAG + " onStartDiscoveryFailed:serviceType=" + str + ",errorCode=" + i2);
            }

            @Override // android.net.nsd.NsdManager.DiscoveryListener
            public void onStopDiscoveryFailed(String str, int i2) {
                LinkplayLog.i(LinkplayLogTags.LPLogTag, NSDCustomServiceManager.this.NSDTAG + " onStopDiscoveryFailed:serviceType=" + str + ",errorCode=" + i2);
                NsdManager nsdManager = NSDCustomServiceManager.this.mNsdManager;
                if (nsdManager != null) {
                    nsdManager.stopServiceDiscovery(this);
                }
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void serviceLost(NsdServiceInfo nsdServiceInfo) {
        if (nsdServiceInfo == null) {
            return;
        }
        List<LPDevice> masterDevices = LPDeviceManager.getInstance().getMasterDevices();
        masterDevices.getClass();
        for (LPDevice lPDevice : masterDevices) {
            if (TextUtils.equals(lPDevice.getDeviceStatus().getFriendlyName(), nsdServiceInfo.getServiceName())) {
                new Thread(new et(lPDevice, 27)).start();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void serviceLost$lambda$0(LPDevice lPDevice) {
        lPDevice.getClass();
        try {
            String ip = lPDevice.getDeviceStatus().getIP();
            ip.getClass();
            boolean zConnectTCP = IPUtils.connectTCP(ip);
            if (!zConnectTCP) {
                if (LPSearchControlPoint.getInstance().getLPBrowseListener() != null) {
                    LPSearchControlPoint.getInstance().getLPBrowseListener().deviceRemove(lPDevice.getUpnpUUID());
                }
            } else {
                LinkplayLog.i(LinkplayLogTags.LPLogTag, "connectTCP->NsdServiceInfo=" + lPDevice.getDeviceStatus().getFriendlyName() + " TCP connected status=" + zConnectTCP);
            }
        } catch (IOException e2) {
            e2.printStackTrace();
        }
    }

    public final NSDCustomServiceManager initListener() {
        initDiscoveryListener();
        return this;
    }

    public final NSDCustomServiceManager setServiceType(String str) {
        str.getClass();
        this.mServiceType = str;
        return this;
    }

    public final void startNsdService() {
        NsdManager nsdManager = (NsdManager) LPDeviceManager.getInstance().getContext().getSystemService("servicediscovery");
        this.mNsdManager = nsdManager;
        if (nsdManager != null) {
            nsdManager.discoverServices(this.mServiceType, 1, this.mNsdListener);
        }
    }

    public final void stopNsdService() {
        NsdManager nsdManager = this.mNsdManager;
        if (nsdManager != null) {
            nsdManager.stopServiceDiscovery(this.mNsdListener);
        }
        this.mNsdManager = null;
        this.mNsdListener = null;
    }

    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final NSDCustomServiceManager getInstance() {
            return new NSDCustomServiceManager(null);
        }

        private Companion() {
        }
    }

    public /* synthetic */ NSDCustomServiceManager(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }
}
