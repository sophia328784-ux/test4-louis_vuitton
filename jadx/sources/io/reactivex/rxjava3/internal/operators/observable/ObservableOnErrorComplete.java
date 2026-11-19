package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.core.Observer;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.exceptions.CompositeException;
import io.reactivex.rxjava3.exceptions.Exceptions;
import io.reactivex.rxjava3.functions.Predicate;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;

/* JADX INFO: loaded from: classes4.dex */
public final class ObservableOnErrorComplete<T> extends AbstractObservableWithUpstream<T, T> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Predicate f70689c;

    public static final class OnErrorCompleteObserver<T> implements Observer<T>, Disposable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Observer f70690b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final Predicate f70691c;
        public Disposable d;

        public OnErrorCompleteObserver(Observer<? super T> observer, Predicate<? super Throwable> predicate) {
            this.f70690b = observer;
            this.f70691c = predicate;
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public final void dispose() {
            this.d.dispose();
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public final boolean isDisposed() {
            return this.d.isDisposed();
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onComplete() {
            this.f70690b.onComplete();
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onError(Throwable th) {
            Observer observer = this.f70690b;
            try {
                if (this.f70691c.test(th)) {
                    observer.onComplete();
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
            this.f70690b.onNext(obj);
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onSubscribe(Disposable disposable) {
            if (DisposableHelper.g(this.d, disposable)) {
                this.d = disposable;
                this.f70690b.onSubscribe(this);
            }
        }
    }

    public ObservableOnErrorComplete(ObservableSource<T> observableSource, Predicate<? super Throwable> predicate) {
        super(observableSource);
        this.f70689c = predicate;
    }

    @Override // io.reactivex.rxjava3.core.Observable
    public final void subscribeActual(Observer observer) {
        this.f70226b.subscribe(new OnErrorCompleteObserver(observer, this.f70689c));
    }
}
