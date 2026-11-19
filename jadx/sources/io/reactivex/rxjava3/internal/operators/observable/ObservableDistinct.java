package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.core.Observer;
import io.reactivex.rxjava3.exceptions.Exceptions;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.functions.Supplier;
import io.reactivex.rxjava3.internal.disposables.EmptyDisposable;
import io.reactivex.rxjava3.internal.observers.BasicFuseableObserver;
import io.reactivex.rxjava3.internal.util.ExceptionHelper;
import io.reactivex.rxjava3.plugins.RxJavaPlugins;
import java.util.Collection;
import java.util.Objects;

/* JADX INFO: loaded from: classes4.dex */
public final class ObservableDistinct<T, K> extends AbstractObservableWithUpstream<T, T> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Function f70441c;
    public final Supplier d;

    public static final class DistinctObserver<T, K> extends BasicFuseableObserver<T, T> {
        public final Collection g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final Function f70442h;

        public DistinctObserver(Observer observer, Function function, Collection collection) {
            super(observer);
            this.f70442h = function;
            this.g = collection;
        }

        @Override // io.reactivex.rxjava3.internal.observers.BasicFuseableObserver, io.reactivex.rxjava3.operators.SimpleQueue
        public final void clear() {
            this.g.clear();
            super.clear();
        }

        @Override // io.reactivex.rxjava3.internal.observers.BasicFuseableObserver, io.reactivex.rxjava3.core.Observer
        public final void onComplete() {
            if (this.f70103e) {
                return;
            }
            this.f70103e = true;
            this.g.clear();
            this.f70101b.onComplete();
        }

        @Override // io.reactivex.rxjava3.internal.observers.BasicFuseableObserver, io.reactivex.rxjava3.core.Observer
        public final void onError(Throwable th) {
            if (this.f70103e) {
                RxJavaPlugins.b(th);
                return;
            }
            this.f70103e = true;
            this.g.clear();
            this.f70101b.onError(th);
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onNext(Object obj) {
            if (this.f70103e) {
                return;
            }
            int i2 = this.f70104f;
            Observer observer = this.f70101b;
            if (i2 != 0) {
                observer.onNext(null);
                return;
            }
            try {
                Object objApply = this.f70442h.apply(obj);
                Objects.requireNonNull(objApply, "The keySelector returned a null key");
                if (this.g.add(objApply)) {
                    observer.onNext(obj);
                }
            } catch (Throwable th) {
                a(th);
            }
        }

        @Override // io.reactivex.rxjava3.operators.SimpleQueue
        public final Object poll() {
            Object objPoll;
            Object objApply;
            do {
                objPoll = this.d.poll();
                if (objPoll == null) {
                    break;
                }
                objApply = this.f70442h.apply(objPoll);
                Objects.requireNonNull(objApply, "The keySelector returned a null key");
            } while (!this.g.add(objApply));
            return objPoll;
        }
    }

    public ObservableDistinct(ObservableSource<T> observableSource, Function<? super T, K> function, Supplier<? extends Collection<? super K>> supplier) {
        super(observableSource);
        this.f70441c = function;
        this.d = supplier;
    }

    @Override // io.reactivex.rxjava3.core.Observable
    public final void subscribeActual(Observer observer) {
        try {
            Object obj = this.d.get();
            if (obj == null) {
                throw ExceptionHelper.b("The collectionSupplier returned a null Collection.");
            }
            Throwable th = ExceptionHelper.f71119a;
            this.f70226b.subscribe(new DistinctObserver(observer, this.f70441c, (Collection) obj));
        } catch (Throwable th2) {
            Exceptions.a(th2);
            EmptyDisposable.b(th2, observer);
        }
    }
}
