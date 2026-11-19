package com.lightup.sdk.device.model.device;

import com.lightup.sdk.device.utils.communication.ByteUtils;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public class DeviceId {
    private final byte[] additional;
    private final byte[] pairingId;
    private final byte[] patternId;
    private final byte[] serialNumber;

    public static class WrongDeviceIdFormat extends RuntimeException {
    }

    public DeviceId(String str) {
        if (str.length() != 26) {
            throw new WrongDeviceIdFormat();
        }
        this.serialNumber = ByteUtils.c(str.substring(0, 16));
        this.patternId = ByteUtils.c(str.substring(16, 22));
        this.additional = ByteUtils.c(str.substring(22));
        this.pairingId = new byte[0];
    }

    public boolean equals(Object obj) {
        if (obj != null && DeviceId.class.isAssignableFrom(obj.getClass())) {
            return Arrays.equals(this.serialNumber, ((DeviceId) obj).serialNumber);
        }
        return false;
    }

    public byte[] getAdditional() {
        return this.additional;
    }

    public byte getHardwareVersion() {
        return this.patternId[2];
    }

    public byte[] getPairingId() {
        return this.pairingId;
    }

    public byte[] getProductId() {
        return Arrays.copyOf(this.patternId, 2);
    }

    public String getSerialNumber() {
        byte[] bArr = this.serialNumber;
        return ByteUtils.g(bArr.length, bArr, false);
    }

    public String getStringProductId() {
        byte[] productId = getProductId();
        return ByteUtils.g(productId.length, productId, false);
    }

    public int hashCode() {
        return Arrays.hashCode(this.serialNumber);
    }

    public byte[] toByteArray() {
        return this.serialNumber;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        byte[] bArr = this.serialNumber;
        sb.append(ByteUtils.g(bArr.length, bArr, false));
        byte[] bArr2 = this.patternId;
        sb.append(ByteUtils.g(bArr2.length, bArr2, false));
        byte[] bArr3 = this.additional;
        sb.append(ByteUtils.g(bArr3.length, bArr3, false));
        return sb.toString();
    }

    public DeviceId(byte[] bArr, byte[] bArr2, byte[] bArr3) {
        if (bArr != null) {
            if (bArr2 != null && bArr2.length == 3) {
                this.serialNumber = bArr;
                this.patternId = bArr2;
                this.pairingId = new byte[0];
                this.additional = bArr3;
                return;
            }
            throw new WrongDeviceIdFormat();
        }
        throw new WrongDeviceIdFormat();
    }

    public DeviceId(byte[] bArr, byte[] bArr2, byte[] bArr3, byte[] bArr4) {
        if (bArr != null) {
            if (bArr2 != null && bArr2.length == 3) {
                this.serialNumber = bArr;
                this.patternId = bArr2;
                this.additional = bArr3;
                this.pairingId = bArr4;
                return;
            }
            throw new WrongDeviceIdFormat();
        }
        throw new WrongDeviceIdFormat();
    }
}
