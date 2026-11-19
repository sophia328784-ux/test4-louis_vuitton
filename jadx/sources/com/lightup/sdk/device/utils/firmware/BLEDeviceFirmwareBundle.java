package com.lightup.sdk.device.utils.firmware;

import com.lightup.sdk.device.utils.communication.ByteUtils;
import java.util.zip.CRC32;

/* JADX INFO: loaded from: classes2.dex */
public class BLEDeviceFirmwareBundle {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f36039a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final byte[] f36040b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f36041c;
    public final byte[] d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final byte[] f36042e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int f36043f;
    public final byte[] g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final byte[] f36044h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final int f36045i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final byte[] f36046j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final byte[] f36047k;
    public final int l;

    public BLEDeviceFirmwareBundle(String str, byte[] bArr, int i2, byte[] bArr2, int i3, byte[] bArr3) {
        this.f36039a = str;
        this.f36040b = bArr;
        this.f36041c = i2;
        this.f36042e = bArr2;
        this.f36043f = i3;
        this.f36044h = bArr3;
        this.f36045i = 0;
        this.f36047k = null;
        this.l = 0;
        CRC32 crc32 = new CRC32();
        crc32.update(bArr, 0, bArr.length);
        this.d = ByteUtils.e((int) crc32.getValue(), 4);
        CRC32 crc33 = new CRC32();
        crc33.update(bArr2, 0, bArr2.length);
        this.g = ByteUtils.e((int) crc33.getValue(), 4);
        CRC32 crc34 = new CRC32();
        crc34.update(bArr3, 0, bArr3.length);
        this.f36046j = ByteUtils.e((int) crc34.getValue(), 4);
    }

    public BLEDeviceFirmwareBundle(String str, byte[] bArr, int i2, byte[] bArr2, int i3, byte[] bArr3, int i4) {
        this.f36039a = str;
        this.f36040b = bArr;
        this.f36041c = i2;
        this.f36044h = bArr2;
        this.f36045i = i3;
        this.f36047k = bArr3;
        this.l = i4;
        this.f36042e = null;
        this.f36043f = 0;
        this.g = null;
        CRC32 crc32 = new CRC32();
        crc32.update(bArr, 0, bArr.length);
        this.d = ByteUtils.e((int) crc32.getValue(), 4);
        CRC32 crc33 = new CRC32();
        crc33.update(bArr2, 0, bArr2.length);
        this.f36046j = ByteUtils.e((int) crc33.getValue(), 4);
    }
}
