package com.vuitton.android.data.datasource.wishlist;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import org.bouncycastle.asn1.eac.EACTags;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.data.datasource.wishlist.WishlistRemoteDataSource", f = "WishlistRemoteDataSource.kt", l = {EACTags.CURRENCY_EXPONENT}, m = "deleteProductFromWishlist-irm6XNc", v = 2)
final class WishlistRemoteDataSource$deleteProductFromWishlist$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f44279b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ WishlistRemoteDataSource f44280c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WishlistRemoteDataSource$deleteProductFromWishlist$1(WishlistRemoteDataSource wishlistRemoteDataSource, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f44280c = wishlistRemoteDataSource;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f44279b = obj;
        this.d |= Integer.MIN_VALUE;
        Object objB = this.f44280c.b(null, this);
        return objB == CoroutineSingletons.COROUTINE_SUSPENDED ? objB : new Result(objB);
    }
}
