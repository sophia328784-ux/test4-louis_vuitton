package io.reactivex.rxjava3.internal.observers;

/* JADX INFO: loaded from: classes4.dex */
public final class BlockingFirstObserver<T> extends BlockingBaseObserver<T> {
    @Override // io.reactivex.rxjava3.core.Observer
    public final void onError(Throwable th) {
        if (this.f70105b == null) {
            this.f70106c = th;
        }
        countDown();
    }

    @Override // io.reactivex.rxjava3.core.Observer
    public final void onNext(Object obj) {
        if (this.f70105b == null) {
            this.f70105b = obj;
            this.d.dispose();
            countDown();
        }
    }
}
