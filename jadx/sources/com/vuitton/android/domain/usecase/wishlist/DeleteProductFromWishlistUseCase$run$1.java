package com.vuitton.android.domain.usecase.wishlist;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.domain.usecase.wishlist.DeleteProductFromWishlistUseCase", f = "DeleteProductFromWishlistUseCase.kt", l = {8}, m = "run-TPjgr7Q", v = 2)
final class DeleteProductFromWishlistUseCase$run$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f50435b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ DeleteProductFromWishlistUseCase f50436c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DeleteProductFromWishlistUseCase$run$1(DeleteProductFromWishlistUseCase deleteProductFromWishlistUseCase, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f50436c = deleteProductFromWishlistUseCase;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f50435b = obj;
        this.d |= Integer.MIN_VALUE;
        Object objA = this.f50436c.a(null, this);
        return objA == CoroutineSingletons.COROUTINE_SUSPENDED ? objA : new Result(objA);
    }
}
