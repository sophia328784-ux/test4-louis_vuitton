package com.lightup.sdk.device.ble.scanner.listeners;

import com.lightup.sdk.device.devicemanagement.LightupDevice;
import com.lightup.sdk.device.enums.PowerOffReason;
import com.lightup.sdk.device.helpers.LightupHelperInterface;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\bg\u0018\u00002\u00020\u0001J \u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\tH&J \u0010\n\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u000b\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\tH&J\u0010\u0010\f\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&J\u0010\u0010\r\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&J\u0010\u0010\u000e\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&J\u0010\u0010\u000f\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&J\u0018\u0010\u0010\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0011\u001a\u00020\u0012H&J\u0018\u0010\u0013\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0014\u001a\u00020\u0015H&¨\u0006\u0016À\u0006\u0003"}, d2 = {"Lcom/lightup/sdk/device/ble/scanner/listeners/LightupDeviceConnectionListener;", "", "onConnected", "", "device", "Lcom/lightup/sdk/device/devicemanagement/LightupDevice;", "reconnection", "", "helper", "Lcom/lightup/sdk/device/helpers/LightupHelperInterface;", "onRequiresUpdate", "updatePossible", "onConnecting", "onReconnecting", "onNoDeviceFound", "onLost", "onDeviceShutDown", "reason", "Lcom/lightup/sdk/device/enums/PowerOffReason;", "onError", "error", "", "library"}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface LightupDeviceConnectionListener {
    void onConnected(LightupDevice device, boolean reconnection, LightupHelperInterface helper);

    void onConnecting(LightupDevice device);

    void onDeviceShutDown(LightupDevice device, PowerOffReason reason);

    void onError(LightupDevice device, String error);

    void onLost(LightupDevice device);

    void onNoDeviceFound(LightupDevice device);

    void onReconnecting(LightupDevice device);

    void onRequiresUpdate(LightupDevice device, boolean updatePossible, LightupHelperInterface helper);
}
