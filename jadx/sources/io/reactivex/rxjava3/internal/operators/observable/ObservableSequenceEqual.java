package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.core.Observer;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.exceptions.Exceptions;
import io.reactivex.rxjava3.functions.BiPredicate;
import io.reactivex.rxjava3.internal.disposables.ArrayCompositeDisposable;
import io.reactivex.rxjava3.operators.SpscLinkedArrayQueue;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes4.dex */
public final class ObservableSequenceEqual<T> extends Observable<Boolean> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ObservableSource f70828b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ObservableSource f70829c;
    public final BiPredicate d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f70830e;

    public static final class EqualCoordinator<T> extends AtomicInteger implements Disposable {
        private static final long serialVersionUID = -6178010334400373240L;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Observer f70831b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final BiPredicate f70832c;
        public final ArrayCompositeDisposable d = new ArrayCompositeDisposable(2);

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final ObservableSource f70833e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final ObservableSource f70834f;
        public final EqualObserver[] g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public volatile boolean f70835h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public Object f70836i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public Object f70837j;

        public EqualCoordinator(Observer observer, int i2, ObservableSource observableSource, ObservableSource observableSource2, BiPredicate biPredicate) {
            this.f70831b = observer;
            this.f70833e = observableSource;
            this.f70834f = observableSource2;
            this.f70832c = biPredicate;
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
            SpscLinkedArrayQueue spscLinkedArrayQueue = equalObserver.f70839c;
            EqualObserver equalObserver2 = equalObserverArr[1];
            SpscLinkedArrayQueue spscLinkedArrayQueue2 = equalObserver2.f70839c;
            int iAddAndGet = 1;
            while (!this.f70835h) {
                boolean z = equalObserver.f70840e;
                if (z && (th2 = equalObserver.f70841f) != null) {
                    this.f70835h = true;
                    spscLinkedArrayQueue.clear();
                    spscLinkedArrayQueue2.clear();
                    this.f70831b.onError(th2);
                    return;
                }
                boolean z2 = equalObserver2.f70840e;
                if (z2 && (th = equalObserver2.f70841f) != null) {
                    this.f70835h = true;
                    spscLinkedArrayQueue.clear();
                    spscLinkedArrayQueue2.clear();
                    this.f70831b.onError(th);
                    return;
                }
                if (this.f70836i == null) {
                    this.f70836i = spscLinkedArrayQueue.poll();
                }
                boolean z3 = this.f70836i == null;
                if (this.f70837j == null) {
                    this.f70837j = spscLinkedArrayQueue2.poll();
                }
                Object obj = this.f70837j;
                boolean z4 = obj == null;
                if (z && z2 && z3 && z4) {
                    this.f70831b.onNext(Boolean.TRUE);
                    this.f70831b.onComplete();
                    return;
                }
                if (z && z2 && z3 != z4) {
                    this.f70835h = true;
                    spscLinkedArrayQueue.clear();
                    spscLinkedArrayQueue2.clear();
                    this.f70831b.onNext(Boolean.FALSE);
                    this.f70831b.onComplete();
                    return;
                }
                if (!z3 && !z4) {
                    try {
                        if (!this.f70832c.test(this.f70836i, obj)) {
                            this.f70835h = true;
                            spscLinkedArrayQueue.clear();
                            spscLinkedArrayQueue2.clear();
                            this.f70831b.onNext(Boolean.FALSE);
                            this.f70831b.onComplete();
                            return;
                        }
                        this.f70836i = null;
                        this.f70837j = null;
                    } catch (Throwable th3) {
                        Exceptions.a(th3);
                        this.f70835h = true;
                        spscLinkedArrayQueue.clear();
                        spscLinkedArrayQueue2.clear();
                        this.f70831b.onError(th3);
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
            if (this.f70835h) {
                return;
            }
            this.f70835h = true;
            this.d.dispose();
            if (getAndIncrement() == 0) {
                EqualObserver[] equalObserverArr = this.g;
                equalObserverArr[0].f70839c.clear();
                equalObserverArr[1].f70839c.clear();
            }
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public final boolean isDisposed() {
            return this.f70835h;
        }
    }

    public static final class EqualObserver<T> implements Observer<T> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final EqualCoordinator f70838b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final SpscLinkedArrayQueue f70839c;
        public final int d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public volatile boolean f70840e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public Throwable f70841f;

        public EqualObserver(EqualCoordinator equalCoordinator, int i2, int i3) {
            this.f70838b = equalCoordinator;
            this.d = i2;
            this.f70839c = new SpscLinkedArrayQueue(i3);
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onComplete() {
            this.f70840e = true;
            this.f70838b.a();
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onError(Throwable th) {
            this.f70841f = th;
            this.f70840e = true;
            this.f70838b.a();
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onNext(Object obj) {
            this.f70839c.offer(obj);
            this.f70838b.a();
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onSubscribe(Disposable disposable) {
            this.f70838b.d.a(this.d, disposable);
        }
    }

    public ObservableSequenceEqual(ObservableSource<? extends T> observableSource, ObservableSource<? extends T> observableSource2, BiPredicate<? super T, ? super T> biPredicate, int i2) {
        this.f70828b = observableSource;
        this.f70829c = observableSource2;
        this.d = biPredicate;
        this.f70830e = i2;
    }

    @Override // io.reactivex.rxjava3.core.Observable
    public final void subscribeActual(Observer observer) {
        EqualCoordinator equalCoordinator = new EqualCoordinator(observer, this.f70830e, this.f70828b, this.f70829c, this.d);
        observer.onSubscribe(equalCoordinator);
        EqualObserver[] equalObserverArr = equalCoordinator.g;
        equalCoordinator.f70833e.subscribe(equalObserverArr[0]);
        equalCoordinator.f70834f.subscribe(equalObserverArr[1]);
    }
}
