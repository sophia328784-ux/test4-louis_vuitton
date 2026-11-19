package com.batch.android.j1;

import android.app.Activity;
import android.app.Application;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import com.batch.android.e.t;
import defpackage.f31;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes2.dex */
public class d implements Application.ActivityLifecycleCallbacks {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final String f23568f = "ForegroundActivityLifecycleListener";
    private static final int g = 700;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Handler f23571c;
    private a d;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final AtomicInteger f23569a = new AtomicInteger(0);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final AtomicBoolean f23570b = new AtomicBoolean(false);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Runnable f23572e = new f31(this, 16);

    public interface a {
        void a();

        void b();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b() {
        if (a()) {
            return;
        }
        this.f23570b.set(true);
        a aVar = this.d;
        if (aVar != null) {
            aVar.b();
        }
    }

    public boolean a() {
        int i2 = this.f23569a.get();
        if (i2 >= 0) {
            return i2 != 0;
        }
        t.a(f23568f, "Batch's Activity resume counter is < 0. Something went wrong at some point with the activity lifecycles.");
        do {
            int i3 = this.f23569a.get();
            if (i2 >= 0) {
                return i3 != 0;
            }
        } while (!this.f23569a.compareAndSet(i2, 0));
        return false;
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityCreated(Activity activity, Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityDestroyed(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityPaused(Activity activity) {
        this.f23569a.decrementAndGet();
        this.f23571c.postDelayed(this.f23572e, 700L);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityResumed(Activity activity) {
        this.f23569a.incrementAndGet();
        if (this.f23570b.get()) {
            this.f23570b.set(false);
            a aVar = this.d;
            if (aVar != null) {
                aVar.a();
            }
        }
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

    public void a(a aVar) {
        this.d = aVar;
        this.f23571c = new Handler(Looper.getMainLooper());
    }
}
