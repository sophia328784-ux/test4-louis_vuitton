package com.google.android.gms.common.wrappers;

import android.content.Context;

/* JADX INFO: loaded from: classes2.dex */
public class InstantApps {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static Context f29354a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static Boolean f29355b;

    public static synchronized boolean a(Context context) {
        Boolean bool;
        Context applicationContext = context.getApplicationContext();
        Context context2 = f29354a;
        if (context2 != null && (bool = f29355b) != null && context2 == applicationContext) {
            return bool.booleanValue();
        }
        f29355b = null;
        Boolean boolValueOf = Boolean.valueOf(applicationContext.getPackageManager().isInstantApp());
        f29355b = boolValueOf;
        f29354a = applicationContext;
        return boolValueOf.booleanValue();
    }
}
