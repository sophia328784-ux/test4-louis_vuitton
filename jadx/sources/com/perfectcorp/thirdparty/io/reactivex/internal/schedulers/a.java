package com.perfectcorp.thirdparty.io.reactivex.internal.schedulers;

import com.perfectcorp.thirdparty.io.reactivex.disposables.Disposable;
import com.perfectcorp.thirdparty.io.reactivex.internal.functions.Functions;
import java.util.concurrent.Future;
import java.util.concurrent.FutureTask;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes3.dex */
abstract class a extends AtomicReference<Future<?>> implements Disposable {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    protected static final FutureTask<Void> f43065c;
    private static FutureTask<Void> d;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected final Runnable f43066a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected Thread f43067b;

    static {
        Runnable runnable = Functions.f42606b;
        f43065c = new FutureTask<>(runnable, null);
        d = new FutureTask<>(runnable, null);
    }

    public a(Runnable runnable) {
        this.f43066a = runnable;
    }

    public final void a(Future<?> future) {
        Future<?> future2;
        do {
            future2 = get();
            if (future2 == f43065c) {
                return;
            }
            if (future2 == d) {
                future.cancel(this.f43067b != Thread.currentThread());
                return;
            }
        } while (!compareAndSet(future2, future));
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.disposables.Disposable
    public final void dispose() {
        FutureTask<Void> futureTask;
        Future<?> future = get();
        if (future == f43065c || future == (futureTask = d) || !compareAndSet(future, futureTask) || future == null) {
            return;
        }
        future.cancel(this.f43067b != Thread.currentThread());
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.disposables.Disposable
    public final boolean isDisposed() {
        Future<?> future = get();
        return future == f43065c || future == d;
    }
}
