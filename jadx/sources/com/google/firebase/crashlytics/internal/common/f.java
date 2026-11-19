package com.google.firebase.crashlytics.internal.common;

import android.content.Context;
import com.google.firebase.crashlytics.internal.Logger;
import com.google.firebase.crashlytics.internal.metadata.EventMetadata;
import java.io.Serializable;
import java.util.Collections;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class f implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f34581b = 1;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ CrashlyticsCore f34582c;
    public final /* synthetic */ Serializable d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f34583e;

    public /* synthetic */ f(CrashlyticsCore crashlyticsCore, RuntimeException runtimeException) {
        Map map = Collections.EMPTY_MAP;
        this.f34582c = crashlyticsCore;
        this.d = runtimeException;
        this.f34583e = map;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i2 = this.f34581b;
        Serializable serializable = this.d;
        CrashlyticsCore crashlyticsCore = this.f34582c;
        switch (i2) {
            case 0:
                String str = (String) serializable;
                String str2 = (String) this.f34583e;
                CrashlyticsController crashlyticsController = crashlyticsCore.g;
                crashlyticsController.getClass();
                try {
                    crashlyticsController.d.e(str, str2);
                    return;
                } catch (IllegalArgumentException e2) {
                    Context context = crashlyticsController.f34518a;
                    if (context != null && (context.getApplicationInfo().flags & 2) != 0) {
                        throw e2;
                    }
                    Logger.f34483b.b();
                    return;
                }
            default:
                RuntimeException runtimeException = (RuntimeException) serializable;
                Map map = Collections.EMPTY_MAP;
                CrashlyticsController crashlyticsController2 = crashlyticsCore.g;
                Thread threadCurrentThread = Thread.currentThread();
                crashlyticsController2.getClass();
                long jCurrentTimeMillis = System.currentTimeMillis();
                CrashlyticsUncaughtExceptionHandler crashlyticsUncaughtExceptionHandler = crashlyticsController2.n;
                if (crashlyticsUncaughtExceptionHandler == null || !crashlyticsUncaughtExceptionHandler.f34552e.get()) {
                    long j2 = jCurrentTimeMillis / 1000;
                    String strG = crashlyticsController2.g();
                    if (strG == null) {
                        Logger.f34483b.a(5);
                        return;
                    }
                    EventMetadata eventMetadata = new EventMetadata(strG, j2, map);
                    SessionReportingCoordinator sessionReportingCoordinator = crashlyticsController2.m;
                    sessionReportingCoordinator.getClass();
                    Logger.f34483b.a(2);
                    sessionReportingCoordinator.f(runtimeException, threadCurrentThread, "error", eventMetadata, false);
                    return;
                }
                return;
        }
    }

    public /* synthetic */ f(CrashlyticsCore crashlyticsCore, String str, String str2) {
        this.f34582c = crashlyticsCore;
        this.d = str;
        this.f34583e = str2;
    }
}
