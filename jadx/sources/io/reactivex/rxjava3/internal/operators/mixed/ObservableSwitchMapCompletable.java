package io.reactivex.rxjava3.internal.operators.mixed;

import io.reactivex.rxjava3.core.Completable;
import io.reactivex.rxjava3.core.CompletableObserver;
import io.reactivex.rxjava3.core.CompletableSource;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.Observer;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.exceptions.Exceptions;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.internal.util.AtomicThrowable;
import io.reactivex.rxjava3.plugins.RxJavaPlugins;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes4.dex */
public final class ObservableSwitchMapCompletable<T> extends Completable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Observable f70191b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Function f70192c;
    public final boolean d;

    public static final class SwitchMapCompletableObserver<T> implements Observer<T>, Disposable {

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public static final SwitchMapInnerObserver f70193i = new SwitchMapInnerObserver(null);

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final CompletableObserver f70194b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final Function f70195c;
        public final boolean d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final AtomicThrowable f70196e = new AtomicThrowable();

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final AtomicReference f70197f = new AtomicReference();
        public volatile boolean g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public Disposable f70198h;

        public static final class SwitchMapInnerObserver extends AtomicReference<Disposable> implements CompletableObserver {
            private static final long serialVersionUID = -8003404460084760287L;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final SwitchMapCompletableObserver f70199b;

            public SwitchMapInnerObserver(SwitchMapCompletableObserver switchMapCompletableObserver) {
                this.f70199b = switchMapCompletableObserver;
            }

            @Override // io.reactivex.rxjava3.core.CompletableObserver, io.reactivex.rxjava3.core.MaybeObserver
            public final void onComplete() {
                SwitchMapCompletableObserver switchMapCompletableObserver = this.f70199b;
                AtomicReference atomicReference = switchMapCompletableObserver.f70197f;
                while (!atomicReference.compareAndSet(this, null)) {
                    if (atomicReference.get() != this) {
                        return;
                    }
                }
                if (switchMapCompletableObserver.g) {
                    switchMapCompletableObserver.f70196e.c(switchMapCompletableObserver.f70194b);
                }
            }

            @Override // io.reactivex.rxjava3.core.CompletableObserver, io.reactivex.rxjava3.core.MaybeObserver
            public final void onError(Throwable th) {
                SwitchMapCompletableObserver switchMapCompletableObserver = this.f70199b;
                AtomicReference atomicReference = switchMapCompletableObserver.f70197f;
                while (!atomicReference.compareAndSet(this, null)) {
                    if (atomicReference.get() != this) {
                        RxJavaPlugins.b(th);
                        return;
                    }
                }
                if (switchMapCompletableObserver.f70196e.a(th)) {
                    if (switchMapCompletableObserver.d) {
                        if (switchMapCompletableObserver.g) {
                            switchMapCompletableObserver.f70196e.c(switchMapCompletableObserver.f70194b);
                        }
                    } else {
                        switchMapCompletableObserver.f70198h.dispose();
                        switchMapCompletableObserver.a();
                        switchMapCompletableObserver.f70196e.c(switchMapCompletableObserver.f70194b);
                    }
                }
            }

            @Override // io.reactivex.rxjava3.core.CompletableObserver, io.reactivex.rxjava3.core.MaybeObserver
            public final void onSubscribe(Disposable disposable) {
                DisposableHelper.e(this, disposable);
            }
        }

        public SwitchMapCompletableObserver(CompletableObserver completableObserver, Function function, boolean z) {
            this.f70194b = completableObserver;
            this.f70195c = function;
            this.d = z;
        }

        public final void a() {
            AtomicReference atomicReference = this.f70197f;
            SwitchMapInnerObserver switchMapInnerObserver = f70193i;
            SwitchMapInnerObserver switchMapInnerObserver2 = (SwitchMapInnerObserver) atomicReference.getAndSet(switchMapInnerObserver);
            if (switchMapInnerObserver2 == null || switchMapInnerObserver2 == switchMapInnerObserver) {
                return;
            }
            DisposableHelper.a(switchMapInnerObserver2);
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public final void dispose() {
            this.f70198h.dispose();
            a();
            this.f70196e.b();
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public final boolean isDisposed() {
            return this.f70197f.get() == f70193i;
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onComplete() {
            this.g = true;
            if (this.f70197f.get() == null) {
                this.f70196e.c(this.f70194b);
            }
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onError(Throwable th) {
            AtomicThrowable atomicThrowable = this.f70196e;
            if (atomicThrowable.a(th)) {
                if (this.d) {
                    onComplete();
                } else {
                    a();
                    atomicThrowable.c(this.f70194b);
                }
            }
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onNext(Object obj) {
            try {
                Object objApply = this.f70195c.apply(obj);
                Objects.requireNonNull(objApply, "The mapper returned a null CompletableSource");
                CompletableSource completableSource = (CompletableSource) objApply;
                SwitchMapInnerObserver switchMapInnerObserver = new SwitchMapInnerObserver(this);
                while (true) {
                    AtomicReference atomicReference = this.f70197f;
                    SwitchMapInnerObserver switchMapInnerObserver2 = (SwitchMapInnerObserver) atomicReference.get();
                    if (switchMapInnerObserver2 == f70193i) {
                        return;
                    }
                    do {
                        if (atomicReference.compareAndSet(switchMapInnerObserver2, switchMapInnerObserver)) {
                            if (switchMapInnerObserver2 != null) {
                                DisposableHelper.a(switchMapInnerObserver2);
                            }
                            completableSource.a(switchMapInnerObserver);
                            return;
                        }
                    } while (atomicReference.get() == switchMapInnerObserver2);
                }
            } catch (Throwable th) {
                Exceptions.a(th);
                this.f70198h.dispose();
                onError(th);
            }
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onSubscribe(Disposable disposable) {
            if (DisposableHelper.g(this.f70198h, disposable)) {
                this.f70198h = disposable;
                this.f70194b.onSubscribe(this);
            }
        }
    }

    public ObservableSwitchMapCompletable(Observable<T> observable, Function<? super T, ? extends CompletableSource> function, boolean z) {
        this.f70191b = observable;
        this.f70192c = function;
        this.d = z;
    }

    @Override // io.reactivex.rxjava3.core.Completable
    public final void c(CompletableObserver completableObserver) {
        Observable observable = this.f70191b;
        Function function = this.f70192c;
        if (ScalarXMapZHelper.a(observable, function, completableObserver)) {
            return;
        }
        observable.subscribe(new SwitchMapCompletableObserver(completableObserver, function, this.d));
    }
}
