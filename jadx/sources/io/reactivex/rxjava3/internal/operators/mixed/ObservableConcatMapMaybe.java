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
import io.reactivex.rxjava3.internal.util.ErrorMode;
import io.reactivex.rxjava3.operators.SimpleQueue;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes4.dex */
public final class ObservableConcatMapMaybe<T, R> extends Observable<R> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Observable f70177b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Function f70178c;
    public final ErrorMode d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f70179e;

    public static final class ConcatMapMaybeMainObserver<T, R> extends ConcatMapXMainObserver<T> {
        private static final long serialVersionUID = -9140123220065488293L;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final Observer f70180i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public final Function f70181j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public final ConcatMapMaybeObserver f70182k;
        public Object l;
        public volatile int m;

        public static final class ConcatMapMaybeObserver<R> extends AtomicReference<Disposable> implements MaybeObserver<R> {
            private static final long serialVersionUID = -3051469169682093892L;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final ConcatMapMaybeMainObserver f70183b;

            public ConcatMapMaybeObserver(ConcatMapMaybeMainObserver concatMapMaybeMainObserver) {
                this.f70183b = concatMapMaybeMainObserver;
            }

            @Override // io.reactivex.rxjava3.core.MaybeObserver
            public final void onComplete() {
                ConcatMapMaybeMainObserver concatMapMaybeMainObserver = this.f70183b;
                concatMapMaybeMainObserver.m = 0;
                concatMapMaybeMainObserver.c();
            }

            @Override // io.reactivex.rxjava3.core.MaybeObserver
            public final void onError(Throwable th) {
                ConcatMapMaybeMainObserver concatMapMaybeMainObserver = this.f70183b;
                if (concatMapMaybeMainObserver.f70165b.a(th)) {
                    if (concatMapMaybeMainObserver.d != ErrorMode.END) {
                        concatMapMaybeMainObserver.f70168f.dispose();
                    }
                    concatMapMaybeMainObserver.m = 0;
                    concatMapMaybeMainObserver.c();
                }
            }

            @Override // io.reactivex.rxjava3.core.MaybeObserver
            public final void onSubscribe(Disposable disposable) {
                DisposableHelper.c(this, disposable);
            }

            @Override // io.reactivex.rxjava3.core.MaybeObserver
            public final void onSuccess(Object obj) {
                ConcatMapMaybeMainObserver concatMapMaybeMainObserver = this.f70183b;
                concatMapMaybeMainObserver.l = obj;
                concatMapMaybeMainObserver.m = 2;
                concatMapMaybeMainObserver.c();
            }
        }

        public ConcatMapMaybeMainObserver(Observer observer, Function function, int i2, ErrorMode errorMode) {
            super(i2, errorMode);
            this.f70180i = observer;
            this.f70181j = function;
            this.f70182k = new ConcatMapMaybeObserver(this);
        }

        @Override // io.reactivex.rxjava3.internal.operators.mixed.ConcatMapXMainObserver
        public final void a() {
            this.l = null;
        }

        @Override // io.reactivex.rxjava3.internal.operators.mixed.ConcatMapXMainObserver
        public final void b() {
            ConcatMapMaybeObserver concatMapMaybeObserver = this.f70182k;
            concatMapMaybeObserver.getClass();
            DisposableHelper.a(concatMapMaybeObserver);
        }

        @Override // io.reactivex.rxjava3.internal.operators.mixed.ConcatMapXMainObserver
        public final void c() {
            if (getAndIncrement() != 0) {
                return;
            }
            Observer observer = this.f70180i;
            ErrorMode errorMode = this.d;
            SimpleQueue simpleQueue = this.f70167e;
            AtomicThrowable atomicThrowable = this.f70165b;
            int iAddAndGet = 1;
            while (true) {
                if (!this.f70169h) {
                    int i2 = this.m;
                    if (atomicThrowable.get() != null && (errorMode == ErrorMode.IMMEDIATE || (errorMode == ErrorMode.BOUNDARY && i2 == 0))) {
                        break;
                    }
                    if (i2 == 0) {
                        boolean z = this.g;
                        try {
                            Object objPoll = simpleQueue.poll();
                            boolean z2 = objPoll == null;
                            if (z && z2) {
                                atomicThrowable.d(observer);
                                return;
                            }
                            if (!z2) {
                                try {
                                    Object objApply = this.f70181j.apply(objPoll);
                                    Objects.requireNonNull(objApply, "The mapper returned a null MaybeSource");
                                    MaybeSource maybeSource = (MaybeSource) objApply;
                                    this.m = 1;
                                    maybeSource.a(this.f70182k);
                                } catch (Throwable th) {
                                    Exceptions.a(th);
                                    this.f70168f.dispose();
                                    simpleQueue.clear();
                                    atomicThrowable.a(th);
                                    atomicThrowable.d(observer);
                                    return;
                                }
                            }
                        } catch (Throwable th2) {
                            Exceptions.a(th2);
                            this.f70169h = true;
                            this.f70168f.dispose();
                            atomicThrowable.a(th2);
                            atomicThrowable.d(observer);
                            return;
                        }
                    } else if (i2 == 2) {
                        Object obj = this.l;
                        this.l = null;
                        observer.onNext(obj);
                        this.m = 0;
                    }
                } else {
                    simpleQueue.clear();
                    this.l = null;
                }
                iAddAndGet = addAndGet(-iAddAndGet);
                if (iAddAndGet == 0) {
                    return;
                }
            }
            simpleQueue.clear();
            this.l = null;
            atomicThrowable.d(observer);
        }

        @Override // io.reactivex.rxjava3.internal.operators.mixed.ConcatMapXMainObserver
        public final void d() {
            this.f70180i.onSubscribe(this);
        }
    }

    public ObservableConcatMapMaybe(Observable<T> observable, Function<? super T, ? extends MaybeSource<? extends R>> function, ErrorMode errorMode, int i2) {
        this.f70177b = observable;
        this.f70178c = function;
        this.d = errorMode;
        this.f70179e = i2;
    }

    @Override // io.reactivex.rxjava3.core.Observable
    public final void subscribeActual(Observer observer) {
        Observable observable = this.f70177b;
        Function function = this.f70178c;
        if (ScalarXMapZHelper.b(observable, function, observer)) {
            return;
        }
        observable.subscribe(new ConcatMapMaybeMainObserver(observer, function, this.f70179e, this.d));
    }
}
