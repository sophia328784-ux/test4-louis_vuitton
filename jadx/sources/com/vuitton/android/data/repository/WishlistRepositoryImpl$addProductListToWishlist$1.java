package com.vuitton.android.data.repository;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.data.repository.WishlistRepositoryImpl", f = "WishlistRepositoryImpl.kt", l = {91}, m = "addProductListToWishlist-gIAlu-s", v = 2)
final class WishlistRepositoryImpl$addProductListToWishlist$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f48217b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ WishlistRepositoryImpl f48218c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WishlistRepositoryImpl$addProductListToWishlist$1(WishlistRepositoryImpl wishlistRepositoryImpl, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f48218c = wishlistRepositoryImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f48217b = obj;
        this.d |= Integer.MIN_VALUE;
        Object objD = this.f48218c.d(null, this);
        return objD == CoroutineSingletons.COROUTINE_SUSPENDED ? objD : new Result(objD);
    }
}
