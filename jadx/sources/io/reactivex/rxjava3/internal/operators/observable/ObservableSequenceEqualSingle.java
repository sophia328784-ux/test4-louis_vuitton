package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.core.Observer;
import io.reactivex.rxjava3.core.Single;
import io.reactivex.rxjava3.core.SingleObserver;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.exceptions.Exceptions;
import io.reactivex.rxjava3.functions.BiPredicate;
import io.reactivex.rxjava3.internal.disposables.ArrayCompositeDisposable;
import io.reactivex.rxjava3.internal.fuseable.FuseToObservable;
import io.reactivex.rxjava3.operators.SpscLinkedArrayQueue;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes4.dex */
public final class ObservableSequenceEqualSingle<T> extends Single<Boolean> implements FuseToObservable<Boolean> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ObservableSource f70842b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ObservableSource f70843c;
    public final BiPredicate d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f70844e;

    public static final class EqualCoordinator<T> extends AtomicInteger implements Disposable {
        private static final long serialVersionUID = -6178010334400373240L;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final SingleObserver f70845b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final BiPredicate f70846c;
        public final ArrayCompositeDisposable d = new ArrayCompositeDisposable(2);

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final ObservableSource f70847e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final ObservableSource f70848f;
        public final EqualObserver[] g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public volatile boolean f70849h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public Object f70850i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public Object f70851j;

        public EqualCoordinator(SingleObserver singleObserver, int i2, ObservableSource observableSource, ObservableSource observableSource2, BiPredicate biPredicate) {
            this.f70845b = singleObserver;
            this.f70847e = observableSource;
            this.f70848f = observableSource2;
            this.f70846c = biPredicate;
            this.g = new EqualObserver[]{new EqualObserver(this, 0, i2), new EqualObserver(this, 1, i2)};
        }

        public final void a() {
            Throwable th;
            Throwable th2;
            if (getAndIncrement() != 0) {
                return;
            }
            EqualObserver[] equalObserverArr = this.g;
            EqualObserver equalObserver = equalObserverArr[0];
            SpscLinkedArrayQueue spscLinkedArrayQueue = equalObserver.f70853c;
            EqualObserver equalObserver2 = equalObserverArr[1];
            SpscLinkedArrayQueue spscLinkedArrayQueue2 = equalObserver2.f70853c;
            int iAddAndGet = 1;
            while (!this.f70849h) {
                boolean z = equalObserver.f70854e;
                if (z && (th2 = equalObserver.f70855f) != null) {
                    this.f70849h = true;
                    spscLinkedArrayQueue.clear();
                    spscLinkedArrayQueue2.clear();
                    this.f70845b.onError(th2);
                    return;
                }
                boolean z2 = equalObserver2.f70854e;
                if (z2 && (th = equalObserver2.f70855f) != null) {
                    this.f70849h = true;
                    spscLinkedArrayQueue.clear();
                    spscLinkedArrayQueue2.clear();
                    this.f70845b.onError(th);
                    return;
                }
                if (this.f70850i == null) {
                    this.f70850i = spscLinkedArrayQueue.poll();
                }
                boolean z3 = this.f70850i == null;
                if (this.f70851j == null) {
                    this.f70851j = spscLinkedArrayQueue2.poll();
                }
                Object obj = this.f70851j;
                boolean z4 = obj == null;
                if (z && z2 && z3 && z4) {
                    this.f70845b.onSuccess(Boolean.TRUE);
                    return;
                }
                if (z && z2 && z3 != z4) {
                    this.f70849h = true;
                    spscLinkedArrayQueue.clear();
                    spscLinkedArrayQueue2.clear();
                    this.f70845b.onSuccess(Boolean.FALSE);
                    return;
                }
                if (!z3 && !z4) {
                    try {
                        if (!this.f70846c.test(this.f70850i, obj)) {
                            this.f70849h = true;
                            spscLinkedArrayQueue.clear();
                            spscLinkedArrayQueue2.clear();
                            this.f70845b.onSuccess(Boolean.FALSE);
                            return;
                        }
                        this.f70850i = null;
                        this.f70851j = null;
                    } catch (Throwable th3) {
                        Exceptions.a(th3);
                        this.f70849h = true;
                        spscLinkedArrayQueue.clear();
                        spscLinkedArrayQueue2.clear();
                        this.f70845b.onError(th3);
                        return;
                    }
                }
                if (z3 || z4) {
                    iAddAndGet = addAndGet(-iAddAndGet);
                    if (iAddAndGet == 0) {
                        return;
                    }
                }
            }
            spscLinkedArrayQueue.clear();
            spscLinkedArrayQueue2.clear();
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public final void dispose() {
            if (this.f70849h) {
                return;
            }
            this.f70849h = true;
            this.d.dispose();
            if (getAndIncrement() == 0) {
                EqualObserver[] equalObserverArr = this.g;
                equalObserverArr[0].f70853c.clear();
                equalObserverArr[1].f70853c.clear();
            }
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public final boolean isDisposed() {
            return this.f70849h;
        }
    }

    public static final class EqualObserver<T> implements Observer<T> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final EqualCoordinator f70852b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final SpscLinkedArrayQueue f70853c;
        public final int d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public volatile boolean f70854e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public Throwable f70855f;

        public EqualObserver(EqualCoordinator equalCoordinator, int i2, int i3) {
            this.f70852b = equalCoordinator;
            this.d = i2;
            this.f70853c = new SpscLinkedArrayQueue(i3);
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onComplete() {
            this.f70854e = true;
            this.f70852b.a();
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onError(Throwable th) {
            this.f70855f = th;
            this.f70854e = true;
            this.f70852b.a();
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onNext(Object obj) {
            this.f70853c.offer(obj);
            this.f70852b.a();
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onSubscribe(Disposable disposable) {
            this.f70852b.d.a(this.d, disposable);
        }
    }

    public ObservableSequenceEqualSingle(ObservableSource<? extends T> observableSource, ObservableSource<? extends T> observableSource2, BiPredicate<? super T, ? super T> biPredicate, int i2) {
        this.f70842b = observableSource;
        this.f70843c = observableSource2;
        this.d = biPredicate;
        this.f70844e = i2;
    }

    @Override // io.reactivex.rxjava3.internal.fuseable.FuseToObservable
    public final Observable b() {
        return new ObservableSequenceEqual(this.f70842b, this.f70843c, this.d, this.f70844e);
    }

    @Override // io.reactivex.rxjava3.core.Single
    public final void e(SingleObserver singleObserver) {
        EqualCoordinator equalCoordinator = new EqualCoordinator(singleObserver, this.f70844e, this.f70842b, this.f70843c, this.d);
        singleObserver.onSubscribe(equalCoordinator);
        EqualObserver[] equalObserverArr = equalCoordinator.g;
        equalCoordinator.f70847e.subscribe(equalObserverArr[0]);
        equalCoordinator.f70848f.subscribe(equalObserverArr[1]);
    }
}
