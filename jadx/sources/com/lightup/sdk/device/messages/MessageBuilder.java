package com.lightup.sdk.device.messages;

import com.batch.android.x0.h;
import com.lightup.sdk.device.model.device.DeviceMessage;
import com.lightup.sdk.device.utils.communication.ByteUtils;

/* JADX INFO: loaded from: classes2.dex */
public class MessageBuilder extends GenericMessageBuilder {
    public static DeviceMessage a() {
        MessageInfo messageInfo = MessageInfo.SMARTPHONE_TO_DEVICE_GO_TO_OFF;
        byte[] bArr = new byte[messageInfo.d()];
        bArr[0] = messageInfo.b();
        bArr[1] = h.a.I;
        bArr[2] = -83;
        bArr[3] = h.a.o;
        bArr[4] = -2;
        return new DeviceMessage(bArr);
    }

    public static DeviceMessage b(int i2, int i3, byte[] bArr) {
        MessageInfo messageInfo = MessageInfo.SMARTPHONE_TO_DEVICE_PROGRAM_UPDATE_PAGE_DATA;
        ByteUtils.ByteBuilder byteBuilder = new ByteUtils.ByteBuilder(i2 + 3);
        byteBuilder.a(messageInfo.b());
        byteBuilder.c(i3, 2);
        byteBuilder.b(bArr);
        return new DeviceMessage(byteBuilder.f36034a);
    }

    public static DeviceMessage c(int i2, boolean z) {
        MessageInfo messageInfo = MessageInfo.SMARTPHONE_TO_DEVICE_TRIGGER_ANIMATION;
        byte[] bArr = new byte[messageInfo.d()];
        bArr[0] = messageInfo.b();
        bArr[1] = new byte[]{(byte) ((i2 >> 8) & 255), (byte) (i2 & 255)}[1];
        bArr[2] = (byte) (z ? 1 : 2);
        return new DeviceMessage(bArr);
    }

    public static DeviceMessage d(byte[] bArr, byte[] bArr2) {
        MessageInfo messageInfo = MessageInfo.SMARTPHONE_TO_DEVICE_UNLOCK;
        byte[] bArr3 = new byte[messageInfo.d()];
        bArr3[0] = messageInfo.b();
        System.arraycopy(bArr, 0, bArr3, 1, 16);
        System.arraycopy(bArr2, 0, bArr3, 17, 2);
        return new DeviceMessage(bArr3);
    }
}
