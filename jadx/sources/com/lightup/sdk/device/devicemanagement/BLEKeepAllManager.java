package com.lightup.sdk.device.devicemanagement;

import android.content.Context;
import com.lightup.sdk.device.SpecificProperties;
import com.lightup.sdk.device.ble.permissions.PermissionsManager;
import com.lightup.sdk.device.enums.DeviceMode;
import com.lightup.sdk.device.model.device.DeviceId;
import com.lightup.sdk.device.utils.networktime.InternetTimeReader;
import kotlin.Metadata;
import kotlin.collections.ArraysKt;
import org.squirrelframework.foundation.fsm.MvelScriptManager;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0012\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0000\u0018\u00002\u00020\u0001B!\b\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0004\b\b\u0010\tJ(\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u000b2\u0006\u0010\u0012\u001a\u00020\u000b2\u0006\u0010\u0013\u001a\u00020\u0014H\u0014J\b\u0010\u0015\u001a\u00020\u0016H\u0016J\u0010\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u001aH\u0016R\u0016\u0010\n\u001a\n \f*\u0004\u0018\u00010\u000b0\u000bX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u001b"}, d2 = {"Lcom/lightup/sdk/device/devicemanagement/BLEKeepAllManager;", "Lcom/lightup/sdk/device/devicemanagement/BLELightupManager;", MvelScriptManager.VAR_CONTEXT, "Landroid/content/Context;", "permissionsManager", "Lcom/lightup/sdk/device/ble/permissions/PermissionsManager;", "internetTimeReader", "Lcom/lightup/sdk/device/utils/networktime/InternetTimeReader;", "<init>", "(Landroid/content/Context;Lcom/lightup/sdk/device/ble/permissions/PermissionsManager;Lcom/lightup/sdk/device/utils/networktime/InternetTimeReader;)V", "TAG", "", "kotlin.jvm.PlatformType", "createBLEDevice", "Lcom/lightup/sdk/device/devicemanagement/BLEKeepAll;", "deviceId", "Lcom/lightup/sdk/device/model/device/DeviceId;", "name", "mac", "scanRecord", "", "defineScanFilterPattern", "", "isModeValid", "", "mode", "Lcom/lightup/sdk/device/enums/DeviceMode;", "library"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class BLEKeepAllManager extends BLELightupManager {
    private final String TAG;

    /* JADX WARN: Illegal instructions before constructor call */
    public BLEKeepAllManager(Context context, PermissionsManager permissionsManager, InternetTimeReader internetTimeReader) {
        context.getClass();
        permissionsManager.getClass();
        internetTimeReader.getClass();
        byte[] bArr = SpecificProperties.PRODUCT_ID_KEEP_ALL;
        bArr.getClass();
        super(context, permissionsManager, internetTimeReader, "_keepall", bArr);
        this.TAG = "BLEKeepAllManager";
    }

    @Override // com.lightup.sdk.device.devicemanagement.BLELightupManager, com.lightup.sdk.device.devicemanagement.BLEDevicesManager
    public BLEKeepAll createBLEDevice(DeviceId deviceId, String name, String mac, byte[] scanRecord) {
        deviceId.getClass();
        name.getClass();
        mac.getClass();
        scanRecord.getClass();
        String serialNumber = deviceId.getSerialNumber();
        serialNumber.getClass();
        return new BLEKeepAll(deviceId, "KeepAll_".concat(serialNumber.substring(0, 4)), mac, this);
    }

    @Override // com.lightup.sdk.device.devicemanagement.BLEDevicesManager
    public void defineScanFilterPattern() {
        setPatternId(SpecificProperties.PRODUCT_ID_KEEP_ALL);
    }

    @Override // com.lightup.sdk.device.devicemanagement.BLELightupManager
    public boolean isModeValid(DeviceMode mode) {
        mode.getClass();
        DeviceMode[] deviceModeArr = SpecificProperties.KEEP_ALL_AVAILABLE_MODE;
        deviceModeArr.getClass();
        return ArraysKt.f(mode, deviceModeArr);
    }
}
