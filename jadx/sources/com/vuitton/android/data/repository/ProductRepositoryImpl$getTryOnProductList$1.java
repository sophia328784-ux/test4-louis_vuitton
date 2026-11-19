package com.vuitton.android.data.repository;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.data.repository.ProductRepositoryImpl", f = "ProductRepositoryImpl.kt", l = {97, 100}, m = "getTryOnProductList-0E7RQCE", v = 2)
final class ProductRepositoryImpl$getTryOnProductList$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f47917b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ ProductRepositoryImpl f47918c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ProductRepositoryImpl$getTryOnProductList$1(ProductRepositoryImpl productRepositoryImpl, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f47918c = productRepositoryImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        this.f47917b = obj;
        this.d |= Integer.MIN_VALUE;
        Object objI = this.f47918c.i(null, this);
        return objI == CoroutineSingletons.COROUTINE_SUSPENDED ? objI : new Result(objI);
    }
}
