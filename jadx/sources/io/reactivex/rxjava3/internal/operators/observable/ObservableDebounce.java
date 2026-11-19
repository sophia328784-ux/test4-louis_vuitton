package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.core.Observer;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.exceptions.Exceptions;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.observers.DisposableObserver;
import io.reactivex.rxjava3.observers.SerializedObserver;
import io.reactivex.rxjava3.plugins.RxJavaPlugins;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes4.dex */
public final class ObservableDebounce<T, U> extends AbstractObservableWithUpstream<T, T> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Function f70403c;

    public static final class DebounceObserver<T, U> implements Observer<T>, Disposable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final SerializedObserver f70404b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final Function f70405c;
        public Disposable d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final AtomicReference f70406e = new AtomicReference();

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public volatile long f70407f;
        public boolean g;

        public static final class DebounceInnerObserver<T, U> extends DisposableObserver<U> {

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final DebounceObserver f70408c;
            public final long d;

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            public final Object f70409e;

            /* JADX INFO: renamed from: f, reason: collision with root package name */
            public boolean f70410f;
            public final AtomicBoolean g = new AtomicBoolean();

            public DebounceInnerObserver(DebounceObserver debounceObserver, long j2, Object obj) {
                this.f70408c = debounceObserver;
                this.d = j2;
                this.f70409e = obj;
            }

            public final void a() {
                if (this.g.compareAndSet(false, true)) {
                    DebounceObserver debounceObserver = this.f70408c;
                    long j2 = this.d;
                    Object obj = this.f70409e;
                    if (j2 == debounceObserver.f70407f) {
                        debounceObserver.f70404b.onNext(obj);
                    }
                }
            }

            @Override // io.reactivex.rxjava3.core.Observer
            public final void onComplete() {
                if (this.f70410f) {
                    return;
                }
                this.f70410f = true;
                a();
            }

            @Override // io.reactivex.rxjava3.core.Observer
            public final void onError(Throwable th) {
                if (this.f70410f) {
                    RxJavaPlugins.b(th);
                } else {
                    this.f70410f = true;
                    this.f70408c.onError(th);
                }
            }

            @Override // io.reactivex.rxjava3.core.Observer
            public final void onNext(Object obj) {
                if (this.f70410f) {
                    return;
                }
                this.f70410f = true;
                dispose();
                a();
            }
        }

        public DebounceObserver(SerializedObserver serializedObserver, Function function) {
            this.f70404b = serializedObserver;
            this.f70405c = function;
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public final void dispose() {
            this.d.dispose();
            DisposableHelper.a(this.f70406e);
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public final boolean isDisposed() {
            return this.d.isDisposed();
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onComplete() {
            if (this.g) {
                return;
            }
            this.g = true;
            AtomicReference atomicReference = this.f70406e;
            Disposable disposable = (Disposable) atomicReference.get();
            if (disposable != DisposableHelper.DISPOSED) {
                DebounceInnerObserver debounceInnerObserver = (DebounceInnerObserver) disposable;
                if (debounceInnerObserver != null) {
                    debounceInnerObserver.a();
                }
                DisposableHelper.a(atomicReference);
                this.f70404b.onComplete();
            }
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onError(Throwable th) {
            DisposableHelper.a(this.f70406e);
            this.f70404b.onError(th);
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onNext(Object obj) {
            if (this.g) {
                return;
            }
            long j2 = this.f70407f + 1;
            this.f70407f = j2;
            Disposable disposable = (Disposable) this.f70406e.get();
            if (disposable != null) {
                disposable.dispose();
            }
            try {
                Object objApply = this.f70405c.apply(obj);
                Objects.requireNonNull(objApply, "The ObservableSource supplied is null");
                ObservableSource observableSource = (ObservableSource) objApply;
                DebounceInnerObserver debounceInnerObserver = new DebounceInnerObserver(this, j2, obj);
                AtomicReference atomicReference = this.f70406e;
                while (!atomicReference.compareAndSet(disposable, debounceInnerObserver)) {
                    if (atomicReference.get() != disposable) {
                        return;
                    }
                }
                observableSource.subscribe(debounceInnerObserver);
            } catch (Throwable th) {
                Exceptions.a(th);
                dispose();
                this.f70404b.onError(th);
            }
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onSubscribe(Disposable disposable) {
            if (DisposableHelper.g(this.d, disposable)) {
                this.d = disposable;
                this.f70404b.onSubscribe(this);
            }
        }
    }

    public ObservableDebounce(ObservableSource<T> observableSource, Function<? super T, ? extends ObservableSource<U>> function) {
        super(observableSource);
        this.f70403c = function;
    }

    @Override // io.reactivex.rxjava3.core.Observable
    public final void subscribeActual(Observer observer) {
        this.f70226b.subscribe(new DebounceObserver(new SerializedObserver(observer), this.f70403c));
    }
}
