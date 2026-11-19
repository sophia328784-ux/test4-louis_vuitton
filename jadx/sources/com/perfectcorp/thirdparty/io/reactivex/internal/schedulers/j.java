package com.perfectcorp.thirdparty.io.reactivex.internal.schedulers;

import java.util.concurrent.Callable;

/* JADX INFO: loaded from: classes3.dex */
public final class j extends a implements Callable<Void> {
    public j(Runnable runnable) {
        super(runnable);
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // java.util.concurrent.Callable
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public Void call() throws Exception {
        this.f43067b = Thread.currentThread();
        try {
            this.f43066a.run();
            return null;
        } finally {
            lazySet(a.f43065c);
            this.f43067b = null;
        }
    }
}
