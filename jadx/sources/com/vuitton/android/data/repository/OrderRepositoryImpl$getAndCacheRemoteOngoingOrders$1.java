package com.vuitton.android.data.repository;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.data.repository.OrderRepositoryImpl", f = "OrderRepositoryImpl.kt", l = {92}, m = "getAndCacheRemoteOngoingOrders-IoAF18A", v = 2)
final class OrderRepositoryImpl$getAndCacheRemoteOngoingOrders$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f47818b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ OrderRepositoryImpl f47819c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public OrderRepositoryImpl$getAndCacheRemoteOngoingOrders$1(OrderRepositoryImpl orderRepositoryImpl, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f47819c = orderRepositoryImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f47818b = obj;
        this.d |= Integer.MIN_VALUE;
        Object objL = OrderRepositoryImpl.l(this.f47819c, this);
        return objL == CoroutineSingletons.COROUTINE_SUSPENDED ? objL : new Result(objL);
    }
}
