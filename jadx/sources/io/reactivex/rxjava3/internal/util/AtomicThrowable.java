package io.reactivex.rxjava3.internal.util;

import io.reactivex.rxjava3.core.CompletableObserver;
import io.reactivex.rxjava3.core.Observer;
import io.reactivex.rxjava3.plugins.RxJavaPlugins;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes4.dex */
public final class AtomicThrowable extends AtomicReference<Throwable> {
    private static final long serialVersionUID = 3949248817947090603L;

    public final boolean a(Throwable th) {
        if (ExceptionHelper.a(this, th)) {
            return true;
        }
        RxJavaPlugins.b(th);
        return false;
    }

    public final void b() {
        Throwable thC = ExceptionHelper.c(this);
        if (thC == null || thC == ExceptionHelper.f71119a) {
            return;
        }
        RxJavaPlugins.b(thC);
    }

    public final void c(CompletableObserver completableObserver) {
        Throwable thC = ExceptionHelper.c(this);
        if (thC == null) {
            completableObserver.onComplete();
        } else if (thC != ExceptionHelper.f71119a) {
            completableObserver.onError(thC);
        }
    }

    public final void d(Observer observer) {
        Throwable thC = ExceptionHelper.c(this);
        if (thC == null) {
            observer.onComplete();
        } else if (thC != ExceptionHelper.f71119a) {
            observer.onError(thC);
        }
    }
}
