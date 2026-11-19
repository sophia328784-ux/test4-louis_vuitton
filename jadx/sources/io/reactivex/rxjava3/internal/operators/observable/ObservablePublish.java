package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.core.Observer;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.exceptions.Exceptions;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.internal.fuseable.HasUpstreamObservableSource;
import io.reactivex.rxjava3.internal.util.ExceptionHelper;
import io.reactivex.rxjava3.observables.ConnectableObservable;
import io.reactivex.rxjava3.plugins.RxJavaPlugins;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes4.dex */
public final class ObservablePublish<T> extends ConnectableObservable<T> implements HasUpstreamObservableSource<T> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ObservableSource f70700b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final AtomicReference f70701c = new AtomicReference();

    public static final class InnerDisposable<T> extends AtomicReference<PublishConnection<T>> implements Disposable {
        private static final long serialVersionUID = 7463222674719692880L;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Observer f70702b;

        public InnerDisposable(Observer observer, PublishConnection publishConnection) {
            this.f70702b = observer;
            lazySet(publishConnection);
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public final void dispose() {
            PublishConnection<T> andSet = getAndSet(null);
            if (andSet != null) {
                andSet.a(this);
            }
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public final boolean isDisposed() {
            return get() == null;
        }
    }

    public static final class PublishConnection<T> extends AtomicReference<InnerDisposable<T>[]> implements Observer<T>, Disposable {

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public static final InnerDisposable[] f70703f = new InnerDisposable[0];
        public static final InnerDisposable[] g = new InnerDisposable[0];
        private static final long serialVersionUID = -3251430252873581268L;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final AtomicReference f70705c;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public Throwable f70706e;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final AtomicBoolean f70704b = new AtomicBoolean();
        public final AtomicReference d = new AtomicReference();

        public PublishConnection(AtomicReference atomicReference) {
            this.f70705c = atomicReference;
            lazySet(f70703f);
        }

        public final void a(InnerDisposable innerDisposable) {
            InnerDisposable<T>[] innerDisposableArr;
            InnerDisposable[] innerDisposableArr2;
            do {
                innerDisposableArr = get();
                int length = innerDisposableArr.length;
                if (length == 0) {
                    return;
                }
                int i2 = 0;
                while (true) {
                    if (i2 >= length) {
                        i2 = -1;
                        break;
                    } else if (innerDisposableArr[i2] == innerDisposable) {
                        break;
                    } else {
                        i2++;
                    }
                }
                if (i2 < 0) {
                    return;
                }
                if (length != 1) {
                    innerDisposableArr2 = new InnerDisposable[length - 1];
                    System.arraycopy(innerDisposableArr, 0, innerDisposableArr2, 0, i2);
                    System.arraycopy(innerDisposableArr, i2 + 1, innerDisposableArr2, i2, (length - i2) - 1);
                } else {
                    innerDisposableArr2 = f70703f;
                }
            } while (!compareAndSet(innerDisposableArr, innerDisposableArr2));
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public final void dispose() {
            AtomicReference atomicReference;
            getAndSet(g);
            do {
                atomicReference = this.f70705c;
                if (atomicReference.compareAndSet(this, null)) {
                    break;
                }
            } while (atomicReference.get() == this);
            DisposableHelper.a(this.d);
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public final boolean isDisposed() {
            return get() == g;
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onComplete() {
            this.d.lazySet(DisposableHelper.DISPOSED);
            for (InnerDisposable<T> innerDisposable : getAndSet(g)) {
                innerDisposable.f70702b.onComplete();
            }
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onError(Throwable th) {
            AtomicReference atomicReference = this.d;
            Object obj = atomicReference.get();
            DisposableHelper disposableHelper = DisposableHelper.DISPOSED;
            if (obj == disposableHelper) {
                RxJavaPlugins.b(th);
                return;
            }
            this.f70706e = th;
            atomicReference.lazySet(disposableHelper);
            for (InnerDisposable<T> innerDisposable : getAndSet(g)) {
                innerDisposable.f70702b.onError(th);
            }
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onNext(Object obj) {
            for (InnerDisposable<T> innerDisposable : get()) {
                innerDisposable.f70702b.onNext(obj);
            }
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onSubscribe(Disposable disposable) {
            DisposableHelper.e(this.d, disposable);
        }
    }

    public ObservablePublish(ObservableSource<T> observableSource) {
        this.f70700b = observableSource;
    }

    @Override // io.reactivex.rxjava3.observables.ConnectableObservable
    public final void c(Consumer consumer) {
        PublishConnection publishConnection;
        loop0: while (true) {
            AtomicReference atomicReference = this.f70701c;
            publishConnection = (PublishConnection) atomicReference.get();
            if (publishConnection != null && !publishConnection.isDisposed()) {
                break;
            }
            PublishConnection publishConnection2 = new PublishConnection(atomicReference);
            do {
                if (atomicReference.compareAndSet(publishConnection, publishConnection2)) {
                    publishConnection = publishConnection2;
                    break loop0;
                }
            } while (atomicReference.get() == publishConnection);
        }
        AtomicBoolean atomicBoolean = publishConnection.f70704b;
        boolean z = false;
        if (!atomicBoolean.get() && atomicBoolean.compareAndSet(false, true)) {
            z = true;
        }
        try {
            consumer.accept(publishConnection);
            if (z) {
                this.f70700b.subscribe(publishConnection);
            }
        } catch (Throwable th) {
            Exceptions.a(th);
            throw ExceptionHelper.e(th);
        }
    }

    @Override // io.reactivex.rxjava3.observables.ConnectableObservable
    public final void d() {
        AtomicReference atomicReference = this.f70701c;
        PublishConnection publishConnection = (PublishConnection) atomicReference.get();
        if (publishConnection == null || !publishConnection.isDisposed()) {
            return;
        }
        while (!atomicReference.compareAndSet(publishConnection, null) && atomicReference.get() == publishConnection) {
        }
    }

    @Override // io.reactivex.rxjava3.core.Observable
    public final void subscribeActual(Observer observer) {
        PublishConnection publishConnection;
        InnerDisposable<T>[] innerDisposableArr;
        InnerDisposable[] innerDisposableArr2;
        loop0: while (true) {
            AtomicReference atomicReference = this.f70701c;
            publishConnection = (PublishConnection) atomicReference.get();
            if (publishConnection != null) {
                break;
            }
            PublishConnection publishConnection2 = new PublishConnection(atomicReference);
            do {
                if (atomicReference.compareAndSet(publishConnection, publishConnection2)) {
                    publishConnection = publishConnection2;
                    break loop0;
                }
            } while (atomicReference.get() == publishConnection);
        }
        InnerDisposable innerDisposable = new InnerDisposable(observer, publishConnection);
        observer.onSubscribe(innerDisposable);
        do {
            innerDisposableArr = publishConnection.get();
            if (innerDisposableArr == PublishConnection.g) {
                Throwable th = publishConnection.f70706e;
                if (th != null) {
                    observer.onError(th);
                    return;
                } else {
                    observer.onComplete();
                    return;
                }
            }
            int length = innerDisposableArr.length;
            innerDisposableArr2 = new InnerDisposable[length + 1];
            System.arraycopy(innerDisposableArr, 0, innerDisposableArr2, 0, length);
            innerDisposableArr2[length] = innerDisposable;
        } while (!publishConnection.compareAndSet(innerDisposableArr, innerDisposableArr2));
        if (innerDisposable.isDisposed()) {
            publishConnection.a(innerDisposable);
        }
    }
}
