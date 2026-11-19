package com.lightup.sdk.device.model.device;

import com.lightup.sdk.device.features.process.dataupload.FirmwareUpdateListener;
import com.lightup.sdk.device.features.process.epoch.SetEpochListener;

/* JADX INFO: loaded from: classes2.dex */
public interface Device {
    DeviceId getDeviceId();

    String getShortId();

    void onInternetTimeAvailable(SetEpochListener setEpochListener);

    boolean requiresUpdate();

    void setPriorityMode(PriorityMode priorityMode);

    boolean update(FirmwareUpdateListener firmwareUpdateListener);
}
