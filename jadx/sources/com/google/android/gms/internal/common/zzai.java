package com.google.android.gms.internal.common;

import defpackage.d21;
import defpackage.r81;

/* JADX INFO: loaded from: classes2.dex */
public abstract class zzai {
    public static void a(int i2, Object[] objArr) {
        for (int i3 = 0; i3 < i2; i3++) {
            if (objArr[i3] == null) {
                r81.d(d21.f(i3, "at index ", new StringBuilder(String.valueOf(i3).length() + 9)));
                return;
            }
        }
    }
}
