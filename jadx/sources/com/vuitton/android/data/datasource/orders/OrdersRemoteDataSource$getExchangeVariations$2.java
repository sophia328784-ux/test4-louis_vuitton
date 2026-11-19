package com.vuitton.android.data.datasource.orders;

import com.vuitton.android.data.api.bff.user.OrderExchangeApi;
import com.vuitton.android.data.dto.account.orders.ProductExchangeCategoryDto;
import com.vuitton.android.data.dto.account.orders.mapper.ProductExchangeCategoryMapperKt;
import com.vuitton.foundation.model.domain.model.account.orders.ProductExchangeCategory;
import defpackage.md;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0006\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001H\n"}, d2 = {"<anonymous>", "Lcom/vuitton/foundation/model/domain/model/account/orders/ProductExchangeCategory;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.data.datasource.orders.OrdersRemoteDataSource$getExchangeVariations$2", f = "OrdersRemoteDataSource.kt", l = {100}, m = "invokeSuspend", v = 2)
final class OrdersRemoteDataSource$getExchangeVariations$2 extends SuspendLambda implements Function1<Continuation<? super ProductExchangeCategory>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f44149b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ OrdersRemoteDataSource f44150c;
    public final /* synthetic */ String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ double f44151e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ double f44152f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public OrdersRemoteDataSource$getExchangeVariations$2(OrdersRemoteDataSource ordersRemoteDataSource, String str, double d, double d2, Continuation continuation) {
        super(1, continuation);
        this.f44150c = ordersRemoteDataSource;
        this.d = str;
        this.f44151e = d;
        this.f44152f = d2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Continuation continuation) {
        return new OrdersRemoteDataSource$getExchangeVariations$2(this.f44150c, this.d, this.f44151e, this.f44152f, continuation);
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        return ((OrdersRemoteDataSource$getExchangeVariations$2) create((Continuation) obj)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f44149b;
        if (i2 == 0) {
            ResultKt.b(obj);
            OrderExchangeApi orderExchangeApi = this.f44150c.f44140b;
            this.f44149b = 1;
            obj = orderExchangeApi.m85getExchangeVariations1cKmzHo(this.d, this.f44151e, this.f44152f, this);
            if (obj == coroutineSingletons) {
                return coroutineSingletons;
            }
        } else {
            if (i2 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.b(obj);
        }
        return ProductExchangeCategoryMapperKt.a((ProductExchangeCategoryDto) obj);
    }
}
