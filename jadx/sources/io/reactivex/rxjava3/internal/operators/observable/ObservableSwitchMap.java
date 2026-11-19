package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.core.Observer;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.exceptions.Exceptions;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.internal.util.AtomicThrowable;
import io.reactivex.rxjava3.internal.util.ExceptionHelper;
import io.reactivex.rxjava3.operators.QueueDisposable;
import io.reactivex.rxjava3.operators.SimpleQueue;
import io.reactivex.rxjava3.operators.SpscLinkedArrayQueue;
import io.reactivex.rxjava3.plugins.RxJavaPlugins;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes4.dex */
public final class ObservableSwitchMap<T, R> extends AbstractObservableWithUpstream<T, R> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Function f70902c;
    public final int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final boolean f70903e;

    public static final class SwitchMapInnerObserver<T, R> extends AtomicReference<Disposable> implements Observer<R> {
        private static final long serialVersionUID = 3837284832786408377L;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final SwitchMapObserver f70904b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final long f70905c;
        public final int d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public volatile SimpleQueue f70906e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public volatile boolean f70907f;

        public SwitchMapInnerObserver(SwitchMapObserver switchMapObserver, long j2, int i2) {
            this.f70904b = switchMapObserver;
            this.f70905c = j2;
            this.d = i2;
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onComplete() {
            if (this.f70905c == this.f70904b.f70915k) {
                this.f70907f = true;
                this.f70904b.a();
            }
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onError(Throwable th) {
            SwitchMapObserver switchMapObserver = this.f70904b;
            switchMapObserver.getClass();
            if (this.f70905c == switchMapObserver.f70915k) {
                AtomicThrowable atomicThrowable = switchMapObserver.f70911f;
                atomicThrowable.getClass();
                if (ExceptionHelper.a(atomicThrowable, th)) {
                    if (!switchMapObserver.f70910e) {
                        switchMapObserver.f70913i.dispose();
                        switchMapObserver.g = true;
                    }
                    this.f70907f = true;
                    switchMapObserver.a();
                    return;
                }
            }
            RxJavaPlugins.b(th);
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onNext(Object obj) {
            SimpleQueue simpleQueue = this.f70906e;
            if (this.f70905c != this.f70904b.f70915k || simpleQueue == null) {
                return;
            }
            if (obj != null) {
                simpleQueue.offer(obj);
            }
            this.f70904b.a();
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onSubscribe(Disposable disposable) {
            if (DisposableHelper.e(this, disposable)) {
                if (disposable instanceof QueueDisposable) {
                    QueueDisposable queueDisposable = (QueueDisposable) disposable;
                    int iRequestFusion = queueDisposable.requestFusion(7);
                    if (iRequestFusion == 1) {
                        this.f70906e = queueDisposable;
                        this.f70907f = true;
                        this.f70904b.a();
                        return;
                    } else if (iRequestFusion == 2) {
                        this.f70906e = queueDisposable;
                        return;
                    }
                }
                this.f70906e = new SpscLinkedArrayQueue(this.d);
            }
        }
    }

    public static final class SwitchMapObserver<T, R> extends AtomicInteger implements Observer<T>, Disposable {
        public static final SwitchMapInnerObserver l;
        private static final long serialVersionUID = -3491074160481096299L;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Observer f70908b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final Function f70909c;
        public final int d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final boolean f70910e;
        public volatile boolean g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public volatile boolean f70912h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public Disposable f70913i;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public volatile long f70915k;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public final AtomicReference f70914j = new AtomicReference();

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final AtomicThrowable f70911f = new AtomicThrowable();

        static {
            SwitchMapInnerObserver switchMapInnerObserver = new SwitchMapInnerObserver(null, -1L, 1);
            l = switchMapInnerObserver;
            DisposableHelper.a(switchMapInnerObserver);
        }

        public SwitchMapObserver(Observer observer, Function function, int i2, boolean z) {
            this.f70908b = observer;
            this.f70909c = function;
            this.d = i2;
            this.f70910e = z;
        }

        /* JADX WARN: Code duplicated, block: B:89:0x00dd A[SYNTHETIC] */
        /* JADX WARN: Code duplicated, block: B:92:0x0010 A[SYNTHETIC] */
        public final void a() {
            SimpleQueue simpleQueue;
            Object objPoll;
            if (getAndIncrement() != 0) {
                return;
            }
            Observer observer = this.f70908b;
            AtomicReference atomicReference = this.f70914j;
            boolean z = this.f70910e;
            int iAddAndGet = 1;
            while (!this.f70912h) {
                if (this.g) {
                    boolean z2 = atomicReference.get() == null;
                    if (z) {
                        if (z2) {
                            Throwable th = this.f70911f.get();
                            if (th != null) {
                                observer.onError(th);
                                return;
                            } else {
                                observer.onComplete();
                                return;
                            }
                        }
                    } else if (this.f70911f.get() != null) {
                        this.f70911f.d(observer);
                        return;
                    } else if (z2) {
                        observer.onComplete();
                        return;
                    }
                }
                SwitchMapInnerObserver switchMapInnerObserver = (SwitchMapInnerObserver) atomicReference.get();
                if (switchMapInnerObserver != null && (simpleQueue = switchMapInnerObserver.f70906e) != null) {
                    boolean z3 = false;
                    while (!this.f70912h) {
                        if (switchMapInnerObserver == atomicReference.get()) {
                            if (!z && this.f70911f.get() != null) {
                                this.f70911f.d(observer);
                                return;
                            }
                            boolean z4 = switchMapInnerObserver.f70907f;
                            try {
                                objPoll = simpleQueue.poll();
                            } catch (Throwable th2) {
                                Exceptions.a(th2);
                                this.f70911f.a(th2);
                                while (!atomicReference.compareAndSet(switchMapInnerObserver, null) && atomicReference.get() == switchMapInnerObserver) {
                                }
                                if (z) {
                                    DisposableHelper.a(switchMapInnerObserver);
                                } else {
                                    SwitchMapInnerObserver switchMapInnerObserver2 = (SwitchMapInnerObserver) this.f70914j.getAndSet(l);
                                    if (switchMapInnerObserver2 != null) {
                                        DisposableHelper.a(switchMapInnerObserver2);
                                    }
                                    this.f70913i.dispose();
                                    this.g = true;
                                }
                                z3 = true;
                                objPoll = null;
                            }
                            boolean z5 = objPoll == null;
                            if (z4 && z5) {
                                while (!atomicReference.compareAndSet(switchMapInnerObserver, null) && atomicReference.get() == switchMapInnerObserver) {
                                }
                            } else if (!z5) {
                                observer.onNext(objPoll);
                            }
                            if (z3) {
                                continue;
                            }
                        }
                        z3 = true;
                        if (z3) {
                            continue;
                        }
                    }
                    return;
                }
                iAddAndGet = addAndGet(-iAddAndGet);
                if (iAddAndGet == 0) {
                    return;
                }
            }
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public final void dispose() {
            if (this.f70912h) {
                return;
            }
            this.f70912h = true;
            this.f70913i.dispose();
            SwitchMapInnerObserver switchMapInnerObserver = (SwitchMapInnerObserver) this.f70914j.getAndSet(l);
            if (switchMapInnerObserver != null) {
                DisposableHelper.a(switchMapInnerObserver);
            }
            this.f70911f.b();
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public final boolean isDisposed() {
            return this.f70912h;
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onComplete() {
            if (this.g) {
                return;
            }
            this.g = true;
            a();
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onError(Throwable th) {
            SwitchMapInnerObserver switchMapInnerObserver;
            if (!this.g) {
                AtomicThrowable atomicThrowable = this.f70911f;
                atomicThrowable.getClass();
                if (ExceptionHelper.a(atomicThrowable, th)) {
                    if (!this.f70910e && (switchMapInnerObserver = (SwitchMapInnerObserver) this.f70914j.getAndSet(l)) != null) {
                        DisposableHelper.a(switchMapInnerObserver);
                    }
                    this.g = true;
                    a();
                    return;
                }
            }
            RxJavaPlugins.b(th);
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onNext(Object obj) {
            long j2 = this.f70915k + 1;
            this.f70915k = j2;
            SwitchMapInnerObserver switchMapInnerObserver = (SwitchMapInnerObserver) this.f70914j.get();
            if (switchMapInnerObserver != null) {
                DisposableHelper.a(switchMapInnerObserver);
            }
            try {
                Object objApply = this.f70909c.apply(obj);
                Objects.requireNonNull(objApply, "The ObservableSource returned is null");
                ObservableSource observableSource = (ObservableSource) objApply;
                SwitchMapInnerObserver switchMapInnerObserver2 = new SwitchMapInnerObserver(this, j2, this.d);
                while (true) {
                    SwitchMapInnerObserver switchMapInnerObserver3 = (SwitchMapInnerObserver) this.f70914j.get();
                    if (switchMapInnerObserver3 == l) {
                        return;
                    }
                    AtomicReference atomicReference = this.f70914j;
                    do {
                        if (atomicReference.compareAndSet(switchMapInnerObserver3, switchMapInnerObserver2)) {
                            observableSource.subscribe(switchMapInnerObserver2);
                            return;
                        }
                    } while (atomicReference.get() == switchMapInnerObserver3);
                }
            } catch (Throwable th) {
                Exceptions.a(th);
                this.f70913i.dispose();
                onError(th);
            }
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onSubscribe(Disposable disposable) {
            if (DisposableHelper.g(this.f70913i, disposable)) {
                this.f70913i = disposable;
                this.f70908b.onSubscribe(this);
            }
        }
    }

    public ObservableSwitchMap(ObservableSource<T> observableSource, Function<? super T, ? extends ObservableSource<? extends R>> function, int i2, boolean z) {
        super(observableSource);
        this.f70902c = function;
        this.d = i2;
        this.f70903e = z;
    }

    @Override // io.reactivex.rxjava3.core.Observable
    public final void subscribeActual(Observer observer) {
        ObservableSource observableSource = this.f70226b;
        Function function = this.f70902c;
        if (ObservableScalarXMap.b(observableSource, observer, function)) {
            return;
        }
        observableSource.subscribe(new SwitchMapObserver(observer, function, this.d, this.f70903e));
    }
}
