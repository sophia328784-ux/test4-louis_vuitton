package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.Observer;
import io.reactivex.rxjava3.exceptions.Exceptions;
import io.reactivex.rxjava3.functions.Supplier;
import io.reactivex.rxjava3.internal.fuseable.CancellableQueueFuseable;
import io.reactivex.rxjava3.plugins.RxJavaPlugins;

/* JADX INFO: loaded from: classes4.dex */
public final class ObservableFromRunnable<T> extends Observable<T> implements Supplier<T> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Runnable f70554b;

    public ObservableFromRunnable(Runnable runnable) {
        this.f70554b = runnable;
    }

    @Override // io.reactivex.rxjava3.functions.Supplier
    public final Object get() {
        this.f70554b.run();
        return null;
    }

    @Override // io.reactivex.rxjava3.core.Observable
    public final void subscribeActual(Observer observer) {
        CancellableQueueFuseable cancellableQueueFuseable = new CancellableQueueFuseable();
        observer.onSubscribe(cancellableQueueFuseable);
        if (cancellableQueueFuseable.f70068b) {
            return;
        }
        try {
            this.f70554b.run();
            if (cancellableQueueFuseable.f70068b) {
                return;
            }
            observer.onComplete();
        } catch (Throwable th) {
            Exceptions.a(th);
            if (cancellableQueueFuseable.f70068b) {
                RxJavaPlugins.b(th);
            } else {
                observer.onError(th);
            }
        }
    }
}
