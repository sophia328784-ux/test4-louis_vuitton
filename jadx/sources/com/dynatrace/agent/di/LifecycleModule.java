package com.dynatrace.agent.di;

import android.app.Application;
import com.dynatrace.agent.OneAgentStartupEventDispatcher;
import com.dynatrace.agent.common.time.TimeProvider;
import com.dynatrace.agent.lifecycle.VisibilityManager;
import com.dynatrace.agent.lifecycle.callback.CurrentViewTracker;
import com.dynatrace.agent.orientation.handler.OrientationChangeHandler;
import com.dynatrace.agent.useraction.UserActionController;
import com.dynatrace.agent.view.NavigationTracker;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0000\u0018\u00002\u00020\u0001BO\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\b\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u0006\u0010\r\u001a\u00020\f\u0012\u0006\u0010\u000f\u001a\u00020\u000e\u0012\u0006\u0010\u0011\u001a\u00020\u0010\u0012\u0006\u0010\u0013\u001a\u00020\u0012¢\u0006\u0004\b\u0014\u0010\u0015¨\u0006\u0016"}, d2 = {"Lcom/dynatrace/agent/di/LifecycleModule;", "", "Lcom/dynatrace/agent/common/time/TimeProvider;", "timeProvider", "Landroid/app/Application;", "application", "Lcom/dynatrace/agent/OneAgentStartupEventDispatcher;", "rumStartupEventDispatcher", "Lcom/dynatrace/agent/di/SessionInformationProvider;", "sessionInformationProvider", "Lcom/dynatrace/agent/view/NavigationTracker;", "navigationTracker", "Lcom/dynatrace/agent/lifecycle/callback/CurrentViewTracker;", "currentViewTracker", "Lcom/dynatrace/agent/lifecycle/VisibilityManager;", "visibilityManager", "Lcom/dynatrace/agent/orientation/handler/OrientationChangeHandler;", "orientationChangeHandler", "Lcom/dynatrace/agent/useraction/UserActionController;", "userActionController", "<init>", "(Lcom/dynatrace/agent/common/time/TimeProvider;Landroid/app/Application;Lcom/dynatrace/agent/OneAgentStartupEventDispatcher;Lcom/dynatrace/agent/di/SessionInformationProvider;Lcom/dynatrace/agent/view/NavigationTracker;Lcom/dynatrace/agent/lifecycle/callback/CurrentViewTracker;Lcom/dynatrace/agent/lifecycle/VisibilityManager;Lcom/dynatrace/agent/orientation/handler/OrientationChangeHandler;Lcom/dynatrace/agent/useraction/UserActionController;)V", "com.dynatrace.agent_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class LifecycleModule {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final TimeProvider f26712a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Application f26713b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final OneAgentStartupEventDispatcher f26714c;
    public final SessionInformationProvider d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final NavigationTracker f26715e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final CurrentViewTracker f26716f;
    public final VisibilityManager g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final OrientationChangeHandler f26717h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final UserActionController f26718i;

    public LifecycleModule(TimeProvider timeProvider, Application application, OneAgentStartupEventDispatcher oneAgentStartupEventDispatcher, SessionInformationProvider sessionInformationProvider, NavigationTracker navigationTracker, CurrentViewTracker currentViewTracker, VisibilityManager visibilityManager, OrientationChangeHandler orientationChangeHandler, UserActionController userActionController) {
        timeProvider.getClass();
        application.getClass();
        oneAgentStartupEventDispatcher.getClass();
        sessionInformationProvider.getClass();
        navigationTracker.getClass();
        currentViewTracker.getClass();
        visibilityManager.getClass();
        orientationChangeHandler.getClass();
        userActionController.getClass();
        this.f26712a = timeProvider;
        this.f26713b = application;
        this.f26714c = oneAgentStartupEventDispatcher;
        this.d = sessionInformationProvider;
        this.f26715e = navigationTracker;
        this.f26716f = currentViewTracker;
        this.g = visibilityManager;
        this.f26717h = orientationChangeHandler;
        this.f26718i = userActionController;
    }
}
