package com.google.android.gms.internal.vision;

/* JADX INFO: loaded from: classes2.dex */
abstract class zzmf {
    public static void a(byte b2, byte b3, byte b4, byte b5, char[] cArr, int i2) throws zzjk {
        if (!d(b3)) {
            if ((((b3 + 112) + (b2 << 28)) >> 30) == 0 && !d(b4) && !d(b5)) {
                int i3 = ((b2 & 7) << 18) | ((b3 & 63) << 12) | ((b4 & 63) << 6) | (b5 & 63);
                cArr[i2] = (char) ((i3 >>> 10) + 55232);
                cArr[i2 + 1] = (char) ((i3 & 1023) + 56320);
                return;
            }
        }
        throw zzjk.e();
    }

    public static void b(byte b2, byte b3, byte b4, char[] cArr, int i2) throws zzjk {
        if (d(b3) || ((b2 == -32 && b3 < -96) || ((b2 == -19 && b3 >= -96) || d(b4)))) {
            throw zzjk.e();
        }
        cArr[i2] = (char) (((b2 & 15) << 12) | ((b3 & 63) << 6) | (b4 & 63));
    }

    public static void c(byte b2, byte b3, char[] cArr, int i2) throws zzjk {
        if (b2 < -62 || d(b3)) {
            throw zzjk.e();
        }
        cArr[i2] = (char) (((b2 & 31) << 6) | (b3 & 63));
    }

    public static boolean d(byte b2) {
        return b2 > -65;
    }
}
