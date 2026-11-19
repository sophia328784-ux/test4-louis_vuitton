package io.reactivex.rxjava3.internal.operators.mixed;

import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.Observer;
import io.reactivex.rxjava3.core.SingleObserver;
import io.reactivex.rxjava3.core.SingleSource;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.exceptions.Exceptions;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.internal.util.AtomicThrowable;
import io.reactivex.rxjava3.plugins.RxJavaPlugins;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes4.dex */
public final class ObservableSwitchMapSingle<T, R> extends Observable<R> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Observable f70211b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Function f70212c;
    public final boolean d;

    public static final class SwitchMapSingleMainObserver<T, R> extends AtomicInteger implements Observer<T>, Disposable {

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public static final SwitchMapSingleObserver f70213j = new SwitchMapSingleObserver(null);
        private static final long serialVersionUID = -5402190102429853762L;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Observer f70214b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final Function f70215c;
        public final boolean d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final AtomicThrowable f70216e = new AtomicThrowable();

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final AtomicReference f70217f = new AtomicReference();
        public Disposable g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public volatile boolean f70218h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public volatile boolean f70219i;

        public static final class SwitchMapSingleObserver<R> extends AtomicReference<Disposable> implements SingleObserver<R> {
            private static final long serialVersionUID = 8042919737683345351L;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final SwitchMapSingleMainObserver f70220b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public volatile Object f70221c;

            public SwitchMapSingleObserver(SwitchMapSingleMainObserver switchMapSingleMainObserver) {
                this.f70220b = switchMapSingleMainObserver;
            }

            @Override // io.reactivex.rxjava3.core.SingleObserver, io.reactivex.rxjava3.core.CompletableObserver, io.reactivex.rxjava3.core.MaybeObserver
            public final void onError(Throwable th) {
                SwitchMapSingleMainObserver switchMapSingleMainObserver = this.f70220b;
                AtomicReference atomicReference = switchMapSingleMainObserver.f70217f;
                while (!atomicReference.compareAndSet(this, null)) {
                    if (atomicReference.get() != this) {
                        RxJavaPlugins.b(th);
                        return;
                    }
                }
                if (switchMapSingleMainObserver.f70216e.a(th)) {
                    if (!switchMapSingleMainObserver.d) {
                        switchMapSingleMainObserver.g.dispose();
                        switchMapSingleMainObserver.a();
                    }
                    switchMapSingleMainObserver.b();
                }
            }

            @Override // io.reactivex.rxjava3.core.SingleObserver, io.reactivex.rxjava3.core.CompletableObserver, io.reactivex.rxjava3.core.MaybeObserver
            public final void onSubscribe(Disposable disposable) {
                DisposableHelper.e(this, disposable);
            }

            @Override // io.reactivex.rxjava3.core.SingleObserver, io.reactivex.rxjava3.core.MaybeObserver
            public final void onSuccess(Object obj) {
                this.f70221c = obj;
                this.f70220b.b();
            }
        }

        public SwitchMapSingleMainObserver(Observer observer, Function function, boolean z) {
            this.f70214b = observer;
            this.f70215c = function;
            this.d = z;
        }

        public final void a() {
            AtomicReference atomicReference = this.f70217f;
            SwitchMapSingleObserver switchMapSingleObserver = f70213j;
            SwitchMapSingleObserver switchMapSingleObserver2 = (SwitchMapSingleObserver) atomicReference.getAndSet(switchMapSingleObserver);
            if (switchMapSingleObserver2 == null || switchMapSingleObserver2 == switchMapSingleObserver) {
                return;
            }
            DisposableHelper.a(switchMapSingleObserver2);
        }

        public final void b() {
            if (getAndIncrement() != 0) {
                return;
            }
            Observer observer = this.f70214b;
            AtomicThrowable atomicThrowable = this.f70216e;
            AtomicReference atomicReference = this.f70217f;
            int iAddAndGet = 1;
            while (!this.f70219i) {
                if (atomicThrowable.get() != null && !this.d) {
                    atomicThrowable.d(observer);
                    return;
                }
                boolean z = this.f70218h;
                SwitchMapSingleObserver switchMapSingleObserver = (SwitchMapSingleObserver) atomicReference.get();
                boolean z2 = switchMapSingleObserver == null;
                if (z && z2) {
                    atomicThrowable.d(observer);
                    return;
                }
                if (z2 || switchMapSingleObserver.f70221c == null) {
                    iAddAndGet = addAndGet(-iAddAndGet);
                    if (iAddAndGet == 0) {
                        return;
                    }
                } else {
                    while (!atomicReference.compareAndSet(switchMapSingleObserver, null) && atomicReference.get() == switchMapSingleObserver) {
                    }
                    observer.onNext(switchMapSingleObserver.f70221c);
                }
            }
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public final void dispose() {
            this.f70219i = true;
            this.g.dispose();
            a();
            this.f70216e.b();
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public final boolean isDisposed() {
            return this.f70219i;
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onComplete() {
            this.f70218h = true;
            b();
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onError(Throwable th) {
            if (this.f70216e.a(th)) {
                if (!this.d) {
                    a();
                }
                this.f70218h = true;
                b();
            }
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onNext(Object obj) {
            SwitchMapSingleObserver switchMapSingleObserver = f70213j;
            AtomicReference atomicReference = this.f70217f;
            SwitchMapSingleObserver switchMapSingleObserver2 = (SwitchMapSingleObserver) atomicReference.get();
            if (switchMapSingleObserver2 != null) {
                DisposableHelper.a(switchMapSingleObserver2);
            }
            try {
                Object objApply = this.f70215c.apply(obj);
                Objects.requireNonNull(objApply, "The mapper returned a null SingleSource");
                SingleSource singleSource = (SingleSource) objApply;
                SwitchMapSingleObserver switchMapSingleObserver3 = new SwitchMapSingleObserver(this);
                while (true) {
                    SwitchMapSingleObserver switchMapSingleObserver4 = (SwitchMapSingleObserver) atomicReference.get();
                    if (switchMapSingleObserver4 == switchMapSingleObserver) {
                        return;
                    }
                    do {
                        if (atomicReference.compareAndSet(switchMapSingleObserver4, switchMapSingleObserver3)) {
                            singleSource.a(switchMapSingleObserver3);
                            return;
                        }
                    } while (atomicReference.get() == switchMapSingleObserver4);
                }
            } catch (Throwable th) {
                Exceptions.a(th);
                this.g.dispose();
                atomicReference.getAndSet(switchMapSingleObserver);
                onError(th);
            }
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onSubscribe(Disposable disposable) {
            if (DisposableHelper.g(this.g, disposable)) {
                this.g = disposable;
                this.f70214b.onSubscribe(this);
            }
        }
    }

    public ObservableSwitchMapSingle(Observable<T> observable, Function<? super T, ? extends SingleSource<? extends R>> function, boolean z) {
        this.f70211b = observable;
        this.f70212c = function;
        this.d = z;
    }

    @Override // io.reactivex.rxjava3.core.Observable
    public final void subscribeActual(Observer observer) {
        Observable observable = this.f70211b;
        Function function = this.f70212c;
        if (ScalarXMapZHelper.c(observable, function, observer)) {
            return;
        }
        observable.subscribe(new SwitchMapSingleMainObserver(observer, function, this.d));
    }
}
