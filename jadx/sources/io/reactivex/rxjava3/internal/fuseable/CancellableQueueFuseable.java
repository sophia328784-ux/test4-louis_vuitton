package io.reactivex.rxjava3.internal.fuseable;

/* JADX INFO: loaded from: classes4.dex */
public final class CancellableQueueFuseable<T> extends AbstractEmptyQueueFuseable<T> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public volatile boolean f70068b;

    @Override // io.reactivex.rxjava3.internal.fuseable.AbstractEmptyQueueFuseable, org.reactivestreams.Subscription
    public final void cancel() {
        this.f70068b = true;
    }

    @Override // io.reactivex.rxjava3.internal.fuseable.AbstractEmptyQueueFuseable, io.reactivex.rxjava3.disposables.Disposable
    public final void dispose() {
        this.f70068b = true;
    }

    @Override // io.reactivex.rxjava3.internal.fuseable.AbstractEmptyQueueFuseable, io.reactivex.rxjava3.disposables.Disposable
    public final boolean isDisposed() {
        return this.f70068b;
    }
}
