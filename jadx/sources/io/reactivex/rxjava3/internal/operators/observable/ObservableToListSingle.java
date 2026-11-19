package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.core.Observer;
import io.reactivex.rxjava3.core.Single;
import io.reactivex.rxjava3.core.SingleObserver;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.exceptions.Exceptions;
import io.reactivex.rxjava3.functions.Supplier;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.internal.disposables.EmptyDisposable;
import io.reactivex.rxjava3.internal.functions.Functions;
import io.reactivex.rxjava3.internal.fuseable.FuseToObservable;
import io.reactivex.rxjava3.internal.util.ExceptionHelper;
import java.util.Collection;

/* JADX INFO: loaded from: classes4.dex */
public final class ObservableToListSingle<T, U extends Collection<? super T>> extends Single<U> implements FuseToObservable<U> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ObservableSource f70993b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Supplier f70994c;

    public static final class ToListObserver<T, U extends Collection<? super T>> implements Observer<T>, Disposable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final SingleObserver f70995b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public Collection f70996c;
        public Disposable d;

        public ToListObserver(SingleObserver singleObserver, Collection collection) {
            this.f70995b = singleObserver;
            this.f70996c = collection;
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
            Collection collection = this.f70996c;
            this.f70996c = null;
            this.f70995b.onSuccess(collection);
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onError(Throwable th) {
            this.f70996c = null;
            this.f70995b.onError(th);
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onNext(Object obj) {
            this.f70996c.add(obj);
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onSubscribe(Disposable disposable) {
            if (DisposableHelper.g(this.d, disposable)) {
                this.d = disposable;
                this.f70995b.onSubscribe(this);
            }
        }
    }

    public ObservableToListSingle(ObservableSource<T> observableSource, int i2) {
        this.f70993b = observableSource;
        this.f70994c = Functions.c(i2);
    }

    @Override // io.reactivex.rxjava3.internal.fuseable.FuseToObservable
    public final Observable b() {
        return new ObservableToList(this.f70993b, this.f70994c);
    }

    @Override // io.reactivex.rxjava3.core.Single
    public final void e(SingleObserver singleObserver) {
        try {
            Object obj = this.f70994c.get();
            if (obj == null) {
                throw ExceptionHelper.b("The collectionSupplier returned a null Collection.");
            }
            Throwable th = ExceptionHelper.f71119a;
            this.f70993b.subscribe(new ToListObserver(singleObserver, (Collection) obj));
        } catch (Throwable th2) {
            Exceptions.a(th2);
            singleObserver.onSubscribe(EmptyDisposable.INSTANCE);
            singleObserver.onError(th2);
        }
    }

    public ObservableToListSingle(ObservableSource<T> observableSource, Supplier<U> supplier) {
        this.f70993b = observableSource;
        this.f70994c = supplier;
    }
}
