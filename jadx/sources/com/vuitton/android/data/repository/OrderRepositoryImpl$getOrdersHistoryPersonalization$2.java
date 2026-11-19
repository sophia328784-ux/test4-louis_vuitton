package com.vuitton.android.data.repository;

import com.vuitton.android.data.datasource.orders.OrdersRemoteDataSource;
import com.vuitton.foundation.model.domain.model.producttiny.ProductTiny;
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

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0001H\n"}, d2 = {"<anonymous>", "Lkotlin/Result;", "Lcom/vuitton/foundation/model/domain/model/producttiny/ProductTiny;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.data.repository.OrderRepositoryImpl$getOrdersHistoryPersonalization$2", f = "OrderRepositoryImpl.kt", l = {85}, m = "invokeSuspend", v = 2)
final class OrderRepositoryImpl$getOrdersHistoryPersonalization$2 extends SuspendLambda implements Function1<Continuation<? super Result<? extends ProductTiny>>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f47828b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ OrderRepositoryImpl f47829c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public OrderRepositoryImpl$getOrdersHistoryPersonalization$2(OrderRepositoryImpl orderRepositoryImpl, Continuation continuation) {
        super(1, continuation);
        this.f47829c = orderRepositoryImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Continuation continuation) {
        return new OrderRepositoryImpl$getOrdersHistoryPersonalization$2(this.f47829c, continuation);
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        return ((OrderRepositoryImpl$getOrdersHistoryPersonalization$2) create((Continuation) obj)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Object objG;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f47828b;
        OrderRepositoryImpl orderRepositoryImpl = this.f47829c;
        if (i2 == 0) {
            ResultKt.b(obj);
            OrdersRemoteDataSource ordersRemoteDataSource = orderRepositoryImpl.f47811a;
            this.f47828b = 1;
            objG = ordersRemoteDataSource.g(this);
            if (objG == coroutineSingletons) {
                return coroutineSingletons;
            }
        } else {
            if (i2 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.b(obj);
            objG = ((Result) obj).f71708b;
        }
        Result.Companion companion = Result.INSTANCE;
        if (!(objG instanceof Result.Failure)) {
            orderRepositoryImpl.f47812b.f44138c = (ProductTiny) objG;
        }
        return new Result(objG);
    }
}
