package com.vuitton.android.data.datasource.orders;

import com.vuitton.android.data.dto.account.orders.HistoryOrdersDtoResponse;
import defpackage.md;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import org.bouncycastle.asn1.eac.EACTags;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u0003H\n"}, d2 = {"<anonymous>", "Lkotlin/Result;", "Lcom/vuitton/android/data/dto/account/orders/HistoryOrdersDtoResponse;", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.data.datasource.orders.OrdersRemoteDataSource$getOrderList$2$1$historyResult$1", f = "OrdersRemoteDataSource.kt", l = {EACTags.SEX}, m = "invokeSuspend", v = 2)
final class OrdersRemoteDataSource$getOrderList$2$1$historyResult$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Result<? extends HistoryOrdersDtoResponse>>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f44161b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ OrdersRemoteDataSource f44162c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public OrdersRemoteDataSource$getOrderList$2$1$historyResult$1(OrdersRemoteDataSource ordersRemoteDataSource, Continuation continuation) {
        super(2, continuation);
        this.f44162c = ordersRemoteDataSource;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new OrdersRemoteDataSource$getOrderList$2$1$historyResult$1(this.f44162c, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((OrdersRemoteDataSource$getOrderList$2$1$historyResult$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Object objA;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f44161b;
        if (i2 == 0) {
            ResultKt.b(obj);
            this.f44161b = 1;
            objA = OrdersRemoteDataSource.a(this.f44162c, this);
            if (objA == coroutineSingletons) {
                return coroutineSingletons;
            }
        } else {
            if (i2 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.b(obj);
            objA = ((Result) obj).f71708b;
        }
        return new Result(objA);
    }
}
