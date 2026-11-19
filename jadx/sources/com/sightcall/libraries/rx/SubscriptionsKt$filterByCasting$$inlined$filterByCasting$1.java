package com.sightcall.libraries.rx;

import io.reactivex.rxjava3.functions.Predicate;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 176)
public final class SubscriptionsKt$filterByCasting$$inlined$filterByCasting$1<T> implements Predicate {
    public static final SubscriptionsKt$filterByCasting$$inlined$filterByCasting$1<T> INSTANCE = new SubscriptionsKt$filterByCasting$$inlined$filterByCasting$1<>();

    @Override // io.reactivex.rxjava3.functions.Predicate
    public final boolean test(T t) {
        t.getClass();
        Intrinsics.g();
        throw null;
    }
}
