package io.reactivex.rxjava3.internal.jdk8;

import io.reactivex.rxjava3.core.Observer;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.plugins.RxJavaPlugins;
import java.util.concurrent.CompletableFuture;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes4.dex */
abstract class ObservableStageObserver<T> extends CompletableFuture<T> implements Observer<T> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AtomicReference f70097b = new AtomicReference();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Object f70098c;

    @Override // java.util.concurrent.CompletableFuture, java.util.concurrent.Future
    public final boolean cancel(boolean z) {
        DisposableHelper.a(this.f70097b);
        return super.cancel(z);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.concurrent.CompletableFuture
    public final boolean complete(Object obj) {
        DisposableHelper.a(this.f70097b);
        return super.complete(obj);
    }

    @Override // java.util.concurrent.CompletableFuture
    public final boolean completeExceptionally(Throwable th) {
        DisposableHelper.a(this.f70097b);
        return super.completeExceptionally(th);
    }

    @Override // io.reactivex.rxjava3.core.Observer
    public final void onError(Throwable th) {
        this.f70098c = null;
        this.f70097b.lazySet(DisposableHelper.DISPOSED);
        if (completeExceptionally(th)) {
            return;
        }
        RxJavaPlugins.b(th);
    }

    public void onNext(Object obj) {
        complete(obj);
    }

    @Override // io.reactivex.rxjava3.core.Observer
    public final void onSubscribe(Disposable disposable) {
        DisposableHelper.e(this.f70097b, disposable);
    }
}
