package com.dynatrace.android.lifecycle.callback;

import android.app.Activity;
import android.app.Application;
import android.os.Bundle;
import com.dynatrace.android.lifecycle.LifecycleController;
import com.dynatrace.android.lifecycle.event.ActivityEventType;

/* JADX INFO: loaded from: classes2.dex */
public class ActivityLifecycleListener implements Application.ActivityLifecycleCallbacks {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final LifecycleController f27689b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ComponentIdentifier f27690c;

    public ActivityLifecycleListener(LifecycleController lifecycleController, ComponentIdentifier<Activity> componentIdentifier) {
        this.f27689b = lifecycleController;
        this.f27690c = componentIdentifier;
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityCreated(Activity activity, Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityDestroyed(Activity activity) {
        this.f27689b.b(this.f27690c.a(activity));
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityPaused(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityPostCreated(Activity activity, Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityPostResumed(Activity activity) {
        this.f27689b.b(this.f27690c.a(activity));
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityPostStarted(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityPreCreated(Activity activity, Bundle bundle) {
        this.f27689b.a(this.f27690c.a(activity), ActivityEventType.ON_CREATE);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityPreResumed(Activity activity) {
        this.f27689b.a(this.f27690c.a(activity), ActivityEventType.ON_RESUME);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityPreStarted(Activity activity) {
        this.f27689b.a(this.f27690c.a(activity), ActivityEventType.ON_START);
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
        this.f27689b.b(this.f27690c.a(activity));
    }
}
