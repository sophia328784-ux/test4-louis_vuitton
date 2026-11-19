package org.teleal.cling.model.gena;

import java.net.URL;
import org.teleal.cling.model.message.UpnpResponse;
import org.teleal.cling.model.meta.RemoteDevice;
import org.teleal.cling.model.meta.RemoteService;

/* JADX INFO: loaded from: classes5.dex */
public abstract class RemoteGENASubscription extends GENASubscription<RemoteService> {
    public final synchronized void f(CancelReason cancelReason, UpnpResponse upnpResponse) {
        g(cancelReason, upnpResponse);
    }

    public abstract void g(CancelReason cancelReason, UpnpResponse upnpResponse);

    public abstract void h(int i2);

    public abstract void i(UpnpResponse upnpResponse);

    public final synchronized URL j() {
        return ((RemoteDevice) ((RemoteService) d()).f78482e).t(((RemoteService) d()).f78478h);
    }

    @Override // org.teleal.cling.model.gena.GENASubscription
    public final String toString() {
        return "(SID: " + e() + ") " + d();
    }
}
