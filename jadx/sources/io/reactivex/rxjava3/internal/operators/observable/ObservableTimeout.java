package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.core.Observer;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.exceptions.Exceptions;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.internal.disposables.SequentialDisposable;
import io.reactivex.rxjava3.plugins.RxJavaPlugins;
import java.util.Objects;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes4.dex */
public final class ObservableTimeout<T, U, V> extends AbstractObservableWithUpstream<T, T> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ObservableSource f70962c;
    public final Function d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final ObservableSource f70963e;

    public static final class TimeoutConsumer extends AtomicReference<Disposable> implements Observer<Object>, Disposable {
        private static final long serialVersionUID = 8708641127342403073L;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final TimeoutSelectorSupport f70964b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final long f70965c;

        public TimeoutConsumer(long j2, TimeoutSelectorSupport timeoutSelectorSupport) {
            this.f70965c = j2;
            this.f70964b = timeoutSelectorSupport;
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public final void dispose() {
            DisposableHelper.a(this);
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public final boolean isDisposed() {
            return DisposableHelper.b(get());
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onComplete() {
            Object obj = get();
            DisposableHelper disposableHelper = DisposableHelper.DISPOSED;
            if (obj != disposableHelper) {
                lazySet(disposableHelper);
                this.f70964b.a(this.f70965c);
            }
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onError(Throwable th) {
            Object obj = get();
            DisposableHelper disposableHelper = DisposableHelper.DISPOSED;
            if (obj == disposableHelper) {
                RxJavaPlugins.b(th);
            } else {
                lazySet(disposableHelper);
                this.f70964b.b(th, this.f70965c);
            }
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onNext(Object obj) {
            Disposable disposable = (Disposable) get();
            DisposableHelper disposableHelper = DisposableHelper.DISPOSED;
            if (disposable != disposableHelper) {
                disposable.dispose();
                lazySet(disposableHelper);
                this.f70964b.a(this.f70965c);
            }
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onSubscribe(Disposable disposable) {
            DisposableHelper.e(this, disposable);
        }
    }

    public static final class TimeoutFallbackObserver<T> extends AtomicReference<Disposable> implements Observer<T>, Disposable, TimeoutSelectorSupport {
        private static final long serialVersionUID = -7508389464265974549L;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Observer f70966b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final Function f70967c;
        public final SequentialDisposable d = new SequentialDisposable();

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final AtomicLong f70968e = new AtomicLong();

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final AtomicReference f70969f = new AtomicReference();
        public ObservableSource g;

        public TimeoutFallbackObserver(ObservableSource observableSource, Observer observer, Function function) {
            this.f70966b = observer;
            this.f70967c = function;
            this.g = observableSource;
        }

        @Override // io.reactivex.rxjava3.internal.operators.observable.ObservableTimeoutTimed.TimeoutSupport
        public final void a(long j2) {
            if (this.f70968e.compareAndSet(j2, Long.MAX_VALUE)) {
                DisposableHelper.a(this.f70969f);
                ObservableSource observableSource = this.g;
                this.g = null;
                observableSource.subscribe(new ObservableTimeoutTimed.FallbackObserver(this.f70966b, this));
            }
        }

        @Override // io.reactivex.rxjava3.internal.operators.observable.ObservableTimeout.TimeoutSelectorSupport
        public final void b(Throwable th, long j2) {
            if (!this.f70968e.compareAndSet(j2, Long.MAX_VALUE)) {
                RxJavaPlugins.b(th);
            } else {
                DisposableHelper.a(this);
                this.f70966b.onError(th);
            }
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public final void dispose() {
            DisposableHelper.a(this.f70969f);
            DisposableHelper.a(this);
            SequentialDisposable sequentialDisposable = this.d;
            sequentialDisposable.getClass();
            DisposableHelper.a(sequentialDisposable);
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public final boolean isDisposed() {
            return DisposableHelper.b(get());
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onComplete() {
            if (this.f70968e.getAndSet(Long.MAX_VALUE) != Long.MAX_VALUE) {
                SequentialDisposable sequentialDisposable = this.d;
                sequentialDisposable.getClass();
                DisposableHelper.a(sequentialDisposable);
                this.f70966b.onComplete();
                sequentialDisposable.getClass();
                DisposableHelper.a(sequentialDisposable);
            }
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onError(Throwable th) {
            if (this.f70968e.getAndSet(Long.MAX_VALUE) == Long.MAX_VALUE) {
                RxJavaPlugins.b(th);
                return;
            }
            SequentialDisposable sequentialDisposable = this.d;
            sequentialDisposable.getClass();
            DisposableHelper.a(sequentialDisposable);
            this.f70966b.onError(th);
            sequentialDisposable.getClass();
            DisposableHelper.a(sequentialDisposable);
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onNext(Object obj) {
            AtomicLong atomicLong = this.f70968e;
            long j2 = atomicLong.get();
            if (j2 != Long.MAX_VALUE) {
                long j3 = 1 + j2;
                if (atomicLong.compareAndSet(j2, j3)) {
                    SequentialDisposable sequentialDisposable = this.d;
                    Disposable disposable = sequentialDisposable.get();
                    if (disposable != null) {
                        disposable.dispose();
                    }
                    Observer observer = this.f70966b;
                    observer.onNext(obj);
                    try {
                        Object objApply = this.f70967c.apply(obj);
                        Objects.requireNonNull(objApply, "The itemTimeoutIndicator returned a null ObservableSource.");
                        ObservableSource observableSource = (ObservableSource) objApply;
                        TimeoutConsumer timeoutConsumer = new TimeoutConsumer(j3, this);
                        sequentialDisposable.getClass();
                        if (DisposableHelper.c(sequentialDisposable, timeoutConsumer)) {
                            observableSource.subscribe(timeoutConsumer);
                        }
                    } catch (Throwable th) {
                        Exceptions.a(th);
                        ((Disposable) this.f70969f.get()).dispose();
                        atomicLong.getAndSet(Long.MAX_VALUE);
                        observer.onError(th);
                    }
                }
            }
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onSubscribe(Disposable disposable) {
            DisposableHelper.e(this.f70969f, disposable);
        }
    }

    public static final class TimeoutObserver<T> extends AtomicLong implements Observer<T>, Disposable, TimeoutSelectorSupport {
        private static final long serialVersionUID = 3764492702657003550L;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Observer f70970b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final Function f70971c;
        public final SequentialDisposable d = new SequentialDisposable();

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final AtomicReference f70972e = new AtomicReference();

        public TimeoutObserver(Observer observer, Function function) {
            this.f70970b = observer;
            this.f70971c = function;
        }

        @Override // io.reactivex.rxjava3.internal.operators.observable.ObservableTimeoutTimed.TimeoutSupport
        public final void a(long j2) {
            if (compareAndSet(j2, Long.MAX_VALUE)) {
                DisposableHelper.a(this.f70972e);
                this.f70970b.onError(new TimeoutException());
            }
        }

        @Override // io.reactivex.rxjava3.internal.operators.observable.ObservableTimeout.TimeoutSelectorSupport
        public final void b(Throwable th, long j2) {
            if (!compareAndSet(j2, Long.MAX_VALUE)) {
                RxJavaPlugins.b(th);
            } else {
                DisposableHelper.a(this.f70972e);
                this.f70970b.onError(th);
            }
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public final void dispose() {
            DisposableHelper.a(this.f70972e);
            SequentialDisposable sequentialDisposable = this.d;
            sequentialDisposable.getClass();
            DisposableHelper.a(sequentialDisposable);
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public final boolean isDisposed() {
            return DisposableHelper.b((Disposable) this.f70972e.get());
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onComplete() {
            if (getAndSet(Long.MAX_VALUE) != Long.MAX_VALUE) {
                SequentialDisposable sequentialDisposable = this.d;
                sequentialDisposable.getClass();
                DisposableHelper.a(sequentialDisposable);
                this.f70970b.onComplete();
            }
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onError(Throwable th) {
            if (getAndSet(Long.MAX_VALUE) == Long.MAX_VALUE) {
                RxJavaPlugins.b(th);
                return;
            }
            SequentialDisposable sequentialDisposable = this.d;
            sequentialDisposable.getClass();
            DisposableHelper.a(sequentialDisposable);
            this.f70970b.onError(th);
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onNext(Object obj) {
            long j2 = get();
            if (j2 != Long.MAX_VALUE) {
                long j3 = 1 + j2;
                if (compareAndSet(j2, j3)) {
                    SequentialDisposable sequentialDisposable = this.d;
                    Disposable disposable = sequentialDisposable.get();
                    if (disposable != null) {
                        disposable.dispose();
                    }
                    Observer observer = this.f70970b;
                    observer.onNext(obj);
                    try {
                        Object objApply = this.f70971c.apply(obj);
                        Objects.requireNonNull(objApply, "The itemTimeoutIndicator returned a null ObservableSource.");
                        ObservableSource observableSource = (ObservableSource) objApply;
                        TimeoutConsumer timeoutConsumer = new TimeoutConsumer(j3, this);
                        sequentialDisposable.getClass();
                        if (DisposableHelper.c(sequentialDisposable, timeoutConsumer)) {
                            observableSource.subscribe(timeoutConsumer);
                        }
                    } catch (Throwable th) {
                        Exceptions.a(th);
                        ((Disposable) this.f70972e.get()).dispose();
                        getAndSet(Long.MAX_VALUE);
                        observer.onError(th);
                    }
                }
            }
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onSubscribe(Disposable disposable) {
            DisposableHelper.e(this.f70972e, disposable);
        }
    }

    public interface TimeoutSelectorSupport extends ObservableTimeoutTimed.TimeoutSupport {
        void b(Throwable th, long j2);
    }

    public ObservableTimeout(Observable<T> observable, ObservableSource<U> observableSource, Function<? super T, ? extends ObservableSource<V>> function, ObservableSource<? extends T> observableSource2) {
        super(observable);
        this.f70962c = observableSource;
        this.d = function;
        this.f70963e = observableSource2;
    }

    @Override // io.reactivex.rxjava3.core.Observable
    public final void subscribeActual(Observer observer) {
        ObservableSource observableSource = this.f70226b;
        ObservableSource observableSource2 = this.f70962c;
        Function function = this.d;
        ObservableSource observableSource3 = this.f70963e;
        if (observableSource3 == null) {
            TimeoutObserver timeoutObserver = new TimeoutObserver(observer, function);
            observer.onSubscribe(timeoutObserver);
            if (observableSource2 != null) {
                TimeoutConsumer timeoutConsumer = new TimeoutConsumer(0L, timeoutObserver);
                SequentialDisposable sequentialDisposable = timeoutObserver.d;
                sequentialDisposable.getClass();
                if (DisposableHelper.c(sequentialDisposable, timeoutConsumer)) {
                    observableSource2.subscribe(timeoutConsumer);
                }
            }
            observableSource.subscribe(timeoutObserver);
            return;
        }
        TimeoutFallbackObserver timeoutFallbackObserver = new TimeoutFallbackObserver(observableSource3, observer, function);
        observer.onSubscribe(timeoutFallbackObserver);
        if (observableSource2 != null) {
            TimeoutConsumer timeoutConsumer2 = new TimeoutConsumer(0L, timeoutFallbackObserver);
            SequentialDisposable sequentialDisposable2 = timeoutFallbackObserver.d;
            sequentialDisposable2.getClass();
            if (DisposableHelper.c(sequentialDisposable2, timeoutConsumer2)) {
                observableSource2.subscribe(timeoutConsumer2);
            }
        }
        observableSource.subscribe(timeoutFallbackObserver);
    }
}
