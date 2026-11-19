package com.dynatrace.agent.lifecycle.callback;

import android.app.Activity;
import android.os.Bundle;
import com.dynatrace.agent.lifecycle.AppStartupManager;
import com.dynatrace.agent.lifecycle.VisibilityManager;
import com.dynatrace.agent.lifecycle.model.AppStartupInstantType;
import com.dynatrace.agent.metrics.SessionInformationMetrics;
import com.dynatrace.agent.orientation.handler.OrientationChangeHandler;
import com.dynatrace.android.agent.util.Utility;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0000\u0018\u00002\u00020\u0001B'\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\b¢\u0006\u0004\b\n\u0010\u000b¨\u0006\f"}, d2 = {"Lcom/dynatrace/agent/lifecycle/callback/ActivityLifecycleListener;", "Lcom/dynatrace/agent/lifecycle/callback/BaseActivityLifecycleCallbacks;", "Lcom/dynatrace/agent/lifecycle/AppStartupManager;", "appStartupManager", "Lcom/dynatrace/agent/lifecycle/VisibilityManager;", "visibilityManager", "Lcom/dynatrace/agent/orientation/handler/OrientationChangeHandler;", "orientationChangeHandler", "Lcom/dynatrace/agent/lifecycle/callback/CurrentViewTracker;", "currentViewTracker", "<init>", "(Lcom/dynatrace/agent/lifecycle/AppStartupManager;Lcom/dynatrace/agent/lifecycle/VisibilityManager;Lcom/dynatrace/agent/orientation/handler/OrientationChangeHandler;Lcom/dynatrace/agent/lifecycle/callback/CurrentViewTracker;)V", "com.dynatrace.agent_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class ActivityLifecycleListener extends BaseActivityLifecycleCallbacks {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AppStartupManager f26856b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final VisibilityManager f26857c;
    public final OrientationChangeHandler d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final CurrentViewTracker f26858e;

    public ActivityLifecycleListener(AppStartupManager appStartupManager, VisibilityManager visibilityManager, OrientationChangeHandler orientationChangeHandler, CurrentViewTracker currentViewTracker) {
        appStartupManager.getClass();
        visibilityManager.getClass();
        orientationChangeHandler.getClass();
        currentViewTracker.getClass();
        this.f26856b = appStartupManager;
        this.f26857c = visibilityManager;
        this.d = orientationChangeHandler;
        this.f26858e = currentViewTracker;
    }

    @Override // com.dynatrace.agent.lifecycle.callback.BaseActivityLifecycleCallbacks, android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityPaused(Activity activity) {
        activity.getClass();
        CurrentViewTracker currentViewTracker = this.f26858e;
        if (currentViewTracker.f26861c) {
            SessionInformationMetrics sessionInformationMetricsA = currentViewTracker.f26859a.a();
            if (sessionInformationMetricsA.a() && sessionInformationMetricsA.g) {
                currentViewTracker.f26860b.b();
            } else {
                Utility.b("stop view can't be executed, sessionInfo: " + sessionInformationMetricsA);
            }
        }
        this.f26857c.b(System.identityHashCode(activity));
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityPostCreated(Activity activity, Bundle bundle) {
        activity.getClass();
        this.f26856b.d(AppStartupInstantType.ACTIVITY_CREATE_END);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityPostResumed(Activity activity) {
        activity.getClass();
        this.f26856b.d(AppStartupInstantType.ACTIVITY_RESUME_END);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityPostStarted(Activity activity) {
        activity.getClass();
        this.f26856b.d(AppStartupInstantType.ACTIVITY_START_END);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityPreCreated(Activity activity, Bundle bundle) {
        activity.getClass();
        this.f26856b.d(AppStartupInstantType.ACTIVITY_CREATE_START);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityPreResumed(Activity activity) {
        activity.getClass();
        this.f26856b.d(AppStartupInstantType.ACTIVITY_RESUME_START);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityPreStarted(Activity activity) {
        activity.getClass();
        this.f26856b.d(AppStartupInstantType.ACTIVITY_START_START);
    }

    @Override // com.dynatrace.agent.lifecycle.callback.BaseActivityLifecycleCallbacks, android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityResumed(Activity activity) {
        activity.getClass();
        CurrentViewTracker currentViewTracker = this.f26858e;
        currentViewTracker.getClass();
        if (currentViewTracker.f26861c) {
            SessionInformationMetrics sessionInformationMetricsA = currentViewTracker.f26859a.a();
            String className = activity.getComponentName().getClassName();
            className.getClass();
            if (sessionInformationMetricsA.a() && className.length() > 0 && sessionInformationMetricsA.g) {
                currentViewTracker.f26860b.e(className);
            } else {
                Utility.b("start view can't be executed, sessionInfo: " + sessionInformationMetricsA + " name: " + className);
            }
        }
        this.d.a(activity.getResources().getConfiguration().orientation);
    }

    @Override // com.dynatrace.agent.lifecycle.callback.BaseActivityLifecycleCallbacks, android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStarted(Activity activity) {
        activity.getClass();
        this.f26857c.a(System.identityHashCode(activity));
    }

    @Override // com.dynatrace.agent.lifecycle.callback.BaseActivityLifecycleCallbacks, android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStopped(Activity activity) {
        activity.getClass();
        this.f26857c.d(System.identityHashCode(activity), activity.isChangingConfigurations());
    }
}
