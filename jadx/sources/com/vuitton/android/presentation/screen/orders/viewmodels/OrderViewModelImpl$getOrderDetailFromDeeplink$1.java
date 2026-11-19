package com.vuitton.android.presentation.screen.orders.viewmodels;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.orders.viewmodels.OrderViewModelImpl", f = "OrderViewModelImpl.kt", l = {286, 298, 301}, m = "getOrderDetailFromDeeplink", v = 2)
final class OrderViewModelImpl$getOrderDetailFromDeeplink$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Object f60526b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public /* synthetic */ Object f60527c;
    public final /* synthetic */ OrderViewModelImpl d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f60528e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public OrderViewModelImpl$getOrderDetailFromDeeplink$1(OrderViewModelImpl orderViewModelImpl, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.d = orderViewModelImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f60527c = obj;
        this.f60528e |= Integer.MIN_VALUE;
        return OrderViewModelImpl.zc(this.d, this);
    }
}
