package com.android.wiimu.upnp.impl;

import com.android.wiimu.upnp.IWiimuAVTransport;
import com.android.wiimu.upnp.IWiimuActionCallback;
import org.teleal.cling.model.meta.Device;

/* JADX INFO: loaded from: classes.dex */
public class g implements IWiimuAVTransport {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private IWiimuAVTransport f22583a;

    public static class a {
        private a() {
        }

        public static g a() {
            return new g(0);
        }
    }

    private g() {
        this.f22583a = new b();
    }

    public static g b() {
        return a.a();
    }

    @Override // com.android.wiimu.upnp.IWiimuAVTransport
    public void BackForward(Device device, IWiimuActionCallback iWiimuActionCallback) throws Exception {
        this.f22583a.BackForward(device, iWiimuActionCallback);
    }

    @Override // com.android.wiimu.upnp.IWiimuAVTransport
    public void SeekForward(Device device, IWiimuActionCallback iWiimuActionCallback) throws Exception {
        this.f22583a.SeekForward(device, iWiimuActionCallback);
    }

    public IWiimuAVTransport a() {
        return this.f22583a;
    }

    @Override // com.android.wiimu.upnp.IWiimuAVTransport
    public void getCurrentTranportActions(Device device, IWiimuActionCallback iWiimuActionCallback) throws Exception {
        this.f22583a.getCurrentTranportActions(device, iWiimuActionCallback);
    }

    @Override // com.android.wiimu.upnp.IWiimuAVTransport
    public void getDeviceCapabilities(Device device, IWiimuActionCallback iWiimuActionCallback) throws Exception {
        this.f22583a.getDeviceCapabilities(device, iWiimuActionCallback);
    }

    @Override // com.android.wiimu.upnp.IWiimuAVTransport
    public void getInfoEx(Device device, IWiimuActionCallback iWiimuActionCallback) throws Exception {
        this.f22583a.getInfoEx(device, iWiimuActionCallback);
    }

    @Override // com.android.wiimu.upnp.IWiimuAVTransport
    public void getMediaInfo(Device device, IWiimuActionCallback iWiimuActionCallback) throws Exception {
        this.f22583a.getMediaInfo(device, iWiimuActionCallback);
    }

    @Override // com.android.wiimu.upnp.IWiimuAVTransport
    public void getPDADeviceInfo(Device device, IWiimuActionCallback iWiimuActionCallback) throws Exception {
        this.f22583a.getPDADeviceInfo(device, iWiimuActionCallback);
    }

    @Override // com.android.wiimu.upnp.IWiimuAVTransport
    public void getPlayType(Device device, IWiimuActionCallback iWiimuActionCallback) throws Exception {
        this.f22583a.getPlayType(device, iWiimuActionCallback);
    }

    @Override // com.android.wiimu.upnp.IWiimuAVTransport
    public void getPositionInfo(Device device, IWiimuActionCallback iWiimuActionCallback) throws Exception {
        this.f22583a.getPositionInfo(device, iWiimuActionCallback);
    }

    @Override // com.android.wiimu.upnp.IWiimuAVTransport
    public void getTransportInfo(Device device, IWiimuActionCallback iWiimuActionCallback) throws Exception {
        this.f22583a.getTransportInfo(device, iWiimuActionCallback);
    }

    @Override // com.android.wiimu.upnp.IWiimuAVTransport
    public void getTransportSettings(Device device, IWiimuActionCallback iWiimuActionCallback) throws Exception {
        this.f22583a.getTransportSettings(device, iWiimuActionCallback);
    }

    @Override // com.android.wiimu.upnp.IWiimuAVTransport
    public void next(Device device, IWiimuActionCallback iWiimuActionCallback) throws Exception {
        this.f22583a.next(device, iWiimuActionCallback);
    }

    @Override // com.android.wiimu.upnp.IWiimuAVTransport
    public void pause(Device device, IWiimuActionCallback iWiimuActionCallback) throws Exception {
        this.f22583a.pause(device, iWiimuActionCallback);
    }

    @Override // com.android.wiimu.upnp.IWiimuAVTransport
    public void play(Device device, IWiimuActionCallback iWiimuActionCallback) throws Exception {
        this.f22583a.play(device, iWiimuActionCallback);
    }

    @Override // com.android.wiimu.upnp.IWiimuAVTransport
    public void previous(Device device, IWiimuActionCallback iWiimuActionCallback) throws Exception {
        this.f22583a.previous(device, iWiimuActionCallback);
    }

    @Override // com.android.wiimu.upnp.IWiimuAVTransport
    public void seek(int i2, Device device, IWiimuActionCallback iWiimuActionCallback) throws Exception {
        this.f22583a.seek(i2, device, iWiimuActionCallback);
    }

    @Override // com.android.wiimu.upnp.IWiimuAVTransport
    public void setAVTransportURI(String str, String str2, Device device, IWiimuActionCallback iWiimuActionCallback) throws Exception {
        this.f22583a.setAVTransportURI(str, str2, device, iWiimuActionCallback);
    }

    @Override // com.android.wiimu.upnp.IWiimuAVTransport
    public void setPDAClientCfg(Device device, String str, String str2, String str3, String str4, String str5, IWiimuActionCallback iWiimuActionCallback) throws Exception {
        this.f22583a.setPDAClientCfg(device, str, str2, str3, str4, str5, iWiimuActionCallback);
    }

    @Override // com.android.wiimu.upnp.IWiimuAVTransport
    public void stop(Device device, IWiimuActionCallback iWiimuActionCallback) throws Exception {
        this.f22583a.stop(device, iWiimuActionCallback);
    }

    public void a(IWiimuAVTransport iWiimuAVTransport) {
        this.f22583a = iWiimuAVTransport;
    }

    @Override // com.android.wiimu.upnp.IWiimuAVTransport
    public void setPDAClientCfg(Device device, com.android.wiimu.model.pda.b bVar, IWiimuActionCallback iWiimuActionCallback) throws Exception {
        this.f22583a.setPDAClientCfg(device, bVar, iWiimuActionCallback);
    }

    @Override // com.android.wiimu.upnp.IWiimuAVTransport
    public void setPDAClientCfg(Device device, com.android.wiimu.model.pda.a aVar, IWiimuActionCallback iWiimuActionCallback) throws Exception {
        this.f22583a.setPDAClientCfg(device, aVar, iWiimuActionCallback);
    }

    public /* synthetic */ g(int i2) {
        this();
    }
}
