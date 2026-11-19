package com.lightup.sdk.device.model.device;

import com.lightup.sdk.device.properties.Properties;
import com.lightup.sdk.device.utils.communication.ByteUtils;
import com.lightup.sdk.device.utils.communication.Scheduling;

/* JADX INFO: loaded from: classes2.dex */
public class DeviceMessage {
    public final byte[] data;
    private final int epochTimestampPosition;
    private final int refTimestampPosition;

    public DeviceMessage(byte[] bArr) {
        this.data = bArr;
        this.refTimestampPosition = -1;
        this.epochTimestampPosition = -1;
    }

    public static byte[] getProcessedData(DeviceMessage deviceMessage) {
        byte[] bArrD;
        if (deviceMessage.epochTimestampPosition != -1) {
            if (deviceMessage.refTimestampPosition != -1) {
                System.arraycopy(ByteUtils.d(Scheduling.a()), 0, deviceMessage.data, deviceMessage.refTimestampPosition, 4);
            }
            boolean z = Scheduling.f36037b;
            synchronized (Scheduling.class) {
                bArrD = !Scheduling.f36037b ? Properties.f36026b : ByteUtils.d((int) ((System.currentTimeMillis() - Scheduling.f36038c) / 1000));
            }
            System.arraycopy(bArrD, 0, deviceMessage.data, deviceMessage.epochTimestampPosition, 4);
        }
        return deviceMessage.data;
    }

    public DeviceMessage(byte[] bArr, int i2, int i3) {
        this.data = bArr;
        this.refTimestampPosition = i2;
        this.epochTimestampPosition = i3;
    }

    public DeviceMessage(byte[] bArr, int i2) {
        this.data = bArr;
        this.refTimestampPosition = -1;
        this.epochTimestampPosition = i2;
    }
}
