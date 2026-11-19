package androidx.work.impl;

import android.os.Handler;
import android.os.Looper;
import androidx.work.RunnableScheduler;

/* JADX INFO: loaded from: classes.dex */
public class DefaultRunnableScheduler implements RunnableScheduler {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Handler f20298a = Handler.createAsync(Looper.getMainLooper());

    @Override // androidx.work.RunnableScheduler
    public final void a(Runnable runnable) {
        this.f20298a.removeCallbacks(runnable);
    }

    @Override // androidx.work.RunnableScheduler
    public final void b(long j2, Runnable runnable) {
        this.f20298a.postDelayed(runnable, j2);
    }
}
