package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.core.Observer;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.exceptions.Exceptions;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.internal.disposables.EmptyDisposable;
import io.reactivex.rxjava3.operators.SpscLinkedArrayQueue;
import java.util.Arrays;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes4.dex */
public final class ObservableZip<T, R> extends Observable<R> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ObservableSource[] f71040b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Iterable f71041c;
    public final Function d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f71042e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final boolean f71043f;

    public static final class ZipCoordinator<T, R> extends AtomicInteger implements Disposable {
        private static final long serialVersionUID = 2983708048395377667L;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Observer f71044b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final Function f71045c;
        public final ZipObserver[] d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final Object[] f71046e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final boolean f71047f;
        public volatile boolean g;

        public ZipCoordinator(Observer observer, Function function, int i2, boolean z) {
            this.f71044b = observer;
            this.f71045c = function;
            this.d = new ZipObserver[i2];
            this.f71046e = new Object[i2];
            this.f71047f = z;
        }

        public final void a() {
            ZipObserver[] zipObserverArr = this.d;
            for (ZipObserver zipObserver : zipObserverArr) {
                zipObserver.f71049c.clear();
            }
            for (ZipObserver zipObserver2 : zipObserverArr) {
                DisposableHelper.a(zipObserver2.f71051f);
            }
        }

        public final void b() {
            Throwable th;
            if (getAndIncrement() != 0) {
                return;
            }
            ZipObserver[] zipObserverArr = this.d;
            Observer observer = this.f71044b;
            Object[] objArr = this.f71046e;
            boolean z = this.f71047f;
            int iAddAndGet = 1;
            while (true) {
                int i2 = 0;
                int i3 = 0;
                for (ZipObserver zipObserver : zipObserverArr) {
                    if (objArr[i3] == null) {
                        boolean z2 = zipObserver.d;
                        Object objPoll = zipObserver.f71049c.poll();
                        boolean z3 = objPoll == null;
                        if (this.g) {
                            a();
                            return;
                        }
                        if (z2) {
                            if (!z) {
                                Throwable th2 = zipObserver.f71050e;
                                if (th2 != null) {
                                    this.g = true;
                                    a();
                                    observer.onError(th2);
                                    return;
                                } else if (z3) {
                                    this.g = true;
                                    a();
                                    observer.onComplete();
                                    return;
                                }
                            } else if (z3) {
                                Throwable th3 = zipObserver.f71050e;
                                this.g = true;
                                a();
                                if (th3 != null) {
                                    observer.onError(th3);
                                    return;
                                } else {
                                    observer.onComplete();
                                    return;
                                }
                            }
                        }
                        if (z3) {
                            i2++;
                        } else {
                            objArr[i3] = objPoll;
                        }
                    } else if (zipObserver.d && !z && (th = zipObserver.f71050e) != null) {
                        this.g = true;
                        a();
                        observer.onError(th);
                        return;
                    }
                    i3++;
                }
                if (i2 != 0) {
                    iAddAndGet = addAndGet(-iAddAndGet);
                    if (iAddAndGet == 0) {
                        return;
                    }
                } else {
                    try {
                        Object objApply = this.f71045c.apply(objArr.clone());
                        Objects.requireNonNull(objApply, "The zipper returned a null value");
                        observer.onNext(objApply);
                        Arrays.fill(objArr, (Object) null);
                    } catch (Throwable th4) {
                        Exceptions.a(th4);
                        a();
                        observer.onError(th4);
                        return;
                    }
                }
            }
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public final void dispose() {
            if (this.g) {
                return;
            }
            this.g = true;
            for (ZipObserver zipObserver : this.d) {
                DisposableHelper.a(zipObserver.f71051f);
            }
            if (getAndIncrement() == 0) {
                for (ZipObserver zipObserver2 : this.d) {
                    zipObserver2.f71049c.clear();
                }
            }
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public final boolean isDisposed() {
            return this.g;
        }
    }

    public static final class ZipObserver<T, R> implements Observer<T> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final ZipCoordinator f71048b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final SpscLinkedArrayQueue f71049c;
        public volatile boolean d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public Throwable f71050e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final AtomicReference f71051f = new AtomicReference();

        public ZipObserver(ZipCoordinator zipCoordinator, int i2) {
            this.f71048b = zipCoordinator;
            this.f71049c = new SpscLinkedArrayQueue(i2);
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onComplete() {
            this.d = true;
            this.f71048b.b();
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onError(Throwable th) {
            this.f71050e = th;
            this.d = true;
            this.f71048b.b();
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onNext(Object obj) {
            this.f71049c.offer(obj);
            this.f71048b.b();
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onSubscribe(Disposable disposable) {
            DisposableHelper.e(this.f71051f, disposable);
        }
    }

    public ObservableZip(ObservableSource<? extends T>[] observableSourceArr, Iterable<? extends ObservableSource<? extends T>> iterable, Function<? super Object[], ? extends R> function, int i2, boolean z) {
        this.f71040b = observableSourceArr;
        this.f71041c = iterable;
        this.d = function;
        this.f71042e = i2;
        this.f71043f = z;
    }

    @Override // io.reactivex.rxjava3.core.Observable
    public final void subscribeActual(Observer observer) {
        int length;
        ObservableSource[] observableSourceArr = this.f71040b;
        if (observableSourceArr == null) {
            observableSourceArr = new ObservableSource[8];
            length = 0;
            for (ObservableSource observableSource : this.f71041c) {
                if (length == observableSourceArr.length) {
                    ObservableSource[] observableSourceArr2 = new ObservableSource[(length >> 2) + length];
                    System.arraycopy(observableSourceArr, 0, observableSourceArr2, 0, length);
                    observableSourceArr = observableSourceArr2;
                }
                observableSourceArr[length] = observableSource;
                length++;
            }
        } else {
            length = observableSourceArr.length;
        }
        if (length == 0) {
            EmptyDisposable.a(observer);
            return;
        }
        ZipCoordinator zipCoordinator = new ZipCoordinator(observer, this.d, length, this.f71043f);
        int i2 = this.f71042e;
        ZipObserver[] zipObserverArr = zipCoordinator.d;
        int length2 = zipObserverArr.length;
        for (int i3 = 0; i3 < length2; i3++) {
            zipObserverArr[i3] = new ZipObserver(zipCoordinator, i2);
        }
        zipCoordinator.lazySet(0);
        zipCoordinator.f71044b.onSubscribe(zipCoordinator);
        for (int i4 = 0; i4 < length2 && !zipCoordinator.g; i4++) {
            observableSourceArr[i4].subscribe(zipObserverArr[i4]);
        }
    }
}
