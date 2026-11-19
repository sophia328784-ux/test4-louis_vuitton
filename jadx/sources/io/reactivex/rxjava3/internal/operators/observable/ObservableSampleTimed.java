package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.core.Observer;
import io.reactivex.rxjava3.core.Scheduler;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.exceptions.Exceptions;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.observers.SerializedObserver;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes4.dex */
public final class ObservableSampleTimed<T> extends AbstractObservableWithUpstream<T, T> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final long f70807c;
    public final TimeUnit d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Scheduler f70808e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final Consumer f70809f;
    public final boolean g;

    public static final class SampleTimedEmitLast<T> extends SampleTimedObserver<T> {
        private static final long serialVersionUID = -7139995637533111443L;
        final AtomicInteger wip;

        public SampleTimedEmitLast(Observer<? super T> observer, long j2, TimeUnit timeUnit, Scheduler scheduler, Consumer<? super T> consumer) {
            super(observer, j2, timeUnit, scheduler, consumer);
            this.wip = new AtomicInteger(1);
        }

        @Override // io.reactivex.rxjava3.internal.operators.observable.ObservableSampleTimed.SampleTimedObserver
        public void complete() {
            emit();
            if (this.wip.decrementAndGet() == 0) {
                this.downstream.onComplete();
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.wip.incrementAndGet() == 2) {
                emit();
                if (this.wip.decrementAndGet() == 0) {
                    this.downstream.onComplete();
                }
            }
        }
    }

    public static final class SampleTimedNoLast<T> extends SampleTimedObserver<T> {
        private static final long serialVersionUID = -7139995637533111443L;

        public SampleTimedNoLast(Observer<? super T> observer, long j2, TimeUnit timeUnit, Scheduler scheduler, Consumer<? super T> consumer) {
            super(observer, j2, timeUnit, scheduler, consumer);
        }

        @Override // io.reactivex.rxjava3.internal.operators.observable.ObservableSampleTimed.SampleTimedObserver
        public void complete() {
            this.downstream.onComplete();
        }

        @Override // java.lang.Runnable
        public void run() {
            emit();
        }
    }

    public static abstract class SampleTimedObserver<T> extends AtomicReference<T> implements Observer<T>, Disposable, Runnable {
        private static final long serialVersionUID = -3517602651313910099L;
        final Observer<? super T> downstream;
        final Consumer<? super T> onDropped;
        final long period;
        final Scheduler scheduler;
        final AtomicReference<Disposable> timer = new AtomicReference<>();
        final TimeUnit unit;
        Disposable upstream;

        public SampleTimedObserver(Observer<? super T> observer, long j2, TimeUnit timeUnit, Scheduler scheduler, Consumer<? super T> consumer) {
            this.downstream = observer;
            this.period = j2;
            this.unit = timeUnit;
            this.scheduler = scheduler;
            this.onDropped = consumer;
        }

        public void cancelTimer() {
            DisposableHelper.a(this.timer);
        }

        public abstract void complete();

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public void dispose() {
            cancelTimer();
            this.upstream.dispose();
        }

        public void emit() {
            T andSet = getAndSet(null);
            if (andSet != null) {
                this.downstream.onNext(andSet);
            }
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public boolean isDisposed() {
            return this.upstream.isDisposed();
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public void onComplete() {
            cancelTimer();
            complete();
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public void onError(Throwable th) {
            cancelTimer();
            this.downstream.onError(th);
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public void onNext(T t) {
            Consumer<? super T> consumer;
            T andSet = getAndSet(t);
            if (andSet == null || (consumer = this.onDropped) == null) {
                return;
            }
            try {
                consumer.accept(andSet);
            } catch (Throwable th) {
                Exceptions.a(th);
                cancelTimer();
                this.upstream.dispose();
                this.downstream.onError(th);
            }
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public void onSubscribe(Disposable disposable) {
            if (DisposableHelper.g(this.upstream, disposable)) {
                this.upstream = disposable;
                this.downstream.onSubscribe(this);
                Scheduler scheduler = this.scheduler;
                long j2 = this.period;
                DisposableHelper.c(this.timer, scheduler.e(this, j2, j2, this.unit));
            }
        }
    }

    public ObservableSampleTimed(ObservableSource<T> observableSource, long j2, TimeUnit timeUnit, Scheduler scheduler, boolean z, Consumer<? super T> consumer) {
        super(observableSource);
        this.f70807c = j2;
        this.d = timeUnit;
        this.f70808e = scheduler;
        this.g = z;
        this.f70809f = consumer;
    }

    @Override // io.reactivex.rxjava3.core.Observable
    public final void subscribeActual(Observer observer) {
        SerializedObserver serializedObserver = new SerializedObserver(observer);
        boolean z = this.g;
        ObservableSource observableSource = this.f70226b;
        if (z) {
            observableSource.subscribe(new SampleTimedEmitLast(serializedObserver, this.f70807c, this.d, this.f70808e, this.f70809f));
        } else {
            observableSource.subscribe(new SampleTimedNoLast(serializedObserver, this.f70807c, this.d, this.f70808e, this.f70809f));
        }
    }
}
