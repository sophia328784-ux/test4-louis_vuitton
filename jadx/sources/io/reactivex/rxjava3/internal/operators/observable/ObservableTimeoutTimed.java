package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.core.Observer;
import io.reactivex.rxjava3.core.Scheduler;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.internal.disposables.SequentialDisposable;
import io.reactivex.rxjava3.internal.util.ExceptionHelper;
import io.reactivex.rxjava3.plugins.RxJavaPlugins;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes4.dex */
public final class ObservableTimeoutTimed<T> extends AbstractObservableWithUpstream<T, T> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final long f70973c;
    public final TimeUnit d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Scheduler f70974e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final ObservableSource f70975f;

    public static final class FallbackObserver<T> implements Observer<T> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Observer f70976b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final AtomicReference f70977c;

        public FallbackObserver(Observer observer, AtomicReference atomicReference) {
            this.f70976b = observer;
            this.f70977c = atomicReference;
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onComplete() {
            this.f70976b.onComplete();
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onError(Throwable th) {
            this.f70976b.onError(th);
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onNext(Object obj) {
            this.f70976b.onNext(obj);
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onSubscribe(Disposable disposable) {
            DisposableHelper.c(this.f70977c, disposable);
        }
    }

    public static final class TimeoutFallbackObserver<T> extends AtomicReference<Disposable> implements Observer<T>, Disposable, TimeoutSupport {
        private static final long serialVersionUID = 3764492702657003550L;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Observer f70978b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final long f70979c;
        public final TimeUnit d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final Scheduler.Worker f70980e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final SequentialDisposable f70981f = new SequentialDisposable();
        public final AtomicLong g = new AtomicLong();

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final AtomicReference f70982h = new AtomicReference();

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public ObservableSource f70983i;

        public TimeoutFallbackObserver(Observer observer, long j2, TimeUnit timeUnit, Scheduler.Worker worker, ObservableSource observableSource) {
            this.f70978b = observer;
            this.f70979c = j2;
            this.d = timeUnit;
            this.f70980e = worker;
            this.f70983i = observableSource;
        }

        @Override // io.reactivex.rxjava3.internal.operators.observable.ObservableTimeoutTimed.TimeoutSupport
        public final void a(long j2) {
            if (this.g.compareAndSet(j2, Long.MAX_VALUE)) {
                DisposableHelper.a(this.f70982h);
                ObservableSource observableSource = this.f70983i;
                this.f70983i = null;
                observableSource.subscribe(new FallbackObserver(this.f70978b, this));
                this.f70980e.dispose();
            }
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public final void dispose() {
            DisposableHelper.a(this.f70982h);
            DisposableHelper.a(this);
            this.f70980e.dispose();
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public final boolean isDisposed() {
            return DisposableHelper.b(get());
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onComplete() {
            if (this.g.getAndSet(Long.MAX_VALUE) != Long.MAX_VALUE) {
                SequentialDisposable sequentialDisposable = this.f70981f;
                sequentialDisposable.getClass();
                DisposableHelper.a(sequentialDisposable);
                this.f70978b.onComplete();
                this.f70980e.dispose();
            }
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onError(Throwable th) {
            if (this.g.getAndSet(Long.MAX_VALUE) == Long.MAX_VALUE) {
                RxJavaPlugins.b(th);
                return;
            }
            SequentialDisposable sequentialDisposable = this.f70981f;
            sequentialDisposable.getClass();
            DisposableHelper.a(sequentialDisposable);
            this.f70978b.onError(th);
            this.f70980e.dispose();
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onNext(Object obj) {
            AtomicLong atomicLong = this.g;
            long j2 = atomicLong.get();
            if (j2 != Long.MAX_VALUE) {
                long j3 = 1 + j2;
                if (atomicLong.compareAndSet(j2, j3)) {
                    SequentialDisposable sequentialDisposable = this.f70981f;
                    sequentialDisposable.get().dispose();
                    this.f70978b.onNext(obj);
                    Disposable disposableSchedule = this.f70980e.schedule(new TimeoutTask(j3, this), this.f70979c, this.d);
                    sequentialDisposable.getClass();
                    DisposableHelper.c(sequentialDisposable, disposableSchedule);
                }
            }
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onSubscribe(Disposable disposable) {
            DisposableHelper.e(this.f70982h, disposable);
        }
    }

    public static final class TimeoutObserver<T> extends AtomicLong implements Observer<T>, Disposable, TimeoutSupport {
        private static final long serialVersionUID = 3764492702657003550L;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Observer f70984b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final long f70985c;
        public final TimeUnit d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final Scheduler.Worker f70986e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final SequentialDisposable f70987f = new SequentialDisposable();
        public final AtomicReference g = new AtomicReference();

        public TimeoutObserver(Observer observer, long j2, TimeUnit timeUnit, Scheduler.Worker worker) {
            this.f70984b = observer;
            this.f70985c = j2;
            this.d = timeUnit;
            this.f70986e = worker;
        }

        @Override // io.reactivex.rxjava3.internal.operators.observable.ObservableTimeoutTimed.TimeoutSupport
        public final void a(long j2) {
            if (compareAndSet(j2, Long.MAX_VALUE)) {
                DisposableHelper.a(this.g);
                this.f70984b.onError(new TimeoutException(ExceptionHelper.d(this.f70985c, this.d)));
                this.f70986e.dispose();
            }
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public final void dispose() {
            DisposableHelper.a(this.g);
            this.f70986e.dispose();
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public final boolean isDisposed() {
            return DisposableHelper.b((Disposable) this.g.get());
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onComplete() {
            if (getAndSet(Long.MAX_VALUE) != Long.MAX_VALUE) {
                SequentialDisposable sequentialDisposable = this.f70987f;
                sequentialDisposable.getClass();
                DisposableHelper.a(sequentialDisposable);
                this.f70984b.onComplete();
                this.f70986e.dispose();
            }
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onError(Throwable th) {
            if (getAndSet(Long.MAX_VALUE) == Long.MAX_VALUE) {
                RxJavaPlugins.b(th);
                return;
            }
            SequentialDisposable sequentialDisposable = this.f70987f;
            sequentialDisposable.getClass();
            DisposableHelper.a(sequentialDisposable);
            this.f70984b.onError(th);
            this.f70986e.dispose();
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onNext(Object obj) {
            long j2 = get();
            if (j2 != Long.MAX_VALUE) {
                long j3 = 1 + j2;
                if (compareAndSet(j2, j3)) {
                    SequentialDisposable sequentialDisposable = this.f70987f;
                    sequentialDisposable.get().dispose();
                    this.f70984b.onNext(obj);
                    Disposable disposableSchedule = this.f70986e.schedule(new TimeoutTask(j3, this), this.f70985c, this.d);
                    sequentialDisposable.getClass();
                    DisposableHelper.c(sequentialDisposable, disposableSchedule);
                }
            }
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onSubscribe(Disposable disposable) {
            DisposableHelper.e(this.g, disposable);
        }
    }

    public interface TimeoutSupport {
        void a(long j2);
    }

    public static final class TimeoutTask implements Runnable {
        final long idx;
        final TimeoutSupport parent;

        public TimeoutTask(long j2, TimeoutSupport timeoutSupport) {
            this.idx = j2;
            this.parent = timeoutSupport;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.parent.a(this.idx);
        }
    }

    public ObservableTimeoutTimed(Observable<T> observable, long j2, TimeUnit timeUnit, Scheduler scheduler, ObservableSource<? extends T> observableSource) {
        super(observable);
        this.f70973c = j2;
        this.d = timeUnit;
        this.f70974e = scheduler;
        this.f70975f = observableSource;
    }

    @Override // io.reactivex.rxjava3.core.Observable
    public final void subscribeActual(Observer observer) {
        ObservableSource observableSource = this.f70975f;
        ObservableSource observableSource2 = this.f70226b;
        Scheduler scheduler = this.f70974e;
        if (observableSource == null) {
            TimeoutObserver timeoutObserver = new TimeoutObserver(observer, this.f70973c, this.d, scheduler.b());
            observer.onSubscribe(timeoutObserver);
            Disposable disposableSchedule = timeoutObserver.f70986e.schedule(new TimeoutTask(0L, timeoutObserver), timeoutObserver.f70985c, timeoutObserver.d);
            SequentialDisposable sequentialDisposable = timeoutObserver.f70987f;
            sequentialDisposable.getClass();
            DisposableHelper.c(sequentialDisposable, disposableSchedule);
            observableSource2.subscribe(timeoutObserver);
            return;
        }
        TimeoutFallbackObserver timeoutFallbackObserver = new TimeoutFallbackObserver(observer, this.f70973c, this.d, scheduler.b(), this.f70975f);
        observer.onSubscribe(timeoutFallbackObserver);
        Disposable disposableSchedule2 = timeoutFallbackObserver.f70980e.schedule(new TimeoutTask(0L, timeoutFallbackObserver), timeoutFallbackObserver.f70979c, timeoutFallbackObserver.d);
        SequentialDisposable sequentialDisposable2 = timeoutFallbackObserver.f70981f;
        sequentialDisposable2.getClass();
        DisposableHelper.c(sequentialDisposable2, disposableSchedule2);
        observableSource2.subscribe(timeoutFallbackObserver);
    }
}
