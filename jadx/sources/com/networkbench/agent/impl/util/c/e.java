package com.networkbench.agent.impl.util.c;

import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes2.dex */
public class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final com.networkbench.agent.impl.c.e f38365a = com.networkbench.agent.impl.c.f.a();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private ScheduledExecutorService f38366b = Executors.newSingleThreadScheduledExecutor(new d("Tingyun-Plugin"));

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private ScheduledFuture<?> f38367c;
    private Runnable d;

    private void c() {
        this.f38366b = Executors.newSingleThreadScheduledExecutor(new d("Tingyun-Plugin"));
    }

    public void a(Runnable runnable, int i2, int i3) {
        if (b()) {
            this.f38365a.a("scheduler is running, so start return");
            return;
        }
        this.d = runnable;
        ScheduledExecutorService scheduledExecutorService = this.f38366b;
        if (scheduledExecutorService == null || scheduledExecutorService.isShutdown()) {
            c();
        }
        this.f38367c = this.f38366b.scheduleWithFixedDelay(runnable, i3, i2, TimeUnit.MILLISECONDS);
    }

    public boolean b() {
        return this.f38367c != null;
    }

    public void a() {
        ScheduledFuture<?> scheduledFuture = this.f38367c;
        if (scheduledFuture != null) {
            scheduledFuture.cancel(true);
            this.f38367c = null;
        }
        ScheduledExecutorService scheduledExecutorService = this.f38366b;
        if (scheduledExecutorService == null || scheduledExecutorService.isShutdown()) {
            return;
        }
        this.f38366b.shutdown();
    }
}
