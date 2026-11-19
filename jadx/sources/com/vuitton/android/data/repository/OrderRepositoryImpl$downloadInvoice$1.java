package com.vuitton.android.data.repository;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.data.repository.OrderRepositoryImpl", f = "OrderRepositoryImpl.kt", l = {126}, m = "downloadInvoice-BWLJW6A", v = 2)
final class OrderRepositoryImpl$downloadInvoice$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f47816b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ OrderRepositoryImpl f47817c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public OrderRepositoryImpl$downloadInvoice$1(OrderRepositoryImpl orderRepositoryImpl, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f47817c = orderRepositoryImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f47816b = obj;
        this.d |= Integer.MIN_VALUE;
        Object objI = this.f47817c.i(null, null, false, this);
        return objI == CoroutineSingletons.COROUTINE_SUSPENDED ? objI : new Result(objI);
    }
}
