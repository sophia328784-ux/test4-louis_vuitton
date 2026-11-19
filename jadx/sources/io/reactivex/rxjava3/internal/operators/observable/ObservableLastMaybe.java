package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.core.Maybe;
import io.reactivex.rxjava3.core.MaybeObserver;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.core.Observer;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;

/* JADX INFO: loaded from: classes4.dex */
public final class ObservableLastMaybe<T> extends Maybe<T> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ObservableSource f70644b;

    public static final class LastObserver<T> implements Observer<T>, Disposable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final MaybeObserver f70645b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public Disposable f70646c;
        public Object d;

        public LastObserver(MaybeObserver maybeObserver) {
            this.f70645b = maybeObserver;
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public final void dispose() {
            this.f70646c.dispose();
            this.f70646c = DisposableHelper.DISPOSED;
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public final boolean isDisposed() {
            return this.f70646c == DisposableHelper.DISPOSED;
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onComplete() {
            this.f70646c = DisposableHelper.DISPOSED;
            Object obj = this.d;
            MaybeObserver maybeObserver = this.f70645b;
            if (obj == null) {
                maybeObserver.onComplete();
            } else {
                this.d = null;
                maybeObserver.onSuccess(obj);
            }
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onError(Throwable th) {
            this.f70646c = DisposableHelper.DISPOSED;
            this.d = null;
            this.f70645b.onError(th);
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onNext(Object obj) {
            this.d = obj;
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onSubscribe(Disposable disposable) {
            if (DisposableHelper.g(this.f70646c, disposable)) {
                this.f70646c = disposable;
                this.f70645b.onSubscribe(this);
            }
        }
    }

    public ObservableLastMaybe(ObservableSource<T> observableSource) {
        this.f70644b = observableSource;
    }

    @Override // io.reactivex.rxjava3.core.Maybe
    public final void c(MaybeObserver maybeObserver) {
        this.f70644b.subscribe(new LastObserver(maybeObserver));
    }
}
