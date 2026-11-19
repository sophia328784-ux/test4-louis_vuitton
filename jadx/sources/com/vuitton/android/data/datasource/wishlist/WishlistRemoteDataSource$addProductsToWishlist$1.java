package com.vuitton.android.data.datasource.wishlist;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.data.datasource.wishlist.WishlistRemoteDataSource", f = "WishlistRemoteDataSource.kt", l = {36}, m = "addProductsToWishlist-gIAlu-s", v = 2)
final class WishlistRemoteDataSource$addProductsToWishlist$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f44277b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ WishlistRemoteDataSource f44278c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WishlistRemoteDataSource$addProductsToWishlist$1(WishlistRemoteDataSource wishlistRemoteDataSource, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f44278c = wishlistRemoteDataSource;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f44277b = obj;
        this.d |= Integer.MIN_VALUE;
        Object objA = this.f44278c.a(null, this);
        return objA == CoroutineSingletons.COROUTINE_SUSPENDED ? objA : new Result(objA);
    }
}
