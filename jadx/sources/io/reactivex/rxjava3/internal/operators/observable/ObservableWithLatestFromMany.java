package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.core.Observer;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.exceptions.Exceptions;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.internal.disposables.EmptyDisposable;
import io.reactivex.rxjava3.internal.util.AtomicThrowable;
import io.reactivex.rxjava3.internal.util.HalfSerializer;
import io.reactivex.rxjava3.plugins.RxJavaPlugins;
import java.util.Arrays;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;
import java.util.concurrent.atomic.AtomicReferenceArray;

/* JADX INFO: loaded from: classes4.dex */
public final class ObservableWithLatestFromMany<T, R> extends AbstractObservableWithUpstream<T, R> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ObservableSource[] f71030c;
    public final Iterable d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Function f71031e;

    public final class SingletonArrayFunc implements Function<T, R> {
        public SingletonArrayFunc() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public final Object apply(Object obj) {
            Object objApply = ObservableWithLatestFromMany.this.f71031e.apply(new Object[]{obj});
            Objects.requireNonNull(objApply, "The combiner returned a null value");
            return objApply;
        }
    }

    public static final class WithLatestFromObserver<T, R> extends AtomicInteger implements Observer<T>, Disposable {
        private static final long serialVersionUID = 1577321883966341961L;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Observer f71033b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final Function f71034c;
        public final WithLatestInnerObserver[] d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final AtomicReferenceArray f71035e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final AtomicReference f71036f;
        public final AtomicThrowable g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public volatile boolean f71037h;

        public WithLatestFromObserver(Observer observer, Function function, int i2) {
            this.f71033b = observer;
            this.f71034c = function;
            WithLatestInnerObserver[] withLatestInnerObserverArr = new WithLatestInnerObserver[i2];
            for (int i3 = 0; i3 < i2; i3++) {
                withLatestInnerObserverArr[i3] = new WithLatestInnerObserver(this, i3);
            }
            this.d = withLatestInnerObserverArr;
            this.f71035e = new AtomicReferenceArray(i2);
            this.f71036f = new AtomicReference();
            this.g = new AtomicThrowable();
        }

        public final void a(int i2) {
            int i3 = 0;
            while (true) {
                WithLatestInnerObserver[] withLatestInnerObserverArr = this.d;
                if (i3 >= withLatestInnerObserverArr.length) {
                    return;
                }
                if (i3 != i2) {
                    WithLatestInnerObserver withLatestInnerObserver = withLatestInnerObserverArr[i3];
                    withLatestInnerObserver.getClass();
                    DisposableHelper.a(withLatestInnerObserver);
                }
                i3++;
            }
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public final void dispose() {
            DisposableHelper.a(this.f71036f);
            for (WithLatestInnerObserver withLatestInnerObserver : this.d) {
                withLatestInnerObserver.getClass();
                DisposableHelper.a(withLatestInnerObserver);
            }
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public final boolean isDisposed() {
            return DisposableHelper.b((Disposable) this.f71036f.get());
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onComplete() {
            if (this.f71037h) {
                return;
            }
            this.f71037h = true;
            a(-1);
            HalfSerializer.a(this.f71033b, this, this.g);
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onError(Throwable th) {
            if (this.f71037h) {
                RxJavaPlugins.b(th);
                return;
            }
            this.f71037h = true;
            a(-1);
            HalfSerializer.b(this.f71033b, th, this, this.g);
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onNext(Object obj) {
            if (this.f71037h) {
                return;
            }
            AtomicReferenceArray atomicReferenceArray = this.f71035e;
            int length = atomicReferenceArray.length();
            Object[] objArr = new Object[length + 1];
            int i2 = 0;
            objArr[0] = obj;
            while (i2 < length) {
                Object obj2 = atomicReferenceArray.get(i2);
                if (obj2 == null) {
                    return;
                }
                i2++;
                objArr[i2] = obj2;
            }
            try {
                Object objApply = this.f71034c.apply(objArr);
                Objects.requireNonNull(objApply, "combiner returned a null value");
                HalfSerializer.c(this.f71033b, objApply, this, this.g);
            } catch (Throwable th) {
                Exceptions.a(th);
                dispose();
                onError(th);
            }
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onSubscribe(Disposable disposable) {
            DisposableHelper.e(this.f71036f, disposable);
        }
    }

    public static final class WithLatestInnerObserver extends AtomicReference<Disposable> implements Observer<Object> {
        private static final long serialVersionUID = 3256684027868224024L;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final WithLatestFromObserver f71038b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final int f71039c;
        public boolean d;

        public WithLatestInnerObserver(WithLatestFromObserver withLatestFromObserver, int i2) {
            this.f71038b = withLatestFromObserver;
            this.f71039c = i2;
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onComplete() {
            WithLatestFromObserver withLatestFromObserver = this.f71038b;
            int i2 = this.f71039c;
            if (this.d) {
                withLatestFromObserver.getClass();
                return;
            }
            withLatestFromObserver.f71037h = true;
            withLatestFromObserver.a(i2);
            HalfSerializer.a(withLatestFromObserver.f71033b, withLatestFromObserver, withLatestFromObserver.g);
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onError(Throwable th) {
            WithLatestFromObserver withLatestFromObserver = this.f71038b;
            int i2 = this.f71039c;
            withLatestFromObserver.f71037h = true;
            DisposableHelper.a(withLatestFromObserver.f71036f);
            withLatestFromObserver.a(i2);
            HalfSerializer.b(withLatestFromObserver.f71033b, th, withLatestFromObserver, withLatestFromObserver.g);
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onNext(Object obj) {
            if (!this.d) {
                this.d = true;
            }
            this.f71038b.f71035e.set(this.f71039c, obj);
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onSubscribe(Disposable disposable) {
            DisposableHelper.e(this, disposable);
        }
    }

    public ObservableWithLatestFromMany(ObservableSource<T> observableSource, ObservableSource<?>[] observableSourceArr, Function<? super Object[], R> function) {
        super(observableSource);
        this.f71030c = observableSourceArr;
        this.d = null;
        this.f71031e = function;
    }

    @Override // io.reactivex.rxjava3.core.Observable
    public final void subscribeActual(Observer observer) {
        int length;
        ObservableSource[] observableSourceArr = this.f71030c;
        if (observableSourceArr == null) {
            observableSourceArr = new ObservableSource[8];
            try {
                length = 0;
                for (ObservableSource observableSource : this.d) {
                    if (length == observableSourceArr.length) {
                        observableSourceArr = (ObservableSource[]) Arrays.copyOf(observableSourceArr, (length >> 1) + length);
                    }
                    int i2 = length + 1;
                    observableSourceArr[length] = observableSource;
                    length = i2;
                }
            } catch (Throwable th) {
                Exceptions.a(th);
                EmptyDisposable.b(th, observer);
                return;
            }
        } else {
            length = observableSourceArr.length;
        }
        if (length == 0) {
            new ObservableMap(this.f70226b, new SingletonArrayFunc()).subscribeActual(observer);
            return;
        }
        WithLatestFromObserver withLatestFromObserver = new WithLatestFromObserver(observer, this.f71031e, length);
        observer.onSubscribe(withLatestFromObserver);
        WithLatestInnerObserver[] withLatestInnerObserverArr = withLatestFromObserver.d;
        AtomicReference atomicReference = withLatestFromObserver.f71036f;
        for (int i3 = 0; i3 < length && !DisposableHelper.b((Disposable) atomicReference.get()) && !withLatestFromObserver.f71037h; i3++) {
            observableSourceArr[i3].subscribe(withLatestInnerObserverArr[i3]);
        }
        this.f70226b.subscribe(withLatestFromObserver);
    }

    public ObservableWithLatestFromMany(ObservableSource<T> observableSource, Iterable<? extends ObservableSource<?>> iterable, Function<? super Object[], R> function) {
        super(observableSource);
        this.f71030c = null;
        this.d = iterable;
        this.f71031e = function;
    }
}
