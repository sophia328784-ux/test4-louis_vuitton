package com.sightcall.universal.internal.ui;

import android.app.Activity;
import android.app.Application;
import android.os.Bundle;
import com.sightcall.universal.Universal;
import com.sightcall.universal.scenario.Scenario;
import com.sightcall.universal.util.UiUtils;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
import net.rtccloud.sdk.Call;
import net.rtccloud.sdk.Rtcc;

/* JADX INFO: loaded from: classes3.dex */
class CallOverlayLifecycle implements Application.ActivityLifecycleCallbacks {
    private final Set<Activity> genericCallActivities = Collections.synchronizedSet(new HashSet());

    private boolean isGenericCallActivity(Activity activity) {
        if (activity instanceof CallActivity) {
            return true;
        }
        Class<? extends Activity> activityClass = Universal.ar().getActivityClass();
        return activityClass != null && activityClass.isInstance(activity);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityCreated(Activity activity, Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityDestroyed(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityPaused(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityResumed(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStarted(Activity activity) {
        if (isGenericCallActivity(activity)) {
            this.genericCallActivities.add(activity);
            CallOverlay.hide(activity);
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStopped(Activity activity) {
        this.genericCallActivities.remove(activity);
        if (activity.isChangingConfigurations() || activity.isFinishing() || !UiUtils.isScreenOn(activity) || !Universal.scenario().is(Scenario.Status.ACTIVE)) {
            return;
        }
        Rtcc rtccInstance = Rtcc.instance();
        Call call = rtccInstance.call().get();
        Call.Status status = call != null ? call.status() : null;
        Rtcc.Status status2 = rtccInstance.status();
        if ((status2 == Rtcc.Status.CONNECTED || status2 == Rtcc.Status.NETWORK_LOST) && status == Call.Status.ACTIVE && isGenericCallActivity(activity)) {
            Iterator<Activity> it = this.genericCallActivities.iterator();
            while (it.hasNext()) {
                if (isGenericCallActivity(it.next())) {
                    return;
                }
            }
            CallOverlay.show(activity);
        }
    }
}
