package com.google.android.gms.flags.impl;

import android.content.Context;
import android.content.SharedPreferences;

/* JADX INFO: loaded from: classes2.dex */
public abstract class zzj {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static SharedPreferences f29553a;

    public static SharedPreferences a(Context context) {
        SharedPreferences sharedPreferences;
        synchronized (SharedPreferences.class) {
            try {
                if (f29553a == null) {
                    f29553a = (SharedPreferences) com.google.android.gms.internal.flags.zze.a(new zzk(context));
                }
                sharedPreferences = f29553a;
            } catch (Throwable th) {
                throw th;
            }
        }
        return sharedPreferences;
    }
}
