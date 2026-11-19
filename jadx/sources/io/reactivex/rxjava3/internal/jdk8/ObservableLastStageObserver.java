package io.reactivex.rxjava3.internal.jdk8;

import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import java.util.NoSuchElementException;

/* JADX INFO: loaded from: classes4.dex */
public final class ObservableLastStageObserver<T> extends ObservableStageObserver<T> {
    public final boolean d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Object f70093e;

    public ObservableLastStageObserver(boolean z, T t) {
        this.d = z;
        this.f70093e = t;
    }

    @Override // io.reactivex.rxjava3.core.Observer
    public final void onComplete() {
        if (isDone()) {
            return;
        }
        Object obj = this.f70098c;
        this.f70098c = null;
        this.f70097b.lazySet(DisposableHelper.DISPOSED);
        if (obj != null) {
            complete(obj);
        } else if (this.d) {
            complete(this.f70093e);
        } else {
            completeExceptionally(new NoSuchElementException());
        }
    }

    @Override // io.reactivex.rxjava3.internal.jdk8.ObservableStageObserver, io.reactivex.rxjava3.core.Observer
    public final void onNext(Object obj) {
        this.f70098c = obj;
    }
}
