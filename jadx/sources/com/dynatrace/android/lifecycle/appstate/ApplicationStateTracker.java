package com.dynatrace.android.lifecycle.appstate;

import android.app.Activity;
import android.app.Application;
import android.os.Bundle;
import com.dynatrace.android.agent.Global;
import com.dynatrace.android.agent.util.Utility;
import com.dynatrace.android.lifecycle.callback.ComponentIdentifier;
import com.dynatrace.android.lifecycle.callback.ComponentIdentity;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashSet;

/* JADX INFO: loaded from: classes2.dex */
public class ApplicationStateTracker implements Application.ActivityLifecycleCallbacks {
    public final ComponentIdentifier d;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final LinkedHashSet f27686b = new LinkedHashSet();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f27688e = false;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final HashSet f27687c = new HashSet();

    static {
        boolean z = Global.f27307a;
    }

    public ApplicationStateTracker(ComponentIdentifier<Activity> componentIdentifier) {
        this.d = componentIdentifier;
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityCreated(Activity activity, Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityDestroyed(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityPaused(Activity activity) {
        this.f27687c.add(this.d.a(activity));
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityResumed(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStarted(Activity activity) {
        ComponentIdentity componentIdentityA = this.d.a(activity);
        HashSet hashSet = this.f27687c;
        hashSet.add(componentIdentityA);
        if (hashSet.size() != 1 || this.f27688e) {
            return;
        }
        if (Global.f27307a) {
            Utility.n("app returns to foreground");
        }
        Iterator it = this.f27686b.iterator();
        while (it.hasNext()) {
            ((ApplicationStateListener) it.next()).onForeground();
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStopped(Activity activity) {
        this.f27688e = activity.isChangingConfigurations();
        ComponentIdentity componentIdentityA = this.d.a(activity);
        HashSet hashSet = this.f27687c;
        hashSet.remove(componentIdentityA);
        if (!hashSet.isEmpty() || this.f27688e) {
            return;
        }
        if (Global.f27307a) {
            Utility.n("app goes into background");
        }
        Iterator it = this.f27686b.iterator();
        while (it.hasNext()) {
            ((ApplicationStateListener) it.next()).onBackground();
        }
    }
}
