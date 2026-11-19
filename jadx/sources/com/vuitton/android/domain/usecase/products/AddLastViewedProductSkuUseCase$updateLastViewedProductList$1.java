package com.vuitton.android.domain.usecase.products;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import org.bouncycastle.asn1.eac.EACTags;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.domain.usecase.products.AddLastViewedProductSkuUseCase", f = "AddLastViewedProductSkuUseCase.kt", l = {EACTags.ADDRESS}, m = "updateLastViewedProductList-qi9HLQg", v = 2)
final class AddLastViewedProductSkuUseCase$updateLastViewedProductList$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f50290b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ AddLastViewedProductSkuUseCase f50291c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AddLastViewedProductSkuUseCase$updateLastViewedProductList$1(AddLastViewedProductSkuUseCase addLastViewedProductSkuUseCase, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f50291c = addLastViewedProductSkuUseCase;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f50290b = obj;
        this.d |= Integer.MIN_VALUE;
        return this.f50291c.b(null, null, null, null, null, this);
    }
}
