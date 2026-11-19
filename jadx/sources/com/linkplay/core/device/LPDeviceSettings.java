package com.linkplay.core.device;

import com.linkplay.core.status.LPInputSource;

/* JADX INFO: loaded from: classes2.dex */
public interface LPDeviceSettings {
    void getSupportEQAndValues(LPDeviceSettingsListener lPDeviceSettingsListener);

    void getUSBDiskStatus(LPDeviceSettingsListener lPDeviceSettingsListener);

    void hideSSID(boolean z, LPDeviceSettingsListener lPDeviceSettingsListener);

    void resetDeviceWithHandler(LPDeviceSettingsListener lPDeviceSettingsListener);

    void setDeviceName(String str, LPDeviceSettingsListener lPDeviceSettingsListener);

    void setEQValues(String str, LPDeviceSettingsListener lPDeviceSettingsListener);

    void setSSIDPassword(String str, LPDeviceSettingsListener lPDeviceSettingsListener);

    void switchInputSource(LPInputSource lPInputSource, LPDeviceSettingsListener lPDeviceSettingsListener);
}
