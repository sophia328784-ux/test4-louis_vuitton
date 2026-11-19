package com.android.wiimu.upnp.impl;

import com.android.wiimu.upnp.IWiimuActionCallback;
import com.android.wiimu.upnp.IWiimuRenderingControl;
import java.util.Collections;
import java.util.Map;
import org.teleal.cling.model.action.ActionArgumentValue;
import org.teleal.cling.model.action.ActionInvocation;
import org.teleal.cling.model.message.UpnpResponse;
import org.teleal.cling.model.meta.Device;
import org.teleal.cling.model.meta.Service;
import org.teleal.cling.support.renderingcontrol.callback.GetChannel;
import org.teleal.cling.support.renderingcontrol.callback.GetControlDeviceInfo;
import org.teleal.cling.support.renderingcontrol.callback.GetMute;
import org.teleal.cling.support.renderingcontrol.callback.GetVolume;
import org.teleal.cling.support.renderingcontrol.callback.MultiPlaySlaveMask;
import org.teleal.cling.support.renderingcontrol.callback.SetChannel;
import org.teleal.cling.support.renderingcontrol.callback.SetMute;
import org.teleal.cling.support.renderingcontrol.callback.SetVolume;
import org.teleal.cling.support.renderingcontrol.callback.StreamServicesCapability;
import org.teleal.cling.support.renderingcontrol.callback.alarm.DeleteAlarmQueue;
import org.teleal.cling.support.renderingcontrol.callback.alarm.GetAlarmQueue;
import org.teleal.cling.support.renderingcontrol.callback.alarm.SetAlarmQueue;

/* JADX INFO: loaded from: classes.dex */
public class e implements IWiimuRenderingControl {

    public class a extends DeleteAlarmQueue {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ IWiimuActionCallback f22568a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(e eVar, Service service, String str, IWiimuActionCallback iWiimuActionCallback) {
            super((Service<Device, Service>) service, str);
            this.f22568a = iWiimuActionCallback;
        }

        @Override // org.teleal.cling.controlpoint.ActionCallback
        public void failure(ActionInvocation actionInvocation, UpnpResponse upnpResponse, String str) {
            IWiimuActionCallback iWiimuActionCallback = this.f22568a;
            if (iWiimuActionCallback != null) {
                iWiimuActionCallback.failure(com.android.wiimu.upnp.impl.c.a(actionInvocation, upnpResponse, str));
            }
        }

        @Override // org.teleal.cling.controlpoint.ActionCallback
        public void success(ActionInvocation actionInvocation) {
            IWiimuActionCallback iWiimuActionCallback = this.f22568a;
            if (iWiimuActionCallback != null) {
                iWiimuActionCallback.success(Collections.unmodifiableMap(actionInvocation.f78399c));
            }
        }
    }

    public class b extends GetAlarmQueue {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ IWiimuActionCallback f22569a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(e eVar, Service service, String str, IWiimuActionCallback iWiimuActionCallback) {
            super((Service<Device, Service>) service, str);
            this.f22569a = iWiimuActionCallback;
        }

        @Override // org.teleal.cling.controlpoint.ActionCallback
        public void failure(ActionInvocation actionInvocation, UpnpResponse upnpResponse, String str) {
            IWiimuActionCallback iWiimuActionCallback = this.f22569a;
            if (iWiimuActionCallback != null) {
                iWiimuActionCallback.failure(com.android.wiimu.upnp.impl.c.a(actionInvocation, upnpResponse, str));
            }
        }

        @Override // org.teleal.cling.controlpoint.ActionCallback
        public void success(ActionInvocation actionInvocation) {
            IWiimuActionCallback iWiimuActionCallback = this.f22569a;
            if (iWiimuActionCallback != null) {
                iWiimuActionCallback.success(Collections.unmodifiableMap(actionInvocation.f78399c));
            }
        }
    }

    public class c extends MultiPlaySlaveMask {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ IWiimuActionCallback f22570a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(e eVar, Service service, int i2, IWiimuActionCallback iWiimuActionCallback) {
            super(service, i2);
            this.f22570a = iWiimuActionCallback;
        }

        @Override // org.teleal.cling.controlpoint.ActionCallback
        public void failure(ActionInvocation actionInvocation, UpnpResponse upnpResponse, String str) {
            IWiimuActionCallback iWiimuActionCallback = this.f22570a;
            if (iWiimuActionCallback != null) {
                iWiimuActionCallback.failure(com.android.wiimu.upnp.impl.c.a(actionInvocation, upnpResponse, str));
            }
        }

