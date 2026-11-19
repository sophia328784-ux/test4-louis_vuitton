package com.vuitton.android.domain.usecase.products;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.domain.usecase.products.RemoveLastViewedProductListUseCase", f = "RemoveLastViewedProductListUseCase.kt", l = {8}, m = "run", v = 2)
final class RemoveLastViewedProductListUseCase$run$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f50343b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ RemoveLastViewedProductListUseCase f50344c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RemoveLastViewedProductListUseCase$run$1(RemoveLastViewedProductListUseCase removeLastViewedProductListUseCase, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f50344c = removeLastViewedProductListUseCase;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f50343b = obj;
        this.d |= Integer.MIN_VALUE;
        return this.f50344c.a(this);
    }
}
