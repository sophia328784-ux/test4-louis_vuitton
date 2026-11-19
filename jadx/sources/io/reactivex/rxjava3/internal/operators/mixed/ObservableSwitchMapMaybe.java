package io.reactivex.rxjava3.internal.operators.mixed;

import io.reactivex.rxjava3.core.MaybeObserver;
import io.reactivex.rxjava3.core.MaybeSource;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.Observer;
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
public final class ObservableSwitchMapMaybe<T, R> extends Observable<R> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Observable f70200b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Function f70201c;
    public final boolean d;

    public static final class SwitchMapMaybeMainObserver<T, R> extends AtomicInteger implements Observer<T>, Disposable {

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public static final SwitchMapMaybeObserver f70202j = new SwitchMapMaybeObserver(null);
        private static final long serialVersionUID = -5402190102429853762L;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Observer f70203b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final Function f70204c;
        public final boolean d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final AtomicThrowable f70205e = new AtomicThrowable();

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final AtomicReference f70206f = new AtomicReference();
        public Disposable g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public volatile boolean f70207h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public volatile boolean f70208i;

        public static final class SwitchMapMaybeObserver<R> extends AtomicReference<Disposable> implements MaybeObserver<R> {
            private static final long serialVersionUID = 8042919737683345351L;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final SwitchMapMaybeMainObserver f70209b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public volatile Object f70210c;

            public SwitchMapMaybeObserver(SwitchMapMaybeMainObserver switchMapMaybeMainObserver) {
                this.f70209b = switchMapMaybeMainObserver;
            }

            @Override // io.reactivex.rxjava3.core.MaybeObserver
            public final void onComplete() {
                SwitchMapMaybeMainObserver switchMapMaybeMainObserver = this.f70209b;
                AtomicReference atomicReference = switchMapMaybeMainObserver.f70206f;
                while (!atomicReference.compareAndSet(this, null)) {
                    if (atomicReference.get() != this) {
                        return;
                    }
                }
                switchMapMaybeMainObserver.b();
            }

            @Override // io.reactivex.rxjava3.core.MaybeObserver
            public final void onError(Throwable th) {
                SwitchMapMaybeMainObserver switchMapMaybeMainObserver = this.f70209b;
                AtomicReference atomicReference = switchMapMaybeMainObserver.f70206f;
                while (!atomicReference.compareAndSet(this, null)) {
                    if (atomicReference.get() != this) {
                        RxJavaPlugins.b(th);
                        return;
                    }
                }
                if (switchMapMaybeMainObserver.f70205e.a(th)) {
                    if (!switchMapMaybeMainObserver.d) {
                        switchMapMaybeMainObserver.g.dispose();
                        switchMapMaybeMainObserver.a();
                    }
                    switchMapMaybeMainObserver.b();
                }
            }

            @Override // io.reactivex.rxjava3.core.MaybeObserver
            public final void onSubscribe(Disposable disposable) {
                DisposableHelper.e(this, disposable);
            }

            @Override // io.reactivex.rxjava3.core.MaybeObserver
            public final void onSuccess(Object obj) {
                this.f70210c = obj;
                this.f70209b.b();
            }
        }

        public SwitchMapMaybeMainObserver(Observer observer, Function function, boolean z) {
            this.f70203b = observer;
            this.f70204c = function;
            this.d = z;
        }

        public final void a() {
            AtomicReference atomicReference = this.f70206f;
            SwitchMapMaybeObserver switchMapMaybeObserver = f70202j;
            SwitchMapMaybeObserver switchMapMaybeObserver2 = (SwitchMapMaybeObserver) atomicReference.getAndSet(switchMapMaybeObserver);
            if (switchMapMaybeObserver2 == null || switchMapMaybeObserver2 == switchMapMaybeObserver) {
                return;
            }
            DisposableHelper.a(switchMapMaybeObserver2);
        }

        public final void b() {
            if (getAndIncrement() != 0) {
                return;
            }
            Observer observer = this.f70203b;
            AtomicThrowable atomicThrowable = this.f70205e;
            AtomicReference atomicReference = this.f70206f;
            int iAddAndGet = 1;
            while (!this.f70208i) {
                if (atomicThrowable.get() != null && !this.d) {
                    atomicThrowable.d(observer);
                    return;
                }
                boolean z = this.f70207h;
                SwitchMapMaybeObserver switchMapMaybeObserver = (SwitchMapMaybeObserver) atomicReference.get();
                boolean z2 = switchMapMaybeObserver == null;
                if (z && z2) {
                    atomicThrowable.d(observer);
                    return;
                }
                if (z2 || switchMapMaybeObserver.f70210c == null) {
                    iAddAndGet = addAndGet(-iAddAndGet);
                    if (iAddAndGet == 0) {
                        return;
                    }
                } else {
                    while (!atomicReference.compareAndSet(switchMapMaybeObserver, null) && atomicReference.get() == switchMapMaybeObserver) {
                    }
                    observer.onNext(switchMapMaybeObserver.f70210c);
                }
            }
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public final void dispose() {
            this.f70208i = true;
            this.g.dispose();
            a();
            this.f70205e.b();
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public final boolean isDisposed() {
            return this.f70208i;
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onComplete() {
            this.f70207h = true;
            b();
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onError(Throwable th) {
            if (this.f70205e.a(th)) {
                if (!this.d) {
                    a();
                }
                this.f70207h = true;
                b();
            }
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onNext(Object obj) {
            SwitchMapMaybeObserver switchMapMaybeObserver = f70202j;
            AtomicReference atomicReference = this.f70206f;
            SwitchMapMaybeObserver switchMapMaybeObserver2 = (SwitchMapMaybeObserver) atomicReference.get();
            if (switchMapMaybeObserver2 != null) {
                DisposableHelper.a(switchMapMaybeObserver2);
            }
            try {
                Object objApply = this.f70204c.apply(obj);
                Objects.requireNonNull(objApply, "The mapper returned a null MaybeSource");
                MaybeSource maybeSource = (MaybeSource) objApply;
                SwitchMapMaybeObserver switchMapMaybeObserver3 = new SwitchMapMaybeObserver(this);
                while (true) {
                    SwitchMapMaybeObserver switchMapMaybeObserver4 = (SwitchMapMaybeObserver) atomicReference.get();
                    if (switchMapMaybeObserver4 == switchMapMaybeObserver) {
                        return;
                    }
                    do {
                        if (atomicReference.compareAndSet(switchMapMaybeObserver4, switchMapMaybeObserver3)) {
                            maybeSource.a(switchMapMaybeObserver3);
                            return;
                        }
                    } while (atomicReference.get() == switchMapMaybeObserver4);
                }
            } catch (Throwable th) {
                Exceptions.a(th);
                this.g.dispose();
                atomicReference.getAndSet(switchMapMaybeObserver);
                onError(th);
            }
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onSubscribe(Disposable disposable) {
            if (DisposableHelper.g(this.g, disposable)) {
                this.g = disposable;
                this.f70203b.onSubscribe(this);
            }
        }
    }

    public ObservableSwitchMapMaybe(Observable<T> observable, Function<? super T, ? extends MaybeSource<? extends R>> function, boolean z) {
        this.f70200b = observable;
        this.f70201c = function;
        this.d = z;
    }

    @Override // io.reactivex.rxjava3.core.Observable
    public final void subscribeActual(Observer observer) {
        Observable observable = this.f70200b;
        Function function = this.f70201c;
        if (ScalarXMapZHelper.b(observable, function, observer)) {
            return;
        }
        observable.subscribe(new SwitchMapMaybeMainObserver(observer, function, this.d));
    }
}