        @Override // org.teleal.cling.controlpoint.ActionCallback
        public void success(ActionInvocation actionInvocation) {
            IWiimuActionCallback iWiimuActionCallback = this.f22570a;
            if (iWiimuActionCallback != null) {
                iWiimuActionCallback.success(Collections.unmodifiableMap(actionInvocation.f78399c));
            }
        }
    }

    public class d extends GetChannel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ IWiimuActionCallback f22571a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public d(e eVar, Service service, IWiimuActionCallback iWiimuActionCallback) {
            super(service);
            this.f22571a = iWiimuActionCallback;
        }

        @Override // org.teleal.cling.controlpoint.ActionCallback
        public void failure(ActionInvocation actionInvocation, UpnpResponse upnpResponse, String str) {
            IWiimuActionCallback iWiimuActionCallback = this.f22571a;
            if (iWiimuActionCallback != null) {
                iWiimuActionCallback.failure(com.android.wiimu.upnp.impl.c.a(actionInvocation, upnpResponse, str));
            }
        }

        @Override // org.teleal.cling.support.renderingcontrol.callback.GetChannel
        public void received(ActionInvocation actionInvocation, int i2) {
        }

        @Override // org.teleal.cling.support.renderingcontrol.callback.GetChannel, org.teleal.cling.controlpoint.ActionCallback
        public void success(ActionInvocation actionInvocation) {
            super.success(actionInvocation);
            if (this.f22571a != null) {
                Map mapUnmodifiableMap = Collections.unmodifiableMap(actionInvocation.f78399c);
                ((ActionArgumentValue) mapUnmodifiableMap.get("CurrentChannel")).f78394b.toString();
                this.f22571a.success(mapUnmodifiableMap);
            }
        }
    }

    /* JADX INFO: renamed from: com.android.wiimu.upnp.impl.e$e, reason: collision with other inner class name */
    public class C0041e extends GetControlDeviceInfo {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ IWiimuActionCallback f22572a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C0041e(e eVar, Service service, String str, IWiimuActionCallback iWiimuActionCallback) {
            super(service, str);
            this.f22572a = iWiimuActionCallback;
        }

        @Override // org.teleal.cling.controlpoint.ActionCallback
        public void failure(ActionInvocation actionInvocation, UpnpResponse upnpResponse, String str) {
            IWiimuActionCallback iWiimuActionCallback = this.f22572a;
            if (iWiimuActionCallback != null) {
                iWiimuActionCallback.failure(com.android.wiimu.upnp.impl.c.a(actionInvocation, upnpResponse, str));
            }
        }

        @Override // org.teleal.cling.controlpoint.ActionCallback
        public void success(ActionInvocation actionInvocation) {
            IWiimuActionCallback iWiimuActionCallback = this.f22572a;
            if (iWiimuActionCallback != null) {
                iWiimuActionCallback.success(Collections.unmodifiableMap(actionInvocation.f78399c));
            }
        }
    }

    public class f extends StreamServicesCapability {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ IWiimuActionCallback f22573a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public f(e eVar, Service service, IWiimuActionCallback iWiimuActionCallback) {
            super(service);
            this.f22573a = iWiimuActionCallback;
        }

        @Override // org.teleal.cling.controlpoint.ActionCallback
        public void failure(ActionInvocation actionInvocation, UpnpResponse upnpResponse, String str) {
            IWiimuActionCallback iWiimuActionCallback = this.f22573a;
            if (iWiimuActionCallback != null) {
                iWiimuActionCallback.failure(com.android.wiimu.upnp.impl.c.a(actionInvocation, upnpResponse, str));
            }
        }

        @Override // org.teleal.cling.support.renderingcontrol.callback.StreamServicesCapability, org.teleal.cling.controlpoint.ActionCallback
        public void success(ActionInvocation actionInvocation) {
            IWiimuActionCallback iWiimuActionCallback = this.f22573a;
            if (iWiimuActionCallback != null) {
                iWiimuActionCallback.success(Collections.unmodifiableMap(actionInvocation.f78399c));
            }
        }
    }

    public class g extends GetMute {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ IWiimuActionCallback f22574a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public g(e eVar, Service service, IWiimuActionCallback iWiimuActionCallback) {
            super(service);
            this.f22574a = iWiimuActionCallback;
        }

        @Override // org.teleal.cling.controlpoint.ActionCallback
        public void failure(ActionInvocation actionInvocation, UpnpResponse upnpResponse, String str) {
            IWiimuActionCallback iWiimuActionCallback = this.f22574a;
            if (iWiimuActionCallback != null) {
                iWiimuActionCallback.failure(com.android.wiimu.upnp.impl.c.a(actionInvocation, upnpResponse, str));
            }
        }

        @Override // org.teleal.cling.support.renderingcontrol.callback.GetMute
        public void received(ActionInvocation actionInvocation, String str) {
        }

        @Override // org.teleal.cling.support.renderingcontrol.callback.GetMute, org.teleal.cling.controlpoint.ActionCallback
        public void success(ActionInvocation actionInvocation) {
            IWiimuActionCallback iWiimuActionCallback = this.f22574a;
            if (iWiimuActionCallback != null) {
                iWiimuActionCallback.success(Collections.unmodifiableMap(actionInvocation.f78399c));
            }
        }
    }

    public class h extends GetVolume {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ IWiimuActionCallback f22575a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public h(e eVar, Service service, IWiimuActionCallback iWiimuActionCallback) {
            super(service);
            this.f22575a = iWiimuActionCallback;
        }

        @Override // org.teleal.cling.controlpoint.ActionCallback
        public void failure(ActionInvocation actionInvocation, UpnpResponse upnpResponse, String str) {
            IWiimuActionCallback iWiimuActionCallback = this.f22575a;
            if (iWiimuActionCallback != null) {
                iWiimuActionCallback.failure(com.android.wiimu.upnp.impl.c.a(actionInvocation, upnpResponse, str));
            }
        }

        @Override // org.teleal.cling.support.renderingcontrol.callback.GetVolume
        public void received(ActionInvocation actionInvocation, int i2) {
        }

        @Override // org.teleal.cling.support.renderingcontrol.callback.GetVolume, org.teleal.cling.controlpoint.ActionCallback
        public void success(ActionInvocation actionInvocation) {
            IWiimuActionCallback iWiimuActionCallback = this.f22575a;
            if (iWiimuActionCallback != null) {
                iWiimuActionCallback.success(Collections.unmodifiableMap(actionInvocation.f78399c));
            }
        }
    }

    public class i extends SetChannel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ IWiimuActionCallback f22576a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public i(e eVar, Service service, int i2, IWiimuActionCallback iWiimuActionCallback) {
            super(service, i2);
            this.f22576a = iWiimuActionCallback;
        }

        @Override // org.teleal.cling.controlpoint.ActionCallbackNotResponse
        public void failure(ActionInvocation actionInvocation, UpnpResponse upnpResponse, String str) {
            IWiimuActionCallback iWiimuActionCallback = this.f22576a;
            if (iWiimuActionCallback != null) {
                iWiimuActionCallback.failure(com.android.wiimu.upnp.impl.c.a(actionInvocation, upnpResponse, str));
            }
        }

        @Override // org.teleal.cling.support.renderingcontrol.callback.SetChannel, org.teleal.cling.controlpoint.ActionCallbackNotResponse
        public void success(ActionInvocation actionInvocation) {
            IWiimuActionCallback iWiimuActionCallback = this.f22576a;
            if (iWiimuActionCallback != null) {
                iWiimuActionCallback.success(Collections.unmodifiableMap(actionInvocation.f78399c));
            }
        }
    }

    public class j extends SetMute {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ IWiimuActionCallback f22577a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public j(e eVar, Service service, boolean z, IWiimuActionCallback iWiimuActionCallback) {
            super(service, z);
            this.f22577a = iWiimuActionCallback;
        }

        @Override // org.teleal.cling.controlpoint.ActionCallback
        public void failure(ActionInvocation actionInvocation, UpnpResponse upnpResponse, String str) {
            IWiimuActionCallback iWiimuActionCallback = this.f22577a;
            if (iWiimuActionCallback != null) {
                iWiimuActionCallback.failure(com.android.wiimu.upnp.impl.c.a(actionInvocation, upnpResponse, str));
            }
        }

        @Override // org.teleal.cling.support.renderingcontrol.callback.SetMute, org.teleal.cling.controlpoint.ActionCallback
        public void success(ActionInvocation actionInvocation) {
            IWiimuActionCallback iWiimuActionCallback = this.f22577a;
            if (iWiimuActionCallback != null) {
                iWiimuActionCallback.success(Collections.unmodifiableMap(actionInvocation.f78399c));
            }
        }
    }

    public class k extends SetVolume {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ IWiimuActionCallback f22578a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public k(e eVar, Service service, long j2, IWiimuActionCallback iWiimuActionCallback) {
            super(service, j2);
            this.f22578a = iWiimuActionCallback;
        }

        @Override // org.teleal.cling.controlpoint.ActionCallbackNotResponse
        public void failure(ActionInvocation actionInvocation, UpnpResponse upnpResponse, String str) {
            IWiimuActionCallback iWiimuActionCallback = this.f22578a;
            if (iWiimuActionCallback != null) {
                iWiimuActionCallback.failure(com.android.wiimu.upnp.impl.c.a(actionInvocation, upnpResponse, str));
            }
        }

        @Override // org.teleal.cling.support.renderingcontrol.callback.SetVolume, org.teleal.cling.controlpoint.ActionCallbackNotResponse
        public void success(ActionInvocation actionInvocation) {
            IWiimuActionCallback iWiimuActionCallback = this.f22578a;
            if (iWiimuActionCallback != null) {
                iWiimuActionCallback.success(Collections.unmodifiableMap(actionInvocation.f78399c));
            }
        }
    }

    public class l extends SetAlarmQueue {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ IWiimuActionCallback f22579a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public l(e eVar, Service service, String str, IWiimuActionCallback iWiimuActionCallback) {
            super((Service<Device, Service>) service, str);
            this.f22579a = iWiimuActionCallback;
        }

        @Override // org.teleal.cling.controlpoint.ActionCallback
        public void failure(ActionInvocation actionInvocation, UpnpResponse upnpResponse, String str) {
            IWiimuActionCallback iWiimuActionCallback = this.f22579a;
            if (iWiimuActionCallback != null) {
                iWiimuActionCallback.failure(com.android.wiimu.upnp.impl.c.a(actionInvocation, upnpResponse, str));
            }
        }

        @Override // org.teleal.cling.controlpoint.ActionCallback
        public void success(ActionInvocation actionInvocation) {
            IWiimuActionCallback iWiimuActionCallback = this.f22579a;
            if (iWiimuActionCallback != null) {
                iWiimuActionCallback.success(Collections.unmodifiableMap(actionInvocation.f78399c));
            }
        }
    }

    @Override // com.android.wiimu.upnp.IWiimuRenderingControl
    public void deleteAlarmQueue(String str, Device device, IWiimuActionCallback iWiimuActionCallback) throws Exception {
        Service serviceD;
        if (device == null || (serviceD = com.android.wiimu.upnp.impl.f.d(device)) == null) {
            return;
        }
        com.android.wiimu.upnp.impl.h.a(new a(this, serviceD, str, iWiimuActionCallback));
    }

    @Override // com.android.wiimu.upnp.IWiimuRenderingControl
    public void getAlarmQueue(String str, Device device, IWiimuActionCallback iWiimuActionCallback) throws Exception {
        Service serviceD;
        if (device == null || (serviceD = com.android.wiimu.upnp.impl.f.d(device)) == null) {
            return;
        }
        com.android.wiimu.upnp.impl.h.a(new b(this, serviceD, str, iWiimuActionCallback));
    }

    @Override // com.android.wiimu.upnp.IWiimuRenderingControl
    public void getChannel(Device device, IWiimuActionCallback iWiimuActionCallback) throws Exception {
        Service serviceD;
        if (device == null || (serviceD = com.android.wiimu.upnp.impl.f.d(device)) == null) {
            return;
        }
        com.android.wiimu.upnp.impl.h.a(new d(this, serviceD, iWiimuActionCallback));
    }

    @Override // com.android.wiimu.upnp.IWiimuRenderingControl
    public void getControlDeviceInfo(Device device, IWiimuActionCallback iWiimuActionCallback) throws Exception {
        Service serviceD;
        if (device == null || (serviceD = com.android.wiimu.upnp.impl.f.d(device)) == null) {
            return;
        }
        com.android.wiimu.upnp.impl.h.a(new C0041e(this, serviceD, device.f78444a.f78458a.toString(), iWiimuActionCallback));
    }

    @Override // com.android.wiimu.upnp.IWiimuRenderingControl
    public void getEqualizer(Device device, IWiimuActionCallback iWiimuActionCallback) throws Exception {
        if (device != null && com.android.wiimu.upnp.impl.f.d(device) != null) {
            throw com.android.wiimu.upnp.impl.c.a(" getEqualizer  ", "");
        }
    }

    @Override // com.android.wiimu.upnp.IWiimuRenderingControl
    public void getMute(Device device, IWiimuActionCallback iWiimuActionCallback) throws Exception {
        Service serviceD;
        if (device == null || (serviceD = com.android.wiimu.upnp.impl.f.d(device)) == null) {
            return;
        }
        com.android.wiimu.upnp.impl.h.a(new g(this, serviceD, iWiimuActionCallback));
    }

    @Override // com.android.wiimu.upnp.IWiimuRenderingControl
    public void getStreamServicesCapability(Device device, IWiimuActionCallback iWiimuActionCallback) throws Exception {
        Service serviceD;
        if (device == null || (serviceD = com.android.wiimu.upnp.impl.f.d(device)) == null) {
            return;
        }
        com.android.wiimu.upnp.impl.h.a(new f(this, serviceD, iWiimuActionCallback));
    }

    @Override // com.android.wiimu.upnp.IWiimuRenderingControl
    public void getVolume(Device device, IWiimuActionCallback iWiimuActionCallback) throws Exception {
        Service serviceD;
        if (device == null || (serviceD = com.android.wiimu.upnp.impl.f.d(device)) == null) {
            return;
        }
        com.android.wiimu.upnp.impl.h.a(new h(this, serviceD, iWiimuActionCallback));
    }

    @Override // com.android.wiimu.upnp.IWiimuRenderingControl
    public void listPresets(Device device, IWiimuActionCallback iWiimuActionCallback) throws Exception {
        if (device != null && com.android.wiimu.upnp.impl.f.d(device) != null) {
            throw com.android.wiimu.upnp.impl.c.a(" listPresets  ", "");
        }
    }

    @Override // com.android.wiimu.upnp.IWiimuRenderingControl
    public void multiPlaySlaveMask(Device device, IWiimuActionCallback iWiimuActionCallback) throws Exception {
        if (device != null && com.android.wiimu.upnp.impl.f.d(device) != null) {
            throw com.android.wiimu.upnp.impl.c.a(" multiPlaySlaveMask  ", "");
        }
    }

    @Override // com.android.wiimu.upnp.IWiimuRenderingControl
    public void selectPreset(Device device, IWiimuActionCallback iWiimuActionCallback) throws Exception {
        if (device != null && com.android.wiimu.upnp.impl.f.d(device) != null) {
            throw com.android.wiimu.upnp.impl.c.a(" selectPreset  ", "");
        }
    }

    @Override // com.android.wiimu.upnp.IWiimuRenderingControl
    public void setAlarmQueue(String str, Device device, IWiimuActionCallback iWiimuActionCallback) throws Exception {
        Service serviceD;
        if (device == null || (serviceD = com.android.wiimu.upnp.impl.f.d(device)) == null) {
            return;
        }
        com.android.wiimu.upnp.impl.h.a(new l(this, serviceD, str, iWiimuActionCallback));
    }

    @Override // com.android.wiimu.upnp.IWiimuRenderingControl
    public void setChannel(int i2, Device device, IWiimuActionCallback iWiimuActionCallback) throws Exception {
        Service serviceD;
        if (device == null || (serviceD = com.android.wiimu.upnp.impl.f.d(device)) == null) {
            return;
        }
        com.android.wiimu.upnp.impl.h.a(new i(this, serviceD, i2, iWiimuActionCallback));
    }

    @Override // com.android.wiimu.upnp.IWiimuRenderingControl
    public void setEqualizer(String str, Device device, IWiimuActionCallback iWiimuActionCallback) throws Exception {
        com.android.wiimu.upnp.impl.f.d(device);
        throw com.android.wiimu.upnp.impl.c.a(" setEqualizer ", " desiredEqualizer");
    }

    @Override // com.android.wiimu.upnp.IWiimuRenderingControl
    public void setMute(boolean z, Device device, IWiimuActionCallback iWiimuActionCallback) throws Exception {
        Service serviceD;
        if (device == null || (serviceD = com.android.wiimu.upnp.impl.f.d(device)) == null) {
            return;
        }
        com.android.wiimu.upnp.impl.h.a(new j(this, serviceD, z, iWiimuActionCallback));
    }

    @Override // com.android.wiimu.upnp.IWiimuRenderingControl
    public void setVolume(int i2, Device device, IWiimuActionCallback iWiimuActionCallback) throws Exception {
        Service serviceD;
        if (device == null || (serviceD = com.android.wiimu.upnp.impl.f.d(device)) == null) {
            return;
        }
        com.android.wiimu.upnp.impl.h.a(new k(this, serviceD, i2, iWiimuActionCallback));
    }

    @Override // com.android.wiimu.upnp.IWiimuRenderingControl
    public void multiPlaySlaveMask(Device device, int i2, IWiimuActionCallback iWiimuActionCallback) throws Exception {
        Service serviceD;
        if (device == null || (serviceD = com.android.wiimu.upnp.impl.f.d(device)) == null) {
            return;
        }
        com.android.wiimu.upnp.impl.h.a(new c(this, serviceD, i2, iWiimuActionCallback));
    }
}
