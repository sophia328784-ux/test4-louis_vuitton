package com.perfectcorp.thirdparty.io.reactivex.internal.subscriptions;

import com.perfectcorp.thirdparty.io.reactivex.internal.fuseable.f;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes3.dex */
public abstract class a<T> extends AtomicInteger implements f<T> {
    @Override // com.perfectcorp.thirdparty.io.reactivex.internal.fuseable.i
    public final boolean a(Object obj) {
        throw new UnsupportedOperationException("Should not be called!");
    }
}
