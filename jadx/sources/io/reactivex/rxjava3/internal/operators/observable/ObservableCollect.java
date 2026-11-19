package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.core.Observer;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.exceptions.Exceptions;
import io.reactivex.rxjava3.functions.BiConsumer;
import io.reactivex.rxjava3.functions.Supplier;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.internal.disposables.EmptyDisposable;
import io.reactivex.rxjava3.plugins.RxJavaPlugins;
import java.util.Objects;

/* JADX INFO: loaded from: classes4.dex */
public final class ObservableCollect<T, U> extends AbstractObservableWithUpstream<T, U> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Supplier f70322c;
    public final BiConsumer d;

    public static final class CollectObserver<T, U> implements Observer<T>, Disposable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Observer f70323b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final BiConsumer f70324c;
        public final Object d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public Disposable f70325e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public boolean f70326f;

        public CollectObserver(Observer observer, Object obj, BiConsumer biConsumer) {
            this.f70323b = observer;
            this.f70324c = biConsumer;
            this.d = obj;
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public final void dispose() {
            this.f70325e.dispose();
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public final boolean isDisposed() {
            return this.f70325e.isDisposed();
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onComplete() {
            if (this.f70326f) {
                return;
            }
            this.f70326f = true;
            Object obj = this.d;
            Observer observer = this.f70323b;
            observer.onNext(obj);
            observer.onComplete();
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onError(Throwable th) {
            if (this.f70326f) {
                RxJavaPlugins.b(th);
            } else {
                this.f70326f = true;
                this.f70323b.onError(th);
            }
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onNext(Object obj) {
            if (this.f70326f) {
                return;
            }
            try {
                this.f70324c.accept(this.d, obj);
            } catch (Throwable th) {
                Exceptions.a(th);
                this.f70325e.dispose();
                onError(th);
            }
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onSubscribe(Disposable disposable) {
            if (DisposableHelper.g(this.f70325e, disposable)) {
                this.f70325e = disposable;
                this.f70323b.onSubscribe(this);
            }
        }
    }

    public ObservableCollect(ObservableSource<T> observableSource, Supplier<? extends U> supplier, BiConsumer<? super U, ? super T> biConsumer) {
        super(observableSource);
        this.f70322c = supplier;
        this.d = biConsumer;
    }

    @Override // io.reactivex.rxjava3.core.Observable
    public final void subscribeActual(Observer observer) {
        try {
            Object obj = this.f70322c.get();
            Objects.requireNonNull(obj, "The initialSupplier returned a null value");
            this.f70226b.subscribe(new CollectObserver(observer, obj, this.d));
        } catch (Throwable th) {
            Exceptions.a(th);
            EmptyDisposable.b(th, observer);
        }
    }
}
