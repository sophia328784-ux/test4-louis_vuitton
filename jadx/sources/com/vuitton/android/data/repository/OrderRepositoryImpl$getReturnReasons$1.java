package com.vuitton.android.data.repository;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.data.repository.OrderRepositoryImpl", f = "OrderRepositoryImpl.kt", l = {101}, m = "getReturnReasons-IoAF18A", v = 2)
final class OrderRepositoryImpl$getReturnReasons$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f47831b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ OrderRepositoryImpl f47832c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public OrderRepositoryImpl$getReturnReasons$1(OrderRepositoryImpl orderRepositoryImpl, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f47832c = orderRepositoryImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f47831b = obj;
        this.d |= Integer.MIN_VALUE;
        Object objC = this.f47832c.c(this);
        return objC == CoroutineSingletons.COROUTINE_SUSPENDED ? objC : new Result(objC);
    }
}
