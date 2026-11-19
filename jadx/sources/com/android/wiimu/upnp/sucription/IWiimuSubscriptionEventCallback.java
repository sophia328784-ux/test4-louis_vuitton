package com.android.wiimu.upnp.sucription;

import org.teleal.cling.model.gena.CancelReason;
import org.teleal.cling.model.gena.GENASubscription;
import org.teleal.cling.model.message.UpnpResponse;

/* JADX INFO: loaded from: classes.dex */
public interface IWiimuSubscriptionEventCallback {
    void ended(GENASubscription gENASubscription, CancelReason cancelReason, UpnpResponse upnpResponse);

    void established(GENASubscription gENASubscription);

    void eventReceived(GENASubscription gENASubscription);

    void eventsMissed(GENASubscription gENASubscription, int i2);

    void failed(GENASubscription gENASubscription, UpnpResponse upnpResponse, Exception exc, String str);
}
