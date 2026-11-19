package com.lightup.sdk.device.devicemanagement;

import com.lightup.sdk.device.model.device.DeviceId;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0017\u0018\u00002\u00020\u0001B/\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\t¢\u0006\u0004\b\n\u0010\u000bJ\b\u0010\u000e\u001a\u00020\u0005H\u0016R\u0011\u0010\u0007\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\r¨\u0006\u000f"}, d2 = {"Lcom/lightup/sdk/device/devicemanagement/BLEX408;", "Lcom/lightup/sdk/device/devicemanagement/BLELightup;", "deviceId", "Lcom/lightup/sdk/device/model/device/DeviceId;", "name", "", "mac", "twinSerialNumber", "bleX408Manager", "Lcom/lightup/sdk/device/devicemanagement/BLEX408Manager;", "<init>", "(Lcom/lightup/sdk/device/model/device/DeviceId;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/lightup/sdk/device/devicemanagement/BLEX408Manager;)V", "getTwinSerialNumber", "()Ljava/lang/String;", "getName", "library"}, k = 1, mv = {2, 3, 0}, xi = 48)
public class BLEX408 extends BLELightup {
    private final String twinSerialNumber;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BLEX408(DeviceId deviceId, String str, String str2, String str3, BLEX408Manager bLEX408Manager) {
        super(deviceId, str, str2, bLEX408Manager);
        deviceId.getClass();
        str.getClass();
        str2.getClass();
        str3.getClass();
        bLEX408Manager.getClass();
        this.twinSerialNumber = str3;
    }

    @Override // com.lightup.sdk.device.devicemanagement.BLEDevice
    public String getName() {
        String str = this.name;
        str.getClass();
        return str;
    }

    public final String getTwinSerialNumber() {
        return this.twinSerialNumber;
    }
}
