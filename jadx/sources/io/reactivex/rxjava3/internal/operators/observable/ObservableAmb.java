package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.core.Observer;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.exceptions.Exceptions;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.internal.disposables.EmptyDisposable;
import io.reactivex.rxjava3.plugins.RxJavaPlugins;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes4.dex */
public final class ObservableAmb<T> extends Observable<T> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ObservableSource[] f70257b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Iterable f70258c;

    public static final class AmbCoordinator<T> implements Disposable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Observer f70259b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final AmbInnerObserver[] f70260c;
        public final AtomicInteger d = new AtomicInteger();

        public AmbCoordinator(Observer observer, int i2) {
            this.f70259b = observer;
            this.f70260c = new AmbInnerObserver[i2];
        }

        public final boolean a(int i2) {
            AtomicInteger atomicInteger = this.d;
            int i3 = 0;
            if (atomicInteger.get() != 0 || !atomicInteger.compareAndSet(0, i2)) {
                return false;
            }
            AmbInnerObserver[] ambInnerObserverArr = this.f70260c;
            int length = ambInnerObserverArr.length;
            while (i3 < length) {
                int i4 = i3 + 1;
                if (i4 != i2) {
                    AmbInnerObserver ambInnerObserver = ambInnerObserverArr[i3];
                    ambInnerObserver.getClass();
                    DisposableHelper.a(ambInnerObserver);
                }
                i3 = i4;
            }
            return true;
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public final void dispose() {
            AtomicInteger atomicInteger = this.d;
            if (atomicInteger.get() != -1) {
                atomicInteger.lazySet(-1);
                for (AmbInnerObserver ambInnerObserver : this.f70260c) {
                    ambInnerObserver.getClass();
                    DisposableHelper.a(ambInnerObserver);
                }
            }
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public final boolean isDisposed() {
            return this.d.get() == -1;
        }
    }

    public static final class AmbInnerObserver<T> extends AtomicReference<Disposable> implements Observer<T> {
        private static final long serialVersionUID = -1185974347409665484L;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final AmbCoordinator f70261b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final int f70262c;
        public final Observer d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public boolean f70263e;

        public AmbInnerObserver(AmbCoordinator ambCoordinator, int i2, Observer observer) {
            this.f70261b = ambCoordinator;
            this.f70262c = i2;
            this.d = observer;
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onComplete() {
            boolean z = this.f70263e;
            Observer observer = this.d;
            if (z) {
                observer.onComplete();
            } else if (this.f70261b.a(this.f70262c)) {
                this.f70263e = true;
                observer.onComplete();
            }
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onError(Throwable th) {
            boolean z = this.f70263e;
            Observer observer = this.d;
            if (z) {
                observer.onError(th);
            } else if (!this.f70261b.a(this.f70262c)) {
                RxJavaPlugins.b(th);
            } else {
                this.f70263e = true;
                observer.onError(th);
            }
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onNext(Object obj) {
            boolean z = this.f70263e;
            Observer observer = this.d;
            if (z) {
                observer.onNext(obj);
            } else if (!this.f70261b.a(this.f70262c)) {
                get().dispose();
            } else {
                this.f70263e = true;
                observer.onNext(obj);
            }
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onSubscribe(Disposable disposable) {
            DisposableHelper.e(this, disposable);
        }
    }

    public ObservableAmb(ObservableSource<? extends T>[] observableSourceArr, Iterable<? extends ObservableSource<? extends T>> iterable) {
        this.f70257b = observableSourceArr;
        this.f70258c = iterable;
    }

    @Override // io.reactivex.rxjava3.core.Observable
    public final void subscribeActual(Observer observer) {
        int length;
        Observer observer2;
        ObservableSource[] observableSourceArr = this.f70257b;
        if (observableSourceArr == null) {
            observableSourceArr = new ObservableSource[8];
            try {
                length = 0;
                for (ObservableSource observableSource : this.f70258c) {
                    if (observableSource == null) {
                        EmptyDisposable.b(new NullPointerException("One of the sources is null"), observer);
                        return;
                    }
                    if (length == observableSourceArr.length) {
                        ObservableSource[] observableSourceArr2 = new ObservableSource[(length >> 2) + length];
                        System.arraycopy(observableSourceArr, 0, observableSourceArr2, 0, length);
                        observableSourceArr = observableSourceArr2;
                    }
                    int i2 = length + 1;
                    observableSourceArr[length] = observableSource;
                    length = i2;
                }
            } catch (Throwable th) {
                Exceptions.a(th);
                EmptyDisposable.b(th, observer);
                return;
            }
        } else {
            length = observableSourceArr.length;
        }
        if (length == 0) {
            EmptyDisposable.a(observer);
            return;
        }
        if (length == 1) {
            observableSourceArr[0].subscribe(observer);
            return;
        }
        AmbCoordinator ambCoordinator = new AmbCoordinator(observer, length);
        AmbInnerObserver[] ambInnerObserverArr = ambCoordinator.f70260c;
        int length2 = ambInnerObserverArr.length;
        int i3 = 0;
        while (true) {
            observer2 = ambCoordinator.f70259b;
            if (i3 >= length2) {
                break;
            }
            int i4 = i3 + 1;
            ambInnerObserverArr[i3] = new AmbInnerObserver(ambCoordinator, i4, observer2);
            i3 = i4;
        }
        AtomicInteger atomicInteger = ambCoordinator.d;
        atomicInteger.lazySet(0);
        observer2.onSubscribe(ambCoordinator);
        for (int i5 = 0; i5 < length2 && atomicInteger.get() == 0; i5++) {
            observableSourceArr[i5].subscribe(ambInnerObserverArr[i5]);
        }
    }
}
