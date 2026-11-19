package com.vuitton.android.platform.activity;

import android.app.Activity;
import android.os.Bundle;
import defpackage.x20;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import javax.inject.Inject;
import javax.inject.Singleton;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;

/* JADX INFO: loaded from: classes3.dex */
@Singleton
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0007\u0018\u00002\u00020\u00012\u00020\u0002B\t\b\u0007¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lcom/vuitton/android/platform/activity/CurrentActivityTracker;", "Lcom/vuitton/android/platform/activity/DefaultActivityLifecycleCallbacksAdapter;", "Lcom/vuitton/android/platform/activity/CurrentActivityProvider;", "<init>", "()V", "platform"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class CurrentActivityTracker extends DefaultActivityLifecycleCallbacksAdapter implements CurrentActivityProvider {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public volatile List f50456b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public volatile List f50457c;

    @Inject
    public CurrentActivityTracker() {
        EmptyList emptyList = EmptyList.f71768b;
        this.f50456b = emptyList;
        this.f50457c = emptyList;
    }

    @Override // com.vuitton.android.platform.activity.CurrentActivityProvider
    public final boolean a(x20 x20Var) {
        List list = this.f50457c;
        if ((list instanceof Collection) && list.isEmpty()) {
            return false;
        }
        Iterator it = list.iterator();
        while (it.hasNext()) {
            Activity activity = (Activity) ((WeakReference) it.next()).get();
            if (activity != null && ((Boolean) x20Var.invoke(activity)).booleanValue() && !activity.isFinishing() && !activity.isDestroyed()) {
                return true;
            }
        }
        return false;
    }

    public final void b(Activity activity) {
        List list = this.f50456b;
        ArrayList arrayList = new ArrayList();
        for (Object obj : list) {
            WeakReference weakReference = (WeakReference) obj;
            if (weakReference.get() != activity && weakReference.get() != null) {
                arrayList.add(obj);
            }
        }
        this.f50456b = CollectionsKt.X(new WeakReference(activity), arrayList);
    }

    @Override // com.vuitton.android.platform.activity.DefaultActivityLifecycleCallbacksAdapter, android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityCreated(Activity activity, Bundle bundle) {
        activity.getClass();
        List list = this.f50457c;
        ArrayList arrayList = new ArrayList();
        for (Object obj : list) {
            if (((WeakReference) obj).get() != null) {
                arrayList.add(obj);
            }
        }
        this.f50457c = CollectionsKt.X(new WeakReference(activity), arrayList);
    }

    @Override // com.vuitton.android.platform.activity.DefaultActivityLifecycleCallbacksAdapter, android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityDestroyed(Activity activity) {
        activity.getClass();
        List list = this.f50457c;
        ArrayList arrayList = new ArrayList();
        for (Object obj : list) {
            WeakReference weakReference = (WeakReference) obj;
            if (weakReference.get() != activity && weakReference.get() != null) {
                arrayList.add(obj);
            }
        }
        this.f50457c = arrayList;
    }

    @Override // com.vuitton.android.platform.activity.DefaultActivityLifecycleCallbacksAdapter, android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityResumed(Activity activity) {
        activity.getClass();
        b(activity);
    }

    @Override // com.vuitton.android.platform.activity.DefaultActivityLifecycleCallbacksAdapter, android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStarted(Activity activity) {
        activity.getClass();
        b(activity);
    }

    @Override // com.vuitton.android.platform.activity.DefaultActivityLifecycleCallbacksAdapter, android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStopped(Activity activity) {
        activity.getClass();
        List list = this.f50456b;
        ArrayList arrayList = new ArrayList();
        for (Object obj : list) {
            WeakReference weakReference = (WeakReference) obj;
            if (weakReference.get() != activity && weakReference.get() != null) {
                arrayList.add(obj);
            }
        }
        this.f50456b = arrayList;
    }
}
