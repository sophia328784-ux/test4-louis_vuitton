package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.Observer;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.exceptions.Exceptions;
import io.reactivex.rxjava3.functions.BiFunction;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.internal.disposables.EmptyDisposable;
import io.reactivex.rxjava3.plugins.RxJavaPlugins;
import java.util.Iterator;
import java.util.Objects;

/* JADX INFO: loaded from: classes4.dex */
public final class ObservableZipIterable<T, U, V> extends Observable<V> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Observable f71052b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Iterable f71053c;
    public final BiFunction d;

    public static final class ZipIterableObserver<T, U, V> implements Observer<T>, Disposable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Observer f71054b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final Iterator f71055c;
        public final BiFunction d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public Disposable f71056e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public boolean f71057f;

        public ZipIterableObserver(Observer observer, Iterator it, BiFunction biFunction) {
            this.f71054b = observer;
            this.f71055c = it;
            this.d = biFunction;
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public final void dispose() {
            this.f71056e.dispose();
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public final boolean isDisposed() {
            return this.f71056e.isDisposed();
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onComplete() {
            if (this.f71057f) {
                return;
            }
            this.f71057f = true;
            this.f71054b.onComplete();
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onError(Throwable th) {
            if (this.f71057f) {
                RxJavaPlugins.b(th);
            } else {
                this.f71057f = true;
                this.f71054b.onError(th);
            }
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onNext(Object obj) {
            Observer observer = this.f71054b;
            Iterator it = this.f71055c;
            if (this.f71057f) {
                return;
            }
            try {
                Object next = it.next();
                Objects.requireNonNull(next, "The iterator returned a null value");
                try {
                    Object objApply = this.d.apply(obj, next);
                    Objects.requireNonNull(objApply, "The zipper function returned a null value");
                    observer.onNext(objApply);
                    try {
                        if (it.hasNext()) {
                            return;
                        }
                        this.f71057f = true;
                        this.f71056e.dispose();
                        observer.onComplete();
                    } catch (Throwable th) {
                        Exceptions.a(th);
                        this.f71057f = true;
                        this.f71056e.dispose();
                        observer.onError(th);
                    }
                } catch (Throwable th2) {
                    Exceptions.a(th2);
                    this.f71057f = true;
                    this.f71056e.dispose();
                    observer.onError(th2);
                }
            } catch (Throwable th3) {
                Exceptions.a(th3);
                this.f71057f = true;
                this.f71056e.dispose();
                observer.onError(th3);
            }
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onSubscribe(Disposable disposable) {
            if (DisposableHelper.g(this.f71056e, disposable)) {
                this.f71056e = disposable;
                this.f71054b.onSubscribe(this);
            }
        }
    }

    public ObservableZipIterable(Observable<? extends T> observable, Iterable<U> iterable, BiFunction<? super T, ? super U, ? extends V> biFunction) {
        this.f71052b = observable;
        this.f71053c = iterable;
        this.d = biFunction;
    }

    @Override // io.reactivex.rxjava3.core.Observable
    public final void subscribeActual(Observer observer) {
        try {
            Iterator<T> it = this.f71053c.iterator();
            Objects.requireNonNull(it, "The iterator returned by other is null");
            try {
                if (!it.hasNext()) {
                    EmptyDisposable.a(observer);
                } else {
                    this.f71052b.subscribe(new ZipIterableObserver(observer, it, this.d));
                }
            } catch (Throwable th) {
                Exceptions.a(th);
                EmptyDisposable.b(th, observer);
            }
        } catch (Throwable th2) {
            Exceptions.a(th2);
            EmptyDisposable.b(th2, observer);
        }
    }
}
