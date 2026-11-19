package com.google.firebase.concurrent;

import java.util.concurrent.Callable;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class b implements DelegatingScheduledFuture.Resolver {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f34449a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ DelegatingScheduledExecutorService f34450b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ long f34451c;
    public final /* synthetic */ TimeUnit d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f34452e;

    public /* synthetic */ b(DelegatingScheduledExecutorService delegatingScheduledExecutorService, Object obj, long j2, TimeUnit timeUnit, int i2) {
        this.f34449a = i2;
        this.f34450b = delegatingScheduledExecutorService;
        this.f34452e = obj;
        this.f34451c = j2;
        this.d = timeUnit;
    }

    @Override // com.google.firebase.concurrent.DelegatingScheduledFuture.Resolver
    public final ScheduledFuture a(final DelegatingScheduledFuture.AnonymousClass1 anonymousClass1) {
        int i2 = this.f34449a;
        TimeUnit timeUnit = this.d;
        long j2 = this.f34451c;
        Object obj = this.f34452e;
        final DelegatingScheduledExecutorService delegatingScheduledExecutorService = this.f34450b;
        switch (i2) {
            case 0:
                return delegatingScheduledExecutorService.f34436c.schedule(new e(delegatingScheduledExecutorService, (Runnable) obj, anonymousClass1, 1), j2, timeUnit);
            default:
                final Callable callable = (Callable) obj;
                return delegatingScheduledExecutorService.f34436c.schedule(new Callable() { // from class: com.google.firebase.concurrent.f
                    @Override // java.util.concurrent.Callable
                    public final Object call() {
                        return delegatingScheduledExecutorService.f34435b.submit(new a(callable, anonymousClass1, 1));
                    }
                }, j2, timeUnit);
        }
    }
}
