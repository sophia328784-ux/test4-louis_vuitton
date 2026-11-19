package com.vuitton.android.data.repository;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.data.repository.OrderRepositoryImpl", f = "OrderRepositoryImpl.kt", l = {107}, m = "getExchangeVariations-icxJlF4", v = 2)
final class OrderRepositoryImpl$getExchangeVariations$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f47820b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ OrderRepositoryImpl f47821c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public OrderRepositoryImpl$getExchangeVariations$1(OrderRepositoryImpl orderRepositoryImpl, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f47821c = orderRepositoryImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f47820b = obj;
        this.d |= Integer.MIN_VALUE;
        Object objH = this.f47821c.h(null, 0.0d, 0.0d, this);
        return objH == CoroutineSingletons.COROUTINE_SUSPENDED ? objH : new Result(objH);
    }
}
