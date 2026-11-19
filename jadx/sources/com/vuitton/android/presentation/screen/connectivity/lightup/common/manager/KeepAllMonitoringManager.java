package com.vuitton.android.presentation.screen.connectivity.lightup.common.manager;

import com.lightup.sdk.device.devicemanagement.LightupDevice;
import com.lightup.sdk.device.enums.PairOrientation;
import com.lightup.sdk.device.features.process.monitoring.LightupMonitoringListener;
import com.vuitton.android.presentation.screen.connectivity.lightup.LightUpActivity;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\u0002\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/manager/KeepAllMonitoringManager;", "Lcom/lightup/sdk/device/features/process/monitoring/LightupMonitoringListener;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class KeepAllMonitoringManager implements LightupMonitoringListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final KeepAllMonitoringManager f56156a = new KeepAllMonitoringManager();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static LightUpActivity f56157b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static LightupDevice f56158c;
    public static Boolean d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static Boolean f56159e;

    @Override // com.lightup.sdk.device.features.process.monitoring.LightupMonitoringListener
    public final void onAnimationPlaying() {
        LightUpActivity lightUpActivity = f56157b;
        if (lightUpActivity != null) {
            lightUpActivity.J();
        }
    }

    @Override // com.lightup.sdk.device.features.process.monitoring.LightupMonitoringListener
    public final void onBatteryLevel(PairOrientation pairOrientation, int i2, boolean z) {
        pairOrientation.getClass();
    }

    @Override // com.lightup.sdk.device.features.process.monitoring.LightupMonitoringListener
    public final void onDeviceStatusChanged() {
        LightUpActivity lightUpActivity = f56157b;
        if (lightUpActivity != null) {
            lightUpActivity.onDeviceStatusChanged();
        }
    }

    @Override // com.lightup.sdk.device.features.process.monitoring.LightupMonitoringListener
    public final void onNewAnimationsAvailable() {
        d = Boolean.TRUE;
        LightUpActivity lightUpActivity = f56157b;
        if (lightUpActivity != null) {
            lightUpActivity.K();
        }
    }

    @Override // com.lightup.sdk.device.features.process.monitoring.LightupMonitoringListener
    public final void onRequiresAnimationsUpdate() {
        f56159e = Boolean.TRUE;
        LightUpActivity lightUpActivity = f56157b;
        if (lightUpActivity != null) {
            lightUpActivity.M();
        }
    }
}
