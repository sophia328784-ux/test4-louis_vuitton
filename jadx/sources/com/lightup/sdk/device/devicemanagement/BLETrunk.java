package com.lightup.sdk.device.devicemanagement;

import com.lightup.sdk.device.model.device.DeviceId;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B'\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\b¢\u0006\u0004\b\t\u0010\nJ\b\u0010\u000b\u001a\u00020\u0005H\u0016¨\u0006\f"}, d2 = {"Lcom/lightup/sdk/device/devicemanagement/BLETrunk;", "Lcom/lightup/sdk/device/devicemanagement/BLELightup;", "deviceId", "Lcom/lightup/sdk/device/model/device/DeviceId;", "name", "", "mac", "manager", "Lcom/lightup/sdk/device/devicemanagement/BLELightupManager;", "<init>", "(Lcom/lightup/sdk/device/model/device/DeviceId;Ljava/lang/String;Ljava/lang/String;Lcom/lightup/sdk/device/devicemanagement/BLELightupManager;)V", "getName", "library"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class BLETrunk extends BLELightup {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BLETrunk(DeviceId deviceId, String str, String str2, BLELightupManager bLELightupManager) {
        super(deviceId, str, str2, bLELightupManager);
        deviceId.getClass();
        str.getClass();
        str2.getClass();
        bLELightupManager.getClass();
    }

    @Override // com.lightup.sdk.device.devicemanagement.BLEDevice
    public String getName() {
        String str = this.name;
        str.getClass();
        return str;
    }
}
