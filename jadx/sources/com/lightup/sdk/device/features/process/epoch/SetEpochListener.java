package com.lightup.sdk.device.features.process.epoch;

import com.lightup.sdk.device.features.process.ackable.listeners.DeviceErrorListener;
import com.lightup.sdk.device.features.process.ackable.listeners.DoneListener;
import com.lightup.sdk.device.features.process.errors.DeviceConnectionError;

/* JADX INFO: loaded from: classes2.dex */
public interface SetEpochListener extends DoneListener, DeviceErrorListener<DeviceConnectionError> {
}
