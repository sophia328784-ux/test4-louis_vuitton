package com.vuitton.android.domain.usecase.products;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.domain.usecase.products.RemoveSkuFromLastViewedProductListUseCase", f = "RemoveSkuFromLastViewedProductListUseCase.kt", l = {11}, m = "run-hd8RJmg", v = 2)
final class RemoveSkuFromLastViewedProductListUseCase$run$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f50346b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ RemoveSkuFromLastViewedProductListUseCase f50347c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RemoveSkuFromLastViewedProductListUseCase$run$1(RemoveSkuFromLastViewedProductListUseCase removeSkuFromLastViewedProductListUseCase, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f50347c = removeSkuFromLastViewedProductListUseCase;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f50346b = obj;
        this.d |= Integer.MIN_VALUE;
        return this.f50347c.a(null, this);
    }
}
