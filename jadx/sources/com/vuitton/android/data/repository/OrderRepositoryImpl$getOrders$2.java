package com.vuitton.android.data.repository;

import com.vuitton.android.data.datasource.orders.OrdersLocalDataSource;
import com.vuitton.android.data.datasource.orders.OrdersRemoteDataSource;
import com.vuitton.foundation.model.domain.model.account.orders.OrderList;
import com.vuitton.foundation.model.domain.model.account.orders.Orders;
import defpackage.md;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Ref$ObjectRef;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001H\n"}, d2 = {"<anonymous>", "Lkotlin/Result;", "Lcom/vuitton/foundation/model/domain/model/account/orders/Orders;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.data.repository.OrderRepositoryImpl$getOrders$2", f = "OrderRepositoryImpl.kt", l = {29}, m = "invokeSuspend", v = 2)
final class OrderRepositoryImpl$getOrders$2 extends SuspendLambda implements Function1<Continuation<? super Result<? extends Orders>>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Ref$ObjectRef f47824b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Ref$ObjectRef f47825c;
    public int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ OrderRepositoryImpl f47826e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public OrderRepositoryImpl$getOrders$2(OrderRepositoryImpl orderRepositoryImpl, Continuation continuation) {
        super(1, continuation);
        this.f47826e = orderRepositoryImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Continuation continuation) {
        return new OrderRepositoryImpl$getOrders$2(this.f47826e, continuation);
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        return ((OrderRepositoryImpl$getOrders$2) create((Continuation) obj)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Ref$ObjectRef ref$ObjectRef;
        Object obj2;
        Ref$ObjectRef ref$ObjectRef2;
        Orders orders;
        OrderList orderList;
        OrderList orderList2;
        OrderList orderList3;
        OrderList orderList4;
        OrderRepositoryImpl orderRepositoryImpl = this.f47826e;
        OrdersLocalDataSource ordersLocalDataSource = orderRepositoryImpl.f47812b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.d;
        if (i2 == 0) {
            ResultKt.b(obj);
            Ref$ObjectRef ref$ObjectRef3 = new Ref$ObjectRef();
            OrdersRemoteDataSource ordersRemoteDataSource = orderRepositoryImpl.f47811a;
            this.f47824b = ref$ObjectRef3;
            this.f47825c = ref$ObjectRef3;
            this.d = 1;
            Object objF = ordersRemoteDataSource.f(this);
            if (objF == coroutineSingletons) {
                return coroutineSingletons;
            }
            ref$ObjectRef = ref$ObjectRef3;
            obj2 = objF;
            ref$ObjectRef2 = ref$ObjectRef;
        } else {
            if (i2 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ref$ObjectRef = this.f47825c;
            ref$ObjectRef2 = this.f47824b;
            ResultKt.b(obj);
            obj2 = ((Result) obj).f71708b;
        }
        ref$ObjectRef.f71921b = obj2;
        Object obj3 = ref$ObjectRef2.f71921b;
        Result.Companion companion = Result.INSTANCE;
        if (obj3 instanceof Result.Failure) {
            obj3 = null;
        }
        Orders orders2 = (Orders) obj3;
        if (orders2 != null && (orderList4 = orders2.f66325b) != null) {
            ordersLocalDataSource.getClass();
            ordersLocalDataSource.f44136a = orderList4;
        }
        if (orders2 != null && (orderList3 = orders2.f66324a) != null) {
            ordersLocalDataSource.getClass();
            ordersLocalDataSource.f44137b = orderList3;
        }
        Result resultA = ordersLocalDataSource.a();
        if (resultA != null) {
            Object obj4 = resultA.f71708b;
            if (obj4 instanceof Result.Failure) {
                obj4 = null;
            }
            orders = (Orders) obj4;
        } else {
            orders = null;
        }
        if ((orders2 != null ? orders2.f66325b : null) == null && orders != null && (orderList2 = orders.f66325b) != null) {
            ref$ObjectRef2.f71921b = new Orders(orders2 != null ? orders2.f66324a : null, orderList2);
        }
        if ((orders2 != null ? orders2.f66324a : null) == null && orders != null && (orderList = orders.f66324a) != null) {
            ref$ObjectRef2.f71921b = new Orders(orderList, orders2 != null ? orders2.f66325b : null);
        }
        Object objK = ref$ObjectRef2.f71921b;
        if (!(objK instanceof Result.Failure)) {
            objK = OrderRepositoryImpl.k(orderRepositoryImpl, (Orders) objK);
        }
        return new Result(objK);
    }
}
