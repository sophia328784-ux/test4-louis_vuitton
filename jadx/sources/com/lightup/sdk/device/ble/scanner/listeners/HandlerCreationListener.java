package com.lightup.sdk.device.ble.scanner.listeners;

import com.lightup.sdk.device.ble.exceptions.ScannerException;
import com.lightup.sdk.device.devicemanagement.DeviceHandler;
import com.lightup.sdk.device.features.process.monitoring.DeviceMonitoringListener;

/* JADX INFO: loaded from: classes2.dex */
public interface HandlerCreationListener<H extends DeviceHandler<M>, M extends DeviceMonitoringListener> {
    void onError(ScannerException scannerException);

    void onHandlerLost();

    void onHandlerReady(H h2);
}
