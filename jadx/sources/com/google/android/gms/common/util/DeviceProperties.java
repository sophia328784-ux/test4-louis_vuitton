package com.google.android.gms.common.util;

import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Build;

/* JADX INFO: loaded from: classes2.dex */
public abstract class DeviceProperties {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static Boolean f29337a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static Boolean f29338b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static Boolean f29339c;
    public static Boolean d;

    public static boolean a(Context context) {
        PackageManager packageManager = context.getPackageManager();
        if (f29337a == null) {
            f29337a = Boolean.valueOf(packageManager.hasSystemFeature("android.hardware.type.watch"));
        }
        f29337a.booleanValue();
        if (f29338b == null) {
            f29338b = Boolean.valueOf(context.getPackageManager().hasSystemFeature("cn.google"));
        }
        return f29338b.booleanValue() && Build.VERSION.SDK_INT >= 30;
    }
}
