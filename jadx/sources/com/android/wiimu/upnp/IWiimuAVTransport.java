package com.android.wiimu.upnp;

import org.teleal.cling.model.meta.Device;

/* JADX INFO: loaded from: classes.dex */
public interface IWiimuAVTransport {
    void BackForward(Device device, IWiimuActionCallback iWiimuActionCallback) throws Exception;

    void SeekForward(Device device, IWiimuActionCallback iWiimuActionCallback) throws Exception;

    void getCurrentTranportActions(Device device, IWiimuActionCallback iWiimuActionCallback) throws Exception;

    void getDeviceCapabilities(Device device, IWiimuActionCallback iWiimuActionCallback) throws Exception;

    void getInfoEx(Device device, IWiimuActionCallback iWiimuActionCallback) throws Exception;

    void getMediaInfo(Device device, IWiimuActionCallback iWiimuActionCallback) throws Exception;

    void getPDADeviceInfo(Device device, IWiimuActionCallback iWiimuActionCallback) throws Exception;

    void getPlayType(Device device, IWiimuActionCallback iWiimuActionCallback) throws Exception;

    void getPositionInfo(Device device, IWiimuActionCallback iWiimuActionCallback) throws Exception;

    void getTransportInfo(Device device, IWiimuActionCallback iWiimuActionCallback) throws Exception;

    void getTransportSettings(Device device, IWiimuActionCallback iWiimuActionCallback) throws Exception;

    void next(Device device, IWiimuActionCallback iWiimuActionCallback) throws Exception;

    void pause(Device device, IWiimuActionCallback iWiimuActionCallback) throws Exception;

    void play(Device device, IWiimuActionCallback iWiimuActionCallback) throws Exception;

    void previous(Device device, IWiimuActionCallback iWiimuActionCallback) throws Exception;

    void seek(int i2, Device device, IWiimuActionCallback iWiimuActionCallback) throws Exception;

    void setAVTransportURI(String str, String str2, Device device, IWiimuActionCallback iWiimuActionCallback) throws Exception;

    void setPDAClientCfg(Device device, com.android.wiimu.model.pda.a aVar, IWiimuActionCallback iWiimuActionCallback) throws Exception;

    void setPDAClientCfg(Device device, com.android.wiimu.model.pda.b bVar, IWiimuActionCallback iWiimuActionCallback) throws Exception;

    void setPDAClientCfg(Device device, String str, String str2, String str3, String str4, String str5, IWiimuActionCallback iWiimuActionCallback) throws Exception;

    void stop(Device device, IWiimuActionCallback iWiimuActionCallback) throws Exception;
}
