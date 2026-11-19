package com.lightup.sdk.device.model.device;

/* JADX INFO: loaded from: classes2.dex */
public class BLEDeviceFirmwareChecksums {
    public final byte[] bootloaderChecksum;
    public final byte[] firmwareChecksum;

    public BLEDeviceFirmwareChecksums(byte[] bArr, byte[] bArr2) {
        this.firmwareChecksum = bArr;
        this.bootloaderChecksum = bArr2;
    }
}
