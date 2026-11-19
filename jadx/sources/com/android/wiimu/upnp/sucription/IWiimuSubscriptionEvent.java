package com.android.wiimu.upnp.sucription;

import org.teleal.cling.model.meta.Device;

/* JADX INFO: loaded from: classes.dex */
public interface IWiimuSubscriptionEvent {
    void subscriptEventAVTransport(Device device, IWiimuSubscriptionEventCallback iWiimuSubscriptionEventCallback) throws Exception;

    void subscriptEventPlayQueue(Device device, IWiimuSubscriptionEventCallback iWiimuSubscriptionEventCallback) throws Exception;

    void subscriptEventRenderingControl(Device device, IWiimuSubscriptionEventCallback iWiimuSubscriptionEventCallback) throws Exception;
}
