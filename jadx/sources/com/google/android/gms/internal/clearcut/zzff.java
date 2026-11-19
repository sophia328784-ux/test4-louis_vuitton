package com.google.android.gms.internal.clearcut;

import defpackage.a61;

/* JADX INFO: loaded from: classes2.dex */
abstract class zzff {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final zzfg f29751a;

    static {
        f29751a = (zzfd.f29748f && zzfd.f29747e) ? new zzfj() : new zzfh();
    }

    public static int a(int i2, int i3, byte[] bArr) {
        byte b2 = bArr[i2 - 1];
        int i4 = i3 - i2;
        if (i4 == 0) {
            if (b2 > -12) {
                return -1;
            }
            return b2;
        }
        if (i4 == 1) {
            byte b3 = bArr[i2];
            if (b2 > -12 || b3 > -65) {
                return -1;
            }
            return (b3 << 8) ^ b2;
        }
        if (i4 != 2) {
            a61.h();
            return 0;
        }
        byte b4 = bArr[i2];
        byte b5 = bArr[i2 + 1];
        if (b2 > -12 || b4 > -65 || b5 > -65) {
            return -1;
        }
        return (b5 << 16) ^ ((b4 << 8) ^ b2);
    }
}
