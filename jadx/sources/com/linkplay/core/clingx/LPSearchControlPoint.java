package com.linkplay.core.clingx;

import android.app.Application;
import android.net.wifi.WifiManager;
import com.android.wiimu.upnp.e;
import com.linkplay.core.app.LPDeviceManager;
import com.linkplay.core.app.LPDeviceManagerObserver;
import com.linkplay.core.app.LPDeviceManagerParam;
import com.linkplay.core.model.menubar.MenuBarConstants;
import com.sightcall.livetranslation.data.LiveTranslationEntity;
import java.util.Arrays;
import java.util.List;
import java.util.Timer;
import java.util.TimerTask;
import java.util.concurrent.locks.ReentrantLock;
import org.teleal.cling.android.AndroidUpnpService;
import org.teleal.cling.model.meta.Device;
import org.teleal.cling.model.meta.LocalDevice;
import org.teleal.cling.model.meta.RemoteDevice;
import org.teleal.cling.registry.Registry;

/* JADX INFO: loaded from: classes2.dex */
public class LPSearchControlPoint {
    public static boolean backgroundSleep = false;
    public static boolean forceGround = true;
    private static LPSearchControlPoint instance;
    public static AndroidUpnpService upnpservice;
    private Timer forcegroundTimer;
    private Application mContext;
    private WifiManager.MulticastLock multicastLock;
    private WifiManager wifiManager;
    private LPBrowseRegistryListener registryListener = null;
    private LPControlPointSearchTemplate searchTemplate = null;
    private int maxMaintainAgeSeconds = 60;
    private boolean openMulti = true;
    private ReentrantLock multiLock = new ReentrantLock();
    Timer upnpSearchTimer = null;
    private final long MAX_BACKGROUND_TIME = 56000;
    private long preTime = System.currentTimeMillis();

    private LPSearchControlPoint() {
    }

    private void executeUpnpSearchByTimer(final String[] strArr) {
        Timer timer = this.upnpSearchTimer;
        if (timer != null) {
            timer.cancel();
            this.upnpSearchTimer = null;
        }
        if (this.upnpSearchTimer == null) {
            this.upnpSearchTimer = new Timer();
        }
        this.upnpSearchTimer.scheduleAtFixedRate(new TimerTask() { // from class: com.linkplay.core.clingx.LPSearchControlPoint.2
            @Override // java.util.TimerTask, java.lang.Runnable
            public void run() {
                if (LPSearchControlPoint.this.getLPSearchTemplate() != null) {
                    LPSearchControlPoint lPSearchControlPoint = LPSearchControlPoint.this;
                    if (lPSearchControlPoint.openMulti) {
                        String[] strArr2 = strArr;
                        if (strArr2 == null || strArr2.length <= 0) {
                            lPSearchControlPoint.getLPSearchTemplate().executeUpnpSearch();
                            return;
                        }
                        List<String> listAsList = Arrays.asList(strArr2);
                        if (listAsList == null || listAsList.size() <= 0) {
                            LPSearchControlPoint.this.getLPSearchTemplate().executeUpnpSearch();
                        } else {
                            LPSearchControlPoint.this.getLPSearchTemplate().executeUpnpSearchX(listAsList);
                        }
                    }
                }
            }
        }, 1500L, LiveTranslationEntity.DefaultSentenceTimeOut);
    }

