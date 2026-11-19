package com.google.firebase.crashlytics.internal.common;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.os.Bundle;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.firebase.FirebaseApp;
import com.google.firebase.crashlytics.internal.Logger;

/* JADX INFO: loaded from: classes2.dex */
public class DataCollectionArbiter {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final SharedPreferences f34553a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final FirebaseApp f34554b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Object f34555c;
    public TaskCompletionSource d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f34556e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Boolean f34557f;
    public final TaskCompletionSource g;

    public DataCollectionArbiter(FirebaseApp firebaseApp) {
        Boolean boolValueOf;
        ApplicationInfo applicationInfo;
        Bundle bundle;
        Object obj = new Object();
        this.f34555c = obj;
        this.d = new TaskCompletionSource();
        this.f34556e = false;
        this.g = new TaskCompletionSource();
        firebaseApp.a();
        Context context = firebaseApp.f34330a;
        this.f34554b = firebaseApp;
        SharedPreferences sharedPreferences = context.getSharedPreferences("com.google.firebase.crashlytics", 0);
        this.f34553a = sharedPreferences;
        Boolean boolValueOf2 = sharedPreferences.contains("firebase_crashlytics_collection_enabled") ? Boolean.valueOf(sharedPreferences.getBoolean("firebase_crashlytics_collection_enabled", true)) : null;
        if (boolValueOf2 == null) {
            try {
                PackageManager packageManager = context.getPackageManager();
                boolValueOf = (packageManager == null || (applicationInfo = packageManager.getApplicationInfo(context.getPackageName(), 128)) == null || (bundle = applicationInfo.metaData) == null || !bundle.containsKey("firebase_crashlytics_collection_enabled")) ? null : Boolean.valueOf(applicationInfo.metaData.getBoolean("firebase_crashlytics_collection_enabled"));
            } catch (PackageManager.NameNotFoundException unused) {
                Logger.f34483b.b();
            }
            boolValueOf2 = boolValueOf == null ? null : Boolean.valueOf(Boolean.TRUE.equals(boolValueOf));
        }
        this.f34557f = boolValueOf2;
        synchronized (obj) {
            try {
                if (a()) {
                    this.d.d(null);
                    this.f34556e = true;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final synchronized boolean a() {
        boolean zI;
        Boolean bool = this.f34557f;
        if (bool != null) {
            zI = bool.booleanValue();
        } else {
            try {
                zI = this.f34554b.i();
            } catch (IllegalStateException unused) {
                zI = false;
            }
        }
        Logger.f34483b.a(3);
        return zI;
    }
}
