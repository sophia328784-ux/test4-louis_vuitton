package com.lightup.sdk.device.helpers;

import com.lightup.sdk.device.ble.scanner.listeners.LightupDeviceConnectionListener;
import com.lightup.sdk.device.devicemanagement.BLELightup;
import com.lightup.sdk.device.devicemanagement.LightupDevice;
import com.lightup.sdk.device.enums.PairOrientation;
import com.lightup.sdk.device.enums.PowerOffReason;
import com.lightup.sdk.device.model.device.OrientedDeviceConnectionProcessListener;
import com.lightup.sdk.device.model.listeners.DeviceConnectionProcessListener;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\b\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u00012\b\u0012\u0004\u0012\u00020\u00020\u0003B\u001f\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\t¢\u0006\u0004\b\n\u0010\u000bJ\u0018\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u00022\u0006\u0010\u000f\u001a\u00020\u0010H\u0016J\u0018\u0010\u0011\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u00022\u0006\u0010\u0012\u001a\u00020\u0010H\u0016J\b\u0010\u0013\u001a\u00020\rH\u0016J\b\u0010\u0014\u001a\u00020\rH\u0016J\b\u0010\u0015\u001a\u00020\rH\u0016J\b\u0010\u0016\u001a\u00020\rH\u0016J\u0010\u0010\u0017\u001a\u00020\r2\u0006\u0010\u0018\u001a\u00020\u0019H\u0016J \u0010\f\u001a\u00020\r2\u0006\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u000e\u001a\u00020\u00022\u0006\u0010\u000f\u001a\u00020\u0010H\u0016J \u0010\u0011\u001a\u00020\r2\u0006\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u000e\u001a\u00020\u00022\u0006\u0010\u0012\u001a\u00020\u0010H\u0016J\u0010\u0010\u0013\u001a\u00020\r2\u0006\u0010\u001a\u001a\u00020\u001bH\u0016J\u0010\u0010\u0014\u001a\u00020\r2\u0006\u0010\u001a\u001a\u00020\u001bH\u0016J\u0010\u0010\u0016\u001a\u00020\r2\u0006\u0010\u001a\u001a\u00020\u001bH\u0016J\u0018\u0010\u0017\u001a\u00020\r2\u0006\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u0018\u001a\u00020\u0019H\u0016J\u0010\u0010\u001c\u001a\u00020\r2\u0006\u0010\u001d\u001a\u00020\u001eH\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u001f"}, d2 = {"Lcom/lightup/sdk/device/helpers/UnifiedConnectionListener;", "Lcom/lightup/sdk/device/model/listeners/DeviceConnectionProcessListener;", "Lcom/lightup/sdk/device/devicemanagement/BLELightup;", "Lcom/lightup/sdk/device/model/device/OrientedDeviceConnectionProcessListener;", "lightupDevice", "Lcom/lightup/sdk/device/devicemanagement/LightupDevice;", "listener", "Lcom/lightup/sdk/device/ble/scanner/listeners/LightupDeviceConnectionListener;", "helper", "Lcom/lightup/sdk/device/helpers/LightupHelperInterface;", "<init>", "(Lcom/lightup/sdk/device/devicemanagement/LightupDevice;Lcom/lightup/sdk/device/ble/scanner/listeners/LightupDeviceConnectionListener;Lcom/lightup/sdk/device/helpers/LightupHelperInterface;)V", "onConnected", "", "device", "reconnection", "", "onRequiresUpdate", "updatePossible", "onConnecting", "onReconnecting", "onNoDeviceFound", "onLost", "onDeviceShutDown", "reason", "Lcom/lightup/sdk/device/enums/PowerOffReason;", "orientation", "Lcom/lightup/sdk/device/enums/PairOrientation;", "onError", "error", "", "library"}, k = 1, mv = {2, 3, 0}, xi = 48)
final class UnifiedConnectionListener extends DeviceConnectionProcessListener<BLELightup> implements OrientedDeviceConnectionProcessListener<BLELightup> {
    private final LightupHelperInterface helper;
    private final LightupDevice lightupDevice;
    private final LightupDeviceConnectionListener listener;

