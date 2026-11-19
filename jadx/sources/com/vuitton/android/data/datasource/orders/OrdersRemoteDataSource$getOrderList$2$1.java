package com.vuitton.android.data.datasource.orders;

import com.vuitton.android.data.dto.account.orders.HistoryOrdersDtoResponse;
import com.vuitton.android.data.dto.account.orders.OngoingOrdersDtoResponse;
import com.vuitton.android.data.dto.account.orders.OrdersDtoResponse;
import com.vuitton.android.data.dto.account.orders.mapper.OrdersMapperKt;
import com.vuitton.foundation.model.domain.error.account.AccountUnderProcessException;
import com.vuitton.foundation.model.domain.model.account.orders.OrderList;
import com.vuitton.foundation.model.domain.model.account.orders.Orders;
import defpackage.md;
import java.util.List;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Deferred;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "Lcom/vuitton/foundation/model/domain/model/account/orders/Orders;", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.data.datasource.orders.OrdersRemoteDataSource$getOrderList$2$1", f = "OrdersRemoteDataSource.kt", l = {55, 56}, m = "invokeSuspend", v = 2)
final class OrdersRemoteDataSource$getOrderList$2$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Orders>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Object f44157b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Object f44158c;
    public int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public /* synthetic */ Object f44159e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ OrdersRemoteDataSource f44160f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public OrdersRemoteDataSource$getOrderList$2$1(OrdersRemoteDataSource ordersRemoteDataSource, Continuation continuation) {
        super(2, continuation);
        this.f44160f = ordersRemoteDataSource;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        OrdersRemoteDataSource$getOrderList$2$1 ordersRemoteDataSource$getOrderList$2$1 = new OrdersRemoteDataSource$getOrderList$2$1(this.f44160f, continuation);
        ordersRemoteDataSource$getOrderList$2$1.f44159e = obj;
        return ordersRemoteDataSource$getOrderList$2$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((OrdersRemoteDataSource$getOrderList$2$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws AccountUnderProcessException {
        Deferred deferredA;
        Object obj2;
        CoroutineScope coroutineScope = (CoroutineScope) this.f44159e;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.d;
        if (i2 == 0) {
            ResultKt.b(obj);
            OrdersRemoteDataSource ordersRemoteDataSource = this.f44160f;
            Deferred deferredA2 = BuildersKt.a(coroutineScope, null, new OrdersRemoteDataSource$getOrderList$2$1$historyResult$1(ordersRemoteDataSource, null), 3);
            deferredA = BuildersKt.a(coroutineScope, null, new OrdersRemoteDataSource$getOrderList$2$1$ongoingResult$1(ordersRemoteDataSource, null), 3);
            this.f44159e = null;
            this.f44157b = deferredA;
            this.d = 1;
            obj = deferredA2.k(this);
            if (obj != coroutineSingletons) {
            }
            return coroutineSingletons;
        }
        if (i2 == 1) {
            deferredA = (Deferred) this.f44157b;
            ResultKt.b(obj);
        } else {
            if (i2 != 2) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            obj2 = this.f44158c;
            ResultKt.b(obj);
        }
        Object obj3 = ((Result) obj).f71708b;
        if (!(Result.a(obj2) instanceof AccountUnderProcessException) || (Result.a(obj3) instanceof AccountUnderProcessException)) {
            throw new AccountUnderProcessException();
        }
        boolean z = obj2 instanceof Result.Failure;
        if (z && (obj3 instanceof Result.Failure)) {
            md.k("Getting order failed");
            return null;
        }
        if (z) {
            obj2 = null;
        }
        HistoryOrdersDtoResponse historyOrdersDtoResponse = (HistoryOrdersDtoResponse) obj2;
        if (obj3 instanceof Result.Failure) {
            obj3 = null;
        }
        OngoingOrdersDtoResponse ongoingOrdersDtoResponse = (OngoingOrdersDtoResponse) obj3;
        OrdersDtoResponse ordersDtoResponse = new OrdersDtoResponse(ongoingOrdersDtoResponse != null ? ongoingOrdersDtoResponse.f44384a : null, historyOrdersDtoResponse != null ? historyOrdersDtoResponse.f44369a : null);
        List list = ordersDtoResponse.f44416b;
        OrderList orderListC = list != null ? OrdersMapperKt.c(list, false) : null;
        List list2 = ordersDtoResponse.f44415a;
        return new Orders(orderListC, list2 != null ? OrdersMapperKt.c(list2, true) : null);
        Object obj4 = ((Result) obj).f71708b;
        this.f44159e = null;
        this.f44157b = null;
        this.f44158c = obj4;
        this.d = 2;
        Object objK = deferredA.k(this);
        if (objK != coroutineSingletons) {
            obj = objK;
            obj2 = obj4;
            Object obj5 = ((Result) obj).f71708b;
            if (Result.a(obj2) instanceof AccountUnderProcessException) {
            }
            throw new AccountUnderProcessException();
        }
        return coroutineSingletons;
    }
}
