package com.dynatrace.android.lifecycle.appstart;

import android.app.Activity;
import android.app.Application;
import android.os.Bundle;
import com.dynatrace.android.agent.measurement.MeasurementProvider;

/* JADX INFO: loaded from: classes2.dex */
public class ActivityStateListener implements Application.ActivityLifecycleCallbacks {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AppStartController f27667b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final MeasurementProvider f27668c;

    public ActivityStateListener(AppStartController appStartController, MeasurementProvider measurementProvider) {
        this.f27667b = appStartController;
        this.f27668c = measurementProvider;
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityCreated(Activity activity, Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityDestroyed(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityPaused(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityPostResumed(Activity activity) {
        this.f27667b.a(this.f27668c.a(), activity.getComponentName().getClassName());
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityResumed(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStarted(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStopped(Activity activity) {
    }
}
