package com.linkplay.bonjour.presenter;

import android.app.Application;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.IntentFilter;
import android.os.Build;
import android.os.Handler;
import android.text.TextUtils;
import com.github.druk.dnssd.BrowseListener;
import com.github.druk.dnssd.DNSSD;
import com.github.druk.dnssd.DNSSDBindable;
import com.github.druk.dnssd.DNSSDEmbedded;
import com.github.druk.dnssd.DNSSDException;
import com.github.druk.dnssd.DNSSDRegistration;
import com.github.druk.dnssd.DNSSDService;
import com.github.druk.dnssd.QueryListener;
import com.github.druk.dnssd.RegisterListener;
import com.github.druk.dnssd.ResolveListener;
import com.linkplay.bonjour.config.LinkplayConfig;
import com.linkplay.bonjour.db.LinkplayDatebase;
import com.linkplay.bonjour.manage.CompareTimer;
import com.linkplay.bonjour.manage.ServiceManager;
import com.linkplay.bonjour.manage.UartManager;
import com.linkplay.bonjour.model.LinkPlayService;
import com.linkplay.bonjour.model.LinkplayConstants;
import com.linkplay.bonjour.utils.BonjourLog;
import com.linkplay.bonjour.utils.PhoneUtils;
import com.linkplay.bonjour.wifi.IWifiCallback;
import com.linkplay.bonjour.wifi.WifiReceiver;
import com.sightcall.livetranslation.data.LiveTranslationEntity;
import defpackage.cj;
import defpackage.md;
import defpackage.n00;
import defpackage.tr;
import java.net.InetAddress;
import java.net.UnknownHostException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.TimerTask;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes2.dex */
public class LPServiceManager implements IWifiCallback {
    private static final int APP_BACKGROUND = 0;
    private static final int APP_FOREGROUND = 1;
    private static final String START_FOREGROUND = " foreground ";
    private static final String START_NORMAL = "start ";
    private static final String START_WIFI_CONNECTED = " wificonnected ";
    private static final String TAG = "LPServiceManager";
    private static final int TIME_STAMP = 300000;
    private static final int WIFI_CONNECTED = 1;
    private static final int WIFI_DISCONNECTED = 0;
    private int APP_STATE;
    private int WIFI_CONNECT_STATE;
    private Application applicationContext;
    private boolean bBrowing;
    private DNSSDService browseService;
    private CompareTimer compareTimer;
    private LinkplayDatebase datebase;
    private DNSSD dnssd;
    private Handler handler;
    private LPServiceCallback iLinkPlayService;
    private LPServiceAddCallback iServiceAdd;
    private LPServiceRemoveCallback iServiceRemove;
    private String manufacturer;
    BroadcastReceiver receiver;
    private DNSSDService registerService;
    private String registerType;
    private Map<String, String> uuidMap;
    private String version;

    public LPServiceManager(Context context, LPServiceCallback lPServiceCallback) {
        this.uuidMap = new HashMap();
        this.version = "1.0.1";
        this.bBrowing = false;
        this.registerType = LinkplayConstants.regType;
        this.handler = new Handler();
        this.APP_STATE = 1;
        this.WIFI_CONNECT_STATE = 1;
        this.manufacturer = null;
        if (context == null || !(context instanceof Application)) {
            md.n("Context must be your ApplicationContext");
            throw null;
        }
        this.applicationContext = (Application) context;
        this.iLinkPlayService = lPServiceCallback;
        if (Build.BRAND.equals("samsung") && Build.MODEL.equals("SM-C7100")) {
            this.dnssd = new DNSSDEmbedded(context, 0L);
        } else {
            this.dnssd = new DNSSDBindable(context);
        }
        if (LinkplayConfig.bResolveFromCache) {
            this.datebase = new LinkplayDatebase(context);
        }
    }

