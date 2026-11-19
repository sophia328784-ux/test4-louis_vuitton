package org.teleal.common.util;

/* JADX INFO: loaded from: classes5.dex */
public class ByteArray {
    public static byte[] a(Byte[] bArr) {
        byte[] bArr2 = new byte[bArr.length];
        for (int i2 = 0; i2 < bArr.length; i2++) {
            bArr2[i2] = bArr[i2].byteValue();
        }
        return bArr2;
    }
}
