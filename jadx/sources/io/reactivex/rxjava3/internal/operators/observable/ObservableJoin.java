package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.core.Observer;
import io.reactivex.rxjava3.disposables.CompositeDisposable;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.exceptions.Exceptions;
import io.reactivex.rxjava3.functions.BiFunction;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.internal.util.ExceptionHelper;
import io.reactivex.rxjava3.operators.SpscLinkedArrayQueue;
import io.reactivex.rxjava3.plugins.RxJavaPlugins;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes4.dex */
public final class ObservableJoin<TLeft, TRight, TLeftEnd, TRightEnd, R> extends AbstractObservableWithUpstream<TLeft, R> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ObservableSource f70632c;
    public final Function d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Function f70633e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final BiFunction f70634f;

    public static final class JoinDisposable<TLeft, TRight, TLeftEnd, TRightEnd, R> extends AtomicInteger implements Disposable, ObservableGroupJoin.JoinSupport {
        private static final long serialVersionUID = -6071216598687999801L;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Observer f70635b;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final Function f70639h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final Function f70640i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public final BiFunction f70641j;
        public int l;
        public int m;
        public volatile boolean n;
        public final CompositeDisposable d = new CompositeDisposable();

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final SpscLinkedArrayQueue f70636c = new SpscLinkedArrayQueue(Observable.bufferSize());

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final LinkedHashMap f70637e = new LinkedHashMap();

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final LinkedHashMap f70638f = new LinkedHashMap();
        public final AtomicReference g = new AtomicReference();

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public final AtomicInteger f70642k = new AtomicInteger(2);

        public JoinDisposable(Observer observer, Function function, Function function2, BiFunction biFunction) {
            this.f70635b = observer;
            this.f70639h = function;
            this.f70640i = function2;
            this.f70641j = biFunction;
        }

        @Override // io.reactivex.rxjava3.internal.operators.observable.ObservableGroupJoin.JoinSupport
        public final void a(ObservableGroupJoin.LeftRightObserver leftRightObserver) {
            this.d.c(leftRightObserver);
            this.f70642k.decrementAndGet();
            g();
        }

        @Override // io.reactivex.rxjava3.internal.operators.observable.ObservableGroupJoin.JoinSupport
        public final void b(Throwable th) {
            if (!ExceptionHelper.a(this.g, th)) {
                RxJavaPlugins.b(th);
            } else {
                this.f70642k.decrementAndGet();
                g();
            }
        }

        @Override // io.reactivex.rxjava3.internal.operators.observable.ObservableGroupJoin.JoinSupport
        public final void c(Throwable th) {
            if (ExceptionHelper.a(this.g, th)) {
                g();
            } else {
                RxJavaPlugins.b(th);
            }
        }

        @Override // io.reactivex.rxjava3.internal.operators.observable.ObservableGroupJoin.JoinSupport
        public final void d(boolean z, ObservableGroupJoin.LeftRightEndObserver leftRightEndObserver) {
            synchronized (this) {
                try {
                    this.f70636c.a(z ? 3 : 4, leftRightEndObserver);
                } catch (Throwable th) {
                    throw th;
                }
            }
            g();
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public final void dispose() {
            if (this.n) {
                return;
            }
            this.n = true;
            this.d.dispose();
            if (getAndIncrement() == 0) {
                this.f70636c.clear();
            }
        }

        @Override // io.reactivex.rxjava3.internal.operators.observable.ObservableGroupJoin.JoinSupport
        public final void e(Object obj, boolean z) {
            synchronized (this) {
                try {
                    this.f70636c.a(z ? 1 : 2, obj);
                } catch (Throwable th) {
                    throw th;
                }
            }
            g();
        }

        public final void g() {
            if (getAndIncrement() != 0) {
                return;
            }
            SpscLinkedArrayQueue spscLinkedArrayQueue = this.f70636c;
            Observer observer = this.f70635b;
            int iAddAndGet = 1;
            while (!this.n) {
                if (((Throwable) this.g.get()) != null) {
                    spscLinkedArrayQueue.clear();
                    this.d.dispose();
                    h(observer);
                    return;
                }
                boolean z = this.f70642k.get() == 0;
                Integer num = (Integer) spscLinkedArrayQueue.poll();
                boolean z2 = num == null;
                if (z && z2) {
                    this.f70637e.clear();
                    this.f70638f.clear();
                    this.d.dispose();
                    observer.onComplete();
                    return;
                }
                if (z2) {
                    iAddAndGet = addAndGet(-iAddAndGet);
                    if (iAddAndGet == 0) {
                        return;
                    }
                } else {
                    Object objPoll = spscLinkedArrayQueue.poll();
                    if (num == 1) {
                        int i2 = this.l;
                        this.l = i2 + 1;
                        this.f70637e.put(Integer.valueOf(i2), objPoll);
                        try {
                            Object objApply = this.f70639h.apply(objPoll);
                            Objects.requireNonNull(objApply, "The leftEnd returned a null ObservableSource");
                            ObservableSource observableSource = (ObservableSource) objApply;
                            ObservableGroupJoin.LeftRightEndObserver leftRightEndObserver = new ObservableGroupJoin.LeftRightEndObserver(this, true, i2);
                            this.d.b(leftRightEndObserver);
                            observableSource.subscribe(leftRightEndObserver);
                            if (((Throwable) this.g.get()) != null) {
                                spscLinkedArrayQueue.clear();
                                this.d.dispose();
                                h(observer);
                                return;
                            }
                            Iterator it = this.f70638f.values().iterator();
                            while (it.hasNext()) {
                                try {
                                    Object objApply2 = this.f70641j.apply(objPoll, it.next());
                                    Objects.requireNonNull(objApply2, "The resultSelector returned a null value");
                                    observer.onNext(objApply2);
                                } catch (Throwable th) {
                                    i(th, observer, spscLinkedArrayQueue);
                                    return;
                                }
                            }
                        } catch (Throwable th2) {
                            i(th2, observer, spscLinkedArrayQueue);
                            return;
                        }
                    } else if (num == 2) {
                        int i3 = this.m;
                        this.m = i3 + 1;
                        this.f70638f.put(Integer.valueOf(i3), objPoll);
                        try {
                            Object objApply3 = this.f70640i.apply(objPoll);
                            Objects.requireNonNull(objApply3, "The rightEnd returned a null ObservableSource");
                            ObservableSource observableSource2 = (ObservableSource) objApply3;
                            ObservableGroupJoin.LeftRightEndObserver leftRightEndObserver2 = new ObservableGroupJoin.LeftRightEndObserver(this, false, i3);
                            this.d.b(leftRightEndObserver2);
                            observableSource2.subscribe(leftRightEndObserver2);
                            if (((Throwable) this.g.get()) != null) {
                                spscLinkedArrayQueue.clear();
                                this.d.dispose();
                                h(observer);
                                return;
                            }
                            Iterator it2 = this.f70637e.values().iterator();
                            while (it2.hasNext()) {
                                try {
                                    Object objApply4 = this.f70641j.apply(it2.next(), objPoll);
                                    Objects.requireNonNull(objApply4, "The resultSelector returned a null value");
                                    observer.onNext(objApply4);
                                } catch (Throwable th3) {
                                    i(th3, observer, spscLinkedArrayQueue);
                                    return;
                                }
                            }
                        } catch (Throwable th4) {
                            i(th4, observer, spscLinkedArrayQueue);
                            return;
                        }
                    } else if (num == 3) {
                        ObservableGroupJoin.LeftRightEndObserver leftRightEndObserver3 = (ObservableGroupJoin.LeftRightEndObserver) objPoll;
                        this.f70637e.remove(Integer.valueOf(leftRightEndObserver3.d));
                        this.d.a(leftRightEndObserver3);
                    } else {
                        ObservableGroupJoin.LeftRightEndObserver leftRightEndObserver4 = (ObservableGroupJoin.LeftRightEndObserver) objPoll;
                        this.f70638f.remove(Integer.valueOf(leftRightEndObserver4.d));
                        this.d.a(leftRightEndObserver4);
                    }
                }
            }
            spscLinkedArrayQueue.clear();
        }

        public final void h(Observer observer) {
            Throwable thC = ExceptionHelper.c(this.g);
            this.f70637e.clear();
            this.f70638f.clear();
            observer.onError(thC);
        }

        public final void i(Throwable th, Observer observer, SpscLinkedArrayQueue spscLinkedArrayQueue) {
            Exceptions.a(th);
            ExceptionHelper.a(this.g, th);
            spscLinkedArrayQueue.clear();
            this.d.dispose();
            h(observer);
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public final boolean isDisposed() {
            return this.n;
        }
    }

    public ObservableJoin(ObservableSource<TLeft> observableSource, ObservableSource<? extends TRight> observableSource2, Function<? super TLeft, ? extends ObservableSource<TLeftEnd>> function, Function<? super TRight, ? extends ObservableSource<TRightEnd>> function2, BiFunction<? super TLeft, ? super TRight, ? extends R> biFunction) {
        super(observableSource);
        this.f70632c = observableSource2;
        this.d = function;
        this.f70633e = function2;
        this.f70634f = biFunction;
    }

    @Override // io.reactivex.rxjava3.core.Observable
    public final void subscribeActual(Observer observer) {
        JoinDisposable joinDisposable = new JoinDisposable(observer, this.d, this.f70633e, this.f70634f);
        observer.onSubscribe(joinDisposable);
        ObservableGroupJoin.LeftRightObserver leftRightObserver = new ObservableGroupJoin.LeftRightObserver(joinDisposable, true);
        CompositeDisposable compositeDisposable = joinDisposable.d;
        compositeDisposable.b(leftRightObserver);
        ObservableGroupJoin.LeftRightObserver leftRightObserver2 = new ObservableGroupJoin.LeftRightObserver(joinDisposable, false);
        compositeDisposable.b(leftRightObserver2);
        this.f70226b.subscribe(leftRightObserver);
        this.f70632c.subscribe(leftRightObserver2);
    }
}
