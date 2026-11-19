package com.google.android.gms.location;

import com.google.android.gms.common.internal.Preconditions;
import defpackage.ct0;

/* JADX INFO: loaded from: classes2.dex */
public abstract class zzak {
    public static void a(int i2) {
        boolean z = true;
        if (i2 != 100 && i2 != 102 && i2 != 104) {
            if (i2 == 105) {
                i2 = 105;
            } else {
                z = false;
            }
        }
        Preconditions.c(z, "priority %d must be a Priority.PRIORITY_* constant", Integer.valueOf(i2));
    }

    public static String b(int i2) {
        if (i2 == 100) {
            return "HIGH_ACCURACY";
        }
        if (i2 == 102) {
            return "BALANCED_POWER_ACCURACY";
        }
        if (i2 == 104) {
            return "LOW_POWER";
        }
        if (i2 == 105) {
            return "PASSIVE";
        }
        ct0.c();
        return null;
    }
}
