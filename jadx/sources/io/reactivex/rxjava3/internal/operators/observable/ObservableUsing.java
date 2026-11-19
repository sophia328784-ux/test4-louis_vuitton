package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.core.Observer;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.exceptions.CompositeException;
import io.reactivex.rxjava3.exceptions.Exceptions;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.functions.Supplier;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.internal.disposables.EmptyDisposable;
import io.reactivex.rxjava3.plugins.RxJavaPlugins;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes4.dex */
public final class ObservableUsing<T, D> extends Observable<T> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Supplier f71000b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Function f71001c;
    public final Consumer d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final boolean f71002e;

    public static final class UsingObserver<T, D> extends AtomicBoolean implements Observer<T>, Disposable {
        private static final long serialVersionUID = 5904473792286235046L;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Observer f71003b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final Object f71004c;
        public final Consumer d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final boolean f71005e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public Disposable f71006f;

        public UsingObserver(Observer observer, Object obj, Consumer consumer, boolean z) {
            this.f71003b = observer;
            this.f71004c = obj;
            this.d = consumer;
            this.f71005e = z;
        }

        public final void a() {
            if (compareAndSet(false, true)) {
                try {
                    this.d.accept(this.f71004c);
                } catch (Throwable th) {
                    Exceptions.a(th);
                    RxJavaPlugins.b(th);
                }
            }
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public final void dispose() {
            if (this.f71005e) {
                a();
                this.f71006f.dispose();
                this.f71006f = DisposableHelper.DISPOSED;
            } else {
                this.f71006f.dispose();
                this.f71006f = DisposableHelper.DISPOSED;
                a();
            }
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public final boolean isDisposed() {
            return get();
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onComplete() {
            boolean z = this.f71005e;
            Observer observer = this.f71003b;
            if (!z) {
                observer.onComplete();
                a();
                return;
            }
            if (compareAndSet(false, true)) {
                try {
                    this.d.accept(this.f71004c);
                } catch (Throwable th) {
                    Exceptions.a(th);
                    observer.onError(th);
                    return;
                }
            }
            observer.onComplete();
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onError(Throwable th) {
            boolean z = this.f71005e;
            Observer observer = this.f71003b;
            if (!z) {
                observer.onError(th);
                a();
                return;
            }
            if (compareAndSet(false, true)) {
                try {
                    this.d.accept(this.f71004c);
                } catch (Throwable th2) {
                    Exceptions.a(th2);
                    th = new CompositeException(th, th2);
                }
            }
            observer.onError(th);
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onNext(Object obj) {
            this.f71003b.onNext(obj);
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onSubscribe(Disposable disposable) {
            if (DisposableHelper.g(this.f71006f, disposable)) {
                this.f71006f = disposable;
                this.f71003b.onSubscribe(this);
            }
        }
    }

    public ObservableUsing(Supplier<? extends D> supplier, Function<? super D, ? extends ObservableSource<? extends T>> function, Consumer<? super D> consumer, boolean z) {
        this.f71000b = supplier;
        this.f71001c = function;
        this.d = consumer;
        this.f71002e = z;
    }

    @Override // io.reactivex.rxjava3.core.Observable
    public final void subscribeActual(Observer observer) {
        Consumer consumer = this.d;
        try {
            Object obj = this.f71000b.get();
            try {
                Object objApply = this.f71001c.apply(obj);
                Objects.requireNonNull(objApply, "The sourceSupplier returned a null ObservableSource");
                ((ObservableSource) objApply).subscribe(new UsingObserver(observer, obj, consumer, this.f71002e));
            } catch (Throwable th) {
                Exceptions.a(th);
                try {
                    consumer.accept(obj);
                    EmptyDisposable.b(th, observer);
                } catch (Throwable th2) {
                    Exceptions.a(th2);
                    EmptyDisposable.b(new CompositeException(th, th2), observer);
                }
            }
        } catch (Throwable th3) {
            Exceptions.a(th3);
            EmptyDisposable.b(th3, observer);
        }
    }
}
