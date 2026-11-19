package com.google.common.collect;

import defpackage.cj;
import defpackage.md;
import defpackage.o60;
import defpackage.r81;

/* JADX INFO: loaded from: classes2.dex */
abstract class CollectPreconditions {
    public static void a(Object obj, Object obj2) {
        if (obj == null) {
            r81.d(cj.i(obj2, "null key in entry: null="));
        } else {
            if (obj2 != null) {
                return;
            }
            r81.d(o60.n("null value in entry: ", obj, "=null"));
        }
    }

    public static void b(int i2, String str) {
        if (i2 >= 0) {
            return;
        }
        md.n(cj.e(i2, str, " cannot be negative but was: "));
    }
}
