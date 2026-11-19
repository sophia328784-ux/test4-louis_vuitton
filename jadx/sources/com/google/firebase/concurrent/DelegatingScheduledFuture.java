package com.google.firebase.concurrent;

import androidx.concurrent.futures.AbstractResolvableFuture;
import java.util.concurrent.Delayed;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes2.dex */
class DelegatingScheduledFuture<V> extends AbstractResolvableFuture<V> implements ScheduledFuture<V> {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final /* synthetic */ int f34437j = 0;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final ScheduledFuture f34438i;

    /* JADX INFO: renamed from: com.google.firebase.concurrent.DelegatingScheduledFuture$1, reason: invalid class name */
    class AnonymousClass1 implements Completer<Object> {
        public AnonymousClass1() {
        }

        public final void a(Object obj) {
            int i2 = DelegatingScheduledFuture.f34437j;
            DelegatingScheduledFuture.this.j(obj);
        }

        public final void b(Exception exc) {
            int i2 = DelegatingScheduledFuture.f34437j;
            DelegatingScheduledFuture.this.k(exc);
        }
    }

    public interface Completer<T> {
    }

    public interface Resolver<T> {
        ScheduledFuture a(AnonymousClass1 anonymousClass1);
    }

    public DelegatingScheduledFuture(Resolver resolver) {
        this.f34438i = resolver.a(new AnonymousClass1());
    }

    @Override // androidx.concurrent.futures.AbstractResolvableFuture
    public final void b() {
        this.f34438i.cancel(l());
    }

    @Override // java.lang.Comparable
    public final int compareTo(Delayed delayed) {
        return this.f34438i.compareTo(delayed);
    }

    @Override // java.util.concurrent.Delayed
    public final long getDelay(TimeUnit timeUnit) {
        return this.f34438i.getDelay(timeUnit);
    }
}
