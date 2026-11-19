package com.vuitton.android.domain.usecase.wishlist;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.domain.usecase.wishlist.IsProductInWishlistUseCase", f = "IsProductInWishlistUseCase.kt", l = {9, 10}, m = "run-hd8RJmg", v = 2)
final class IsProductInWishlistUseCase$run$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public String f50442b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public /* synthetic */ Object f50443c;
    public final /* synthetic */ IsProductInWishlistUseCase d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f50444e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public IsProductInWishlistUseCase$run$1(IsProductInWishlistUseCase isProductInWishlistUseCase, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.d = isProductInWishlistUseCase;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f50443c = obj;
        this.f50444e |= Integer.MIN_VALUE;
        return this.d.a(null, this);
    }
}
