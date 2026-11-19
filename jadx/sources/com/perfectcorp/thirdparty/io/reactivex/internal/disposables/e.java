package com.perfectcorp.thirdparty.io.reactivex.internal.disposables;

import com.perfectcorp.thirdparty.io.reactivex.disposables.Disposable;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes3.dex */
public final class e extends AtomicReference<Disposable> implements Disposable {
    public e(Disposable disposable) {
        lazySet(disposable);
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.disposables.Disposable
    public final void dispose() {
        b.a(this);
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.disposables.Disposable
    public final boolean isDisposed() {
        return b.b(get());
    }

    public e() {
    }
}
