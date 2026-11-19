package com.vuitton.android.data.datasource.wishlist;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.data.datasource.wishlist.WishlistRemoteDataSource", f = "WishlistRemoteDataSource.kt", l = {24}, m = "getWishlist-IoAF18A", v = 2)
final class WishlistRemoteDataSource$getWishlist$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f44281b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ WishlistRemoteDataSource f44282c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WishlistRemoteDataSource$getWishlist$1(WishlistRemoteDataSource wishlistRemoteDataSource, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f44282c = wishlistRemoteDataSource;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f44281b = obj;
        this.d |= Integer.MIN_VALUE;
        Object objC = this.f44282c.c(this);
        return objC == CoroutineSingletons.COROUTINE_SUSPENDED ? objC : new Result(objC);
    }
}
