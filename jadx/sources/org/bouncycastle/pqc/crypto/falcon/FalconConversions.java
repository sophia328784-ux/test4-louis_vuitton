package org.bouncycastle.pqc.crypto.falcon;

/* JADX INFO: loaded from: classes5.dex */
class FalconConversions {
    private int toUnsignedInt(byte b2) {
        return b2 & 255;
    }

    private long toUnsignedLong(byte b2) {
        return ((long) b2) & 255;
    }

    public int bytes_to_int(byte[] bArr, int i2) {
        return (toUnsignedInt(bArr[i2 + 3]) << 24) | toUnsignedInt(bArr[i2]) | (toUnsignedInt(bArr[i2 + 1]) << 8) | (toUnsignedInt(bArr[i2 + 2]) << 16);
    }

    public int[] bytes_to_int_array(byte[] bArr, int i2, int i3) {
        int[] iArr = new int[i3];
        for (int i4 = 0; i4 < i3; i4++) {
            iArr[i4] = bytes_to_int(bArr, (i4 * 4) + i2);
        }
        return iArr;
    }

    public long bytes_to_long(byte[] bArr, int i2) {
        return (toUnsignedLong(bArr[i2 + 7]) << 56) | toUnsignedLong(bArr[i2]) | (toUnsignedLong(bArr[i2 + 1]) << 8) | (toUnsignedLong(bArr[i2 + 2]) << 16) | (toUnsignedLong(bArr[i2 + 3]) << 24) | (toUnsignedLong(bArr[i2 + 4]) << 32) | (toUnsignedLong(bArr[i2 + 5]) << 40) | (toUnsignedLong(bArr[i2 + 6]) << 48);
    }

    public byte[] int_to_bytes(int i2) {
        return new byte[]{(byte) i2, (byte) (i2 >>> 8), (byte) (i2 >>> 16), (byte) (i2 >>> 24)};
    }

    public byte[] long_to_bytes(long j2) {
        return new byte[]{(byte) j2, (byte) (j2 >>> 8), (byte) (j2 >>> 16), (byte) (j2 >>> 24), (byte) (j2 >>> 32), (byte) (j2 >>> 40), (byte) (j2 >>> 48), (byte) (j2 >>> 56)};
    }
}
