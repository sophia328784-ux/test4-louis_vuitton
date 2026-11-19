package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.core.Observer;
import io.reactivex.rxjava3.core.Scheduler;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.observers.SerializedObserver;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes4.dex */
public final class ObservableDelay<T> extends AbstractObservableWithUpstream<T, T> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final long f70422c;
    public final TimeUnit d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Scheduler f70423e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final boolean f70424f;

    public static final class DelayObserver<T> implements Observer<T>, Disposable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Observer f70425b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final long f70426c;
        public final TimeUnit d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final Scheduler.Worker f70427e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final boolean f70428f;
        public Disposable g;

        public final class OnComplete implements Runnable {
            public OnComplete() {
            }

            @Override // java.lang.Runnable
            public void run() {
                try {
                    DelayObserver.this.f70425b.onComplete();
                } finally {
                    DelayObserver.this.f70427e.dispose();
                }
            }
        }

        public final class OnError implements Runnable {
            private final Throwable throwable;

            public OnError(Throwable th) {
                this.throwable = th;
            }

            @Override // java.lang.Runnable
            public void run() {
                try {
                    DelayObserver.this.f70425b.onError(this.throwable);
                } finally {
                    DelayObserver.this.f70427e.dispose();
                }
            }
        }

        public final class OnNext implements Runnable {
            private final T t;

            public OnNext(T t) {
                this.t = t;
            }

            @Override // java.lang.Runnable
            public void run() {
                DelayObserver.this.f70425b.onNext(this.t);
            }
        }

        public DelayObserver(Observer observer, long j2, TimeUnit timeUnit, Scheduler.Worker worker, boolean z) {
            this.f70425b = observer;
            this.f70426c = j2;
            this.d = timeUnit;
            this.f70427e = worker;
            this.f70428f = z;
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public final void dispose() {
            this.g.dispose();
            this.f70427e.dispose();
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public final boolean isDisposed() {
            return this.f70427e.isDisposed();
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onComplete() {
            this.f70427e.schedule(new OnComplete(), this.f70426c, this.d);
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onError(Throwable th) {
            this.f70427e.schedule(new OnError(th), this.f70428f ? this.f70426c : 0L, this.d);
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onNext(Object obj) {
            this.f70427e.schedule(new OnNext(obj), this.f70426c, this.d);
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onSubscribe(Disposable disposable) {
            if (DisposableHelper.g(this.g, disposable)) {
                this.g = disposable;
                this.f70425b.onSubscribe(this);
            }
        }
    }

    public ObservableDelay(ObservableSource<T> observableSource, long j2, TimeUnit timeUnit, Scheduler scheduler, boolean z) {
        super(observableSource);
        this.f70422c = j2;
        this.d = timeUnit;
        this.f70423e = scheduler;
        this.f70424f = z;
    }

    @Override // io.reactivex.rxjava3.core.Observable
    public final void subscribeActual(Observer observer) {
        Observer serializedObserver = this.f70424f ? observer : new SerializedObserver(observer);
        this.f70226b.subscribe(new DelayObserver(serializedObserver, this.f70422c, this.d, this.f70423e.b(), this.f70424f));
    }
}
