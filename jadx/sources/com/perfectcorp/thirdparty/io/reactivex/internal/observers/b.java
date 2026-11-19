package com.perfectcorp.thirdparty.io.reactivex.internal.observers;

import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes3.dex */
public abstract class b<T> extends AtomicInteger implements com.perfectcorp.thirdparty.io.reactivex.internal.fuseable.d<T> {
    @Override // com.perfectcorp.thirdparty.io.reactivex.internal.fuseable.i
    public final boolean a(T t) {
        throw new UnsupportedOperationException("Should not be called");
    }
}
