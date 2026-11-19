package io.reactivex.rxjava3.internal.observers;

import io.reactivex.rxjava3.core.CompletableObserver;
import io.reactivex.rxjava3.core.MaybeObserver;
import io.reactivex.rxjava3.core.SingleObserver;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.internal.util.ExceptionHelper;
import java.util.concurrent.CountDownLatch;

/* JADX INFO: loaded from: classes4.dex */
public final class BlockingMultiObserver<T> extends CountDownLatch implements SingleObserver<T>, CompletableObserver, MaybeObserver<T> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Object f70108b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Throwable f70109c;
    public Disposable d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public volatile boolean f70110e;

    public BlockingMultiObserver() {
        super(1);
    }

    public final Object a() {
        if (getCount() != 0) {
            try {
                await();
            } catch (InterruptedException e2) {
                this.f70110e = true;
                Disposable disposable = this.d;
                if (disposable != null) {
                    disposable.dispose();
                }
                throw ExceptionHelper.e(e2);
            }
        }
        Throwable th = this.f70109c;
        if (th == null) {
            return this.f70108b;
        }
        throw ExceptionHelper.e(th);
    }

    @Override // io.reactivex.rxjava3.core.CompletableObserver, io.reactivex.rxjava3.core.MaybeObserver
    public final void onComplete() {
        countDown();
    }

    @Override // io.reactivex.rxjava3.core.SingleObserver, io.reactivex.rxjava3.core.CompletableObserver, io.reactivex.rxjava3.core.MaybeObserver
    public final void onError(Throwable th) {
        this.f70109c = th;
        countDown();
    }

    @Override // io.reactivex.rxjava3.core.SingleObserver, io.reactivex.rxjava3.core.CompletableObserver, io.reactivex.rxjava3.core.MaybeObserver
    public final void onSubscribe(Disposable disposable) {
        this.d = disposable;
        if (this.f70110e) {
            disposable.dispose();
        }
    }

    @Override // io.reactivex.rxjava3.core.SingleObserver, io.reactivex.rxjava3.core.MaybeObserver
    public final void onSuccess(Object obj) {
        this.f70108b = obj;
        countDown();
    }
}
