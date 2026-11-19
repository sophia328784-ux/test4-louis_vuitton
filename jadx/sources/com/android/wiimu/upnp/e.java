package com.android.wiimu.upnp;

import android.app.Application;
import android.content.ComponentName;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.IBinder;
import com.linkplay.core.app.LPDeviceManager;
import com.linkplay.core.clingx.LPSearchControlPoint;
import com.linkplay.log.LinkplayLog;
import java.util.List;
import org.teleal.cling.android.AndroidUpnpService;
import org.teleal.cling.android.AndroidUpnpServiceImpl;
import org.teleal.cling.controlpoint.ControlPoint;
import org.teleal.cling.registry.Registry;
import org.teleal.cling.registry.RegistryListener;

/* JADX INFO: loaded from: classes2.dex */
public class e {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    static final String f22515e = "UpnpLog";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private RegistryListener f22517b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private AndroidUpnpService f22518c;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private ServiceConnection f22516a = new a();
    private boolean d = false;

    public class a implements ServiceConnection {
        public a() {
        }

        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            e.this.d = true;
            LinkplayLog.d("UPNP-SEARCH", "initUpnpSearch On Service Creating  UPNPSearch服务连接成功 ...");
            if (iBinder instanceof AndroidUpnpService) {
                e.this.f22518c = (AndroidUpnpService) iBinder;
                LPSearchControlPoint.getInstance();
                AndroidUpnpService androidUpnpService = e.this.f22518c;
                LPSearchControlPoint.upnpservice = androidUpnpService;
                androidUpnpService.b().j(e.this.f22517b);
                int i2 = a.a.f348a;
            }
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
            e eVar = e.this;
            AndroidUpnpService androidUpnpService = eVar.f22518c;
            if (androidUpnpService != null && eVar.f22517b != null) {
                androidUpnpService.b().v(e.this.f22517b);
            }
            e eVar2 = e.this;
            eVar2.f22518c = null;
            eVar2.d = false;
            LinkplayLog.d("UPNP-SEARCH", "initUpnpSearch On Service Disconnected UPNPSearch服务断开连接了...");
        }
    }

    public e(Application application, RegistryListener registryListener) {
        this.f22517b = registryListener;
    }

    public void a() {
        AndroidUpnpService androidUpnpService = this.f22518c;
        if (androidUpnpService != null) {
            androidUpnpService.a().c();
        }
    }

    public ControlPoint b() {
        AndroidUpnpService androidUpnpService = this.f22518c;
        if (androidUpnpService != null) {
            return androidUpnpService.a();
        }
        return null;
    }

    public Registry c() {
        AndroidUpnpService androidUpnpService = this.f22518c;
        if (androidUpnpService != null) {
            return androidUpnpService.b();
        }
        return null;
    }

    public synchronized boolean e() {
        AndroidUpnpServiceImpl.d = LPSearchControlPoint.getInstance().getRegisterItemMaintainMaxAgeSeconds();
        return LPDeviceManager.getInstance().getContext().bindService(new Intent(LPDeviceManager.getInstance().getContext(), (Class<?>) AndroidUpnpServiceImpl.class), this.f22516a, 1);
    }

    public synchronized void f() {
        try {
            if (this.d && this.f22516a != null) {
                LPDeviceManager.getInstance().getContext().unbindService(this.f22516a);
                this.d = false;
            }
            LinkplayLog.d("UPNP-SEARCH", "停止发送UpnpSearch搜索请求.");
        } catch (Throwable th) {
            throw th;
        }
    }

    public AndroidUpnpService d() {
        return this.f22518c;
    }

    public void a(List<String> list) {
        AndroidUpnpService androidUpnpService = this.f22518c;
        if (androidUpnpService != null) {
            androidUpnpService.a().e(list);
        }
    }

    public void a(RegistryListener registryListener) {
        this.f22517b = registryListener;
    }

    public e(Application application) {
    }
}
