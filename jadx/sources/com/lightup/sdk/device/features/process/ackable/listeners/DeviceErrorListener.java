package com.lightup.sdk.device.features.process.ackable.listeners;

import java.lang.Enum;

/* JADX INFO: loaded from: classes2.dex */
public interface DeviceErrorListener<ErrorType extends Enum> {
    void onDeviceError(ErrorType errortype);
}
