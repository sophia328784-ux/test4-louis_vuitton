package com.google.android.gms.location;

import defpackage.ct0;

/* JADX INFO: loaded from: classes2.dex */
public abstract class zzp {
    public static String a(int i2) {
        if (i2 == 0) {
            return "GRANULARITY_PERMISSION_LEVEL";
        }
        if (i2 == 1) {
            return "GRANULARITY_COARSE";
        }
        if (i2 == 2) {
            return "GRANULARITY_FINE";
        }
        ct0.c();
        return null;
    }
}
