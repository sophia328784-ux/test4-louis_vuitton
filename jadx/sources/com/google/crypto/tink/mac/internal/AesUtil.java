package com.google.crypto.tink.mac.internal;

import defpackage.md;

/* JADX INFO: loaded from: classes2.dex */
public abstract class AesUtil {
    public static byte[] a(byte[] bArr) {
        if (bArr.length != 16) {
            md.n("value must be a block.");
            return null;
        }
        byte[] bArr2 = new byte[16];
        for (int i2 = 0; i2 < 16; i2++) {
            byte b2 = (byte) ((bArr[i2] << 1) & 254);
            bArr2[i2] = b2;
            if (i2 < 15) {
                bArr2[i2] = (byte) (((byte) ((bArr[i2 + 1] >> 7) & 1)) | b2);
            }
        }
        bArr2[15] = (byte) (((byte) ((bArr[0] >> 7) & 135)) ^ bArr2[15]);
        return bArr2;
    }
}
