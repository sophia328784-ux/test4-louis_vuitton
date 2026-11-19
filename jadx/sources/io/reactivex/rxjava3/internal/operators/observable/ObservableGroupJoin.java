package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.core.Observer;
import io.reactivex.rxjava3.disposables.CompositeDisposable;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.exceptions.Exceptions;
import io.reactivex.rxjava3.functions.BiFunction;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.internal.util.ExceptionHelper;
import io.reactivex.rxjava3.operators.SpscLinkedArrayQueue;
import io.reactivex.rxjava3.plugins.RxJavaPlugins;
import io.reactivex.rxjava3.subjects.UnicastSubject;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes4.dex */
public final class ObservableGroupJoin<TLeft, TRight, TLeftEnd, TRightEnd, R> extends AbstractObservableWithUpstream<TLeft, R> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ObservableSource f70581c;
    public final Function d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Function f70582e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final BiFunction f70583f;

    public static final class GroupJoinDisposable<TLeft, TRight, TLeftEnd, TRightEnd, R> extends AtomicInteger implements Disposable, JoinSupport {
        private static final long serialVersionUID = -6071216598687999801L;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Observer f70584b;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final Function f70588h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final Function f70589i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public final BiFunction f70590j;
        public int l;
        public int m;
        public volatile boolean n;
        public final CompositeDisposable d = new CompositeDisposable();

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final SpscLinkedArrayQueue f70585c = new SpscLinkedArrayQueue(Observable.bufferSize());

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final LinkedHashMap f70586e = new LinkedHashMap();

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final LinkedHashMap f70587f = new LinkedHashMap();
        public final AtomicReference g = new AtomicReference();

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public final AtomicInteger f70591k = new AtomicInteger(2);

        public GroupJoinDisposable(Observer observer, Function function, Function function2, BiFunction biFunction) {
            this.f70584b = observer;
            this.f70588h = function;
            this.f70589i = function2;
            this.f70590j = biFunction;
        }

        @Override // io.reactivex.rxjava3.internal.operators.observable.ObservableGroupJoin.JoinSupport
        public final void a(LeftRightObserver leftRightObserver) {
            this.d.c(leftRightObserver);
            this.f70591k.decrementAndGet();
            g();
        }

        @Override // io.reactivex.rxjava3.internal.operators.observable.ObservableGroupJoin.JoinSupport
        public final void b(Throwable th) {
            if (!ExceptionHelper.a(this.g, th)) {
                RxJavaPlugins.b(th);
            } else {
                this.f70591k.decrementAndGet();
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
        public final void d(boolean z, LeftRightEndObserver leftRightEndObserver) {
            synchronized (this) {
                try {
                    this.f70585c.a(z ? 3 : 4, leftRightEndObserver);
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
                this.f70585c.clear();
            }
        }

        @Override // io.reactivex.rxjava3.internal.operators.observable.ObservableGroupJoin.JoinSupport
        public final void e(Object obj, boolean z) {
            synchronized (this) {
                try {
                    this.f70585c.a(z ? 1 : 2, obj);
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
            SpscLinkedArrayQueue spscLinkedArrayQueue = this.f70585c;
            Observer observer = this.f70584b;
            int iAddAndGet = 1;
            while (!this.n) {
                if (((Throwable) this.g.get()) != null) {
                    spscLinkedArrayQueue.clear();
                    this.d.dispose();
                    h(observer);
                    return;
                }
                boolean z = this.f70591k.get() == 0;
                Integer num = (Integer) spscLinkedArrayQueue.poll();
                boolean z2 = num == null;
                if (z && z2) {
                    Iterator it = this.f70586e.values().iterator();
                    while (it.hasNext()) {
                        ((UnicastSubject) it.next()).onComplete();
                    }
                    this.f70586e.clear();
                    this.f70587f.clear();
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
                        UnicastSubject unicastSubject = new UnicastSubject(null, Observable.bufferSize());
                        int i2 = this.l;
                        this.l = i2 + 1;
                        this.f70586e.put(Integer.valueOf(i2), unicastSubject);
                        try {
                            Object objApply = this.f70588h.apply(objPoll);
                            Objects.requireNonNull(objApply, "The leftEnd returned a null ObservableSource");
                            ObservableSource observableSource = (ObservableSource) objApply;
                            LeftRightEndObserver leftRightEndObserver = new LeftRightEndObserver(this, true, i2);
                            this.d.b(leftRightEndObserver);
                            observableSource.subscribe(leftRightEndObserver);
                            if (((Throwable) this.g.get()) != null) {
                                spscLinkedArrayQueue.clear();
                                this.d.dispose();
                                h(observer);
                                return;
                            }
                            try {
                                Object objApply2 = this.f70590j.apply(objPoll, unicastSubject);
                                Objects.requireNonNull(objApply2, "The resultSelector returned a null value");
                                observer.onNext(objApply2);
                                Iterator it2 = this.f70587f.values().iterator();
                                while (it2.hasNext()) {
                                    unicastSubject.onNext(it2.next());
                                }
                            } catch (Throwable th) {
                                i(th, observer, spscLinkedArrayQueue);
                                return;
                            }
                        } catch (Throwable th2) {
                            i(th2, observer, spscLinkedArrayQueue);
                            return;
                        }
                    } else if (num == 2) {
                        int i3 = this.m;
                        this.m = i3 + 1;
                        this.f70587f.put(Integer.valueOf(i3), objPoll);
                        try {
                            Object objApply3 = this.f70589i.apply(objPoll);
                            Objects.requireNonNull(objApply3, "The rightEnd returned a null ObservableSource");
                            ObservableSource observableSource2 = (ObservableSource) objApply3;
                            LeftRightEndObserver leftRightEndObserver2 = new LeftRightEndObserver(this, false, i3);
                            this.d.b(leftRightEndObserver2);
                            observableSource2.subscribe(leftRightEndObserver2);
                            if (((Throwable) this.g.get()) != null) {
                                spscLinkedArrayQueue.clear();
                                this.d.dispose();
                                h(observer);
                                return;
                            } else {
                                Iterator it3 = this.f70586e.values().iterator();
                                while (it3.hasNext()) {
                                    ((UnicastSubject) it3.next()).onNext(objPoll);
                                }
                            }
                        } catch (Throwable th3) {
                            i(th3, observer, spscLinkedArrayQueue);
                            return;
                        }
                    } else if (num == 3) {
                        LeftRightEndObserver leftRightEndObserver3 = (LeftRightEndObserver) objPoll;
                        UnicastSubject unicastSubject2 = (UnicastSubject) this.f70586e.remove(Integer.valueOf(leftRightEndObserver3.d));
                        this.d.a(leftRightEndObserver3);
                        if (unicastSubject2 != null) {
                            unicastSubject2.onComplete();
                        }
                    } else {
                        LeftRightEndObserver leftRightEndObserver4 = (LeftRightEndObserver) objPoll;
                        this.f70587f.remove(Integer.valueOf(leftRightEndObserver4.d));
                        this.d.a(leftRightEndObserver4);
                    }
                }
            }
            spscLinkedArrayQueue.clear();
        }

        public final void h(Observer observer) {
            Throwable thC = ExceptionHelper.c(this.g);
            LinkedHashMap linkedHashMap = this.f70586e;
            Iterator it = linkedHashMap.values().iterator();
            while (it.hasNext()) {
                ((UnicastSubject) it.next()).onError(thC);
            }
            linkedHashMap.clear();
            this.f70587f.clear();
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

    public interface JoinSupport {
        void a(LeftRightObserver leftRightObserver);

        void b(Throwable th);

        void c(Throwable th);

        void d(boolean z, LeftRightEndObserver leftRightEndObserver);

        void e(Object obj, boolean z);
    }

    public static final class LeftRightEndObserver extends AtomicReference<Disposable> implements Observer<Object>, Disposable {
        private static final long serialVersionUID = 1883890389173668373L;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final JoinSupport f70592b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final boolean f70593c;
        public final int d;

        public LeftRightEndObserver(JoinSupport joinSupport, boolean z, int i2) {
            this.f70592b = joinSupport;
            this.f70593c = z;
            this.d = i2;
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public final void dispose() {
            DisposableHelper.a(this);
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public final boolean isDisposed() {
            return DisposableHelper.b(get());
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onComplete() {
            this.f70592b.d(this.f70593c, this);
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onError(Throwable th) {
            this.f70592b.c(th);
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onNext(Object obj) {
            if (DisposableHelper.a(this)) {
                this.f70592b.d(this.f70593c, this);
            }
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onSubscribe(Disposable disposable) {
            DisposableHelper.e(this, disposable);
        }
    }

    public static final class LeftRightObserver extends AtomicReference<Disposable> implements Observer<Object>, Disposable {
        private static final long serialVersionUID = 1883890389173668373L;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final JoinSupport f70594b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final boolean f70595c;

        public LeftRightObserver(JoinSupport joinSupport, boolean z) {
            this.f70594b = joinSupport;
            this.f70595c = z;
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public final void dispose() {
            DisposableHelper.a(this);
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public final boolean isDisposed() {
            return DisposableHelper.b(get());
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onComplete() {
            this.f70594b.a(this);
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onError(Throwable th) {
            this.f70594b.b(th);
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onNext(Object obj) {
            this.f70594b.e(obj, this.f70595c);
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onSubscribe(Disposable disposable) {
            DisposableHelper.e(this, disposable);
        }
    }

    public ObservableGroupJoin(ObservableSource<TLeft> observableSource, ObservableSource<? extends TRight> observableSource2, Function<? super TLeft, ? extends ObservableSource<TLeftEnd>> function, Function<? super TRight, ? extends ObservableSource<TRightEnd>> function2, BiFunction<? super TLeft, ? super Observable<TRight>, ? extends R> biFunction) {
        super(observableSource);
        this.f70581c = observableSource2;
        this.d = function;
        this.f70582e = function2;
        this.f70583f = biFunction;
    }

    @Override // io.reactivex.rxjava3.core.Observable
    public final void subscribeActual(Observer observer) {
        GroupJoinDisposable groupJoinDisposable = new GroupJoinDisposable(observer, this.d, this.f70582e, this.f70583f);
        observer.onSubscribe(groupJoinDisposable);
        LeftRightObserver leftRightObserver = new LeftRightObserver(groupJoinDisposable, true);
        CompositeDisposable compositeDisposable = groupJoinDisposable.d;
        compositeDisposable.b(leftRightObserver);
        LeftRightObserver leftRightObserver2 = new LeftRightObserver(groupJoinDisposable, false);
        compositeDisposable.b(leftRightObserver2);
        this.f70226b.subscribe(leftRightObserver);
        this.f70581c.subscribe(leftRightObserver2);
    }
}
