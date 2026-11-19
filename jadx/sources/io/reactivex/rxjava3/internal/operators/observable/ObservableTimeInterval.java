package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.core.Observer;
import io.reactivex.rxjava3.core.Scheduler;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.schedulers.Timed;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes4.dex */
public final class ObservableTimeInterval<T> extends AbstractObservableWithUpstream<T, Timed<T>> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Scheduler f70957c;
    public final TimeUnit d;

    public static final class TimeIntervalObserver<T> implements Observer<T>, Disposable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Observer f70958b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final TimeUnit f70959c;
        public final Scheduler d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public long f70960e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public Disposable f70961f;

        public TimeIntervalObserver(Observer observer, TimeUnit timeUnit, Scheduler scheduler) {
            this.f70958b = observer;
            this.d = scheduler;
            this.f70959c = timeUnit;
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public final void dispose() {
            this.f70961f.dispose();
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public final boolean isDisposed() {
            return this.f70961f.isDisposed();
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onComplete() {
            this.f70958b.onComplete();
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onError(Throwable th) {
            this.f70958b.onError(th);
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onNext(Object obj) {
            this.d.getClass();
            TimeUnit timeUnit = this.f70959c;
            long jA = Scheduler.a(timeUnit);
            long j2 = this.f70960e;
            this.f70960e = jA;
            this.f70958b.onNext(new Timed(obj, jA - j2, timeUnit));
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onSubscribe(Disposable disposable) {
            if (DisposableHelper.g(this.f70961f, disposable)) {
                this.f70961f = disposable;
                this.d.getClass();
                this.f70960e = Scheduler.a(this.f70959c);
                this.f70958b.onSubscribe(this);
            }
        }
    }

    public ObservableTimeInterval(ObservableSource<T> observableSource, TimeUnit timeUnit, Scheduler scheduler) {
        super(observableSource);
        this.f70957c = scheduler;
        this.d = timeUnit;
    }

    @Override // io.reactivex.rxjava3.core.Observable
    public final void subscribeActual(Observer observer) {
        this.f70226b.subscribe(new TimeIntervalObserver(observer, this.d, this.f70957c));
    }
}
