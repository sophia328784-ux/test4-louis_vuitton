package com.lightup.sdk.device.helpers;

import com.lightup.sdk.device.enums.PairOrientation;
import com.lightup.sdk.device.features.process.monitoring.LightupMonitoringListener;
import com.lightup.sdk.device.features.process.monitoring.X408MonitoringListener;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0002\b\t\b\u0002\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J \u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\rH\u0016J\u0018\u0010\u0006\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\rH\u0016J\u0010\u0010\u000e\u001a\u00020\u00072\u0006\u0010\u000f\u001a\u00020\u000bH\u0016J\b\u0010\u0010\u001a\u00020\u0007H\u0016J\u0010\u0010\u0011\u001a\u00020\u00072\u0006\u0010\u0012\u001a\u00020\rH\u0016J\b\u0010\u0013\u001a\u00020\u0007H\u0016J\b\u0010\u0014\u001a\u00020\u0007H\u0016J\b\u0010\u0015\u001a\u00020\u0007H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0016"}, d2 = {"Lcom/lightup/sdk/device/helpers/UnifiedMonitoringListener;", "Lcom/lightup/sdk/device/features/process/monitoring/X408MonitoringListener;", "listener", "Lcom/lightup/sdk/device/features/process/monitoring/LightupMonitoringListener;", "<init>", "(Lcom/lightup/sdk/device/features/process/monitoring/LightupMonitoringListener;)V", "onBatteryLevel", "", "orientation", "Lcom/lightup/sdk/device/enums/PairOrientation;", "percent", "", "plugged", "", "onBatteryStatus", "batteryLevel", "onDeviceStatusChanged", "onDeviceTimeStateChanged", "deviceTimeSet", "onAnimationPlaying", "onNewAnimationsAvailable", "onRequiresAnimationsUpdate", "library"}, k = 1, mv = {2, 3, 0}, xi = 48)
final class UnifiedMonitoringListener implements X408MonitoringListener {
    private final LightupMonitoringListener listener;

    public UnifiedMonitoringListener(LightupMonitoringListener lightupMonitoringListener) {
        lightupMonitoringListener.getClass();
        this.listener = lightupMonitoringListener;
    }

    @Override // com.lightup.sdk.device.features.process.monitoring.VuittonMonitoringListener
    public void onAnimationPlaying() {
        this.listener.onAnimationPlaying();
    }

    @Override // com.lightup.sdk.device.features.process.monitoring.X408MonitoringListener
    public void onBatteryLevel(PairOrientation orientation, int percent, boolean plugged) {
        orientation.getClass();
        this.listener.onBatteryLevel(orientation, percent, plugged);
    }

    @Override // com.lightup.sdk.device.features.process.monitoring.VuittonMonitoringListener
    public void onBatteryStatus(int batteryLevel) {
    }

    @Override // com.lightup.sdk.device.features.process.monitoring.VuittonMonitoringListener
    public void onDeviceStatusChanged() {
        this.listener.onDeviceStatusChanged();
    }

    @Override // com.lightup.sdk.device.features.process.monitoring.DeviceMonitoringListener
    public void onDeviceTimeStateChanged(boolean deviceTimeSet) {
    }

    @Override // com.lightup.sdk.device.features.process.monitoring.VuittonMonitoringListener
    public void onNewAnimationsAvailable() {
        this.listener.onNewAnimationsAvailable();
    }

    @Override // com.lightup.sdk.device.features.process.monitoring.VuittonMonitoringListener
    public void onRequiresAnimationsUpdate() {
        this.listener.onRequiresAnimationsUpdate();
    }

    @Override // com.lightup.sdk.device.features.process.monitoring.DeviceMonitoringListener
    public void onBatteryLevel(int percent, boolean plugged) {
        this.listener.onBatteryLevel(PairOrientation.UNKNOWN, percent, plugged);
    }
}
