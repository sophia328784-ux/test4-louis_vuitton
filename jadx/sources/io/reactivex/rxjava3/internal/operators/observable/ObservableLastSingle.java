package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.core.Observer;
import io.reactivex.rxjava3.core.Single;
import io.reactivex.rxjava3.core.SingleObserver;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import java.util.NoSuchElementException;

/* JADX INFO: loaded from: classes4.dex */
public final class ObservableLastSingle<T> extends Single<T> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ObservableSource f70647b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Object f70648c;

    public static final class LastObserver<T> implements Observer<T>, Disposable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final SingleObserver f70649b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final Object f70650c;
        public Disposable d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public Object f70651e;

        public LastObserver(SingleObserver singleObserver, Object obj) {
            this.f70649b = singleObserver;
            this.f70650c = obj;
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public final void dispose() {
            this.d.dispose();
            this.d = DisposableHelper.DISPOSED;
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public final boolean isDisposed() {
            return this.d == DisposableHelper.DISPOSED;
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onComplete() {
            this.d = DisposableHelper.DISPOSED;
            Object obj = this.f70651e;
            SingleObserver singleObserver = this.f70649b;
            if (obj != null) {
                this.f70651e = null;
                singleObserver.onSuccess(obj);
                return;
            }
            Object obj2 = this.f70650c;
            if (obj2 != null) {
                singleObserver.onSuccess(obj2);
            } else {
                singleObserver.onError(new NoSuchElementException());
            }
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onError(Throwable th) {
            this.d = DisposableHelper.DISPOSED;
            this.f70651e = null;
            this.f70649b.onError(th);
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onNext(Object obj) {
            this.f70651e = obj;
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onSubscribe(Disposable disposable) {
            if (DisposableHelper.g(this.d, disposable)) {
                this.d = disposable;
                this.f70649b.onSubscribe(this);
            }
        }
    }

    public ObservableLastSingle(ObservableSource<T> observableSource, T t) {
        this.f70647b = observableSource;
        this.f70648c = t;
    }

    @Override // io.reactivex.rxjava3.core.Single
    public final void e(SingleObserver singleObserver) {
        this.f70647b.subscribe(new LastObserver(singleObserver, this.f70648c));
    }
}
