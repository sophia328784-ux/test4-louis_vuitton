package com.android.wiimu.upnp.impl;

import com.android.wiimu.upnp.IWiimuActionCallback;
import com.android.wiimu.upnp.IWiimuRenderingControl;
import org.teleal.cling.model.meta.Device;

/* JADX INFO: loaded from: classes.dex */
public class k implements IWiimuRenderingControl {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private IWiimuRenderingControl f22585a;

    public static class a {
        private a() {
        }

        public static k a() {
            return new k(0);
        }
    }

    private k() {
        this.f22585a = new e();
    }

    public static k a() {
        return a.a();
    }

    public IWiimuRenderingControl b() {
        return this.f22585a;
    }

    @Override // com.android.wiimu.upnp.IWiimuRenderingControl
    public void deleteAlarmQueue(String str, Device device, IWiimuActionCallback iWiimuActionCallback) throws Exception {
        this.f22585a.deleteAlarmQueue(str, device, iWiimuActionCallback);
    }

    @Override // com.android.wiimu.upnp.IWiimuRenderingControl
    public void getAlarmQueue(String str, Device device, IWiimuActionCallback iWiimuActionCallback) throws Exception {
        this.f22585a.getAlarmQueue(str, device, iWiimuActionCallback);
    }

    @Override // com.android.wiimu.upnp.IWiimuRenderingControl
    public void getChannel(Device device, IWiimuActionCallback iWiimuActionCallback) throws Exception {
        this.f22585a.getChannel(device, iWiimuActionCallback);
    }

    @Override // com.android.wiimu.upnp.IWiimuRenderingControl
    public void getControlDeviceInfo(Device device, IWiimuActionCallback iWiimuActionCallback) throws Exception {
        this.f22585a.getControlDeviceInfo(device, iWiimuActionCallback);
    }

    @Override // com.android.wiimu.upnp.IWiimuRenderingControl
    public void getEqualizer(Device device, IWiimuActionCallback iWiimuActionCallback) throws Exception {
        this.f22585a.getEqualizer(device, iWiimuActionCallback);
    }

    @Override // com.android.wiimu.upnp.IWiimuRenderingControl
    public void getMute(Device device, IWiimuActionCallback iWiimuActionCallback) throws Exception {
        this.f22585a.getMute(device, iWiimuActionCallback);
    }

    @Override // com.android.wiimu.upnp.IWiimuRenderingControl
    public void getStreamServicesCapability(Device device, IWiimuActionCallback iWiimuActionCallback) throws Exception {
        this.f22585a.getStreamServicesCapability(device, iWiimuActionCallback);
    }

    @Override // com.android.wiimu.upnp.IWiimuRenderingControl
    public void getVolume(Device device, IWiimuActionCallback iWiimuActionCallback) throws Exception {
        this.f22585a.getVolume(device, iWiimuActionCallback);
    }

    @Override // com.android.wiimu.upnp.IWiimuRenderingControl
    public void listPresets(Device device, IWiimuActionCallback iWiimuActionCallback) throws Exception {
        this.f22585a.listPresets(device, iWiimuActionCallback);
    }

    @Override // com.android.wiimu.upnp.IWiimuRenderingControl
    public void multiPlaySlaveMask(Device device, IWiimuActionCallback iWiimuActionCallback) throws Exception {
        this.f22585a.multiPlaySlaveMask(device, iWiimuActionCallback);
    }

    @Override // com.android.wiimu.upnp.IWiimuRenderingControl
    public void selectPreset(Device device, IWiimuActionCallback iWiimuActionCallback) throws Exception {
        this.f22585a.selectPreset(device, iWiimuActionCallback);
    }

    @Override // com.android.wiimu.upnp.IWiimuRenderingControl
    public void setAlarmQueue(String str, Device device, IWiimuActionCallback iWiimuActionCallback) throws Exception {
        this.f22585a.setAlarmQueue(str, device, iWiimuActionCallback);
    }

    @Override // com.android.wiimu.upnp.IWiimuRenderingControl
    public void setChannel(int i2, Device device, IWiimuActionCallback iWiimuActionCallback) throws Exception {
        this.f22585a.setChannel(i2, device, iWiimuActionCallback);
    }

    @Override // com.android.wiimu.upnp.IWiimuRenderingControl
    public void setEqualizer(String str, Device device, IWiimuActionCallback iWiimuActionCallback) throws Exception {
        this.f22585a.setEqualizer(str, device, iWiimuActionCallback);
    }

    @Override // com.android.wiimu.upnp.IWiimuRenderingControl
    public void setMute(boolean z, Device device, IWiimuActionCallback iWiimuActionCallback) throws Exception {
        this.f22585a.setMute(z, device, iWiimuActionCallback);
    }

    @Override // com.android.wiimu.upnp.IWiimuRenderingControl
    public void setVolume(int i2, Device device, IWiimuActionCallback iWiimuActionCallback) throws Exception {
        this.f22585a.setVolume(i2, device, iWiimuActionCallback);
    }

    public void a(IWiimuRenderingControl iWiimuRenderingControl) {
        this.f22585a = iWiimuRenderingControl;
    }

    @Override // com.android.wiimu.upnp.IWiimuRenderingControl
    public void multiPlaySlaveMask(Device device, int i2, IWiimuActionCallback iWiimuActionCallback) throws Exception {
        this.f22585a.multiPlaySlaveMask(device, i2, iWiimuActionCallback);
    }

    public /* synthetic */ k(int i2) {
        this();
    }
}
