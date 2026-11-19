package com.perfectcorp.thirdparty.io.reactivex.internal.schedulers;

import com.perfectcorp.thirdparty.io.reactivex.disposables.Disposable;
import com.perfectcorp.thirdparty.io.reactivex.internal.disposables.DisposableContainer;
import java.util.concurrent.Callable;
import java.util.concurrent.Future;
import java.util.concurrent.atomic.AtomicReferenceArray;

/* JADX INFO: loaded from: classes3.dex */
public final class k extends AtomicReferenceArray<Object> implements Disposable, Runnable, Callable<Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static Object f43118b = new Object();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static Object f43119c = new Object();
    private static Object d = new Object();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static Object f43120e = new Object();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Runnable f43121a;

    public k(Runnable runnable, DisposableContainer disposableContainer) {
        super(3);
        this.f43121a = runnable;
        lazySet(0, disposableContainer);
    }

    public final void a(Future<?> future) {
        Object obj;
        do {
            obj = get(1);
            if (obj == f43120e) {
                return;
            }
            if (obj == f43119c) {
                future.cancel(false);
                return;
            } else if (obj == d) {
                future.cancel(true);
                return;
            }
        } while (!compareAndSet(1, obj, future));
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        run();
        return null;
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.disposables.Disposable
    public final void dispose() {
        Object obj;
        Object obj2;
        while (true) {
            Object obj3 = get(1);
            if (obj3 == f43120e || obj3 == f43119c || obj3 == d) {
                break;
            }
            boolean z = get(2) != Thread.currentThread();
            if (compareAndSet(1, obj3, z ? d : f43119c)) {
                if (obj3 == null) {
                    break;
                }
                ((Future) obj3).cancel(z);
                break;
            }
        }
        do {
            obj = get(0);
            if (obj == f43120e || obj == (obj2 = f43118b) || obj == null) {
                return;
            }
        } while (!compareAndSet(0, obj, obj2));
        ((DisposableContainer) obj).c(this);
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.disposables.Disposable
    public final boolean isDisposed() {
        Object obj = get(0);
        return obj == f43118b || obj == f43120e;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Object obj;
        Object obj2;
        lazySet(2, Thread.currentThread());
        try {
            this.f43121a.run();
        } catch (Throwable th) {
            try {
                com.perfectcorp.thirdparty.io.reactivex.plugins.a.a(th);
            } finally {
                lazySet(2, null);
                Object obj3 = get(0);
                if (obj3 != f43118b && compareAndSet(0, obj3, f43120e) && obj3 != null) {
                    ((DisposableContainer) obj3).c(this);
                }
                do {
                    obj = get(1);
                    if (obj == f43119c || obj == d) {
                        break;
                    }
                } while (!compareAndSet(1, obj, f43120e));
            }
        }
        lazySet(2, null);
        Object obj4 = get(0);
        if (obj4 != f43118b && compareAndSet(0, obj4, f43120e) && obj4 != null) {
            ((DisposableContainer) obj4).c(this);
        }
        do {
            obj = get(1);
            Object obj5 = f43119c;
            if (obj == obj5) {
                return;
            } else {
                if (obj == obj2) {
                    return;
                }
            }
        } while (!compareAndSet(1, obj, f43120e));
    }
}
