package com.vuitton.android.domain.usecase.wishlist;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.domain.usecase.wishlist.GetLocalWishlistSummaryUseCase", f = "GetLocalWishlistSummaryUseCase.kt", l = {9, 10}, m = "run", v = 2)
final class GetLocalWishlistSummaryUseCase$run$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f50438b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ GetLocalWishlistSummaryUseCase f50439c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public GetLocalWishlistSummaryUseCase$run$1(GetLocalWishlistSummaryUseCase getLocalWishlistSummaryUseCase, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f50439c = getLocalWishlistSummaryUseCase;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f50438b = obj;
        this.d |= Integer.MIN_VALUE;
        return this.f50439c.a(this);
    }
}
