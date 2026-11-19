package com.vuitton.android.presentation.screen.orders.components.exchange;

import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.orders.components.exchange.OrderExchangeVariantSelectionComposableKt$OrderExchangeVariantSelectionComposable$1$1$1", f = "OrderExchangeVariantSelectionComposable.kt", l = {33}, m = "emit", v = 2)
final class OrderExchangeVariantSelectionComposableKt$OrderExchangeVariantSelectionComposable$1$1$1$emit$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f60124b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ OrderExchangeVariantSelectionComposableKt$OrderExchangeVariantSelectionComposable$1$1.AnonymousClass1 f60125c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public OrderExchangeVariantSelectionComposableKt$OrderExchangeVariantSelectionComposable$1$1$1$emit$1(OrderExchangeVariantSelectionComposableKt$OrderExchangeVariantSelectionComposable$1$1.AnonymousClass1 anonymousClass1, Continuation continuation) {
        super(continuation);
        this.f60125c = anonymousClass1;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f60124b = obj;
        this.d |= Integer.MIN_VALUE;
        return this.f60125c.emit(null, this);
    }
}
