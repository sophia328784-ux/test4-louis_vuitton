package com.vuitton.android.presentation.screen.orders.viewmodels;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.orders.viewmodels.OrderViewModelImpl", f = "OrderViewModelImpl.kt", l = {260, 260, 274}, m = "getOrderDetailData", v = 2)
final class OrderViewModelImpl$getOrderDetailData$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Object f60522b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Throwable f60523c;
    public /* synthetic */ Object d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ OrderViewModelImpl f60524e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f60525f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public OrderViewModelImpl$getOrderDetailData$1(OrderViewModelImpl orderViewModelImpl, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f60524e = orderViewModelImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.d = obj;
        this.f60525f |= Integer.MIN_VALUE;
        return OrderViewModelImpl.yc(this.f60524e, this);
    }
}
