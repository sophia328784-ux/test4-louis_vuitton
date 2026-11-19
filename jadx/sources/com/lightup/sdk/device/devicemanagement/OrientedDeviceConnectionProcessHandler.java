package com.lightup.sdk.device.devicemanagement;

import com.lightup.sdk.device.devicemanagement.BLEDevice;
import com.lightup.sdk.device.enums.PairOrientation;
import com.lightup.sdk.device.enums.PowerOffReason;
import com.lightup.sdk.device.model.device.OrientedDeviceConnectionProcessListener;
import com.lightup.sdk.device.model.listeners.DeviceConnectionProcessListener;

/* JADX INFO: loaded from: classes2.dex */
public class OrientedDeviceConnectionProcessHandler<D extends BLEDevice> extends DeviceConnectionProcessListener<D> {
    private OrientedDeviceConnectionProcessListener<D> listener;
    private PairOrientation pairOrientation;

    public OrientedDeviceConnectionProcessHandler(PairOrientation pairOrientation, OrientedDeviceConnectionProcessListener<D> orientedDeviceConnectionProcessListener) {
        this.pairOrientation = pairOrientation;
        this.listener = orientedDeviceConnectionProcessListener;
    }

    @Override // com.lightup.sdk.device.model.listeners.DeviceConnectionProcessListener
    public void onConnected(D d, boolean z) {
        this.listener.onConnected(this.pairOrientation, d, z);
    }

    @Override // com.lightup.sdk.device.model.listeners.DeviceConnectionProcessListener
    public void onConnecting() {
        this.listener.onConnecting(this.pairOrientation);
    }

    @Override // com.lightup.sdk.device.model.listeners.DeviceConnectionProcessListener
    public void onDeviceShutDown(PowerOffReason powerOffReason) {
        this.listener.onDeviceShutDown(this.pairOrientation, powerOffReason);
    }

    @Override // com.lightup.sdk.device.model.listeners.DeviceConnectionProcessListener
    public void onLost() {
        this.listener.onLost(this.pairOrientation);
    }

    @Override // com.lightup.sdk.device.model.listeners.DeviceConnectionProcessListener
    public void onNoDeviceFound() {
        this.listener.onNoDeviceFound();
    }

    @Override // com.lightup.sdk.device.model.listeners.DeviceConnectionProcessListener
    public void onReconnecting() {
        this.listener.onReconnecting(this.pairOrientation);
    }

    @Override // com.lightup.sdk.device.model.listeners.DeviceConnectionProcessListener
    public void onRequiresUpdate(D d, boolean z) {
        this.listener.onRequiresUpdate(this.pairOrientation, d, z);
    }
}
