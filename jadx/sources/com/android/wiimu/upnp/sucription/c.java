package com.android.wiimu.upnp.sucription;

import org.teleal.cling.model.meta.Device;

/* JADX INFO: loaded from: classes.dex */
public class c implements IWiimuSubscriptionEvent {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    IWiimuSubscriptionEvent f22588a;

    public static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static c f22589a = new c(0);

        private a() {
        }
    }

    private c() {
        this.f22588a = new b();
    }

    public static c a() {
        return a.f22589a;
    }

    public IWiimuSubscriptionEvent b() {
        return this.f22588a;
    }

    @Override // com.android.wiimu.upnp.sucription.IWiimuSubscriptionEvent
    public void subscriptEventAVTransport(Device device, IWiimuSubscriptionEventCallback iWiimuSubscriptionEventCallback) throws Exception {
        IWiimuSubscriptionEvent iWiimuSubscriptionEvent = this.f22588a;
        if (iWiimuSubscriptionEvent != null) {
            iWiimuSubscriptionEvent.subscriptEventAVTransport(device, iWiimuSubscriptionEventCallback);
        }
    }

    @Override // com.android.wiimu.upnp.sucription.IWiimuSubscriptionEvent
    public void subscriptEventPlayQueue(Device device, IWiimuSubscriptionEventCallback iWiimuSubscriptionEventCallback) throws Exception {
        IWiimuSubscriptionEvent iWiimuSubscriptionEvent = this.f22588a;
        if (iWiimuSubscriptionEvent != null) {
            iWiimuSubscriptionEvent.subscriptEventPlayQueue(device, iWiimuSubscriptionEventCallback);
        }
    }

    @Override // com.android.wiimu.upnp.sucription.IWiimuSubscriptionEvent
    public void subscriptEventRenderingControl(Device device, IWiimuSubscriptionEventCallback iWiimuSubscriptionEventCallback) throws Exception {
        IWiimuSubscriptionEvent iWiimuSubscriptionEvent = this.f22588a;
        if (iWiimuSubscriptionEvent != null) {
            iWiimuSubscriptionEvent.subscriptEventRenderingControl(device, iWiimuSubscriptionEventCallback);
        }
    }

    public void a(IWiimuSubscriptionEvent iWiimuSubscriptionEvent) {
        this.f22588a = iWiimuSubscriptionEvent;
    }

    public /* synthetic */ c(int i2) {
        this();
    }
}
