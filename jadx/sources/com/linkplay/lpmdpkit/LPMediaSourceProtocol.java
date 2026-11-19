package com.linkplay.lpmdpkit;

import com.linkplay.lpmdpkit.bean.DeviceStreamServices;
import com.linkplay.lpmdpkit.callback.DeviceCallback;
import com.linkplay.lpmdpkit.okhttp.HttpMethod;

/* JADX INFO: loaded from: classes2.dex */
public interface LPMediaSourceProtocol {
    void LPCommonHTTPMethod(String str, String str2, String str3, DeviceCallback deviceCallback);

    void LPGetUserInfoWithDeviceId(String str, String str2, DeviceCallback deviceCallback);

    void LPGetUserInfoWithDeviceId(String str, String str2, String str3, DeviceCallback deviceCallback);

    void LPGetUserInfoWithDeviceId(String str, String str2, boolean z, DeviceCallback deviceCallback);

    String LPIpAddressWithDeviceId(String str);

    void LPLogOutWithDeviceId(String str, String str2, DeviceCallback deviceCallback);

    String LPNewTuneInPresetAndAlarmWithDeviceId(String str);

    int LPPresetKeyWithDeviceId(String str);

    DeviceStreamServices LPStreamServiceCapability(String str);

    void sendCommand(String str, String str2, String str3, HttpMethod httpMethod, String str4, DeviceCallback deviceCallback);
}
