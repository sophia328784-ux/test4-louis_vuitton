package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import defpackage.fc;
import defpackage.md;
import defpackage.n00;

/* JADX INFO: loaded from: classes2.dex */
public abstract class zzjh {
    public static void a(Bundle bundle, Object obj) {
        if (obj instanceof Double) {
            bundle.putDouble("value", ((Double) obj).doubleValue());
        } else if (obj instanceof Long) {
            bundle.putLong("value", ((Long) obj).longValue());
        } else {
            bundle.putString("value", obj.toString());
        }
    }

    public static Object b(Bundle bundle, String str, Class cls, Object obj) {
        Object obj2 = bundle.get(str);
        if (obj2 == null) {
            return obj;
        }
        if (cls.isAssignableFrom(obj2.getClass())) {
            return obj2;
        }
        md.k(n00.r(obj2.getClass().getCanonicalName(), "]", fc.s("Invalid conditional user property field type. '", str, "' expected [", cls.getCanonicalName(), "] but was [")));
        return null;
    }
}
