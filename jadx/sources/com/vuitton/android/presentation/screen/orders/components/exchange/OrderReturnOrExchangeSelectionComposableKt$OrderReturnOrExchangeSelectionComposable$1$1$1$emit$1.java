package com.vuitton.android.presentation.screen.orders.components.exchange;

import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.orders.components.exchange.OrderReturnOrExchangeSelectionComposableKt$OrderReturnOrExchangeSelectionComposable$1$1$1", f = "OrderReturnOrExchangeSelectionComposable.kt", l = {30}, m = "emit", v = 2)
final class OrderReturnOrExchangeSelectionComposableKt$OrderReturnOrExchangeSelectionComposable$1$1$1$emit$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f60166b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ OrderReturnOrExchangeSelectionComposableKt$OrderReturnOrExchangeSelectionComposable$1$1.AnonymousClass1 f60167c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public OrderReturnOrExchangeSelectionComposableKt$OrderReturnOrExchangeSelectionComposable$1$1$1$emit$1(OrderReturnOrExchangeSelectionComposableKt$OrderReturnOrExchangeSelectionComposable$1$1.AnonymousClass1 anonymousClass1, Continuation continuation) {
        super(continuation);
        this.f60167c = anonymousClass1;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f60166b = obj;
        this.d |= Integer.MIN_VALUE;
        return this.f60167c.emit(null, this);
    }
}
