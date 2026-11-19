package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.core.Observer;
import io.reactivex.rxjava3.core.Single;
import io.reactivex.rxjava3.core.SingleObserver;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.exceptions.Exceptions;
import io.reactivex.rxjava3.functions.BiConsumer;
import io.reactivex.rxjava3.functions.Supplier;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.internal.disposables.EmptyDisposable;
import io.reactivex.rxjava3.internal.fuseable.FuseToObservable;
import io.reactivex.rxjava3.plugins.RxJavaPlugins;
import java.util.Objects;

/* JADX INFO: loaded from: classes4.dex */
public final class ObservableCollectSingle<T, U> extends Single<U> implements FuseToObservable<U> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ObservableSource f70327b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Supplier f70328c;
    public final BiConsumer d;

    public static final class CollectObserver<T, U> implements Observer<T>, Disposable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final SingleObserver f70329b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final BiConsumer f70330c;
        public final Object d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public Disposable f70331e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public boolean f70332f;

        public CollectObserver(SingleObserver singleObserver, Object obj, BiConsumer biConsumer) {
            this.f70329b = singleObserver;
            this.f70330c = biConsumer;
            this.d = obj;
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public final void dispose() {
            this.f70331e.dispose();
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public final boolean isDisposed() {
            return this.f70331e.isDisposed();
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onComplete() {
            if (this.f70332f) {
                return;
            }
            this.f70332f = true;
            this.f70329b.onSuccess(this.d);
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onError(Throwable th) {
            if (this.f70332f) {
                RxJavaPlugins.b(th);
            } else {
                this.f70332f = true;
                this.f70329b.onError(th);
            }
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onNext(Object obj) {
            if (this.f70332f) {
                return;
            }
            try {
                this.f70330c.accept(this.d, obj);
            } catch (Throwable th) {
                Exceptions.a(th);
                this.f70331e.dispose();
                onError(th);
            }
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onSubscribe(Disposable disposable) {
            if (DisposableHelper.g(this.f70331e, disposable)) {
                this.f70331e = disposable;
                this.f70329b.onSubscribe(this);
            }
        }
    }

    public ObservableCollectSingle(ObservableSource<T> observableSource, Supplier<? extends U> supplier, BiConsumer<? super U, ? super T> biConsumer) {
        this.f70327b = observableSource;
        this.f70328c = supplier;
        this.d = biConsumer;
    }

    @Override // io.reactivex.rxjava3.internal.fuseable.FuseToObservable
    public final Observable b() {
        return new ObservableCollect(this.f70327b, this.f70328c, this.d);
    }

    @Override // io.reactivex.rxjava3.core.Single
    public final void e(SingleObserver singleObserver) {
        try {
            Object obj = this.f70328c.get();
            Objects.requireNonNull(obj, "The initialSupplier returned a null value");
            this.f70327b.subscribe(new CollectObserver(singleObserver, obj, this.d));
        } catch (Throwable th) {
            Exceptions.a(th);
            singleObserver.onSubscribe(EmptyDisposable.INSTANCE);
            singleObserver.onError(th);
        }
    }
}
