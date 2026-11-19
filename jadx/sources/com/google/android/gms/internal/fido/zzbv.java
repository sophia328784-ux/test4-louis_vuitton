package com.google.android.gms.internal.fido;

import defpackage.fc;
import defpackage.r81;

/* JADX INFO: loaded from: classes2.dex */
abstract class zzbv {
    public static void a(Object obj, Object obj2) {
        if (obj == null) {
            r81.d("null key in entry: null=".concat(String.valueOf(obj2)));
        } else {
            if (obj2 != null) {
                return;
            }
            r81.d(fc.h("null value in entry: ", obj.toString(), "=null"));
        }
    }
}
