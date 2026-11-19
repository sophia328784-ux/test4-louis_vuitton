package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.core.Observer;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.exceptions.Exceptions;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.internal.disposables.EmptyDisposable;
import io.reactivex.rxjava3.observables.GroupedObservable;
import io.reactivex.rxjava3.operators.SpscLinkedArrayQueue;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Objects;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes4.dex */
public final class ObservableGroupBy<T, K, V> extends AbstractObservableWithUpstream<T, GroupedObservable<K, V>> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Function f70563c;
    public final Function d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f70564e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final boolean f70565f;

    public static final class GroupByObserver<T, K, V> extends AtomicInteger implements Observer<T>, Disposable {

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public static final Object f70566j = new Object();
        private static final long serialVersionUID = -3688291656102519502L;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Observer f70567b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final Function f70568c;
        public final Function d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final int f70569e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final boolean f70570f;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public Disposable f70571h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final AtomicBoolean f70572i = new AtomicBoolean();
        public final ConcurrentHashMap g = new ConcurrentHashMap();

        public GroupByObserver(Observer<? super GroupedObservable<K, V>> observer, Function<? super T, ? extends K> function, Function<? super T, ? extends V> function2, int i2, boolean z) {
            this.f70567b = observer;
            this.f70568c = function;
            this.d = function2;
            this.f70569e = i2;
            this.f70570f = z;
            lazySet(1);
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public final void dispose() {
            if (this.f70572i.compareAndSet(false, true) && decrementAndGet() == 0) {
                this.f70571h.dispose();
            }
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public final boolean isDisposed() {
            return this.f70572i.get();
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onComplete() {
            ConcurrentHashMap concurrentHashMap = this.g;
            ArrayList arrayList = new ArrayList(concurrentHashMap.values());
            concurrentHashMap.clear();
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                State state = ((GroupedUnicast) it.next()).f70573c;
                state.f70577f = true;
                state.a();
            }
            this.f70567b.onComplete();
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onError(Throwable th) {
            ArrayList arrayList = new ArrayList(this.g.values());
            this.g.clear();
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                State state = ((GroupedUnicast) it.next()).f70573c;
                state.g = th;
                state.f70577f = true;
                state.a();
            }
            this.f70567b.onError(th);
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onNext(Object obj) {
            boolean z;
            Object obj2 = f70566j;
            Observer observer = this.f70567b;
            ConcurrentHashMap concurrentHashMap = this.g;
            try {
                Object objApply = this.f70568c.apply(obj);
                Object obj3 = objApply != null ? objApply : obj2;
                GroupedUnicast groupedUnicast = (GroupedUnicast) concurrentHashMap.get(obj3);
                if (groupedUnicast != null) {
                    z = false;
                } else {
                    if (this.f70572i.get()) {
                        return;
                    }
                    groupedUnicast = new GroupedUnicast(objApply, new State(this.f70569e, this, objApply, this.f70570f));
                    concurrentHashMap.put(obj3, groupedUnicast);
                    getAndIncrement();
                    z = true;
                }
                try {
                    State state = groupedUnicast.f70573c;
                    Object objApply2 = this.d.apply(obj);
                    Objects.requireNonNull(objApply2, "The value supplied is null");
                    state.f70575c.offer(objApply2);
                    state.a();
                    if (z) {
                        observer.onNext(groupedUnicast);
                        AtomicInteger atomicInteger = state.f70580j;
                        if (atomicInteger.get() == 0 && atomicInteger.compareAndSet(0, 2)) {
                            if (objApply != null) {
                                obj2 = objApply;
                            }
                            this.g.remove(obj2);
                            if (decrementAndGet() == 0) {
                                this.f70571h.dispose();
                            }
                            State state2 = groupedUnicast.f70573c;
                            state2.f70577f = true;
                            state2.a();
                        }
                    }
                } catch (Throwable th) {
                    Exceptions.a(th);
                    this.f70571h.dispose();
                    if (z) {
                        observer.onNext(groupedUnicast);
                    }
                    onError(th);
                }
            } catch (Throwable th2) {
                Exceptions.a(th2);
                this.f70571h.dispose();
                onError(th2);
            }
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onSubscribe(Disposable disposable) {
            if (DisposableHelper.g(this.f70571h, disposable)) {
                this.f70571h = disposable;
                this.f70567b.onSubscribe(this);
            }
        }
    }

    public static final class GroupedUnicast<K, T> extends GroupedObservable<K, T> {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final State f70573c;

        public GroupedUnicast(Object obj, State state) {
            super(obj);
            this.f70573c = state;
        }

        @Override // io.reactivex.rxjava3.core.Observable
        public final void subscribeActual(Observer observer) {
            this.f70573c.subscribe(observer);
        }
    }

    public static final class State<T, K> extends AtomicInteger implements Disposable, ObservableSource<T> {
        private static final long serialVersionUID = -3852313036005250360L;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Object f70574b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final SpscLinkedArrayQueue f70575c;
        public final GroupByObserver d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final boolean f70576e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public volatile boolean f70577f;
        public Throwable g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final AtomicBoolean f70578h = new AtomicBoolean();

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final AtomicReference f70579i = new AtomicReference();

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public final AtomicInteger f70580j = new AtomicInteger();

        public State(int i2, GroupByObserver groupByObserver, Object obj, boolean z) {
            this.f70575c = new SpscLinkedArrayQueue(i2);
            this.d = groupByObserver;
            this.f70574b = obj;
            this.f70576e = z;
        }

        public final void a() {
            if (getAndIncrement() != 0) {
                return;
            }
            SpscLinkedArrayQueue spscLinkedArrayQueue = this.f70575c;
            boolean z = this.f70576e;
            Observer observer = (Observer) this.f70579i.get();
            int iAddAndGet = 1;
            while (true) {
                if (observer != null) {
                    while (true) {
                        boolean z2 = this.f70577f;
                        Object objPoll = spscLinkedArrayQueue.poll();
                        boolean z3 = objPoll == null;
                        SpscLinkedArrayQueue spscLinkedArrayQueue2 = this.f70575c;
                        AtomicReference atomicReference = this.f70579i;
                        if (this.f70578h.get()) {
                            spscLinkedArrayQueue2.clear();
                            atomicReference.lazySet(null);
                            if ((this.f70580j.get() & 2) == 0) {
                                GroupByObserver groupByObserver = this.d;
                                Object obj = this.f70574b;
                                groupByObserver.getClass();
                                if (obj == null) {
                                    obj = GroupByObserver.f70566j;
                                }
                                groupByObserver.g.remove(obj);
                                if (groupByObserver.decrementAndGet() == 0) {
                                    groupByObserver.f70571h.dispose();
                                    return;
                                }
                                return;
                            }
                            return;
                        }
                        if (z2) {
                            if (!z) {
                                Throwable th = this.g;
                                if (th != null) {
                                    spscLinkedArrayQueue2.clear();
                                    atomicReference.lazySet(null);
                                    observer.onError(th);
                                    return;
                                } else if (z3) {
                                    atomicReference.lazySet(null);
                                    observer.onComplete();
                                    return;
                                }
                            } else if (z3) {
                                Throwable th2 = this.g;
                                atomicReference.lazySet(null);
                                if (th2 != null) {
                                    observer.onError(th2);
                                    return;
                                } else {
                                    observer.onComplete();
                                    return;
                                }
                            }
                        }
                        if (z3) {
                            break;
                        } else {
                            observer.onNext(objPoll);
                        }
                    }
                }
                iAddAndGet = addAndGet(-iAddAndGet);
                if (iAddAndGet == 0) {
                    return;
                }
                if (observer == null) {
                    observer = (Observer) this.f70579i.get();
                }
            }
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public final void dispose() {
            if (this.f70578h.compareAndSet(false, true) && getAndIncrement() == 0) {
                this.f70579i.lazySet(null);
                if ((this.f70580j.get() & 2) == 0) {
                    GroupByObserver groupByObserver = this.d;
                    groupByObserver.getClass();
                    Object obj = this.f70574b;
                    if (obj == null) {
                        obj = GroupByObserver.f70566j;
                    }
                    groupByObserver.g.remove(obj);
                    if (groupByObserver.decrementAndGet() == 0) {
                        groupByObserver.f70571h.dispose();
                    }
                }
            }
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public final boolean isDisposed() {
            return this.f70578h.get();
        }

        @Override // io.reactivex.rxjava3.core.ObservableSource
        public final void subscribe(Observer observer) {
            AtomicInteger atomicInteger;
            int i2;
            do {
                atomicInteger = this.f70580j;
                i2 = atomicInteger.get();
                if ((i2 & 1) != 0) {
                    EmptyDisposable.b(new IllegalStateException("Only one Observer allowed!"), observer);
                    return;
                }
            } while (!atomicInteger.compareAndSet(i2, i2 | 1));
            observer.onSubscribe(this);
            AtomicReference atomicReference = this.f70579i;
            atomicReference.lazySet(observer);
            if (this.f70578h.get()) {
                atomicReference.lazySet(null);
            } else {
                a();
            }
        }
    }

    public ObservableGroupBy(ObservableSource<T> observableSource, Function<? super T, ? extends K> function, Function<? super T, ? extends V> function2, int i2, boolean z) {
        super(observableSource);
        this.f70563c = function;
        this.d = function2;
        this.f70564e = i2;
        this.f70565f = z;
    }

    @Override // io.reactivex.rxjava3.core.Observable
    public final void subscribeActual(Observer observer) {
        this.f70226b.subscribe(new GroupByObserver(observer, this.f70563c, this.d, this.f70564e, this.f70565f));
    }
}
