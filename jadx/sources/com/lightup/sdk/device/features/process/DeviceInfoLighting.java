package com.lightup.sdk.device.features.process;

import com.lightup.sdk.device.messages.MessageInfo;
import defpackage.tr;
import defpackage.v7;
import java.nio.ByteBuffer;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public class DeviceInfoLighting extends DeviceInfo {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f35981a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f35982b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f35983c;

    public DeviceInfoLighting(byte[] bArr) {
        if (bArr.length != MessageInfo.DEVICE_TO_SMARTPHONE_SEND_STATUS.c()) {
            v7.e(", found: ", MessageInfo.DEVICE_TO_SMARTPHONE_DEVICE_INFO.c(), bArr.length, "bad length in input of DeviceInfo, should be: ");
            throw null;
        }
        this.f35981a = bArr[0];
        this.f35982b = bArr[1];
        byte[] bArrCopyOfRange = Arrays.copyOfRange(bArr, 2, 6);
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(4);
        byteBufferAllocate.put(bArrCopyOfRange, 0, 4);
        byteBufferAllocate.flip();
        this.f35983c = byteBufferAllocate.getInt();
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("DeviceInfoLighting{trigger=");
        sb.append(this.f35981a);
        sb.append(", mode=");
        sb.append(this.f35982b);
        sb.append(", crc=");
        return tr.k(sb, this.f35983c, '}');
    }
}
