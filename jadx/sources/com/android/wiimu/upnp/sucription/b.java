package com.android.wiimu.upnp.sucription;

import com.android.wiimu.upnp.impl.f;
import com.android.wiimu.upnp.impl.h;
import com.android.wiimu.upnp.impl.i;
import org.teleal.cling.controlpoint.SubscriptionCallback;
import org.teleal.cling.model.gena.CancelReason;
import org.teleal.cling.model.gena.GENASubscription;
import org.teleal.cling.model.message.UpnpResponse;
import org.teleal.cling.model.meta.Device;
import org.teleal.cling.model.meta.Service;

/* JADX INFO: loaded from: classes.dex */
public class b implements IWiimuSubscriptionEvent {

    public class a extends SubscriptionCallback {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ IWiimuSubscriptionEventCallback f22587a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(b bVar, Service service, IWiimuSubscriptionEventCallback iWiimuSubscriptionEventCallback) {
            super(service);
            this.f22587a = iWiimuSubscriptionEventCallback;
        }

        @Override // org.teleal.cling.controlpoint.SubscriptionCallback
        public void ended(GENASubscription gENASubscription, CancelReason cancelReason, UpnpResponse upnpResponse) {
            IWiimuSubscriptionEventCallback iWiimuSubscriptionEventCallback = this.f22587a;
            if (iWiimuSubscriptionEventCallback != null) {
                iWiimuSubscriptionEventCallback.ended(gENASubscription, cancelReason, upnpResponse);
            }
        }

        @Override // org.teleal.cling.controlpoint.SubscriptionCallback
        public void established(GENASubscription gENASubscription) {
            IWiimuSubscriptionEventCallback iWiimuSubscriptionEventCallback = this.f22587a;
            if (iWiimuSubscriptionEventCallback != null) {
                iWiimuSubscriptionEventCallback.established(gENASubscription);
            }
        }

        @Override // org.teleal.cling.controlpoint.SubscriptionCallback
        public void eventReceived(GENASubscription gENASubscription) {
            IWiimuSubscriptionEventCallback iWiimuSubscriptionEventCallback = this.f22587a;
            if (iWiimuSubscriptionEventCallback != null) {
                iWiimuSubscriptionEventCallback.eventReceived(gENASubscription);
            }
        }

        @Override // org.teleal.cling.controlpoint.SubscriptionCallback
        public void eventsMissed(GENASubscription gENASubscription, int i2) {
            IWiimuSubscriptionEventCallback iWiimuSubscriptionEventCallback = this.f22587a;
            if (iWiimuSubscriptionEventCallback != null) {
                iWiimuSubscriptionEventCallback.eventsMissed(gENASubscription, i2);
            }
        }

        @Override // org.teleal.cling.controlpoint.SubscriptionCallback
        public void failed(GENASubscription gENASubscription, UpnpResponse upnpResponse, Exception exc, String str) {
            IWiimuSubscriptionEventCallback iWiimuSubscriptionEventCallback = this.f22587a;
            if (iWiimuSubscriptionEventCallback != null) {
                iWiimuSubscriptionEventCallback.failed(gENASubscription, upnpResponse, exc, str);
            }
            synchronized (gENASubscription) {
            }
        }
    }

    private void a(Service<Device, Service> service, IWiimuSubscriptionEventCallback iWiimuSubscriptionEventCallback) {
        if (service == null) {
            throw new i("this service subscription  is not supported ");
        }
        h.a(new a(this, service, iWiimuSubscriptionEventCallback));
    }

    @Override // com.android.wiimu.upnp.sucription.IWiimuSubscriptionEvent
    public void subscriptEventAVTransport(Device device, IWiimuSubscriptionEventCallback iWiimuSubscriptionEventCallback) throws Exception {
        a(f.a(device), iWiimuSubscriptionEventCallback);
    }

    @Override // com.android.wiimu.upnp.sucription.IWiimuSubscriptionEvent
    public void subscriptEventPlayQueue(Device device, IWiimuSubscriptionEventCallback iWiimuSubscriptionEventCallback) throws Exception {
        a(f.c(device), iWiimuSubscriptionEventCallback);
    }

    @Override // com.android.wiimu.upnp.sucription.IWiimuSubscriptionEvent
    public void subscriptEventRenderingControl(Device device, IWiimuSubscriptionEventCallback iWiimuSubscriptionEventCallback) throws Exception {
        a(f.d(device), iWiimuSubscriptionEventCallback);
    }
}
