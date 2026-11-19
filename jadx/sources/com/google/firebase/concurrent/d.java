package com.google.firebase.concurrent;

import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class d implements DelegatingScheduledFuture.Resolver {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f34455a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ DelegatingScheduledExecutorService f34456b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Runnable f34457c;
    public final /* synthetic */ long d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ long f34458e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ TimeUnit f34459f;

    public /* synthetic */ d(DelegatingScheduledExecutorService delegatingScheduledExecutorService, Runnable runnable, long j2, long j3, TimeUnit timeUnit, int i2) {
        this.f34455a = i2;
        this.f34456b = delegatingScheduledExecutorService;
        this.f34457c = runnable;
        this.d = j2;
        this.f34458e = j3;
        this.f34459f = timeUnit;
    }

    @Override // com.google.firebase.concurrent.DelegatingScheduledFuture.Resolver
    public final ScheduledFuture a(DelegatingScheduledFuture.AnonymousClass1 anonymousClass1) {
        int i2 = this.f34455a;
        Runnable runnable = this.f34457c;
        DelegatingScheduledExecutorService delegatingScheduledExecutorService = this.f34456b;
        switch (i2) {
            case 0:
                return delegatingScheduledExecutorService.f34436c.scheduleAtFixedRate(new e(delegatingScheduledExecutorService, runnable, anonymousClass1, 0), this.d, this.f34458e, this.f34459f);
            default:
                return delegatingScheduledExecutorService.f34436c.scheduleWithFixedDelay(new e(delegatingScheduledExecutorService, runnable, anonymousClass1, 2), this.d, this.f34458e, this.f34459f);
        }
    }
}
