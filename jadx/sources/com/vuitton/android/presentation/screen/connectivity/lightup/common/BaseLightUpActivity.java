package com.vuitton.android.presentation.screen.connectivity.lightup.common;

import android.content.Context;
import com.lightup.sdk.device.ble.availability.BLEAvailabilityListener;
import com.lightup.sdk.device.ble.exceptions.ScannerException;
import com.lightup.sdk.device.ble.scanner.listeners.LightupDeviceConnectionListener;
import com.lightup.sdk.device.devicemanagement.LightupDevice;
import com.lightup.sdk.device.enums.LightupDeviceType;
import com.vuitton.android.presentation.screen.base.BaseActivity;
import com.vuitton.android.presentation.screen.connectivity.lightup.common.helper.LVLightUpHelperInstance;
import com.vuitton.android.presentation.screen.connectivity.lightup.common.lvlisteners.LVMonitoringListener;
import com.vuitton.foundation.logger.LegacyLogger;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0006\b'\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u0004B\u0007¢\u0006\u0004\b\u0005\u0010\u0006J\u000f\u0010\b\u001a\u00020\u0007H&¢\u0006\u0004\b\b\u0010\u0006J\u000f\u0010\t\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\t\u0010\u0006J\u000f\u0010\n\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\n\u0010\u0006J\u0017\u0010\r\u001a\u00020\u00072\u0006\u0010\f\u001a\u00020\u000bH\u0007¢\u0006\u0004\b\r\u0010\u000eJ\u0017\u0010\u0011\u001a\u00020\u00072\u0006\u0010\u0010\u001a\u00020\u000fH\u0016¢\u0006\u0004\b\u0011\u0010\u0012J\u0017\u0010\u0013\u001a\u00020\u00072\u0006\u0010\u0010\u001a\u00020\u000fH\u0016¢\u0006\u0004\b\u0013\u0010\u0012J\u001f\u0010\u0016\u001a\u00020\u00072\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0015\u001a\u00020\u0014H\u0016¢\u0006\u0004\b\u0016\u0010\u0017J\u0017\u0010\u0018\u001a\u00020\u00072\u0006\u0010\u0010\u001a\u00020\u000fH\u0016¢\u0006\u0004\b\u0018\u0010\u0012J\u000f\u0010\u0019\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\u0019\u0010\u0006¨\u0006\u001a"}, d2 = {"Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/BaseLightUpActivity;", "Lcom/vuitton/android/presentation/screen/base/BaseActivity;", "Lcom/lightup/sdk/device/ble/scanner/listeners/LightupDeviceConnectionListener;", "Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/lvlisteners/LVMonitoringListener;", "Lcom/lightup/sdk/device/ble/availability/BLEAvailabilityListener;", "<init>", "()V", "", "H", "onAvailable", "onUnavailable", "Lcom/lightup/sdk/device/enums/LightupDeviceType;", "deviceType", "I", "(Lcom/lightup/sdk/device/enums/LightupDeviceType;)V", "Lcom/lightup/sdk/device/devicemanagement/LightupDevice;", "device", "onConnecting", "(Lcom/lightup/sdk/device/devicemanagement/LightupDevice;)V", "onReconnecting", "", "error", "onError", "(Lcom/lightup/sdk/device/devicemanagement/LightupDevice;Ljava/lang/String;)V", "onLost", "onDeviceStatusChanged", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public abstract class BaseLightUpActivity extends BaseActivity implements LightupDeviceConnectionListener, LVMonitoringListener, BLEAvailabilityListener {
    public static final int o = 8;

    public abstract void H();

    public final void I(LightupDeviceType deviceType) {
        deviceType.getClass();
        try {
            Context applicationContext = getApplicationContext();
            applicationContext.getClass();
            LVLightUpHelperInstance.b(applicationContext, this, deviceType);
        } catch (ScannerException e2) {
            LegacyLogger.f66205a.c("LV_LIGHT_UP", "Scanner Exception - " + e2, null);
        }
    }

    @Override // com.lightup.sdk.device.ble.availability.BLEAvailabilityListener
    public void onAvailable() {
    }

    @Override // com.lightup.sdk.device.ble.scanner.listeners.LightupDeviceConnectionListener
    public void onConnecting(LightupDevice device) {
        device.getClass();
    }

    @Override // com.vuitton.android.presentation.screen.connectivity.lightup.common.lvlisteners.LVMonitoringListener
    public void onDeviceStatusChanged() {
    }

    @Override // com.lightup.sdk.device.ble.scanner.listeners.LightupDeviceConnectionListener
    public void onError(LightupDevice device, String error) {
        device.getClass();
        error.getClass();
    }

    @Override // com.lightup.sdk.device.ble.scanner.listeners.LightupDeviceConnectionListener
    public void onLost(LightupDevice device) {
        device.getClass();
    }

    @Override // com.lightup.sdk.device.ble.scanner.listeners.LightupDeviceConnectionListener
    public void onReconnecting(LightupDevice device) {
        device.getClass();
    }

    @Override // com.lightup.sdk.device.ble.availability.BLEAvailabilityListener
    public void onUnavailable() {
    }
}
