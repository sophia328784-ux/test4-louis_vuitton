package com.lightup.sdk.device.devicemanagement;

import android.content.Context;
import com.lightup.sdk.device.SpecificProperties;
import com.lightup.sdk.device.ble.permissions.PermissionsManager;
import com.lightup.sdk.device.enums.CallStatus;
import com.lightup.sdk.device.features.process.listener.ActionListener;
import com.lightup.sdk.device.model.WalkingModeConfig;
import com.lightup.sdk.device.model.device.DeviceId;
import com.lightup.sdk.device.utils.networktime.InternetTimeReader;
import kotlin.Metadata;
import org.squirrelframework.foundation.fsm.MvelScriptManager;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0012\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0007\u0018\u00002\u00020\u0001B!\b\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0004\b\b\u0010\tJ(\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0011\u001a\u00020\u0012H\u0014J\b\u0010\u0013\u001a\u00020\u0014H\u0016J\u0018\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u001aH\u0016¨\u0006\u001b"}, d2 = {"Lcom/lightup/sdk/device/devicemanagement/BLETrunkManager;", "Lcom/lightup/sdk/device/devicemanagement/BLELightupManager;", MvelScriptManager.VAR_CONTEXT, "Landroid/content/Context;", "permissionsManager", "Lcom/lightup/sdk/device/ble/permissions/PermissionsManager;", "internetTimeReader", "Lcom/lightup/sdk/device/utils/networktime/InternetTimeReader;", "<init>", "(Landroid/content/Context;Lcom/lightup/sdk/device/ble/permissions/PermissionsManager;Lcom/lightup/sdk/device/utils/networktime/InternetTimeReader;)V", "createBLEDevice", "Lcom/lightup/sdk/device/devicemanagement/BLELightup;", "deviceId", "Lcom/lightup/sdk/device/model/device/DeviceId;", "name", "", "mac", "scanRecord", "", "defineScanFilterPattern", "", "setWalkingModeConfig", "Lcom/lightup/sdk/device/enums/CallStatus;", "config", "Lcom/lightup/sdk/device/model/WalkingModeConfig;", "listener", "Lcom/lightup/sdk/device/features/process/listener/ActionListener;", "library"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class BLETrunkManager extends BLELightupManager {
    /* JADX WARN: Illegal instructions before constructor call */
    public BLETrunkManager(Context context, PermissionsManager permissionsManager, InternetTimeReader internetTimeReader) {
        context.getClass();
        permissionsManager.getClass();
        internetTimeReader.getClass();
        byte[] bArr = SpecificProperties.PRODUCT_ID_TRUNK;
        bArr.getClass();
        super(context, permissionsManager, internetTimeReader, "_trunk", bArr);
    }

    @Override // com.lightup.sdk.device.devicemanagement.BLEDevicesManager
    public BLELightup createBLEDevice(DeviceId deviceId, String name, String mac, byte[] scanRecord) {
        deviceId.getClass();
        name.getClass();
        mac.getClass();
        scanRecord.getClass();
        String serialNumber = deviceId.getSerialNumber();
        serialNumber.getClass();
        return new BLETrunk(deviceId, "Trunk_".concat(serialNumber.substring(0, 4)), mac, this);
    }

    @Override // com.lightup.sdk.device.devicemanagement.BLEDevicesManager
    public void defineScanFilterPattern() {
        setPatternId(SpecificProperties.PRODUCT_ID_TRUNK);
    }

    @Override // com.lightup.sdk.device.devicemanagement.BLELightupManager
    public CallStatus setWalkingModeConfig(WalkingModeConfig config, ActionListener listener) {
        config.getClass();
        listener.getClass();
        return CallStatus.NOT_AVAILABLE;
    }
}
