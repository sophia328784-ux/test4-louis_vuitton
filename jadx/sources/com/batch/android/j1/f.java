package com.batch.android.j1;

import android.app.Activity;
import android.app.Application;
import android.content.ComponentCallbacks2;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.os.Bundle;
import android.os.SystemClock;
import com.batch.android.e.l;
import com.batch.android.e.t;
import com.batch.android.n.o;
import java.util.UUID;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes2.dex */
public class f implements ComponentCallbacks2, Application.ActivityLifecycleCallbacks {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final String f23583e = "com.batch.android.runtime.session.new";

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final String f23584f = "BatchSessionManager";
    private static final int g = 300;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private AtomicInteger f23585a = new AtomicInteger(0);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Long f23586b = null;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f23587c = false;
    private String d;

    private synchronized void d() {
        if (!this.f23587c || this.f23586b == null || SystemClock.elapsedRealtime() < this.f23586b.longValue()) {
            return;
        }
        this.f23587c = false;
        this.d = null;
    }

    public synchronized void a(Context context) {
        d();
        if (this.f23587c) {
            return;
        }
        this.f23587c = true;
        this.d = UUID.randomUUID().toString();
        ((com.batch.android.s.d) com.batch.android.n.f.a().h()).g();
        t.c(f23584f, "Starting a new session, id: '" + this.d + "'");
        o.a(context).a(new Intent(f23583e));
    }

    public String b() {
        return this.d;
    }

    public long c() {
        return SystemClock.elapsedRealtime();
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityCreated(Activity activity, Bundle bundle) {
        if (l.a(activity)) {
            return;
        }
        this.f23585a.incrementAndGet();
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityDestroyed(Activity activity) {
        if (l.a(activity)) {
            return;
        }
        this.f23585a.decrementAndGet();
        if (a()) {
            this.f23587c = false;
            t.c(f23584f, "Finishing session since the last activity has been destroyed");
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityPaused(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityResumed(Activity activity) {
        if (l.a(activity)) {
            return;
        }
        a(activity.getApplicationContext());
        this.f23586b = null;
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStarted(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStopped(Activity activity) {
    }

    @Override // android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
    }

    @Override // android.content.ComponentCallbacks
    public void onLowMemory() {
        onTrimMemory(80);
    }

    @Override // android.content.ComponentCallbacks2
    public void onTrimMemory(int i2) {
        if (i2 >= 20) {
            this.f23586b = Long.valueOf(c() + 300000);
        }
    }

    public boolean a() {
        int i2 = this.f23585a.get();
        if (i2 >= 0) {
            return i2 == 0;
        }
        t.a(f23584f, "Batch's Activity create counter is < 0. Something went wrong at some point with the activity lifecycles.");
        do {
            int i3 = this.f23585a.get();
            if (i2 >= 0) {
                return i3 == 0;
            }
        } while (!this.f23585a.compareAndSet(i2, 0));
        return true;
    }
}
