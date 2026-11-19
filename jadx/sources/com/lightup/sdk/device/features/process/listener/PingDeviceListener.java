package com.lightup.sdk.device.features.process.listener;

import com.lightup.sdk.device.features.process.ackable.listeners.DeviceErrorListener;
import com.lightup.sdk.device.features.process.ackable.listeners.DoneListener;
import com.lightup.sdk.device.features.process.errors.DeviceConnectionError;

/* JADX INFO: loaded from: classes2.dex */
public interface PingDeviceListener extends DoneListener, DeviceErrorListener<DeviceConnectionError> {
}
