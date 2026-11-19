package com.google.firebase.crashlytics.internal;

import android.util.Log;

/* JADX INFO: loaded from: classes2.dex */
public class Logger {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Logger f34483b = new Logger("FirebaseCrashlytics");

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f34484a;

    public Logger(String str) {
        this.f34484a = str;
    }

    public final void a(int i2) {
        if (4 > i2) {
            Log.isLoggable(this.f34484a, i2);
        }
    }

    public final void b() {
        a(6);
    }
}
