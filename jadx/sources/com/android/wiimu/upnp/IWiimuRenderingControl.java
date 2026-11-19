package com.android.wiimu.upnp;

import org.teleal.cling.model.meta.Device;

/* JADX INFO: loaded from: classes.dex */
public interface IWiimuRenderingControl {
    void deleteAlarmQueue(String str, Device device, IWiimuActionCallback iWiimuActionCallback) throws Exception;

    void getAlarmQueue(String str, Device device, IWiimuActionCallback iWiimuActionCallback) throws Exception;

    void getChannel(Device device, IWiimuActionCallback iWiimuActionCallback) throws Exception;

    void getControlDeviceInfo(Device device, IWiimuActionCallback iWiimuActionCallback) throws Exception;

    void getEqualizer(Device device, IWiimuActionCallback iWiimuActionCallback) throws Exception;

    void getMute(Device device, IWiimuActionCallback iWiimuActionCallback) throws Exception;

    void getStreamServicesCapability(Device device, IWiimuActionCallback iWiimuActionCallback) throws Exception;

    void getVolume(Device device, IWiimuActionCallback iWiimuActionCallback) throws Exception;

    void listPresets(Device device, IWiimuActionCallback iWiimuActionCallback) throws Exception;

    void multiPlaySlaveMask(Device device, int i2, IWiimuActionCallback iWiimuActionCallback) throws Exception;

    void multiPlaySlaveMask(Device device, IWiimuActionCallback iWiimuActionCallback) throws Exception;

    void selectPreset(Device device, IWiimuActionCallback iWiimuActionCallback) throws Exception;

    void setAlarmQueue(String str, Device device, IWiimuActionCallback iWiimuActionCallback) throws Exception;

    void setChannel(int i2, Device device, IWiimuActionCallback iWiimuActionCallback) throws Exception;

    void setEqualizer(String str, Device device, IWiimuActionCallback iWiimuActionCallback) throws Exception;

    void setMute(boolean z, Device device, IWiimuActionCallback iWiimuActionCallback) throws Exception;

    void setVolume(int i2, Device device, IWiimuActionCallback iWiimuActionCallback) throws Exception;
}
