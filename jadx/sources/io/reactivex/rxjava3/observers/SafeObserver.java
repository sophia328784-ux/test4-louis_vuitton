package io.reactivex.rxjava3.observers;

import io.reactivex.rxjava3.core.Observer;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.exceptions.CompositeException;
import io.reactivex.rxjava3.exceptions.Exceptions;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.internal.disposables.EmptyDisposable;
import io.reactivex.rxjava3.internal.util.ExceptionHelper;
import io.reactivex.rxjava3.plugins.RxJavaPlugins;

/* JADX INFO: loaded from: classes4.dex */
public final class SafeObserver<T> implements Observer<T>, Disposable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Observer f71135b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Disposable f71136c;
    public boolean d;

    public SafeObserver(Observer<? super T> observer) {
        this.f71135b = observer;
    }

    @Override // io.reactivex.rxjava3.disposables.Disposable
    public final void dispose() {
        this.f71136c.dispose();
    }

    @Override // io.reactivex.rxjava3.disposables.Disposable
    public final boolean isDisposed() {
        return this.f71136c.isDisposed();
    }

    @Override // io.reactivex.rxjava3.core.Observer
    public final void onComplete() {
        if (this.d) {
            return;
        }
        this.d = true;
        Disposable disposable = this.f71136c;
        Observer observer = this.f71135b;
        if (disposable != null) {
            try {
                observer.onComplete();
                return;
            } catch (Throwable th) {
                Exceptions.a(th);
                RxJavaPlugins.b(th);
                return;
            }
        }
        NullPointerException nullPointerException = new NullPointerException("Subscription not set!");
        try {
            observer.onSubscribe(EmptyDisposable.INSTANCE);
            try {
                observer.onError(nullPointerException);
            } catch (Throwable th2) {
                Exceptions.a(th2);
                RxJavaPlugins.b(new CompositeException(nullPointerException, th2));
            }
        } catch (Throwable th3) {
            Exceptions.a(th3);
            RxJavaPlugins.b(new CompositeException(nullPointerException, th3));
        }
    }

    @Override // io.reactivex.rxjava3.core.Observer
    public final void onError(Throwable th) {
        if (this.d) {
            RxJavaPlugins.b(th);
            return;
        }
        this.d = true;
        Disposable disposable = this.f71136c;
        Observer observer = this.f71135b;
        if (disposable != null) {
            if (th == null) {
                th = ExceptionHelper.b("onError called with a null Throwable.");
            }
            try {
                observer.onError(th);
                return;
            } catch (Throwable th2) {
                Exceptions.a(th2);
                RxJavaPlugins.b(new CompositeException(th, th2));
                return;
            }
        }
        NullPointerException nullPointerException = new NullPointerException("Subscription not set!");
        try {
            observer.onSubscribe(EmptyDisposable.INSTANCE);
            try {
                observer.onError(new CompositeException(th, nullPointerException));
            } catch (Throwable th3) {
                Exceptions.a(th3);
                RxJavaPlugins.b(new CompositeException(th, nullPointerException, th3));
            }
        } catch (Throwable th4) {
            Exceptions.a(th4);
            RxJavaPlugins.b(new CompositeException(th, nullPointerException, th4));
        }
    }

    @Override // io.reactivex.rxjava3.core.Observer
    public final void onNext(Object obj) {
        if (this.d) {
            return;
        }
        Disposable disposable = this.f71136c;
        Observer observer = this.f71135b;
        if (disposable == null) {
            this.d = true;
            NullPointerException nullPointerException = new NullPointerException("Subscription not set!");
            try {
                observer.onSubscribe(EmptyDisposable.INSTANCE);
                try {
                    observer.onError(nullPointerException);
                    return;
                } catch (Throwable th) {
                    Exceptions.a(th);
                    RxJavaPlugins.b(new CompositeException(nullPointerException, th));
                    return;
                }
            } catch (Throwable th2) {
                Exceptions.a(th2);
                RxJavaPlugins.b(new CompositeException(nullPointerException, th2));
                return;
            }
        }
        if (obj == null) {
            NullPointerException nullPointerExceptionB = ExceptionHelper.b("onNext called with a null value.");
            try {
                this.f71136c.dispose();
                onError(nullPointerExceptionB);
                return;
            } catch (Throwable th3) {
                Exceptions.a(th3);
                onError(new CompositeException(nullPointerExceptionB, th3));
                return;
            }
        }
        try {
            observer.onNext(obj);
        } catch (Throwable th4) {
            Exceptions.a(th4);
            try {
                this.f71136c.dispose();
                onError(th4);
            } catch (Throwable th5) {
                Exceptions.a(th5);
                onError(new CompositeException(th4, th5));
            }
        }
    }

    @Override // io.reactivex.rxjava3.core.Observer
    public final void onSubscribe(Disposable disposable) {
        if (DisposableHelper.g(this.f71136c, disposable)) {
            this.f71136c = disposable;
            try {
                this.f71135b.onSubscribe(this);
            } catch (Throwable th) {
                Exceptions.a(th);
                this.d = true;
                try {
                    disposable.dispose();
                    RxJavaPlugins.b(th);
                } catch (Throwable th2) {
                    Exceptions.a(th2);
                    RxJavaPlugins.b(new CompositeException(th, th2));
                }
            }
        }
    }
}
