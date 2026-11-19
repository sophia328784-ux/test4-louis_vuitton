package com.vuitton.android.data.repository;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.data.repository.ProductRepositoryImpl", f = "ProductRepositoryImpl.kt", l = {106}, m = "getShadeFinderRecommendations-gIAlu-s", v = 2)
final class ProductRepositoryImpl$getShadeFinderRecommendations$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f47915b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ ProductRepositoryImpl f47916c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ProductRepositoryImpl$getShadeFinderRecommendations$1(ProductRepositoryImpl productRepositoryImpl, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f47916c = productRepositoryImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        this.f47915b = obj;
        this.d |= Integer.MIN_VALUE;
        Object objC = this.f47916c.c(null, this);
        return objC == CoroutineSingletons.COROUTINE_SUSPENDED ? objC : new Result(objC);
    }
}