    public UnifiedConnectionListener(LightupDevice lightupDevice, LightupDeviceConnectionListener lightupDeviceConnectionListener, LightupHelperInterface lightupHelperInterface) {
        lightupDevice.getClass();
        lightupDeviceConnectionListener.getClass();
        lightupHelperInterface.getClass();
        this.lightupDevice = lightupDevice;
        this.listener = lightupDeviceConnectionListener;
        this.helper = lightupHelperInterface;
    }

    @Override // com.lightup.sdk.device.model.listeners.DeviceConnectionProcessListener
    public void onConnected(BLELightup device, boolean reconnection) {
        device.getClass();
        LightupDeviceConnectionListener lightupDeviceConnectionListener = this.listener;
        String name = device.getName();
        name.getClass();
        lightupDeviceConnectionListener.onConnected(new LightupDevice(name, device), reconnection, this.helper);
    }

    @Override // com.lightup.sdk.device.model.device.OrientedDeviceConnectionProcessListener
    public void onConnecting(PairOrientation orientation) {
        orientation.getClass();
        this.listener.onConnecting(this.lightupDevice);
    }

    @Override // com.lightup.sdk.device.model.device.OrientedDeviceConnectionProcessListener
    public void onDeviceShutDown(PairOrientation orientation, PowerOffReason reason) {
        orientation.getClass();
        reason.getClass();
        this.listener.onDeviceShutDown(this.lightupDevice, reason);
    }

    @Override // com.lightup.sdk.device.model.device.OrientedDeviceConnectionProcessListener
    public void onError(String error) {
        error.getClass();
        this.listener.onError(this.lightupDevice, error);
    }

    @Override // com.lightup.sdk.device.model.device.OrientedDeviceConnectionProcessListener
    public void onLost(PairOrientation orientation) {
        orientation.getClass();
        this.listener.onLost(this.lightupDevice);
    }

    @Override // com.lightup.sdk.device.model.listeners.DeviceConnectionProcessListener
    public void onNoDeviceFound() {
        this.listener.onNoDeviceFound(this.lightupDevice);
    }

    @Override // com.lightup.sdk.device.model.device.OrientedDeviceConnectionProcessListener
    public void onReconnecting(PairOrientation orientation) {
        orientation.getClass();
        this.listener.onReconnecting(this.lightupDevice);
    }

    @Override // com.lightup.sdk.device.model.listeners.DeviceConnectionProcessListener
    public void onRequiresUpdate(BLELightup device, boolean updatePossible) {
        device.getClass();
        LightupDeviceConnectionListener lightupDeviceConnectionListener = this.listener;
        String name = device.getName();
        name.getClass();
        lightupDeviceConnectionListener.onRequiresUpdate(new LightupDevice(name, device), updatePossible, this.helper);
    }

    @Override // com.lightup.sdk.device.model.listeners.DeviceConnectionProcessListener
    public void onConnecting() {
        this.listener.onConnecting(this.lightupDevice);
    }

    @Override // com.lightup.sdk.device.model.listeners.DeviceConnectionProcessListener
    public void onLost() {
        this.listener.onLost(this.lightupDevice);
    }

    @Override // com.lightup.sdk.device.model.listeners.DeviceConnectionProcessListener
    public void onReconnecting() {
        this.listener.onReconnecting(this.lightupDevice);
    }

    @Override // com.lightup.sdk.device.model.listeners.DeviceConnectionProcessListener
    public void onDeviceShutDown(PowerOffReason reason) {
        reason.getClass();
        this.listener.onDeviceShutDown(this.lightupDevice, reason);
    }

    @Override // com.lightup.sdk.device.model.device.OrientedDeviceConnectionProcessListener
    public void onConnected(PairOrientation orientation, BLELightup device, boolean reconnection) {
        orientation.getClass();
        device.getClass();
        this.listener.onConnected(this.lightupDevice, reconnection, this.helper);
    }

    @Override // com.lightup.sdk.device.model.device.OrientedDeviceConnectionProcessListener
    public void onRequiresUpdate(PairOrientation orientation, BLELightup device, boolean updatePossible) {
        orientation.getClass();
        device.getClass();
        this.listener.onRequiresUpdate(this.lightupDevice, updatePossible, this.helper);
    }
}
