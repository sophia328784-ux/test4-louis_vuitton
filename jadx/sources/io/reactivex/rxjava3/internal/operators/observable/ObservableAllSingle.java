package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.core.Observer;
import io.reactivex.rxjava3.core.Single;
import io.reactivex.rxjava3.core.SingleObserver;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.exceptions.Exceptions;
import io.reactivex.rxjava3.functions.Predicate;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.internal.fuseable.FuseToObservable;
import io.reactivex.rxjava3.plugins.RxJavaPlugins;

/* JADX INFO: loaded from: classes4.dex */
public final class ObservableAllSingle<T> extends Single<Boolean> implements FuseToObservable<Boolean> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ObservableSource f70252b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Predicate f70253c;

    public static final class AllObserver<T> implements Observer<T>, Disposable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final SingleObserver f70254b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final Predicate f70255c;
        public Disposable d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public boolean f70256e;

        public AllObserver(SingleObserver singleObserver, Predicate predicate) {
            this.f70254b = singleObserver;
            this.f70255c = predicate;
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
            if (this.f70256e) {
                return;
            }
            this.f70256e = true;
            this.f70254b.onSuccess(Boolean.TRUE);
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onError(Throwable th) {
            if (this.f70256e) {
                RxJavaPlugins.b(th);
            } else {
                this.f70256e = true;
                this.f70254b.onError(th);
            }
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onNext(Object obj) {
            if (this.f70256e) {
                return;
            }
            try {
                if (this.f70255c.test(obj)) {
                    return;
                }
                this.f70256e = true;
                this.d.dispose();
                this.f70254b.onSuccess(Boolean.FALSE);
            } catch (Throwable th) {
                Exceptions.a(th);
                this.d.dispose();
                onError(th);
            }
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onSubscribe(Disposable disposable) {
            if (DisposableHelper.g(this.d, disposable)) {
                this.d = disposable;
                this.f70254b.onSubscribe(this);
            }
        }
    }

    public ObservableAllSingle(ObservableSource<T> observableSource, Predicate<? super T> predicate) {
        this.f70252b = observableSource;
        this.f70253c = predicate;
    }

    @Override // io.reactivex.rxjava3.internal.fuseable.FuseToObservable
    public final Observable b() {
        return new ObservableAll(this.f70252b, this.f70253c);
    }

    @Override // io.reactivex.rxjava3.core.Single
    public final void e(SingleObserver singleObserver) {
        this.f70252b.subscribe(new AllObserver(singleObserver, this.f70253c));
    }
}
