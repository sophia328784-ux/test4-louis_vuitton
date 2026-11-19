package com.vuitton.android.domain.usecase.products;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.domain.usecase.products.AddLastViewedProductSkuUseCase", f = "AddLastViewedProductSkuUseCase.kt", l = {87}, m = "updateRecommendedSource", v = 2)
final class AddLastViewedProductSkuUseCase$updateRecommendedSource$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f50292b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ AddLastViewedProductSkuUseCase f50293c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AddLastViewedProductSkuUseCase$updateRecommendedSource$1(AddLastViewedProductSkuUseCase addLastViewedProductSkuUseCase, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f50293c = addLastViewedProductSkuUseCase;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f50292b = obj;
        this.d |= Integer.MIN_VALUE;
        return this.f50293c.c(null, this);
    }
}
