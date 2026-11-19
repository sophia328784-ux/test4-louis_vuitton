package io.reactivex.rxjava3.disposables;

import java.util.Objects;

/* JADX INFO: loaded from: classes4.dex */
public interface Disposable {
    static Disposable f(Runnable runnable) {
        Objects.requireNonNull(runnable, "run is null");
        return new RunnableDisposable(runnable);
    }

    void dispose();

    boolean isDisposed();
}
