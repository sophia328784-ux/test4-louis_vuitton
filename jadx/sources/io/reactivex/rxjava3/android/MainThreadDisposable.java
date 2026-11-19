package io.reactivex.rxjava3.android;

import android.os.Looper;
import defpackage.ct0;
import defpackage.et;
import defpackage.r81;
import io.reactivex.rxjava3.android.schedulers.AndroidSchedulers;
import io.reactivex.rxjava3.core.Scheduler;
import io.reactivex.rxjava3.disposables.Disposable;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes3.dex */
public abstract class MainThreadDisposable implements Disposable {
    private final AtomicBoolean unsubscribed = new AtomicBoolean();

    public static void verifyMainThread() {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            return;
        }
        ct0.o(Thread.currentThread().getName(), "Expected to be called on the main thread but was ");
    }

    @Override // io.reactivex.rxjava3.disposables.Disposable
    public final void dispose() {
        if (this.unsubscribed.compareAndSet(false, true)) {
            if (Looper.myLooper() == Looper.getMainLooper()) {
                onDispose();
                return;
            }
            Scheduler scheduler = AndroidSchedulers.f70017a;
            if (scheduler != null) {
                scheduler.c(new et(this, 23));
            } else {
                r81.d("scheduler == null");
            }
        }
    }

    @Override // io.reactivex.rxjava3.disposables.Disposable
    public final boolean isDisposed() {
        return this.unsubscribed.get();
    }

    public abstract void onDispose();
}
