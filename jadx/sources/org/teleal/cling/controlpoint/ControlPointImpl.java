package org.teleal.cling.controlpoint;

import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import com.linkplay.core.app.LPDeviceManager;
import com.linkplay.core.model.menubar.MenuBarConstants;
import com.linkplay.log.LinkplayLog;
import defpackage.pq0;
import j.a;
import java.util.List;
import java.util.logging.Logger;
import org.teleal.cling.UpnpServiceConfiguration;
import org.teleal.cling.model.message.header.DMSAllHeader;
import org.teleal.cling.model.message.header.MXHeader;
import org.teleal.cling.model.message.header.STAllHeader;
import org.teleal.cling.model.message.header.STCustomHeader;
import org.teleal.cling.protocol.ProtocolFactory;
import org.teleal.cling.registry.Registry;

/* JADX INFO: loaded from: classes5.dex */
public class ControlPointImpl implements ControlPoint {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final UpnpServiceConfiguration f78367a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ProtocolFactory f78368b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Registry f78369c;
    public int d = 0;

    static {
        Logger.getLogger(ControlPointImpl.class.getName());
    }

    public ControlPointImpl(UpnpServiceConfiguration upnpServiceConfiguration, ProtocolFactory protocolFactory, Registry registry) {
        this.f78367a = upnpServiceConfiguration;
        this.f78368b = protocolFactory;
        this.f78369c = registry;
    }

    @Override // org.teleal.cling.controlpoint.ControlPoint
    public final ProtocolFactory a() {
        return this.f78368b;
    }

    @Override // org.teleal.cling.controlpoint.ControlPoint
    public final Registry b() {
        return this.f78369c;
    }

    public final void c() {
        WifiInfo connectionInfo = ((WifiManager) LPDeviceManager.getInstance().getContext().getApplicationContext().getSystemService(MenuBarConstants.MEDIA_TYPE_WIFI)).getConnectionInfo();
        int rssi = connectionInfo != null ? connectionInfo.getRssi() : -1;
        LinkplayLog.i("UPNP-SEARCH", "App send upnpSearch Request.".concat(-1 == rssi ? "" : pq0.k(rssi, "RSSI: ")));
        if (a.f71243a) {
            STAllHeader sTAllHeader = new STAllHeader();
            int i2 = MXHeader.f78428c;
            this.f78367a.m().execute(this.f78368b.f(sTAllHeader));
        }
        d();
    }

    public final void d() {
        int i2 = this.d + 1;
        this.d = i2;
        if (i2 % 3 == 0) {
            this.d = 0;
            LinkplayLog.i("UPNP-SEARCH", "send searchDMS");
            DMSAllHeader dMSAllHeader = new DMSAllHeader();
            int i3 = MXHeader.f78428c;
            this.f78367a.m().execute(this.f78368b.f(dMSAllHeader));
        }
    }

    public final void e(List list) {
        if (list == null || list.size() <= 0) {
            c();
            return;
        }
        if (a.f71243a) {
            int size = list.size();
            for (int i2 = 0; i2 < size; i2++) {
                STCustomHeader sTCustomHeader = new STCustomHeader((String) list.get(i2));
                int i3 = MXHeader.f78428c;
                this.f78367a.m().execute(this.f78368b.f(sTCustomHeader));
            }
        }
        d();
    }

    @Override // org.teleal.cling.controlpoint.ControlPoint
    public final UpnpServiceConfiguration getConfiguration() {
        return this.f78367a;
    }
}
