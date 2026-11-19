package com.vuitton.android.data.repository;

import com.vuitton.foundation.model.domain.model.producttiny.ProductTiny;
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
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u0002\u0018\u00010\u0001H\n"}, d2 = {"<anonymous>", "Lkotlin/Result;", "Lcom/vuitton/foundation/model/domain/model/producttiny/ProductTiny;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.data.repository.OrderRepositoryImpl$getOrdersHistoryPersonalization$3", f = "OrderRepositoryImpl.kt", l = {}, m = "invokeSuspend", v = 2)
final class OrderRepositoryImpl$getOrdersHistoryPersonalization$3 extends SuspendLambda implements Function1<Continuation<? super Result<? extends ProductTiny>>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ OrderRepositoryImpl f47830b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public OrderRepositoryImpl$getOrdersHistoryPersonalization$3(OrderRepositoryImpl orderRepositoryImpl, Continuation continuation) {
        super(1, continuation);
        this.f47830b = orderRepositoryImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Continuation continuation) {
        return new OrderRepositoryImpl$getOrdersHistoryPersonalization$3(this.f47830b, continuation);
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        return ((OrderRepositoryImpl$getOrdersHistoryPersonalization$3) create((Continuation) obj)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        ResultKt.b(obj);
        ProductTiny productTiny = this.f47830b.f47812b.f44138c;
        if (productTiny != null) {
            return new Result(productTiny);
        }
        return null;
    }
}