    private boolean isValueable(Date date) {
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String logThreadId() {
        return "(Thread ID:" + Thread.currentThread().getId() + ") ";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void queryFromCache(String str, LinkPlayService linkPlayService) {
        CompareTimer compareTimer;
        LPServiceCallback lPServiceCallback;
        LinkPlayService linkPlayService2 = this.datebase.get(linkPlayService);
        if (linkPlayService2 == null || !isValueable(linkPlayService2.getTime())) {
            resolve(str, linkPlayService);
            return;
        }
        BonjourLog.i(TAG, logThreadId() + "service from database: " + linkPlayService2.toString());
        this.uuidMap.put(linkPlayService2.getServiceName(), linkPlayService2.getUuid());
        if (LinkplayConfig.bServiceAddByConnectSetup) {
            startConnection(str, linkPlayService);
            return;
        }
        if ((START_FOREGROUND.equals(str) || START_WIFI_CONNECTED.equals(str)) && (compareTimer = this.compareTimer) != null && compareTimer.remove(linkPlayService) != null && (lPServiceCallback = this.iLinkPlayService) != null) {
            lPServiceCallback.LPServiceReady(linkPlayService);
        }
        ServiceManager.add(linkPlayService.getUuid(), linkPlayService);
        LPServiceCallback lPServiceCallback2 = this.iLinkPlayService;
        if (lPServiceCallback2 != null) {
            lPServiceCallback2.LPServiceAdd(linkPlayService);
        }
        LPServiceAddCallback lPServiceAddCallback = this.iServiceAdd;
        if (lPServiceAddCallback != null) {
            lPServiceAddCallback.LPServiceAdd(linkPlayService);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void queryRecord(final String str, final LinkPlayService linkPlayService) {
        if (this.dnssd != null && this.bBrowing) {
            linkPlayService.getFlags();
            linkPlayService.getRrtype();
            linkPlayService.getRrclass();
            try {
                this.dnssd.queryRecord(0, linkPlayService.getIfIndex(), linkPlayService.getHostName(), 1, 1, new QueryListener() { // from class: com.linkplay.bonjour.presenter.LPServiceManager.3
                    private AtomicBoolean queryResult = new AtomicBoolean(false);

                    @Override // com.github.druk.dnssd.BaseListener
                    public void operationFailed(DNSSDService dNSSDService, int i2) {
                        if (this.queryResult.compareAndSet(false, true)) {
                            BonjourLog.i(LPServiceManager.TAG, LPServiceManager.this.logThreadId() + "queryRecord operationFailed errorCode: " + i2 + "  " + dNSSDService.toString());
                        }
                    }

                    @Override // com.github.druk.dnssd.QueryListener
                    public void queryAnswered(DNSSDService dNSSDService, int i2, int i3, String str2, int i4, int i5, byte[] bArr, int i6) {
                        String hostAddress;
                        if (this.queryResult.compareAndSet(false, true)) {
                            try {
                                hostAddress = InetAddress.getByAddress(bArr).getHostAddress();
                            } catch (UnknownHostException e2) {
                                e2.printStackTrace();
                                BonjourLog.i(LPServiceManager.TAG, LPServiceManager.this.logThreadId() + str + hashCode() + " getByAddress Exception: " + e2.getLocalizedMessage());
                                hostAddress = "";
                            }
                            LinkPlayService.Builder builder = new LinkPlayService.Builder(linkPlayService);
                            builder.fullName(str2).rrtype(i4).rrclass(i5).rdata(bArr).ttl(i6).ip(hostAddress).time(new Date());
                            LinkPlayService linkPlayServiceBuild = builder.build();
                            BonjourLog.i(LPServiceManager.TAG, LPServiceManager.this.logThreadId() + str + hashCode() + " queryAnswered: " + linkPlayServiceBuild.toString());
                            if (LinkplayConfig.bResolveFromCache) {
                                LPServiceManager.this.datebase.save(linkPlayServiceBuild);
                            }
                            if (LinkplayConfig.bServiceAddByConnectSetup) {
                                LPServiceManager.this.startConnection(str, linkPlayServiceBuild);
                                return;
                            }
                            if ((LPServiceManager.START_FOREGROUND.equals(str) || LPServiceManager.START_WIFI_CONNECTED.equals(str)) && LPServiceManager.this.compareTimer != null && LPServiceManager.this.compareTimer.remove(linkPlayServiceBuild) != null && LPServiceManager.this.iLinkPlayService != null) {
                                LPServiceManager.this.iLinkPlayService.LPServiceReady(linkPlayServiceBuild);
                            }
                            ServiceManager.add(linkPlayServiceBuild.getUuid(), linkPlayServiceBuild);
                            if (LPServiceManager.this.iLinkPlayService != null) {
                                LPServiceManager.this.iLinkPlayService.LPServiceAdd(linkPlayServiceBuild);
                            }
                            if (LPServiceManager.this.iServiceAdd != null) {
                                LPServiceManager.this.iServiceAdd.LPServiceAdd(linkPlayServiceBuild);
                            }
                        }
                    }
                });
            } catch (DNSSDException e2) {
                e2.printStackTrace();
                BonjourLog.i(TAG, logThreadId() + "queryRecord Exception: " + e2.getLocalizedMessage());
            }
        }
    }

    private void registerReceiver() {
        if (LinkplayConfig.bWifiChangeProcess) {
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("android.net.wifi.WIFI_STATE_CHANGED");
            intentFilter.addAction("android.net.wifi.STATE_CHANGE");
            if (this.receiver == null) {
                this.receiver = new WifiReceiver(this);
            }
            this.applicationContext.registerReceiver(this.receiver, intentFilter);
        }
    }

    private void registerService() {
        if (this.dnssd == null || this.registerService != null) {
            return;
        }
        n00.C(new StringBuilder(), logThreadId(), "registerService...", TAG);
        try {
            this.registerService = this.dnssd.register(PhoneUtils.getPhoneID(), this.registerType, 12321, new RegisterListener() { // from class: com.linkplay.bonjour.presenter.LPServiceManager.7
                @Override // com.github.druk.dnssd.BaseListener
                public void operationFailed(DNSSDService dNSSDService, int i2) {
                    BonjourLog.i(LPServiceManager.TAG, LPServiceManager.this.logThreadId() + "serviceRegistered " + i2);
                }

                @Override // com.github.druk.dnssd.RegisterListener
                public void serviceRegistered(DNSSDRegistration dNSSDRegistration, int i2, String str, String str2, String str3) {
                    BonjourLog.i(LPServiceManager.TAG, LPServiceManager.this.logThreadId() + "serviceRegistered " + str);
                }
            });
        } catch (DNSSDException e2) {
            e2.printStackTrace();
            BonjourLog.i(TAG, logThreadId() + "register DNSSDException:" + e2.getLocalizedMessage());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void resolve(final String str, final LinkPlayService linkPlayService) {
        DNSSD dnssd = this.dnssd;
        if (dnssd == null || !this.bBrowing) {
            return;
        }
        try {
            dnssd.resolve(linkPlayService.getFlags(), linkPlayService.getIfIndex(), linkPlayService.getServiceName(), linkPlayService.getRegType(), linkPlayService.getDomain(), new ResolveListener() { // from class: com.linkplay.bonjour.presenter.LPServiceManager.2
                private AtomicBoolean resolveResult = new AtomicBoolean(false);

                @Override // com.github.druk.dnssd.BaseListener
                public void operationFailed(DNSSDService dNSSDService, int i2) {
                    if (this.resolveResult.compareAndSet(false, true)) {
                        BonjourLog.i(LPServiceManager.TAG, LPServiceManager.this.logThreadId() + "resolve operationFailed errorCode:" + i2 + "  " + dNSSDService.toString());
                    }
                }

                @Override // com.github.druk.dnssd.ResolveListener
                public void serviceResolved(DNSSDService dNSSDService, int i2, int i3, String str2, String str3, int i4, Map<String, String> map) {
                    if (this.resolveResult.compareAndSet(false, true)) {
                        String str4 = "";
                        String str5 = (map == null || !map.containsKey("uuid")) ? "" : map.get("uuid");
                        LPServiceManager.this.uuidMap.put(linkPlayService.getServiceName(), str5);
                        String str6 = (map == null || !map.containsKey("security")) ? "" : map.get("security");
                        String str7 = (map == null || !map.containsKey("version")) ? "" : map.get("version");
                        if (map != null && map.containsKey("manufacturer")) {
                            str4 = map.get("manufacturer");
                        }
                        String str8 = LPServiceManager.this.manufacturer;
                        if (TextUtils.isEmpty(str8) || TextUtils.equals(str4, str8)) {
                            LinkPlayService linkPlayServiceBuild = new LinkPlayService.Builder(linkPlayService).fullName(str2).hostName(str3).port(i4).txtRecord(map).uuid(str5).security(str6).version(str7).setManufacturer(str4).build();
                            BonjourLog.i(LPServiceManager.TAG, LPServiceManager.this.logThreadId() + str + hashCode() + ", serviceResolved: " + linkPlayServiceBuild.getServiceName() + ", port-> " + linkPlayServiceBuild.getPort() + ", uuid-> " + linkPlayServiceBuild.getUuid() + ", security-> " + linkPlayServiceBuild.getSecurity() + ", version-> " + linkPlayServiceBuild.getVersion());
                            LPServiceManager.this.queryRecord(str, linkPlayServiceBuild);
                        }
                    }
                }
            });
        } catch (DNSSDException e2) {
            e2.printStackTrace();
            BonjourLog.i(TAG, logThreadId() + "resolve Exception:" + e2.getLocalizedMessage());
        }
    }

    private void serviceConfirmByCompare(final String str) {
        CompareTimer compareTimer = this.compareTimer;
        if (compareTimer != null) {
            compareTimer.cancel();
            this.compareTimer = null;
        }
        List<LinkPlayService> all = ServiceManager.getAll();
        if (all == null || all.size() <= 0) {
            return;
        }
        CompareTimer compareTimer2 = new CompareTimer(all);
        this.compareTimer = compareTimer2;
        compareTimer2.schedule(new TimerTask() { // from class: com.linkplay.bonjour.presenter.LPServiceManager.5
            @Override // java.util.TimerTask, java.lang.Runnable
            public void run() {
                List<LinkPlayService> unConfirmedServices = LPServiceManager.this.compareTimer.getUnConfirmedServices();
                if (unConfirmedServices == null || unConfirmedServices.size() <= 0) {
                    StringBuilder sb = new StringBuilder();
                    sb.append(LPServiceManager.this.logThreadId());
                    sb.append("No service lost before");
                    n00.C(sb, str, "...", LPServiceManager.TAG);
                    return;
                }
                for (LinkPlayService linkPlayService : unConfirmedServices) {
                    BonjourLog.i(LPServiceManager.TAG, LPServiceManager.this.logThreadId() + linkPlayService.getServiceName() + " lost before" + str + "...");
                    ServiceManager.remove(linkPlayService.getUuid());
                    if (LPServiceManager.this.iLinkPlayService != null) {
                        LPServiceManager.this.iLinkPlayService.LPServiceRemove(linkPlayService);
                    }
                    if (LPServiceManager.this.iServiceRemove != null) {
                        LPServiceManager.this.iServiceRemove.LPServiceRemove(linkPlayService);
                    }
                }
            }
        }, LiveTranslationEntity.DefaultSentenceTimeOut);
    }

    private void serviceConfirmByConnection(final String str) {
        List<LinkPlayService> all = ServiceManager.getAll();
        if (all == null) {
            return;
        }
        for (int i2 = 0; i2 < all.size(); i2++) {
            final LinkPlayService linkPlayService = all.get(i2);
            final String strE = cj.e(linkPlayService.getPort(), linkPlayService.getIp(), ":");
            new LinkTestPresenter(linkPlayService.getIp(), linkPlayService.getPort(), new ILinkTest() { // from class: com.linkplay.bonjour.presenter.LPServiceManager.6
                @Override // com.linkplay.bonjour.presenter.ILinkTest
                public void connectionSuccessful(LinkTestPresenter linkTestPresenter) {
                    StringBuilder sb = new StringBuilder();
                    sb.append(LPServiceManager.this.logThreadId());
                    sb.append(strE);
                    sb.append(" ");
                    n00.C(sb, str, " service ready", LPServiceManager.TAG);
                    if ((!LPServiceManager.START_FOREGROUND.equals(str) && !LPServiceManager.START_WIFI_CONNECTED.equals(str)) || LPServiceManager.this.compareTimer == null || LPServiceManager.this.compareTimer.remove(linkPlayService) == null || LPServiceManager.this.iLinkPlayService == null) {
                        return;
                    }
                    LPServiceManager.this.iLinkPlayService.LPServiceReady(linkPlayService);
                }

                @Override // com.linkplay.bonjour.presenter.ILinkTest
                public void onException(Exception exc, int i3) {
                    String serviceName = linkPlayService.getServiceName();
                    StringBuilder sb = new StringBuilder();
                    sb.append(LPServiceManager.this.logThreadId());
                    sb.append(" ");
                    cj.C(sb, str, " serviceLost: ", serviceName, " | ");
                    sb.append(strE);
                    sb.append(" | uuid:");
                    sb.append(linkPlayService.getUuid());
                    sb.append(" | error:");
                    sb.append(i3);
                    sb.append(" | ");
                    sb.append(exc.getLocalizedMessage());
                    BonjourLog.i(LPServiceManager.TAG, sb.toString());
                    if (LinkplayConfig.bServiceAddByConnectSetup) {
                        UartManager.remove(serviceName);
                    }
                    ServiceManager.remove(linkPlayService.getUuid());
                    if (LPServiceManager.this.iLinkPlayService != null) {
                        LPServiceManager.this.iLinkPlayService.LPServiceRemove(linkPlayService);
                    }
                    if (LPServiceManager.this.iServiceRemove != null) {
                        LPServiceManager.this.iServiceRemove.LPServiceRemove(linkPlayService);
                    }
                }
            }).connectDevice();
        }
    }

    private synchronized void startBonjour(final String str) {
        this.bBrowing = true;
        try {
            this.browseService = this.dnssd.browse(this.registerType, new BrowseListener() { // from class: com.linkplay.bonjour.presenter.LPServiceManager.1
                @Override // com.github.druk.dnssd.BaseListener
                public void operationFailed(DNSSDService dNSSDService, int i2) {
                    BonjourLog.i(LPServiceManager.TAG, LPServiceManager.this.logThreadId() + "operationFailed errorCode:" + i2 + "  " + dNSSDService.toString());
                }

                @Override // com.github.druk.dnssd.BrowseListener
                public void serviceFound(DNSSDService dNSSDService, int i2, int i3, String str2, String str3, String str4) {
                    if (LPServiceManager.this.bBrowing && str3.contains(LPServiceManager.this.registerType)) {
                        LinkPlayService linkPlayServiceBuild = new LinkPlayService.Builder(i2, i3, str2, str3, str4).build();
                        BonjourLog.i(LPServiceManager.TAG, LPServiceManager.this.logThreadId() + str + hashCode() + " serviceFound: " + str2);
                        boolean z = LinkplayConfig.bResolveFromCache;
                        LPServiceManager lPServiceManager = LPServiceManager.this;
                        if (z) {
                            lPServiceManager.queryFromCache(str, linkPlayServiceBuild);
                        } else {
                            lPServiceManager.resolve(str, linkPlayServiceBuild);
                        }
                    }
                }

                @Override // com.github.druk.dnssd.BrowseListener
                public void serviceLost(DNSSDService dNSSDService, final int i2, final int i3, final String str2, final String str3, final String str4) {
                    if (LPServiceManager.this.bBrowing && str3.contains(LPServiceManager.this.registerType)) {
                        LPServiceManager.this.handler.postDelayed(new Runnable() { // from class: com.linkplay.bonjour.presenter.LPServiceManager.1.1
                            @Override // java.lang.Runnable
                            public void run() {
                                String str5 = (String) LPServiceManager.this.uuidMap.get(str2);
                                LinkPlayService linkPlayServiceBuild = new LinkPlayService.Builder(i2, i3, str2, str3, str4).uuid(str5).build();
                                if (LinkplayConfig.bWifiChangeProcess && LPServiceManager.this.WIFI_CONNECT_STATE == 0) {
                                    BonjourLog.i(LPServiceManager.TAG, LPServiceManager.this.logThreadId() + "wifi disconnected, return... (serviceLost: " + str2 + "   uuid:" + linkPlayServiceBuild.getUuid() + ")");
                                    return;
                                }
                                BonjourLog.i(LPServiceManager.TAG, LPServiceManager.this.logThreadId() + "serviceLost: " + str2 + "   uuid:" + linkPlayServiceBuild.getUuid());
                                if (LinkplayConfig.bServiceAddByConnectSetup) {
                                    UartManager.remove(str2);
                                }
                                ServiceManager.remove(str5);
                                if (LPServiceManager.this.iLinkPlayService != null) {
                                    LPServiceManager.this.iLinkPlayService.LPServiceRemove(linkPlayServiceBuild);
                                }
                                if (LPServiceManager.this.iServiceRemove != null) {
                                    LPServiceManager.this.iServiceRemove.LPServiceRemove(linkPlayServiceBuild);
                                }
                            }
                        }, 500L);
                    }
                }
            });
        } catch (DNSSDException e2) {
            e2.printStackTrace();
            BonjourLog.i(TAG, logThreadId() + "browse DNSSDException: " + e2.getLocalizedMessage());
            this.bBrowing = false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void startConnection(String str, final LinkPlayService linkPlayService) {
        String ip = linkPlayService.getIp();
        int port = linkPlayService.getPort();
        final String strE = cj.e(port, ip, ":");
        new UartPresenter(ip, port, new IUartPresenter() { // from class: com.linkplay.bonjour.presenter.LPServiceManager.4
            @Override // com.linkplay.bonjour.presenter.IUartPresenter
            public void connectionSuccessful(UartPresenter uartPresenter) {
                StringBuilder sb = new StringBuilder();
                sb.append(LPServiceManager.this.logThreadId());
                n00.C(sb, strE, " connectionSuccessful", LPServiceManager.TAG);
                if (LinkplayConfig.bServiceAddByConnectSetup) {
                    UartManager.add(linkPlayService.getServiceName(), uartPresenter);
                }
                ServiceManager.add(linkPlayService.getUuid(), linkPlayService);
                if (LPServiceManager.this.iLinkPlayService != null) {
                    LPServiceManager.this.iLinkPlayService.LPServiceAdd(linkPlayService);
                }
                if (LPServiceManager.this.iServiceAdd != null) {
                    LPServiceManager.this.iServiceAdd.LPServiceAdd(linkPlayService);
                }
            }

            @Override // com.linkplay.bonjour.presenter.IUartPresenter
            public void heartbeatTimeout() {
                StringBuilder sb = new StringBuilder();
                sb.append(LPServiceManager.this.logThreadId());
                n00.C(sb, strE, " heartbeatTimeout", LPServiceManager.TAG);
                LPServiceManager.this.reconfirmRecord(linkPlayService);
            }

            @Override // com.linkplay.bonjour.presenter.IUartPresenter
            public void onException(Exception exc, int i2) {
                BonjourLog.i(LPServiceManager.TAG, LPServiceManager.this.logThreadId() + linkPlayService.getUuid() + " | " + strE + " | uuid:" + linkPlayService.getUuid() + " | error:" + i2 + " | " + exc.getLocalizedMessage());
            }

            @Override // com.linkplay.bonjour.presenter.IUartPresenter
            public void receivedMessage(String str2) {
                new SimpleDateFormat("HH:mm:ss").format(Long.valueOf(System.currentTimeMillis()));
            }
        }).connectDevice();
    }

    private synchronized void stopBonjour() {
        this.bBrowing = false;
        try {
            this.browseService.stop();
            this.browseService = null;
        } catch (Exception e2) {
            e2.printStackTrace();
            BonjourLog.i(TAG, logThreadId() + "stop Exception:" + e2.getLocalizedMessage());
        }
    }

    private void unRegister() {
        BroadcastReceiver broadcastReceiver;
        if (!LinkplayConfig.bWifiChangeProcess || (broadcastReceiver = this.receiver) == null) {
            return;
        }
        this.applicationContext.unregisterReceiver(broadcastReceiver);
    }

    private void unRegisterService() {
        if (this.dnssd == null || this.registerService == null) {
            return;
        }
        n00.C(new StringBuilder(), logThreadId(), "unRegisterService...", TAG);
        this.registerService.stop();
        this.registerService = null;
    }

    public String getVersion() {
        return this.version;
    }

    public void reconfirmRecord() {
        List<LinkPlayService> all = ServiceManager.getAll();
        if (all == null || all.size() <= 0) {
            return;
        }
        for (int i2 = 0; i2 < all.size(); i2++) {
            LinkPlayService linkPlayService = all.get(i2);
            BonjourLog.i(TAG, logThreadId() + "reconfirmRecord: " + linkPlayService.getServiceName());
            reconfirmRecord(linkPlayService);
        }
    }

    public void resolveAll() {
        List<LinkPlayService> all = ServiceManager.getAll();
        if (all.size() > 0) {
            for (LinkPlayService linkPlayService : all) {
                BonjourLog.i(TAG, logThreadId() + "resolveAll: " + linkPlayService.getServiceName());
                resolve("resolve", linkPlayService);
            }
        }
    }

    public void runningBackGround() {
        this.APP_STATE = 0;
        if (this.dnssd == null || this.browseService == null || !this.bBrowing) {
            return;
        }
        n00.C(new StringBuilder(), logThreadId(), "runningBackGround...", TAG);
        stopBonjour();
        if (LinkplayConfig.bServiceAddByConnectSetup) {
            UartManager.clear();
        }
    }

    public void runningForeGround() {
        this.APP_STATE = 1;
        if (this.dnssd == null || this.browseService != null || this.bBrowing) {
            return;
        }
        n00.C(new StringBuilder(), logThreadId(), "runningForeGround...", TAG);
        if (LinkplayConfig.bServiceAddByConnectSetup) {
            serviceConfirmByConnection(START_FOREGROUND);
        } else {
            serviceConfirmByCompare(START_FOREGROUND);
            reconfirmRecord();
        }
        startBonjour(START_FOREGROUND);
    }

    public void runningWifiConnected() {
        if (this.dnssd == null || this.browseService != null || this.bBrowing) {
            return;
        }
        n00.C(new StringBuilder(), logThreadId(), "runningWifiConnected...", TAG);
        if (LinkplayConfig.bServiceAddByConnectSetup) {
            serviceConfirmByConnection(START_WIFI_CONNECTED);
        } else {
            serviceConfirmByCompare(START_WIFI_CONNECTED);
            reconfirmRecord();
        }
        startBonjour(START_WIFI_CONNECTED);
    }

    public void runningWifiDisconnected() {
        if (this.dnssd == null || this.browseService == null || !this.bBrowing) {
            return;
        }
        n00.C(new StringBuilder(), logThreadId(), "runningWifiDisconnected...", TAG);
        stopBonjour();
        if (LinkplayConfig.bServiceAddByConnectSetup) {
            UartManager.clear();
        }
    }

    public void setLPServiceConfig(LinkplayConfig linkplayConfig) {
        if (linkplayConfig == null) {
            return;
        }
        LinkplayConfig.bServiceAddByConnectSetup = linkplayConfig.isServiceByConnection();
        LinkplayConfig.bWifiChangeProcess = linkplayConfig.isWifiChangedListening();
        LinkplayConfig.bResolveFromCache = linkplayConfig.isResolveFromCache();
    }

    public void setLogCallback(BonjourLog.BonjourLogCallback bonjourLogCallback) {
        BonjourLog.setLogCallback(bonjourLogCallback);
    }

    public void setManufacturer(String str) {
        this.manufacturer = str;
    }

    public void setServiceAddCallback(LPServiceAddCallback lPServiceAddCallback) {
        this.iServiceAdd = lPServiceAddCallback;
    }

    public void setServiceCallback(LPServiceCallback lPServiceCallback) {
        this.iLinkPlayService = lPServiceCallback;
    }

    public void setServiceRemoveCallback(LPServiceRemoveCallback lPServiceRemoveCallback) {
        this.iServiceRemove = lPServiceRemoveCallback;
    }

    public void start(String str) {
        if (this.dnssd == null || this.browseService != null || this.bBrowing) {
            return;
        }
        this.registerType = str;
        n00.C(new StringBuilder(), logThreadId(), "start...", TAG);
        startBonjour(START_NORMAL);
        registerReceiver();
    }

    public void stop() {
        if (this.dnssd == null || this.browseService == null || !this.bBrowing) {
            return;
        }
        n00.C(new StringBuilder(), logThreadId(), "stop...", TAG);
        stopBonjour();
        ServiceManager.clear();
        this.uuidMap.clear();
        if (LinkplayConfig.bServiceAddByConnectSetup) {
            UartManager.clear();
        }
        unRegister();
    }

    @Override // com.linkplay.bonjour.wifi.IWifiCallback
    public void wifiConnected(String str) {
        if (this.APP_STATE == 0) {
            BonjourLog.i(TAG, tr.l(new StringBuilder(), logThreadId(), "app background Wi-Fi connected to ", str, ", return..."));
            return;
        }
        if (this.WIFI_CONNECT_STATE == 1) {
            BonjourLog.i(TAG, tr.l(new StringBuilder(), logThreadId(), "Wi-Fi already connected to ", str, ", return..."));
            return;
        }
        this.WIFI_CONNECT_STATE = 1;
        BonjourLog.i(TAG, logThreadId() + "Wi-Fi connected to " + str);
        runningWifiConnected();
    }

    @Override // com.linkplay.bonjour.wifi.IWifiCallback
    public void wifiDisabled() {
        n00.C(new StringBuilder(), logThreadId(), "wifiDisabled", TAG);
    }

    @Override // com.linkplay.bonjour.wifi.IWifiCallback
    public void wifiDisconnected() {
        if (this.APP_STATE == 0) {
            n00.C(new StringBuilder(), logThreadId(), "app background Wi-Fi disconnected, return...", TAG);
            return;
        }
        if (this.WIFI_CONNECT_STATE == 0) {
            n00.C(new StringBuilder(), logThreadId(), "Wi-Fi already disconnected, return...", TAG);
            return;
        }
        this.WIFI_CONNECT_STATE = 0;
        BonjourLog.i(TAG, logThreadId() + "Wi-Fi disconnected...");
        runningWifiDisconnected();
    }

    @Override // com.linkplay.bonjour.wifi.IWifiCallback
    public void wifiEnabled() {
        n00.C(new StringBuilder(), logThreadId(), "wifiEnabled", TAG);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void reconfirmRecord(LinkPlayService linkPlayService) {
        DNSSD dnssd = this.dnssd;
        if (dnssd != null) {
            dnssd.reconfirmRecord(linkPlayService.getFlags(), linkPlayService.getIfIndex(), linkPlayService.getFullName(), linkPlayService.getRrtype(), linkPlayService.getRrclass(), linkPlayService.getRdata());
        }
    }

    public LPServiceManager(Context context) {
        this(context, null);
    }
}
