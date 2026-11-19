package com.vuitton.android.data.repository;

import com.vuitton.android.data.datasource.orders.OrdersLocalDataSource;
import com.vuitton.foundation.model.domain.model.account.orders.OrderList;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendFunction;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.AdaptedFunctionReference;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
final /* synthetic */ class OrderRepositoryImpl$getOngoingOrders$3 extends AdaptedFunctionReference implements Function1<Continuation<? super Result<? extends OrderList>>, Object>, SuspendFunction {
    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        OrderList orderList = ((OrdersLocalDataSource) this.receiver).f44136a;
        if (orderList != null) {
            return new Result(orderList);
        }
        return null;
    }
}
