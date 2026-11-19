package com.vuitton.android.domain.usecase.wishlist;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.domain.usecase.wishlist.AddProductToWishlistUseCase", f = "AddProductToWishlistUseCase.kt", l = {8}, m = "run-TPjgr7Q", v = 2)
final class AddProductToWishlistUseCase$run$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f50432b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ AddProductToWishlistUseCase f50433c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AddProductToWishlistUseCase$run$1(AddProductToWishlistUseCase addProductToWishlistUseCase, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f50433c = addProductToWishlistUseCase;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f50432b = obj;
        this.d |= Integer.MIN_VALUE;
        Object objA = this.f50433c.a(null, this);
        return objA == CoroutineSingletons.COROUTINE_SUSPENDED ? objA : new Result(objA);
    }
}
