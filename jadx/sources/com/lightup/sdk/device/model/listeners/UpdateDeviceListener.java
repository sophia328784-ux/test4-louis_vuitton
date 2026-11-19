package com.lightup.sdk.device.model.listeners;

import com.lightup.sdk.device.enums.UpdateError;
import com.lightup.sdk.device.features.process.ackable.listeners.DeviceErrorListener;
import com.lightup.sdk.device.features.process.ackable.listeners.DoneListener;
import com.lightup.sdk.device.features.process.errors.DeviceConnectionError;

/* JADX INFO: loaded from: classes2.dex */
public interface UpdateDeviceListener extends DoneListener, DeviceErrorListener<DeviceConnectionError> {
    void onProgress(int i2, int i3, double d);

    void onUpdateError(UpdateError updateError);
}
