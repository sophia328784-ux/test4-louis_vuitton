package com.lightup.sdk.device.features.process.monitoring;

import com.lightup.sdk.device.enums.PairOrientation;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0005\bg\u0018\u00002\u00020\u0001J \u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\tH&J\b\u0010\n\u001a\u00020\u0003H&J\b\u0010\u000b\u001a\u00020\u0003H&J\b\u0010\f\u001a\u00020\u0003H&J\b\u0010\r\u001a\u00020\u0003H&¨\u0006\u000eÀ\u0006\u0003"}, d2 = {"Lcom/lightup/sdk/device/features/process/monitoring/LightupMonitoringListener;", "", "onBatteryLevel", "", "orientation", "Lcom/lightup/sdk/device/enums/PairOrientation;", "percent", "", "plugged", "", "onDeviceStatusChanged", "onAnimationPlaying", "onNewAnimationsAvailable", "onRequiresAnimationsUpdate", "library"}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface LightupMonitoringListener {
    void onAnimationPlaying();

    void onBatteryLevel(PairOrientation orientation, int percent, boolean plugged);

    void onDeviceStatusChanged();

    void onNewAnimationsAvailable();

    void onRequiresAnimationsUpdate();
}
