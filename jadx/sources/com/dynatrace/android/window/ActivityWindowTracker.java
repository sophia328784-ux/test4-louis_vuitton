package com.dynatrace.android.window;

import android.app.Activity;
import android.app.Application;
import android.os.Bundle;
import android.view.Window;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;

/* JADX INFO: loaded from: classes2.dex */
public class ActivityWindowTracker implements Application.ActivityLifecycleCallbacks {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final WindowCallbackInstrumentation f27725b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final HashSet f27726c = new HashSet();

    public ActivityWindowTracker(WindowCallbackInstrumentation windowCallbackInstrumentation) {
        this.f27725b = windowCallbackInstrumentation;
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityCreated(Activity activity, Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityDestroyed(Activity activity) {
        this.f27726c.remove(Integer.valueOf(System.identityHashCode(activity)));
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityPaused(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityResumed(Activity activity) {
        int iIdentityHashCode = System.identityHashCode(activity);
        Integer numValueOf = Integer.valueOf(iIdentityHashCode);
        HashSet hashSet = this.f27726c;
        if (hashSet.contains(numValueOf)) {
            return;
        }
        Window window = activity.getWindow();
        WindowCallbackInstrumentation windowCallbackInstrumentation = this.f27725b;
        windowCallbackInstrumentation.getClass();
        Window.Callback callback = window.getCallback();
        if (callback == null) {
            callback = new DefaultWindowCallback();
        }
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        Iterator it = windowCallbackInstrumentation.f27727a.iterator();
        while (it.hasNext()) {
            arrayList.add(((WindowListenerFactory) it.next()).a(window));
        }
        window.setCallback(new WindowCallbackWrapper(callback, new WindowEventSegmentation(arrayList, arrayList2)));
        hashSet.add(Integer.valueOf(iIdentityHashCode));
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