    public static LPSearchControlPoint getInstance() {
        if (instance == null) {
            synchronized (LPSearchControlPoint.class) {
                try {
                    if (instance == null) {
                        instance = new LPSearchControlPoint();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return instance;
    }

    private void startForcegroundTimer() {
        Timer timer = new Timer();
        this.forcegroundTimer = timer;
        timer.schedule(new TimerTask() { // from class: com.linkplay.core.clingx.LPSearchControlPoint.1
            @Override // java.util.TimerTask, java.lang.Runnable
            public void run() {
                boolean zIsAppOnForeground = LPDeviceManager.getInstance().isAppOnForeground();
                LPSearchControlPoint.forceGround = zIsAppOnForeground;
                if (zIsAppOnForeground) {
                    LPSearchControlPoint.this.openMultiLock();
                    return;
                }
                long jCurrentTimeMillis = System.currentTimeMillis();
                LPSearchControlPoint lPSearchControlPoint = LPSearchControlPoint.this;
                if (jCurrentTimeMillis - lPSearchControlPoint.preTime > 56000) {
                    LPSearchControlPoint.backgroundSleep = true;
                }
                lPSearchControlPoint.closeMultiLock();
            }
        }, 0L, LiveTranslationEntity.DefaultSentenceTimeOut);
    }

    private void upnpSearch(String[] strArr, LPDeviceManagerObserver lPDeviceManagerObserver) {
        executeUpnpSearchByTimer(strArr);
        startForcegroundTimer();
    }

    public void closeMultiLock() {
        this.multiLock.lock();
        this.openMulti = false;
        WifiManager.MulticastLock multicastLock = this.multicastLock;
        if (multicastLock != null && multicastLock.isHeld()) {
            this.multicastLock.release();
        }
        this.multiLock.unlock();
    }

    public void destroy() {
        Timer timer = this.upnpSearchTimer;
        if (timer != null) {
            timer.cancel();
            this.upnpSearchTimer = null;
        }
        Timer timer2 = this.forcegroundTimer;
        if (timer2 != null) {
            timer2.cancel();
            this.forcegroundTimer = null;
        }
    }

    public LPBrowseRegistryListener getLPBrowseListener() {
        return this.registryListener;
    }

    public LPControlPointSearchTemplate getLPSearchTemplate() {
        return this.searchTemplate;
    }

    public int getRegisterItemMaintainMaxAgeSeconds() {
        return this.maxMaintainAgeSeconds;
    }

    public e getWiimuUpnpTemplate() {
        return null;
    }

    public void initUpnp(Application application, LPDeviceManagerObserver lPDeviceManagerObserver, InitUpnpListener initUpnpListener) {
        LPDlnaPlayerData.me().resetDlnaPlayerData(application);
        LPDlnaMediaServerData.me().resetDlnaPlayerData(application);
        if (this.searchTemplate == null) {
            this.searchTemplate = new LPControlPointSearchTemplate(this.mContext);
        }
        if (this.registryListener == null) {
            this.registryListener = new LPBrowseRegistryListener(lPDeviceManagerObserver);
        }
        this.searchTemplate.setRegistryListener(this.registryListener);
        this.searchTemplate.initUpnpSearch(application, initUpnpListener);
    }

    public void openMultiLock() {
        this.preTime = System.currentTimeMillis();
        this.multiLock.lock();
        this.openMulti = true;
        if (this.multicastLock == null) {
            WifiManager wifiManager = (WifiManager) this.mContext.getApplicationContext().getSystemService(MenuBarConstants.MEDIA_TYPE_WIFI);
            this.wifiManager = wifiManager;
            this.multicastLock = wifiManager.createMulticastLock(getClass().getSimpleName());
        }
        if (!this.multicastLock.isHeld()) {
            this.multicastLock.acquire();
        }
        this.multiLock.unlock();
    }

    public void removeAndrefreshDevices() {
        Registry registryListener;
        LPControlPointSearchTemplate lPSearchTemplate = getLPSearchTemplate();
        if (lPSearchTemplate == null || (registryListener = lPSearchTemplate.getRegistryListener()) == null) {
            return;
        }
        for (Device device : registryListener.c()) {
            AndroidUpnpService upnpService = lPSearchTemplate.getUpnpService();
            if (upnpService != null && device != null) {
                if (device instanceof LocalDevice) {
                    upnpService.b().b((LocalDevice) device);
                } else if (device instanceof RemoteDevice) {
                    upnpService.b().g((RemoteDevice) device);
                }
            }
        }
    }

    public void researchUpnpDevices() {
        Registry registryListener = getLPSearchTemplate().getRegistryListener();
        if (registryListener != null) {
            registryListener.e();
            registryListener.h();
        }
    }

    public void search(LPDeviceManagerParam lPDeviceManagerParam, String[] strArr, LPDeviceManagerObserver lPDeviceManagerObserver) {
        if (lPDeviceManagerParam != null) {
            this.mContext = lPDeviceManagerParam.context;
            this.maxMaintainAgeSeconds = lPDeviceManagerParam.registerMaintainMaxAgeSeconds;
        }
        upnpSearch(strArr, lPDeviceManagerObserver);
    }
}
