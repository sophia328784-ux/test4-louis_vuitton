package com.vuitton.android.data.repository;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import org.bouncycastle.asn1.eac.EACTags;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.data.repository.ProductRepositoryImpl", f = "ProductRepositoryImpl.kt", l = {EACTags.ELEMENT_LIST}, m = "getYmalProductList-icxJlF4", v = 2)
final class ProductRepositoryImpl$getYmalProductList$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f47922b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ ProductRepositoryImpl f47923c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ProductRepositoryImpl$getYmalProductList$1(ProductRepositoryImpl productRepositoryImpl, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f47923c = productRepositoryImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        this.f47922b = obj;
        this.d |= Integer.MIN_VALUE;
        Object objF = this.f47923c.f(null, null, null, this);
        return objF == CoroutineSingletons.COROUTINE_SUSPENDED ? objF : new Result(objF);
    }
}
