package com.vuitton.android.data.datasource.orders;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.data.datasource.orders.OrdersRemoteDataSource", f = "OrdersRemoteDataSource.kt", l = {161}, m = "exchangeRequest-gIAlu-s", v = 2)
final class OrdersRemoteDataSource$exchangeRequest$1<T> extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f44145b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ OrdersRemoteDataSource f44146c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public OrdersRemoteDataSource$exchangeRequest$1(OrdersRemoteDataSource ordersRemoteDataSource, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f44146c = ordersRemoteDataSource;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f44145b = obj;
        this.d |= Integer.MIN_VALUE;
        Object objC = this.f44146c.c(null, this);
        return objC == CoroutineSingletons.COROUTINE_SUSPENDED ? objC : new Result(objC);
    }
}
