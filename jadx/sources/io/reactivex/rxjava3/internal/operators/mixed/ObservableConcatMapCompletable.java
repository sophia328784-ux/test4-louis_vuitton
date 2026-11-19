package io.reactivex.rxjava3.internal.operators.mixed;

import io.reactivex.rxjava3.core.Completable;
import io.reactivex.rxjava3.core.CompletableObserver;
import io.reactivex.rxjava3.core.CompletableSource;
import io.reactivex.rxjava3.core.Observable;
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
public final class ObservableConcatMapCompletable<T> extends Completable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Observable f70170b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Function f70171c;
    public final ErrorMode d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f70172e;

    public static final class ConcatMapCompletableObserver<T> extends ConcatMapXMainObserver<T> {
        private static final long serialVersionUID = 3610901111000061034L;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final CompletableObserver f70173i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public final Function f70174j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public final ConcatMapInnerObserver f70175k;
        public volatile boolean l;

        public static final class ConcatMapInnerObserver extends AtomicReference<Disposable> implements CompletableObserver {
            private static final long serialVersionUID = 5638352172918776687L;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final ConcatMapCompletableObserver f70176b;

            public ConcatMapInnerObserver(ConcatMapCompletableObserver concatMapCompletableObserver) {
                this.f70176b = concatMapCompletableObserver;
            }

            @Override // io.reactivex.rxjava3.core.CompletableObserver, io.reactivex.rxjava3.core.MaybeObserver
            public final void onComplete() {
                ConcatMapCompletableObserver concatMapCompletableObserver = this.f70176b;
                concatMapCompletableObserver.l = false;
                concatMapCompletableObserver.c();
            }

            @Override // io.reactivex.rxjava3.core.CompletableObserver, io.reactivex.rxjava3.core.MaybeObserver
            public final void onError(Throwable th) {
                ConcatMapCompletableObserver concatMapCompletableObserver = this.f70176b;
                if (concatMapCompletableObserver.f70165b.a(th)) {
                    if (concatMapCompletableObserver.d != ErrorMode.END) {
                        concatMapCompletableObserver.f70168f.dispose();
                    }
                    concatMapCompletableObserver.l = false;
                    concatMapCompletableObserver.c();
                }
            }

            @Override // io.reactivex.rxjava3.core.CompletableObserver, io.reactivex.rxjava3.core.MaybeObserver
            public final void onSubscribe(Disposable disposable) {
                DisposableHelper.c(this, disposable);
            }
        }

        public ConcatMapCompletableObserver(CompletableObserver completableObserver, Function function, ErrorMode errorMode, int i2) {
            super(i2, errorMode);
            this.f70173i = completableObserver;
            this.f70174j = function;
            this.f70175k = new ConcatMapInnerObserver(this);
        }

        @Override // io.reactivex.rxjava3.internal.operators.mixed.ConcatMapXMainObserver
        public final void b() {
            ConcatMapInnerObserver concatMapInnerObserver = this.f70175k;
            concatMapInnerObserver.getClass();
            DisposableHelper.a(concatMapInnerObserver);
        }

        @Override // io.reactivex.rxjava3.internal.operators.mixed.ConcatMapXMainObserver
        public final void c() {
            CompletableSource completableSource;
            boolean z;
            if (getAndIncrement() != 0) {
                return;
            }
            AtomicThrowable atomicThrowable = this.f70165b;
            ErrorMode errorMode = this.d;
            SimpleQueue simpleQueue = this.f70167e;
            while (!this.f70169h) {
                if (atomicThrowable.get() != null && (errorMode == ErrorMode.IMMEDIATE || (errorMode == ErrorMode.BOUNDARY && !this.l))) {
                    this.f70169h = true;
                    simpleQueue.clear();
                    atomicThrowable.c(this.f70173i);
                    return;
                }
                if (!this.l) {
                    boolean z2 = this.g;
                    try {
                        Object objPoll = simpleQueue.poll();
                        if (objPoll != null) {
                            Object objApply = this.f70174j.apply(objPoll);
                            Objects.requireNonNull(objApply, "The mapper returned a null CompletableSource");
                            completableSource = (CompletableSource) objApply;
                            z = false;
                        } else {
                            completableSource = null;
                            z = true;
                        }
                        if (z2 && z) {
                            this.f70169h = true;
                            atomicThrowable.c(this.f70173i);
                            return;
                        } else if (!z) {
                            this.l = true;
                            completableSource.a(this.f70175k);
                        }
                    } catch (Throwable th) {
                        Exceptions.a(th);
                        this.f70169h = true;
                        simpleQueue.clear();
                        this.f70168f.dispose();
                        atomicThrowable.a(th);
                        atomicThrowable.c(this.f70173i);
                        return;
                    }
                }
                if (decrementAndGet() == 0) {
                    return;
                }
            }
            simpleQueue.clear();
        }

        @Override // io.reactivex.rxjava3.internal.operators.mixed.ConcatMapXMainObserver
        public final void d() {
            this.f70173i.onSubscribe(this);
        }
    }

    public ObservableConcatMapCompletable(Observable<T> observable, Function<? super T, ? extends CompletableSource> function, ErrorMode errorMode, int i2) {
        this.f70170b = observable;
        this.f70171c = function;
        this.d = errorMode;
        this.f70172e = i2;
    }

    @Override // io.reactivex.rxjava3.core.Completable
    public final void c(CompletableObserver completableObserver) {
        Observable observable = this.f70170b;
        Function function = this.f70171c;
        if (ScalarXMapZHelper.a(observable, function, completableObserver)) {
            return;
        }
        observable.subscribe(new ConcatMapCompletableObserver(completableObserver, function, this.d, this.f70172e));
    }
}
