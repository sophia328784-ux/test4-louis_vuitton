package io.reactivex.rxjava3.disposables;

import java.util.Objects;

/* JADX INFO: loaded from: classes4.dex */
final class RunnableDisposable extends ReferenceDisposable<Runnable> {
    private static final long serialVersionUID = -8219729196779211169L;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RunnableDisposable(Runnable runnable) {
        super(runnable);
        Objects.requireNonNull(runnable, "value is null");
    }

    @Override // java.util.concurrent.atomic.AtomicReference
    public final String toString() {
        return "RunnableDisposable(disposed=" + isDisposed() + ", " + get() + ")";
    }
}
