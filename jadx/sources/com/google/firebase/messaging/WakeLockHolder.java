package com.google.firebase.messaging;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import com.google.android.gms.stats.WakeLock;

/* JADX INFO: loaded from: classes2.dex */
abstract class WakeLockHolder {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Object f35305a = new Object();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static WakeLock f35306b;

    public static void a(Context context) {
        if (f35306b == null) {
            WakeLock wakeLock = new WakeLock(context, 1, "wake:com.google.firebase.iid.WakeLockHolder");
            f35306b = wakeLock;
            synchronized (wakeLock.f32066a) {
                wakeLock.g = true;
            }
        }
    }

    public static void b(Intent intent) {
        synchronized (f35305a) {
            try {
                if (f35306b != null && intent.getBooleanExtra("com.google.firebase.iid.WakeLockHolder.wakefulintent", false)) {
                    intent.putExtra("com.google.firebase.iid.WakeLockHolder.wakefulintent", false);
                    f35306b.c();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static ComponentName c(Context context, Intent intent) {
        synchronized (f35305a) {
            try {
                a(context);
                boolean booleanExtra = intent.getBooleanExtra("com.google.firebase.iid.WakeLockHolder.wakefulintent", false);
                intent.putExtra("com.google.firebase.iid.WakeLockHolder.wakefulintent", true);
                ComponentName componentNameStartService = context.startService(intent);
                if (componentNameStartService == null) {
                    return null;
                }
                if (!booleanExtra) {
                    f35306b.a();
                }
                return componentNameStartService;
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
