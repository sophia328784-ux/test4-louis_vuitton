package io.reactivex.rxjava3.internal.jdk8;

import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import java.util.NoSuchElementException;

/* JADX INFO: loaded from: classes4.dex */
public final class ObservableFirstStageObserver<T> extends ObservableStageObserver<T> {
    public final boolean d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Object f70080e;

    public ObservableFirstStageObserver(boolean z, T t) {
        this.d = z;
        this.f70080e = t;
    }

    @Override // io.reactivex.rxjava3.core.Observer
    public final void onComplete() {
        if (isDone()) {
            return;
        }
        this.f70098c = null;
        this.f70097b.lazySet(DisposableHelper.DISPOSED);
        if (this.d) {
            complete(this.f70080e);
        } else {
            completeExceptionally(new NoSuchElementException());
        }
    }
}
