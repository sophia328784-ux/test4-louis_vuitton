package io.reactivex.rxjava3.internal.observers;

import io.reactivex.rxjava3.core.Observer;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.internal.util.ExceptionHelper;
import java.util.concurrent.CountDownLatch;

/* JADX INFO: loaded from: classes4.dex */
public abstract class BlockingBaseObserver<T> extends CountDownLatch implements Observer<T>, Disposable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Object f70105b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Throwable f70106c;
    public Disposable d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public volatile boolean f70107e;

    public BlockingBaseObserver() {
        super(1);
    }

    public final Object a() {
        if (getCount() != 0) {
            try {
                await();
            } catch (InterruptedException e2) {
                dispose();
                throw ExceptionHelper.e(e2);
            }
        }
        Throwable th = this.f70106c;
        if (th == null) {
            return this.f70105b;
        }
        throw ExceptionHelper.e(th);
    }

    @Override // io.reactivex.rxjava3.disposables.Disposable
    public final void dispose() {
        this.f70107e = true;
        Disposable disposable = this.d;
        if (disposable != null) {
            disposable.dispose();
        }
    }

    @Override // io.reactivex.rxjava3.disposables.Disposable
    public final boolean isDisposed() {
        return this.f70107e;
    }

    @Override // io.reactivex.rxjava3.core.Observer
    public final void onComplete() {
        countDown();
    }

    @Override // io.reactivex.rxjava3.core.Observer
    public final void onSubscribe(Disposable disposable) {
        this.d = disposable;
        if (this.f70107e) {
            disposable.dispose();
        }
    }
}
