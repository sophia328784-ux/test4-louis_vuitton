package com.vuitton.android.presentation.screen.orders.viewmodels;

import com.vuitton.android.domain.monitoring.MonitorAction;
import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.orders.viewmodels.OrderViewModelImpl", f = "OrderViewModelImpl.kt", l = {179, 179}, m = "getOrderList", v = 2)
final class OrderViewModelImpl$getOrderList$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public MonitorAction f60529b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public /* synthetic */ Object f60530c;
    public final /* synthetic */ OrderViewModelImpl d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f60531e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public OrderViewModelImpl$getOrderList$1(OrderViewModelImpl orderViewModelImpl, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.d = orderViewModelImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f60530c = obj;
        this.f60531e |= Integer.MIN_VALUE;
        return OrderViewModelImpl.Ac(this.d, this);
    }
}
