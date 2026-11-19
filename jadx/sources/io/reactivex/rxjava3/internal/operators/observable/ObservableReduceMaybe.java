package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.core.Maybe;
import io.reactivex.rxjava3.core.MaybeObserver;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.core.Observer;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.exceptions.Exceptions;
import io.reactivex.rxjava3.functions.BiFunction;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.plugins.RxJavaPlugins;
import java.util.Objects;

/* JADX INFO: loaded from: classes4.dex */
public final class ObservableReduceMaybe<T> extends Maybe<T> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ObservableSource f70722b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final BiFunction f70723c;

    public static final class ReduceObserver<T> implements Observer<T>, Disposable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final MaybeObserver f70724b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final BiFunction f70725c;
        public boolean d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public Object f70726e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public Disposable f70727f;

        public ReduceObserver(MaybeObserver maybeObserver, BiFunction biFunction) {
            this.f70724b = maybeObserver;
            this.f70725c = biFunction;
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public final void dispose() {
            this.f70727f.dispose();
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public final boolean isDisposed() {
            return this.f70727f.isDisposed();
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onComplete() {
            if (this.d) {
                return;
            }
            this.d = true;
            Object obj = this.f70726e;
            this.f70726e = null;
            MaybeObserver maybeObserver = this.f70724b;
            if (obj != null) {
                maybeObserver.onSuccess(obj);
            } else {
                maybeObserver.onComplete();
            }
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onError(Throwable th) {
            if (this.d) {
                RxJavaPlugins.b(th);
                return;
            }
            this.d = true;
            this.f70726e = null;
            this.f70724b.onError(th);
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onNext(Object obj) {
            if (this.d) {
                return;
            }
            Object obj2 = this.f70726e;
            if (obj2 == null) {
                this.f70726e = obj;
                return;
            }
            try {
                Object objApply = this.f70725c.apply(obj2, obj);
                Objects.requireNonNull(objApply, "The reducer returned a null value");
                this.f70726e = objApply;
            } catch (Throwable th) {
                Exceptions.a(th);
                this.f70727f.dispose();
                onError(th);
            }
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onSubscribe(Disposable disposable) {
            if (DisposableHelper.g(this.f70727f, disposable)) {
                this.f70727f = disposable;
                this.f70724b.onSubscribe(this);
            }
        }
    }

    public ObservableReduceMaybe(ObservableSource<T> observableSource, BiFunction<T, T, T> biFunction) {
        this.f70722b = observableSource;
        this.f70723c = biFunction;
    }

    @Override // io.reactivex.rxjava3.core.Maybe
    public final void c(MaybeObserver maybeObserver) {
        this.f70722b.subscribe(new ReduceObserver(maybeObserver, this.f70723c));
    }
}
