package com.android.wiimu.utils;

import org.bouncycastle.crypto.hpke.HPKE;

/* JADX INFO: loaded from: classes5.dex */
public class UnsignedUtils {
    public static int getUnsignedByte(byte b2) {
        return b2 & 255;
    }

    public static int getUnsignedChar(byte b2) {
        return b2 & 255;
    }

    public static long getUnsignedInt(int i2) {
        return i2;
    }

    public static long getUnsignedLong(int i2) {
        return i2;
    }

    public static int getUnsignedShort(short s) {
        return s & HPKE.aead_EXPORT_ONLY;
    }
}
