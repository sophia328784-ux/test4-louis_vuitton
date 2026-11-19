package com.vuitton.android.data.datasource.orders;

import com.vuitton.android.data.api.bff.user.CartApi;
import com.vuitton.android.data.dto.account.orders.ExchangeRequestDto;
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
@Metadata(d1 = {"\u0000\u0006\n\u0000\n\u0002\u0010\u0002\u0010\u0000\u001a\u00020\u0001H\n"}, d2 = {"<anonymous>", ""}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.data.datasource.orders.OrdersRemoteDataSource$submitSelfExchange$2", f = "OrdersRemoteDataSource.kt", l = {157}, m = "invokeSuspend", v = 2)
final class OrdersRemoteDataSource$submitSelfExchange$2 extends SuspendLambda implements Function1<Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f44179b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ OrdersRemoteDataSource f44180c;
    public final /* synthetic */ String d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public OrdersRemoteDataSource$submitSelfExchange$2(OrdersRemoteDataSource ordersRemoteDataSource, String str, Continuation continuation) {
        super(1, continuation);
        this.f44180c = ordersRemoteDataSource;
        this.d = str;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Continuation continuation) {
        return new OrdersRemoteDataSource$submitSelfExchange$2(this.f44180c, this.d, continuation);
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        return ((OrdersRemoteDataSource$submitSelfExchange$2) create((Continuation) obj)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f44179b;
        if (i2 == 0) {
            ResultKt.b(obj);
            CartApi cartApi = this.f44180c.f44141c;
            ExchangeRequestDto exchangeRequestDto = new ExchangeRequestDto(this.d);
            this.f44179b = 1;
            if (cartApi.submitSelfExchange(exchangeRequestDto, this) == coroutineSingletons) {
                return coroutineSingletons;
            }
        } else {
            if (i2 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.b(obj);
        }
        return Unit.f71739a;
    }
}
