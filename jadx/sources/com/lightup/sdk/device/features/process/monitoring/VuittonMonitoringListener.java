package com.lightup.sdk.device.features.process.monitoring;

/* JADX INFO: loaded from: classes2.dex */
public interface VuittonMonitoringListener extends DeviceMonitoringListener {
    void onAnimationPlaying();

    void onBatteryStatus(int i2);

    void onDeviceStatusChanged();

    void onNewAnimationsAvailable();

    void onRequiresAnimationsUpdate();
}
