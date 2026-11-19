package com.vuitton.android.presentation.screen.orders.viewmodels;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.orders.viewmodels.OrderViewModelImpl$getOrderList$5", f = "OrderViewModelImpl.kt", l = {205}, m = "emit", v = 2)
final class OrderViewModelImpl$getOrderList$5$emit$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Object f60534b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public OrderViewModelImpl f60535c;
    public Throwable d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public /* synthetic */ Object f60536e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ OrderViewModelImpl$getOrderList$5 f60537f;
    public int g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public OrderViewModelImpl$getOrderList$5$emit$1(OrderViewModelImpl$getOrderList$5 orderViewModelImpl$getOrderList$5, Continuation continuation) {
        super(continuation);
        this.f60537f = orderViewModelImpl$getOrderList$5;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f60536e = obj;
        this.g |= Integer.MIN_VALUE;
        return this.f60537f.emit(new Result(null), this);
    }
}
