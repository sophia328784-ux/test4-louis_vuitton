package com.dynatrace.android.lifecycle.activitytracking;

import android.app.Activity;
import android.app.Application;
import android.os.Bundle;
import com.dynatrace.android.agent.Global;
import com.dynatrace.android.agent.util.Utility;
import com.dynatrace.android.lifecycle.activitytracking.metrics.ScreenMetricsCollector;
import com.dynatrace.android.lifecycle.activitytracking.metrics.ScreenMetricsListener;
import com.dynatrace.android.lifecycle.callback.ComponentIdentifier;
import com.dynatrace.android.lifecycle.callback.ComponentIdentity;
import java.util.LinkedList;

/* JADX INFO: loaded from: classes2.dex */
public class ActiveActivityTracker implements Application.ActivityLifecycleCallbacks {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ComponentIdentifier f27656b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ActiveActivityListener f27657c;
    public final ScreenMetricsCollector d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final ScreenMetricsListener f27658e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final LinkedList f27659f = new LinkedList();
    public ComponentIdentity g;

    static {
        boolean z = Global.f27307a;
    }

    public ActiveActivityTracker(ComponentIdentifier<Activity> componentIdentifier, ActiveActivityListener activeActivityListener, ScreenMetricsCollector screenMetricsCollector, ScreenMetricsListener screenMetricsListener) {
        this.f27656b = componentIdentifier;
        this.f27657c = activeActivityListener;
        this.d = screenMetricsCollector;
        this.f27658e = screenMetricsListener;
    }

    public final void a(ComponentIdentity componentIdentity) {
        if (this.g == componentIdentity) {
            return;
        }
        if (Global.f27307a) {
            if (componentIdentity == null) {
                Utility.n("unset current activity");
            } else {
                Utility.n("set current activity to " + componentIdentity.f27691a);
            }
        }
        ActiveActivityListener activeActivityListener = this.f27657c;
        if (componentIdentity == null) {
            activeActivityListener.b(null);
        } else {
            activeActivityListener.b(componentIdentity.f27691a);
        }
        this.g = componentIdentity;
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityCreated(Activity activity, Bundle bundle) {
        this.f27658e.a(this.d.a(activity));
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityDestroyed(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityPaused(Activity activity) {
        ComponentIdentity componentIdentityA = this.f27656b.a(activity);
        LinkedList linkedList = this.f27659f;
        linkedList.remove(componentIdentityA);
        if (linkedList.size() > 0) {
            a((ComponentIdentity) linkedList.peekFirst());
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityResumed(Activity activity) {
        ComponentIdentity componentIdentityA = this.f27656b.a(activity);
        if (componentIdentityA.equals(this.g)) {
            return;
        }
        this.f27659f.addFirst(componentIdentityA);
        a(componentIdentityA);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStarted(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStopped(Activity activity) {
        if (this.f27659f.size() == 0) {
            a(null);
        }
    }
}
