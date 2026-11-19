package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.core.Observer;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.internal.disposables.SequentialDisposable;

/* JADX INFO: loaded from: classes4.dex */
public final class ObservableSwitchIfEmpty<T> extends AbstractObservableWithUpstream<T, T> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ObservableSource f70898c;

    public static final class SwitchIfEmptyObserver<T> implements Observer<T> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Observer f70899b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final ObservableSource f70900c;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public boolean f70901e = true;
        public final SequentialDisposable d = new SequentialDisposable();

        public SwitchIfEmptyObserver(Observer observer, ObservableSource observableSource) {
            this.f70899b = observer;
            this.f70900c = observableSource;
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onComplete() {
            if (!this.f70901e) {
                this.f70899b.onComplete();
            } else {
                this.f70901e = false;
                this.f70900c.subscribe(this);
            }
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onError(Throwable th) {
            this.f70899b.onError(th);
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onNext(Object obj) {
            if (this.f70901e) {
                this.f70901e = false;
            }
            this.f70899b.onNext(obj);
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onSubscribe(Disposable disposable) {
            SequentialDisposable sequentialDisposable = this.d;
            sequentialDisposable.getClass();
            DisposableHelper.d(sequentialDisposable, disposable);
        }
    }

    public ObservableSwitchIfEmpty(ObservableSource<T> observableSource, ObservableSource<? extends T> observableSource2) {
        super(observableSource);
        this.f70898c = observableSource2;
    }

    @Override // io.reactivex.rxjava3.core.Observable
    public final void subscribeActual(Observer observer) {
        SwitchIfEmptyObserver switchIfEmptyObserver = new SwitchIfEmptyObserver(observer, this.f70898c);
        observer.onSubscribe(switchIfEmptyObserver.d);
        this.f70226b.subscribe(switchIfEmptyObserver);
    }
}
