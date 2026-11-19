package com.appsflyer.internal;

import android.app.Activity;
import android.app.Application;
import android.content.Intent;
import android.os.Bundle;
import com.appsflyer.AFLogger;
import com.appsflyer.sdk_base.logger.AFLoggerBase;
import com.appsflyer.sdk_base.logger.LogTag;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import kotlin.Result;
import kotlin.Unit;

/* JADX INFO: loaded from: classes.dex */
final class AFb1gSDK implements Application.ActivityLifecycleCallbacks {
    private ScheduledFuture<?> AFKeystoreWrapper;
    final AFb1bSDK.AFa1zSDK AFLogger;
    private final AFa1qSDK d;
    private final ScheduledExecutorService registerClient;
    private volatile boolean unregisterClient;
    private final Runnable v;

    public AFb1gSDK(ScheduledExecutorService scheduledExecutorService, AFb1bSDK.AFa1zSDK aFa1zSDK, AFa1qSDK aFa1qSDK) {
        scheduledExecutorService.getClass();
        aFa1zSDK.getClass();
        aFa1qSDK.getClass();
        this.registerClient = scheduledExecutorService;
        this.AFLogger = aFa1zSDK;
        this.d = aFa1qSDK;
        this.v = new g(this, 0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void i_(AFb1gSDK aFb1gSDK, Intent intent) {
        Object failure;
        try {
            Result.Companion companion = Result.INSTANCE;
            AFb1bSDK.AFa1zSDK aFa1zSDK = aFb1gSDK.AFLogger;
            intent.getClass();
            aFa1zSDK.m_(intent);
            failure = Unit.f71739a;
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            failure = new Result.Failure(th);
        }
        Throwable thA = Result.a(failure);
        if (thA != null) {
            AFLoggerBase.e$default(AFLogger.INSTANCE, LogTag.DDL, "onActivityCreatedWithDeeplink failed with a throwable", thA, false, false, false, false, 120, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void j_(AFb1gSDK aFb1gSDK, Intent intent) {
        Object failure;
        try {
            Result.Companion companion = Result.INSTANCE;
            AFb1bSDK.AFa1zSDK aFa1zSDK = aFb1gSDK.AFLogger;
            intent.getClass();
            aFa1zSDK.n_(intent);
            failure = Unit.f71739a;
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            failure = new Result.Failure(th);
        }
        Throwable thA = Result.a(failure);
        if (thA != null) {
            AFLoggerBase.e$default(AFLogger.INSTANCE, LogTag.SDK_LIFECYCLE, "Listener threw an exception", thA, false, false, false, false, 120, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void registerClient(AFb1gSDK aFb1gSDK) {
        Object failure;
        aFb1gSDK.unregisterClient = false;
        try {
            Result.Companion companion = Result.INSTANCE;
            aFb1gSDK.AFLogger.registerClient();
            failure = Unit.f71739a;
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            failure = new Result.Failure(th);
        }
        Throwable thA = Result.a(failure);
        if (thA != null) {
            AFLoggerBase.e$default(AFLogger.INSTANCE, LogTag.SDK_LIFECYCLE, "Background task failed with a throwable", thA, false, false, false, false, 120, null);
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityCreated(Activity activity, Bundle bundle) {
        activity.getClass();
        if (this.unregisterClient) {
            return;
        }
        Intent intent = activity.getIntent();
        if (this.d.e_(intent)) {
            this.registerClient.execute(new h(this, intent, 0));
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityDestroyed(Activity activity) {
        activity.getClass();
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityPaused(Activity activity) {
        activity.getClass();
        if (this.unregisterClient) {
            ScheduledExecutorService scheduledExecutorService = this.registerClient;
            Runnable runnable = this.v;
            AFb1bSDK.Companion aFa1tSDK = AFb1bSDK.INSTANCE;
            this.AFKeystoreWrapper = scheduledExecutorService.schedule(runnable, AFb1bSDK.Companion.unregisterClient(), TimeUnit.MILLISECONDS);
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityResumed(Activity activity) {
        activity.getClass();
        int i2 = 1;
        if (!this.unregisterClient) {
            this.unregisterClient = true;
            this.registerClient.execute(new h(this, activity.getIntent(), i2));
        } else {
            ScheduledFuture<?> scheduledFuture = this.AFKeystoreWrapper;
            if (scheduledFuture != null) {
                scheduledFuture.cancel(true);
            }
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        activity.getClass();
        bundle.getClass();
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStarted(Activity activity) {
        activity.getClass();
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStopped(Activity activity) {
        activity.getClass();
    }
}
