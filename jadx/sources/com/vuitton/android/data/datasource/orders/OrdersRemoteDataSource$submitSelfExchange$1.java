package com.vuitton.android.data.datasource.orders;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.data.datasource.orders.OrdersRemoteDataSource", f = "OrdersRemoteDataSource.kt", l = {156}, m = "submitSelfExchange-TPjgr7Q", v = 2)
final class OrdersRemoteDataSource$submitSelfExchange$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f44177b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ OrdersRemoteDataSource f44178c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public OrdersRemoteDataSource$submitSelfExchange$1(OrdersRemoteDataSource ordersRemoteDataSource, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f44178c = ordersRemoteDataSource;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f44177b = obj;
        this.d |= Integer.MIN_VALUE;
        Object objL = this.f44178c.l(null, this);
        return objL == CoroutineSingletons.COROUTINE_SUSPENDED ? objL : new Result(objL);
    }
}
