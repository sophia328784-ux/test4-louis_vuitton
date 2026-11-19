package com.lightup.sdk.device.helpers;

import com.lightup.sdk.device.ble.scanner.listeners.LightupScanProcessListener;
import com.lightup.sdk.device.ble.scanner.listeners.X408PairScanProcessListener;
import com.lightup.sdk.device.devicemanagement.BLELightup;
import com.lightup.sdk.device.devicemanagement.BLEX408Pair;
import com.lightup.sdk.device.devicemanagement.LightupDevice;
import com.lightup.sdk.device.model.listeners.DeviceScanProcessListener;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\b\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u0003B\u000f\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\u0010\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u0002H\u0016J\u0010\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0016J\u0010\u0010\f\u001a\u00020\t2\u0006\u0010\r\u001a\u00020\u000eH\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u000f"}, d2 = {"Lcom/lightup/sdk/device/helpers/UnifiedScanListener;", "Lcom/lightup/sdk/device/model/listeners/DeviceScanProcessListener;", "Lcom/lightup/sdk/device/devicemanagement/BLELightup;", "Lcom/lightup/sdk/device/ble/scanner/listeners/X408PairScanProcessListener;", "listener", "Lcom/lightup/sdk/device/ble/scanner/listeners/LightupScanProcessListener;", "<init>", "(Lcom/lightup/sdk/device/ble/scanner/listeners/LightupScanProcessListener;)V", "onDeviceFound", "", "device", "Lcom/lightup/sdk/device/devicemanagement/BLEX408Pair;", "onScanEnd", "cancelled", "", "library"}, k = 1, mv = {2, 3, 0}, xi = 48)
final class UnifiedScanListener implements DeviceScanProcessListener<BLELightup>, X408PairScanProcessListener {
    private final LightupScanProcessListener listener;

    public UnifiedScanListener(LightupScanProcessListener lightupScanProcessListener) {
        lightupScanProcessListener.getClass();
        this.listener = lightupScanProcessListener;
    }

    @Override // com.lightup.sdk.device.model.listeners.DeviceScanProcessListener
    public void onDeviceFound(BLELightup device) {
        device.getClass();
        LightupScanProcessListener lightupScanProcessListener = this.listener;
        String name = device.getName();
        name.getClass();
        lightupScanProcessListener.onDeviceFound(new LightupDevice(name, device));
    }

    @Override // com.lightup.sdk.device.model.listeners.DeviceScanProcessListener
    public void onScanEnd(boolean cancelled) {
        this.listener.onScanEnd(cancelled);
    }

    @Override // com.lightup.sdk.device.ble.scanner.listeners.X408PairScanProcessListener
    public void onDeviceFound(BLEX408Pair device) {
        device.getClass();
        this.listener.onDeviceFound(new LightupDevice(device.getName(), device));
    }
}
