package com.google.common.collect;

import defpackage.pq0;
import defpackage.r81;

/* JADX INFO: loaded from: classes2.dex */
public abstract class ObjectArrays {
    public static void a(int i2, Object[] objArr) {
        for (int i3 = 0; i3 < i2; i3++) {
            if (objArr[i3] == null) {
                r81.d(pq0.k(i3, "at index "));
                return;
            }
        }
    }
}
