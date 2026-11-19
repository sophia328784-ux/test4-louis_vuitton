package org.teleal.cling.android;

import android.app.Service;
import android.content.Intent;
import android.net.ConnectivityManager;
import android.net.wifi.WifiManager;
import android.os.IBinder;
import com.linkplay.core.model.menubar.MenuBarConstants;
import com.linkplay.log.LinkplayLog;
import com.linkplay.log.LinkplayLogTags;
import org.teleal.cling.UpnpService;
import org.teleal.cling.UpnpServiceImpl;
import org.teleal.cling.controlpoint.ControlPointImpl;
import org.teleal.cling.protocol.ProtocolFactoryImpl;
import org.teleal.cling.registry.RegistryImpl;
import org.teleal.cling.registry.RegistryListener;
import org.teleal.cling.transport.Router;

/* JADX INFO: loaded from: classes5.dex */
public class AndroidUpnpServiceImpl extends Service {
    public static int d = 60;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public UpnpService f78302b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Binder f78303c = new Binder();

    public class Binder extends android.os.Binder implements AndroidUpnpService {
        public Binder() {
        }

        @Override // org.teleal.cling.android.AndroidUpnpService
        public final ControlPointImpl a() {
            return ((UpnpServiceImpl) AndroidUpnpServiceImpl.this.f78302b).f78292b;
        }

        @Override // org.teleal.cling.android.AndroidUpnpService
        public final RegistryImpl b() {
            return ((UpnpServiceImpl) AndroidUpnpServiceImpl.this.f78302b).d;
        }

        @Override // org.teleal.cling.android.AndroidUpnpService
        public final UpnpService c() {
            return AndroidUpnpServiceImpl.this.f78302b;
        }
    }

    @Override // android.app.Service
    public final IBinder onBind(Intent intent) {
        return this.f78303c;
    }

    @Override // android.app.Service
    public final void onCreate() {
        super.onCreate();
        LinkplayLog.d(LinkplayLogTags.LPLogTag, "AndroidUpnpServiceImpl: UPnP Service Create ++++");
        final WifiManager wifiManager = (WifiManager) getApplicationContext().getSystemService(MenuBarConstants.MEDIA_TYPE_WIFI);
        final ConnectivityManager connectivityManager = (ConnectivityManager) getApplicationContext().getSystemService("connectivity");
        this.f78302b = new UpnpServiceImpl(this, new AndroidUpnpServiceConfiguration(wifiManager, d), new RegistryListener[0]) { // from class: org.teleal.cling.android.AndroidUpnpServiceImpl.1
            @Override // org.teleal.cling.UpnpServiceImpl
            public final Router d(ProtocolFactoryImpl protocolFactoryImpl) {
                LinkplayLog.d(LinkplayLogTags.LPLogTag, "AndroidUpnpServiceImpl: createRouter");
                return new AndroidWifiSwitchableRouter(this.f78291a, protocolFactoryImpl, wifiManager, connectivityManager);
            }
        };
    }

    @Override // android.app.Service
    public final void onDestroy() {
        LinkplayLog.i(LinkplayLogTags.LPLogTag, "AndroidUpnpServiceImpl:onDestroy: UpnpService onDestroy");
        LinkplayLog.i(LinkplayLogTags.LPLogTag, "AndroidUpnpServiceImpl:onDestroy: unregister network state receiver..");
        ((AndroidWifiSwitchableRouter) ((UpnpServiceImpl) this.f78302b).f78294e).getClass();
        ((UpnpServiceImpl) this.f78302b).e();
    }
}
