package com.linkplay.passthrough;

import com.batch.android.q0.b;

/* JADX INFO: loaded from: classes2.dex */
public class ConvertUtil {
    public static int convertByteArray2Int(byte[] bArr, int i2) {
        return (bArr[i2] & 255) + ((bArr[i2 + 1] << 8) & 65280) + ((bArr[i2 + 2] << 16) & 16711680) + ((bArr[i2 + 3] << 24) & b.v);
    }

    public static void convertInt2ByteArray(byte[] bArr, int i2, int i3) {
        bArr[i2] = (byte) (i3 & 255);
        bArr[i2 + 1] = (byte) ((65280 & i3) >> 8);
        bArr[i2 + 2] = (byte) ((16711680 & i3) >> 16);
        bArr[i2 + 3] = (byte) ((i3 & b.v) >> 24);
    }

    public static long getUnsignedInt(int i2) {
        return i2;
    }
}
