package org.teleal.cling.android;

import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkRequest;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleObserver;
import androidx.lifecycle.OnLifecycleEvent;
import androidx.lifecycle.ProcessLifecycleOwner;
import com.blankj.utilcode.util.NetworkUtils;
import com.linkplay.core.app.LPDeviceManager;
import com.linkplay.log.LinkplayLog;
import com.linkplay.log.LinkplayLogTags;
import defpackage.fc;
import defpackage.l6;
import defpackage.m6;
import io.reactivex.Flowable;
import io.reactivex.disposables.CompositeDisposable;
import io.reactivex.schedulers.Schedulers;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.ReentrantReadWriteLock;
import org.teleal.cling.UpnpServiceConfiguration;
import org.teleal.cling.protocol.ProtocolFactory;
import org.teleal.cling.transport.SwitchableRouterImpl;

/* JADX INFO: loaded from: classes5.dex */
public class AndroidWifiSwitchableRouter extends SwitchableRouterImpl {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final WifiManager f78306f;
    public final ConnectivityManager g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final CompositeDisposable f78307h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public boolean f78308i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public boolean f78309j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final ConnectivityManager.NetworkCallback f78310k;

    public AndroidWifiSwitchableRouter(UpnpServiceConfiguration upnpServiceConfiguration, ProtocolFactory protocolFactory, WifiManager wifiManager, ConnectivityManager connectivityManager) {
        super(upnpServiceConfiguration, protocolFactory);
        this.f78307h = new CompositeDisposable();
        this.f78308i = false;
        this.f78309j = false;
        this.f78310k = new ConnectivityManager.NetworkCallback() { // from class: org.teleal.cling.android.AndroidWifiSwitchableRouter.2
            @Override // android.net.ConnectivityManager.NetworkCallback
            public final void onAvailable(Network network) {
                String ipAddressByWifi = NetworkUtils.getIpAddressByWifi();
                String gatewayByWifi = NetworkUtils.getGatewayByWifi();
                String ssid = NetworkUtils.getSSID();
                StringBuilder sbS = fc.s("SSID=", ssid, ", IP=", ipAddressByWifi, ", gatewayIP=");
                sbS.append(gatewayByWifi);
                LinkplayLog.i(LinkplayLogTags.LPLogTag, "AndroidWifiSwitchRouter:onAvailable: " + sbS.toString() + ": WiFiAvailable");
                AndroidWifiSwitchableRouter androidWifiSwitchableRouter = AndroidWifiSwitchableRouter.this;
                WifiInfo connectionInfo = androidWifiSwitchableRouter.f78306f.getConnectionInfo();
                String bssid = connectionInfo.getBSSID();
                int rssi = connectionInfo.getRssi();
                StringBuilder sbS2 = fc.s("AndroidWifiSwitchRouter:onAvailable: SSID=", ssid, ",BSSID=", bssid, ":SSIDInfo, RSSI=");
                sbS2.append(rssi);
                sbS2.append(",preSSID=null");
                LinkplayLog.d(LinkplayLogTags.LPLogTag, sbS2.toString());
                androidWifiSwitchableRouter.f78308i = true;
                androidWifiSwitchableRouter.j();
                androidWifiSwitchableRouter.f78307h.add(Flowable.timer(100L, TimeUnit.MILLISECONDS, Schedulers.io()).filter(new m6()).subscribe(new l6()));
                androidWifiSwitchableRouter.f78307h.add(Flowable.timer(10L, TimeUnit.SECONDS, Schedulers.io()).filter(new m6()).subscribe(new l6()));
            }

            @Override // android.net.ConnectivityManager.NetworkCallback
            public final void onLost(Network network) {
                LinkplayLog.d(LinkplayLogTags.LPLogTag, "AndroidWifiSwitchRouter:onLost: WiFiNotAvailable");
                AndroidWifiSwitchableRouter androidWifiSwitchableRouter = AndroidWifiSwitchableRouter.this;
                androidWifiSwitchableRouter.f78308i = false;
                androidWifiSwitchableRouter.g();
                LPDeviceManager.getInstance().runWiFiDisconnect();
            }
        };
        this.f78306f = wifiManager;
        this.g = connectivityManager;
        this.f78309j = true;
        ProcessLifecycleOwner.f13468i.getClass();
        ProcessLifecycleOwner.f13469j.g.a(new LifecycleObserver() { // from class: org.teleal.cling.android.AndroidWifiSwitchableRouter.1
            @OnLifecycleEvent(Lifecycle.Event.ON_STOP)
            public void onAppBackground() {
                AndroidWifiSwitchableRouter androidWifiSwitchableRouter = AndroidWifiSwitchableRouter.this;
                androidWifiSwitchableRouter.f78309j = false;
                androidWifiSwitchableRouter.g.unregisterNetworkCallback(androidWifiSwitchableRouter.f78310k);
                androidWifiSwitchableRouter.f78307h.add(Flowable.timer(10L, TimeUnit.MILLISECONDS, Schedulers.io()).subscribe(new l6()));
            }

            @OnLifecycleEvent(Lifecycle.Event.ON_START)
            public void onAppForeground() {
                AndroidWifiSwitchableRouter androidWifiSwitchableRouter = AndroidWifiSwitchableRouter.this;
                androidWifiSwitchableRouter.f78309j = true;
                androidWifiSwitchableRouter.g.registerNetworkCallback(new NetworkRequest.Builder().addTransportType(3).addTransportType(1).build(), androidWifiSwitchableRouter.f78310k);
            }
        });
    }

    @Override // org.teleal.cling.transport.SwitchableRouterImpl
    public final boolean g() {
        ReentrantReadWriteLock.ReadLock readLock = this.d;
        readLock.lock();
        try {
            return super.g();
        } finally {
            SwitchableRouterImpl.i(readLock);
        }
    }

    public final void j() {
        if (this.f78308i && this.f78309j) {
            LinkplayLog.d(LinkplayLogTags.LPLogTag, "AndroidWifiSwitchRouter:enable: UPnP start ++++");
            ReentrantReadWriteLock.ReadLock readLock = this.d;
            readLock.lock();
            try {
                super.h();
                SwitchableRouterImpl.i(readLock);
                this.f78307h.clear();
                this.f78307h.add(Flowable.timer(100L, TimeUnit.MILLISECONDS, Schedulers.io()).subscribe(new l6()));
            } catch (Throwable th) {
                SwitchableRouterImpl.i(readLock);
                throw th;
            }
        }
    }
}
