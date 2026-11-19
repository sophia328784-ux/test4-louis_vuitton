package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.core.Observer;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.exceptions.CompositeException;
import io.reactivex.rxjava3.exceptions.Exceptions;
import io.reactivex.rxjava3.functions.Predicate;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.internal.disposables.SequentialDisposable;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes4.dex */
public final class ObservableRetryPredicate<T> extends AbstractObservableWithUpstream<T, T> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Predicate f70794c;
    public final long d;

    public static final class RepeatObserver<T> extends AtomicInteger implements Observer<T> {
        private static final long serialVersionUID = -7098360935104053232L;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Observer f70795b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final SequentialDisposable f70796c;
        public final ObservableSource d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final Predicate f70797e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public long f70798f;

        public RepeatObserver(Observer observer, long j2, Predicate predicate, SequentialDisposable sequentialDisposable, ObservableSource observableSource) {
            this.f70795b = observer;
            this.f70796c = sequentialDisposable;
            this.d = observableSource;
            this.f70797e = predicate;
            this.f70798f = j2;
        }

        public final void a() {
            if (getAndIncrement() == 0) {
                int iAddAndGet = 1;
                while (!this.f70796c.isDisposed()) {
                    this.d.subscribe(this);
                    iAddAndGet = addAndGet(-iAddAndGet);
                    if (iAddAndGet == 0) {
                        return;
                    }
                }
            }
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onComplete() {
            this.f70795b.onComplete();
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onError(Throwable th) {
            long j2 = this.f70798f;
            if (j2 != Long.MAX_VALUE) {
                this.f70798f = j2 - 1;
            }
            Observer observer = this.f70795b;
            if (j2 == 0) {
                observer.onError(th);
                return;
            }
            try {
                if (this.f70797e.test(th)) {
                    a();
                } else {
                    observer.onError(th);
                }
            } catch (Throwable th2) {
                Exceptions.a(th2);
                observer.onError(new CompositeException(th, th2));
            }
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onNext(Object obj) {
            this.f70795b.onNext(obj);
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onSubscribe(Disposable disposable) {
            SequentialDisposable sequentialDisposable = this.f70796c;
            sequentialDisposable.getClass();
            DisposableHelper.c(sequentialDisposable, disposable);
        }
    }

    public ObservableRetryPredicate(Observable<T> observable, long j2, Predicate<? super Throwable> predicate) {
        super(observable);
        this.f70794c = predicate;
        this.d = j2;
    }

    @Override // io.reactivex.rxjava3.core.Observable
    public final void subscribeActual(Observer observer) {
        SequentialDisposable sequentialDisposable = new SequentialDisposable();
        observer.onSubscribe(sequentialDisposable);
        new RepeatObserver(observer, this.d, this.f70794c, sequentialDisposable, this.f70226b).a();
    }
}
