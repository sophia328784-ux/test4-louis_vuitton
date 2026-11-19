package com.google.firebase.crashlytics.internal.common;

import com.google.firebase.crashlytics.internal.CrashlyticsNativeComponent;
import com.google.firebase.crashlytics.internal.Logger;
import com.google.firebase.crashlytics.internal.settings.SettingsProvider;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes2.dex */
class CrashlyticsUncaughtExceptionHandler implements Thread.UncaughtExceptionHandler {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final CrashListener f34549a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final SettingsProvider f34550b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Thread.UncaughtExceptionHandler f34551c;
    public final CrashlyticsNativeComponent d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final AtomicBoolean f34552e = new AtomicBoolean(false);

    public interface CrashListener {
        void a(SettingsProvider settingsProvider, Thread thread, Throwable th);
    }

    public CrashlyticsUncaughtExceptionHandler(CrashListener crashListener, SettingsProvider settingsProvider, Thread.UncaughtExceptionHandler uncaughtExceptionHandler, CrashlyticsNativeComponent crashlyticsNativeComponent) {
        this.f34549a = crashListener;
        this.f34550b = settingsProvider;
        this.f34551c = uncaughtExceptionHandler;
        this.d = crashlyticsNativeComponent;
    }

    public final boolean a(Thread thread, Throwable th) {
        if (thread == null) {
            Logger.f34483b.b();
            return false;
        }
        if (th == null) {
            Logger.f34483b.b();
            return false;
        }
        if (!this.d.b()) {
            return true;
        }
        Logger.f34483b.a(3);
        return false;
    }

    @Override // java.lang.Thread.UncaughtExceptionHandler
    public final void uncaughtException(Thread thread, Throwable th) {
        Thread.UncaughtExceptionHandler uncaughtExceptionHandler = this.f34551c;
        AtomicBoolean atomicBoolean = this.f34552e;
        atomicBoolean.set(true);
        try {
            try {
                if (a(thread, th)) {
                    this.f34549a.a(this.f34550b, thread, th);
                } else {
                    Logger.f34483b.a(3);
                }
                if (uncaughtExceptionHandler != null) {
                    Logger.f34483b.a(3);
                    uncaughtExceptionHandler.uncaughtException(thread, th);
                } else {
                    Logger.f34483b.a(3);
                    System.exit(1);
                }
                atomicBoolean.set(false);
            } catch (Exception unused) {
                Logger logger = Logger.f34483b;
                logger.b();
                if (uncaughtExceptionHandler != null) {
                    logger.a(3);
                    uncaughtExceptionHandler.uncaughtException(thread, th);
                } else {
                    logger.a(3);
                    System.exit(1);
                }
                atomicBoolean.set(false);
            }
        } catch (Throwable th2) {
            if (uncaughtExceptionHandler != null) {
                Logger.f34483b.a(3);
                uncaughtExceptionHandler.uncaughtException(thread, th);
            } else {
                Logger.f34483b.a(3);
                System.exit(1);
            }
            atomicBoolean.set(false);
            throw th2;
        }
    }
}
