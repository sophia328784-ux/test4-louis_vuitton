package com.vuitton.android.presentation.screen.orders.viewmodels;

import com.vuitton.android.presentation.screen.orders.models.CategoryOptionUiModel;
import java.util.List;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.builders.ListBuilder;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.MutableStateFlow;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.orders.viewmodels.OrderReturnOrExchangeViewModelImpl$selectExchangeOption$1", f = "OrderReturnOrExchangeViewModelImpl.kt", l = {}, m = "invokeSuspend", v = 2)
final class OrderReturnOrExchangeViewModelImpl$selectExchangeOption$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ OrderReturnOrExchangeViewModelImpl f60464b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f60465c;
    public final /* synthetic */ CategoryOptionUiModel d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public OrderReturnOrExchangeViewModelImpl$selectExchangeOption$1(OrderReturnOrExchangeViewModelImpl orderReturnOrExchangeViewModelImpl, int i2, CategoryOptionUiModel categoryOptionUiModel, Continuation continuation) {
        super(2, continuation);
        this.f60464b = orderReturnOrExchangeViewModelImpl;
        this.f60465c = i2;
        this.d = categoryOptionUiModel;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new OrderReturnOrExchangeViewModelImpl$selectExchangeOption$1(this.f60464b, this.f60465c, this.d, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((OrderReturnOrExchangeViewModelImpl$selectExchangeOption$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object value;
        ListBuilder listBuilderV;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        ResultKt.b(obj);
        MutableStateFlow mutableStateFlow = this.f60464b.v;
        do {
            value = mutableStateFlow.getValue();
            listBuilderV = CollectionsKt.v();
            listBuilderV.addAll(CollectionsKt.q0((List) value, this.f60465c));
            listBuilderV.add(this.d);
        } while (!mutableStateFlow.i(value, CollectionsKt.r(listBuilderV)));
        return Unit.f71739a;
    }
}
