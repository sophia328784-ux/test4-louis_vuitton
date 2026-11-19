package com.vuitton.android.data.datasource.orders;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.data.datasource.orders.OrdersRemoteDataSource", f = "OrdersRemoteDataSource.kt", l = {122}, m = "getPurchaseHistory-IoAF18A", v = 2)
final class OrdersRemoteDataSource$getPurchaseHistory$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f44167b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ OrdersRemoteDataSource f44168c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public OrdersRemoteDataSource$getPurchaseHistory$1(OrdersRemoteDataSource ordersRemoteDataSource, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f44168c = ordersRemoteDataSource;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        this.f44167b = obj;
        this.d |= Integer.MIN_VALUE;
        Object objA = OrdersRemoteDataSource.a(this.f44168c, this);
        return objA == CoroutineSingletons.COROUTINE_SUSPENDED ? objA : new Result(objA);
    }
}
