package io.reactivex.rxjava3.subjects;

import io.reactivex.rxjava3.core.Observer;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.internal.util.ExceptionHelper;
import io.reactivex.rxjava3.plugins.RxJavaPlugins;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes4.dex */
public final class PublishSubject<T> extends Subject<T> {
    public static final PublishDisposable[] d = new PublishDisposable[0];

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final PublishDisposable[] f71165e = new PublishDisposable[0];

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AtomicReference f71166b = new AtomicReference(f71165e);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Throwable f71167c;

    public static final class PublishDisposable<T> extends AtomicBoolean implements Disposable {
        private static final long serialVersionUID = 3562861878281475070L;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Observer f71168b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final PublishSubject f71169c;

        public PublishDisposable(Observer observer, PublishSubject publishSubject) {
            this.f71168b = observer;
            this.f71169c = publishSubject;
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public final void dispose() {
            if (compareAndSet(false, true)) {
                this.f71169c.d(this);
            }
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public final boolean isDisposed() {
            return get();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void d(PublishDisposable publishDisposable) {
        PublishDisposable[] publishDisposableArr;
        while (true) {
            AtomicReference atomicReference = this.f71166b;
            PublishDisposable[] publishDisposableArr2 = (PublishDisposable[]) atomicReference.get();
            if (publishDisposableArr2 == d || publishDisposableArr2 == (publishDisposableArr = f71165e)) {
                return;
            }
            int length = publishDisposableArr2.length;
            int i2 = 0;
            while (true) {
                if (i2 >= length) {
                    i2 = -1;
                    break;
                } else if (publishDisposableArr2[i2] == publishDisposable) {
                    break;
                } else {
                    i2++;
                }
            }
            if (i2 < 0) {
                return;
            }
            if (length != 1) {
                publishDisposableArr = new PublishDisposable[length - 1];
                System.arraycopy(publishDisposableArr2, 0, publishDisposableArr, 0, i2);
                System.arraycopy(publishDisposableArr2, i2 + 1, publishDisposableArr, i2, (length - i2) - 1);
            }
            while (!atomicReference.compareAndSet(publishDisposableArr2, publishDisposableArr)) {
                if (atomicReference.get() != publishDisposableArr2) {
                }
            }
            return;
        }
    }

    @Override // io.reactivex.rxjava3.core.Observer
    public final void onComplete() {
        AtomicReference atomicReference = this.f71166b;
        Object obj = atomicReference.get();
        Object obj2 = d;
        if (obj == obj2) {
            return;
        }
        PublishDisposable[] publishDisposableArr = (PublishDisposable[]) atomicReference.getAndSet(obj2);
        for (PublishDisposable publishDisposable : publishDisposableArr) {
            if (!publishDisposable.get()) {
                publishDisposable.f71168b.onComplete();
            }
        }
    }

    @Override // io.reactivex.rxjava3.core.Observer
    public final void onError(Throwable th) {
        if (th == null) {
            throw ExceptionHelper.b("onError called with a null Throwable.");
        }
        Throwable th2 = ExceptionHelper.f71119a;
        AtomicReference atomicReference = this.f71166b;
        Object obj = atomicReference.get();
        Object obj2 = d;
        if (obj == obj2) {
            RxJavaPlugins.b(th);
            return;
        }
        this.f71167c = th;
        for (PublishDisposable publishDisposable : (PublishDisposable[]) atomicReference.getAndSet(obj2)) {
            if (publishDisposable.get()) {
                RxJavaPlugins.b(th);
            } else {
                publishDisposable.f71168b.onError(th);
            }
        }
    }

    @Override // io.reactivex.rxjava3.core.Observer
    public final void onNext(Object obj) {
        if (obj == null) {
            throw ExceptionHelper.b("onNext called with a null value.");
        }
        Throwable th = ExceptionHelper.f71119a;
        for (PublishDisposable publishDisposable : (PublishDisposable[]) this.f71166b.get()) {
            if (!publishDisposable.get()) {
                publishDisposable.f71168b.onNext(obj);
            }
        }
    }

    @Override // io.reactivex.rxjava3.core.Observer
    public final void onSubscribe(Disposable disposable) {
        if (this.f71166b.get() == d) {
            disposable.dispose();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // io.reactivex.rxjava3.core.Observable
    public final void subscribeActual(Observer observer) {
        PublishDisposable publishDisposable = new PublishDisposable(observer, this);
        observer.onSubscribe(publishDisposable);
        while (true) {
            AtomicReference atomicReference = this.f71166b;
            PublishDisposable[] publishDisposableArr = (PublishDisposable[]) atomicReference.get();
            if (publishDisposableArr == d) {
                Throwable th = this.f71167c;
                if (th != null) {
                    observer.onError(th);
                    return;
                } else {
                    observer.onComplete();
                    return;
                }
            }
            int length = publishDisposableArr.length;
            PublishDisposable[] publishDisposableArr2 = new PublishDisposable[length + 1];
            System.arraycopy(publishDisposableArr, 0, publishDisposableArr2, 0, length);
            publishDisposableArr2[length] = publishDisposable;
            do {
                if (atomicReference.compareAndSet(publishDisposableArr, publishDisposableArr2)) {
                    if (publishDisposable.get()) {
                        d(publishDisposable);
                        return;
                    }
                    return;
                }
            } while (atomicReference.get() == publishDisposableArr);
        }
    }
}
