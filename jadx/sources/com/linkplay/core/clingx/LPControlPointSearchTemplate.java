package com.linkplay.core.clingx;

import a.a;
import android.app.Application;
import android.content.ComponentName;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.IBinder;
import com.linkplay.core.app.LPDeviceManager;
import com.linkplay.log.LinkplayLog;
import com.linkplay.log.LinkplayLogTags;
import java.util.List;
import org.teleal.cling.android.AndroidUpnpService;
import org.teleal.cling.android.AndroidUpnpServiceImpl;
import org.teleal.cling.controlpoint.ControlPoint;
import org.teleal.cling.registry.Registry;
import org.teleal.cling.registry.RegistryListener;

/* JADX INFO: loaded from: classes2.dex */
public class LPControlPointSearchTemplate {
    static final String UpnpLog = "UpnpLog";
    private InitUpnpListener mInitUpnpListener;
    private RegistryListener registryListener;
    private ServiceConnection serviceConnection = new ServiceConnection() { // from class: com.linkplay.core.clingx.LPControlPointSearchTemplate.1
        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            LPControlPointSearchTemplate.this.serviceIsBinded = true;
            LinkplayLog.d(LinkplayLogTags.LPLogTag, "LPControlPointSearchTemplate initUpnpSearch On Service Creating  UPNPSearch服务连接成功 ...");
            if (iBinder instanceof AndroidUpnpService) {
                LPControlPointSearchTemplate.this.upnpService = (AndroidUpnpService) iBinder;
                LPSearchControlPoint.getInstance();
                AndroidUpnpService androidUpnpService = LPControlPointSearchTemplate.this.upnpService;
                LPSearchControlPoint.upnpservice = androidUpnpService;
                androidUpnpService.b().j(LPControlPointSearchTemplate.this.registryListener);
                int i2 = a.f348a;
            }
            InitUpnpListener initUpnpListener = LPControlPointSearchTemplate.this.mInitUpnpListener;
            if (initUpnpListener != null) {
                initUpnpListener.initSuccess();
            }
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
            LPControlPointSearchTemplate lPControlPointSearchTemplate = LPControlPointSearchTemplate.this;
            AndroidUpnpService androidUpnpService = lPControlPointSearchTemplate.upnpService;
            if (androidUpnpService != null && lPControlPointSearchTemplate.registryListener != null) {
                androidUpnpService.b().v(LPControlPointSearchTemplate.this.registryListener);
            }
            LPControlPointSearchTemplate lPControlPointSearchTemplate2 = LPControlPointSearchTemplate.this;
            lPControlPointSearchTemplate2.upnpService = null;
            lPControlPointSearchTemplate2.serviceIsBinded = false;
            InitUpnpListener initUpnpListener = lPControlPointSearchTemplate2.mInitUpnpListener;
            if (initUpnpListener != null) {
                initUpnpListener.initFailed();
            }
            LinkplayLog.d(LinkplayLogTags.LPLogTag, "initUpnpSearch On Service Disconnected UPNPSearch服务断开连接了...");
        }
    };
    private boolean serviceIsBinded = false;
    private AndroidUpnpService upnpService;

    public LPControlPointSearchTemplate(Application application, RegistryListener registryListener) {
        this.registryListener = registryListener;
    }

    public void executeUpnpSearch() {
        AndroidUpnpService androidUpnpService = this.upnpService;
        if (androidUpnpService != null) {
            androidUpnpService.a().c();
        }
    }

    public void executeUpnpSearchX(List<String> list) {
        AndroidUpnpService androidUpnpService = this.upnpService;
        if (androidUpnpService != null) {
            androidUpnpService.a().e(list);
        }
    }

    public ControlPoint getControlPoint() {
        AndroidUpnpService androidUpnpService = this.upnpService;
        if (androidUpnpService != null) {
            return androidUpnpService.a();
        }
        return null;
    }

    public Registry getRegistryListener() {
        AndroidUpnpService androidUpnpService = this.upnpService;
        if (androidUpnpService != null) {
            return androidUpnpService.b();
        }
        return null;
    }

    public AndroidUpnpService getUpnpService() {
        return this.upnpService;
    }

    public synchronized boolean initUpnpSearch(Application application, InitUpnpListener initUpnpListener) {
        this.mInitUpnpListener = initUpnpListener;
        AndroidUpnpServiceImpl.d = LPSearchControlPoint.getInstance().getRegisterItemMaintainMaxAgeSeconds();
        return application.bindService(new Intent(application.getApplicationContext(), (Class<?>) AndroidUpnpServiceImpl.class), this.serviceConnection, 1);
    }

    public void setRegistryListener(RegistryListener registryListener) {
        this.registryListener = registryListener;
    }

    public synchronized void stopUpnpSearch() {
        try {
            if (this.serviceIsBinded && this.serviceConnection != null) {
                LPDeviceManager.getInstance().getContext().unbindService(this.serviceConnection);
                this.serviceIsBinded = false;
            }
            LinkplayLog.d(LinkplayLogTags.LPLogTag, "停止发送UpnpSearch搜索请求.");
        } catch (Throwable th) {
            throw th;
        }
    }

    public LPControlPointSearchTemplate(Application application) {
    }
}
