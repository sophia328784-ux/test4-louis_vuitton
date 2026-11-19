package io.reactivex.rxjava3.internal.operators.mixed;

import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.core.Observer;
import io.reactivex.rxjava3.core.SingleObserver;
import io.reactivex.rxjava3.core.SingleSource;
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
public final class ObservableConcatMapSingle<T, R> extends Observable<R> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ObservableSource f70184b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Function f70185c;
    public final ErrorMode d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f70186e;

    public static final class ConcatMapSingleMainObserver<T, R> extends ConcatMapXMainObserver<T> {
        private static final long serialVersionUID = -9140123220065488293L;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final Observer f70187i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public final Function f70188j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public final ConcatMapSingleObserver f70189k;
        public Object l;
        public volatile int m;

        public static final class ConcatMapSingleObserver<R> extends AtomicReference<Disposable> implements SingleObserver<R> {
            private static final long serialVersionUID = -3051469169682093892L;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final ConcatMapSingleMainObserver f70190b;

            public ConcatMapSingleObserver(ConcatMapSingleMainObserver concatMapSingleMainObserver) {
                this.f70190b = concatMapSingleMainObserver;
            }

            @Override // io.reactivex.rxjava3.core.SingleObserver, io.reactivex.rxjava3.core.CompletableObserver, io.reactivex.rxjava3.core.MaybeObserver
            public final void onError(Throwable th) {
                ConcatMapSingleMainObserver concatMapSingleMainObserver = this.f70190b;
                if (concatMapSingleMainObserver.f70165b.a(th)) {
                    if (concatMapSingleMainObserver.d != ErrorMode.END) {
                        concatMapSingleMainObserver.f70168f.dispose();
                    }
                    concatMapSingleMainObserver.m = 0;
                    concatMapSingleMainObserver.c();
                }
            }

            @Override // io.reactivex.rxjava3.core.SingleObserver, io.reactivex.rxjava3.core.CompletableObserver, io.reactivex.rxjava3.core.MaybeObserver
            public final void onSubscribe(Disposable disposable) {
                DisposableHelper.c(this, disposable);
            }

            @Override // io.reactivex.rxjava3.core.SingleObserver, io.reactivex.rxjava3.core.MaybeObserver
            public final void onSuccess(Object obj) {
                ConcatMapSingleMainObserver concatMapSingleMainObserver = this.f70190b;
                concatMapSingleMainObserver.l = obj;
                concatMapSingleMainObserver.m = 2;
                concatMapSingleMainObserver.c();
            }
        }

        public ConcatMapSingleMainObserver(Observer observer, Function function, int i2, ErrorMode errorMode) {
            super(i2, errorMode);
            this.f70187i = observer;
            this.f70188j = function;
            this.f70189k = new ConcatMapSingleObserver(this);
        }

        @Override // io.reactivex.rxjava3.internal.operators.mixed.ConcatMapXMainObserver
        public final void a() {
            this.l = null;
        }

        @Override // io.reactivex.rxjava3.internal.operators.mixed.ConcatMapXMainObserver
        public final void b() {
            ConcatMapSingleObserver concatMapSingleObserver = this.f70189k;
            concatMapSingleObserver.getClass();
            DisposableHelper.a(concatMapSingleObserver);
        }

        @Override // io.reactivex.rxjava3.internal.operators.mixed.ConcatMapXMainObserver
        public final void c() {
            if (getAndIncrement() != 0) {
                return;
            }
            Observer observer = this.f70187i;
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
                                    Object objApply = this.f70188j.apply(objPoll);
                                    Objects.requireNonNull(objApply, "The mapper returned a null SingleSource");
                                    SingleSource singleSource = (SingleSource) objApply;
                                    this.m = 1;
                                    singleSource.a(this.f70189k);
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
            this.f70187i.onSubscribe(this);
        }
    }

    public ObservableConcatMapSingle(ObservableSource<T> observableSource, Function<? super T, ? extends SingleSource<? extends R>> function, ErrorMode errorMode, int i2) {
        this.f70184b = observableSource;
        this.f70185c = function;
        this.d = errorMode;
        this.f70186e = i2;
    }

    @Override // io.reactivex.rxjava3.core.Observable
    public final void subscribeActual(Observer observer) {
        ObservableSource observableSource = this.f70184b;
        Function function = this.f70185c;
        if (ScalarXMapZHelper.c(observableSource, function, observer)) {
            return;
        }
        observableSource.subscribe(new ConcatMapSingleMainObserver(observer, function, this.f70186e, this.d));
    }
}
