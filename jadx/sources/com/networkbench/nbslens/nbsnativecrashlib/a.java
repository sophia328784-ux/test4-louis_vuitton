package com.networkbench.nbslens.nbsnativecrashlib;

import android.app.Activity;
import android.app.Application;
import android.os.Bundle;
import java.util.Iterator;
import java.util.LinkedList;

/* JADX INFO: loaded from: classes2.dex */
class a {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final a f38733c = new a();
    private static final int d = 100;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private LinkedList<Activity> f38734a = null;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f38735b = false;

    /* JADX INFO: renamed from: com.networkbench.nbslens.nbsnativecrashlib.a$a, reason: collision with other inner class name */
    public class C0111a implements Application.ActivityLifecycleCallbacks {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private int f38736a = 0;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private boolean f38737b = false;

        public C0111a() {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityCreated(Activity activity, Bundle bundle) {
            a.this.f38734a.addFirst(activity);
            if (a.this.f38734a.size() > 100) {
                a.this.f38734a.removeLast();
            }
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityDestroyed(Activity activity) {
            a.this.f38734a.remove(activity);
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
            int i2 = this.f38736a + 1;
            this.f38736a = i2;
            if (i2 != 1 || this.f38737b) {
                return;
            }
            a.this.f38735b = true;
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityStopped(Activity activity) {
            boolean zIsChangingConfigurations = activity.isChangingConfigurations();
            this.f38737b = zIsChangingConfigurations;
            int i2 = this.f38736a - 1;
            this.f38736a = i2;
            if (i2 != 0 || zIsChangingConfigurations) {
                return;
            }
            a.this.f38735b = false;
        }
    }

    private a() {
    }

    public static a b() {
        return f38733c;
    }

    public void a() {
        LinkedList<Activity> linkedList = this.f38734a;
        if (linkedList != null) {
            Iterator<Activity> it = linkedList.iterator();
            while (it.hasNext()) {
                it.next().finish();
            }
            this.f38734a.clear();
        }
    }

    public boolean c() {
        return this.f38735b;
    }

    public void a(Application application) {
        this.f38734a = new LinkedList<>();
        application.registerActivityLifecycleCallbacks(new C0111a());
    }
}
