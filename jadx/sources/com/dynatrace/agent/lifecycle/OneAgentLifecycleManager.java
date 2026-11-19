package com.dynatrace.agent.lifecycle;

import android.app.Application;
import android.content.ComponentCallbacks;
import android.content.res.Configuration;
import com.dynatrace.agent.lifecycle.callback.ActivityLifecycleListener;
import com.dynatrace.agent.lifecycle.callback.CurrentViewTracker;
import com.dynatrace.agent.orientation.handler.OrientationChangeHandler;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0000\u0018\u00002\u00020\u0001B/\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\b\u0012\u0006\u0010\u000b\u001a\u00020\n¢\u0006\u0004\b\f\u0010\r¨\u0006\u000e"}, d2 = {"Lcom/dynatrace/agent/lifecycle/OneAgentLifecycleManager;", "", "Lcom/dynatrace/agent/lifecycle/AppStartupManager;", "appStartupManager", "Lcom/dynatrace/agent/lifecycle/VisibilityManager;", "visibilityManager", "Lcom/dynatrace/agent/orientation/handler/OrientationChangeHandler;", "orientationChangeHandler", "Lcom/dynatrace/agent/lifecycle/callback/CurrentViewTracker;", "currentViewTracker", "Landroid/app/Application;", "application", "<init>", "(Lcom/dynatrace/agent/lifecycle/AppStartupManager;Lcom/dynatrace/agent/lifecycle/VisibilityManager;Lcom/dynatrace/agent/orientation/handler/OrientationChangeHandler;Lcom/dynatrace/agent/lifecycle/callback/CurrentViewTracker;Landroid/app/Application;)V", "com.dynatrace.agent_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class OneAgentLifecycleManager {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final AppStartupManager f26838a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Application f26839b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f26840c;
    public final ActivityLifecycleListener d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final OneAgentLifecycleManager$componentListener$1 f26841e;

    /* JADX WARN: Type inference failed for: r1v1, types: [com.dynatrace.agent.lifecycle.OneAgentLifecycleManager$componentListener$1] */
    public OneAgentLifecycleManager(AppStartupManager appStartupManager, VisibilityManager visibilityManager, final OrientationChangeHandler orientationChangeHandler, CurrentViewTracker currentViewTracker, Application application) {
        appStartupManager.getClass();
        visibilityManager.getClass();
        orientationChangeHandler.getClass();
        currentViewTracker.getClass();
        application.getClass();
        this.f26838a = appStartupManager;
        this.f26839b = application;
        this.d = new ActivityLifecycleListener(appStartupManager, visibilityManager, orientationChangeHandler, currentViewTracker);
        this.f26841e = new ComponentCallbacks() { // from class: com.dynatrace.agent.lifecycle.OneAgentLifecycleManager$componentListener$1
            @Override // android.content.ComponentCallbacks
            public final void onConfigurationChanged(Configuration configuration) {
                configuration.getClass();
                orientationChangeHandler.a(configuration.orientation);
            }

            @Override // android.content.ComponentCallbacks
            public final void onLowMemory() {
            }
        };
    }
}
