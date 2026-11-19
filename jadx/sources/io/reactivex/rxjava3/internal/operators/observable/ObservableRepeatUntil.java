package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.core.Observer;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.exceptions.Exceptions;
import io.reactivex.rxjava3.functions.BooleanSupplier;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.internal.disposables.SequentialDisposable;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes4.dex */
public final class ObservableRepeatUntil<T> extends AbstractObservableWithUpstream<T, T> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final BooleanSupplier f70746c;

    public static final class RepeatUntilObserver<T> extends AtomicInteger implements Observer<T> {
        private static final long serialVersionUID = -7098360935104053232L;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Observer f70747b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final SequentialDisposable f70748c;
        public final ObservableSource d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final BooleanSupplier f70749e;

        public RepeatUntilObserver(Observer observer, BooleanSupplier booleanSupplier, SequentialDisposable sequentialDisposable, ObservableSource observableSource) {
            this.f70747b = observer;
            this.f70748c = sequentialDisposable;
            this.d = observableSource;
            this.f70749e = booleanSupplier;
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onComplete() {
            Observer observer = this.f70747b;
            try {
                if (this.f70749e.a()) {
                    observer.onComplete();
                } else if (getAndIncrement() == 0) {
                    int iAddAndGet = 1;
                    do {
                        this.d.subscribe(this);
                        iAddAndGet = addAndGet(-iAddAndGet);
                    } while (iAddAndGet != 0);
                }
            } catch (Throwable th) {
                Exceptions.a(th);
                observer.onError(th);
            }
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onError(Throwable th) {
            this.f70747b.onError(th);
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onNext(Object obj) {
            this.f70747b.onNext(obj);
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onSubscribe(Disposable disposable) {
            SequentialDisposable sequentialDisposable = this.f70748c;
            sequentialDisposable.getClass();
            DisposableHelper.c(sequentialDisposable, disposable);
        }
    }

    public ObservableRepeatUntil(Observable<T> observable, BooleanSupplier booleanSupplier) {
        super(observable);
        this.f70746c = booleanSupplier;
    }

    @Override // io.reactivex.rxjava3.core.Observable
    public final void subscribeActual(Observer observer) {
        SequentialDisposable sequentialDisposable = new SequentialDisposable();
        observer.onSubscribe(sequentialDisposable);
        RepeatUntilObserver repeatUntilObserver = new RepeatUntilObserver(observer, this.f70746c, sequentialDisposable, this.f70226b);
        if (repeatUntilObserver.getAndIncrement() == 0) {
            int iAddAndGet = 1;
            do {
                repeatUntilObserver.d.subscribe(repeatUntilObserver);
                iAddAndGet = repeatUntilObserver.addAndGet(-iAddAndGet);
            } while (iAddAndGet != 0);
        }
    }
}
