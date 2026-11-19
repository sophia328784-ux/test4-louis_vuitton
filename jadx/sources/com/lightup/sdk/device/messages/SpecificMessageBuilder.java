package com.lightup.sdk.device.messages;

import com.lightup.sdk.device.model.WalkingModeConfig;
import com.lightup.sdk.device.model.device.DeviceMessage;
import com.lightup.sdk.device.utils.communication.ByteUtils;

/* JADX INFO: loaded from: classes2.dex */
public class SpecificMessageBuilder {
    public static DeviceMessage buildWalkingModeConfig(WalkingModeConfig walkingModeConfig) {
        MessageInfo messageInfo = MessageInfo.SMARTPHONE_TO_DEVICE_SET_WALKING_MODE;
        ByteUtils.ByteBuilder byteBuilder = new ByteUtils.ByteBuilder(messageInfo.d());
        byteBuilder.c(messageInfo.b(), 1);
        byteBuilder.b(walkingModeConfig.getMessageData());
        return new DeviceMessage(byteBuilder.f36034a);
    }
}
