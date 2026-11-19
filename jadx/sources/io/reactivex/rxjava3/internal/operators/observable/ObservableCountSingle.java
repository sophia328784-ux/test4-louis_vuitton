package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.core.Observer;
import io.reactivex.rxjava3.core.Single;
import io.reactivex.rxjava3.core.SingleObserver;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.internal.fuseable.FuseToObservable;

/* JADX INFO: loaded from: classes4.dex */
public final class ObservableCountSingle<T> extends Single<Long> implements FuseToObservable<Long> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ObservableSource f70398b;

    public static final class CountObserver implements Observer<Object>, Disposable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final SingleObserver f70399b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public Disposable f70400c;
        public long d;

        public CountObserver(SingleObserver singleObserver) {
            this.f70399b = singleObserver;
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public final void dispose() {
            this.f70400c.dispose();
            this.f70400c = DisposableHelper.DISPOSED;
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public final boolean isDisposed() {
            return this.f70400c.isDisposed();
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onComplete() {
            this.f70400c = DisposableHelper.DISPOSED;
            this.f70399b.onSuccess(Long.valueOf(this.d));
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onError(Throwable th) {
            this.f70400c = DisposableHelper.DISPOSED;
            this.f70399b.onError(th);
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onNext(Object obj) {
            this.d++;
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onSubscribe(Disposable disposable) {
            if (DisposableHelper.g(this.f70400c, disposable)) {
                this.f70400c = disposable;
                this.f70399b.onSubscribe(this);
            }
        }
    }

    public ObservableCountSingle(ObservableSource<T> observableSource) {
        this.f70398b = observableSource;
    }

    @Override // io.reactivex.rxjava3.internal.fuseable.FuseToObservable
    public final Observable b() {
        return new ObservableCount(this.f70398b);
    }

    @Override // io.reactivex.rxjava3.core.Single
    public final void e(SingleObserver singleObserver) {
        this.f70398b.subscribe(new CountObserver(singleObserver));
    }
}
