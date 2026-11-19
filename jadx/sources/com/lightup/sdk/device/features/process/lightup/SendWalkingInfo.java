package com.lightup.sdk.device.features.process.lightup;

import com.lightup.sdk.device.devicemanagement.BLEDevice;
import com.lightup.sdk.device.features.commands.CommandFeature;
import com.lightup.sdk.device.messages.MessageInfo;
import com.lightup.sdk.device.model.device.DeviceMessage;
import com.lightup.sdk.device.utils.communication.ByteUtils;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\b\u0010\b\u001a\u00020\tH\u0014R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\n"}, d2 = {"Lcom/lightup/sdk/device/features/process/lightup/SendWalkingInfo;", "Lcom/lightup/sdk/device/features/commands/CommandFeature;", "device", "Lcom/lightup/sdk/device/devicemanagement/BLEDevice;", "intensity", "", "<init>", "(Lcom/lightup/sdk/device/devicemanagement/BLEDevice;I)V", "getMessage", "Lcom/lightup/sdk/device/model/device/DeviceMessage;", "library"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class SendWalkingInfo extends CommandFeature {
    private final int intensity;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SendWalkingInfo(BLEDevice bLEDevice, int i2) {
        super(bLEDevice);
        bLEDevice.getClass();
        this.intensity = i2;
    }

    @Override // com.lightup.sdk.device.features.commands.CommandFeature
    public DeviceMessage getMessage() {
        int i2 = this.intensity;
        MessageInfo messageInfo = MessageInfo.SMARTPHONE_AND_DEVICE_WALKING_INFO;
        ByteUtils.ByteBuilder byteBuilder = new ByteUtils.ByteBuilder(messageInfo.d());
        byteBuilder.c(messageInfo.b(), 1);
        byteBuilder.c(i2, 1);
        return new DeviceMessage(byteBuilder.f36034a);
    }
}
