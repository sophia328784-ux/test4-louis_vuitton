package com.vuitton.android.data.repository;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.data.repository.WishlistRepositoryImpl", f = "WishlistRepositoryImpl.kt", l = {78, 79, 84}, m = "deleteProductFromWishlist-TPjgr7Q", v = 2)
final class WishlistRepositoryImpl$deleteProductFromWishlist$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public String f48222b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public /* synthetic */ Object f48223c;
    public final /* synthetic */ WishlistRepositoryImpl d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f48224e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WishlistRepositoryImpl$deleteProductFromWishlist$1(WishlistRepositoryImpl wishlistRepositoryImpl, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.d = wishlistRepositoryImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f48223c = obj;
        this.f48224e |= Integer.MIN_VALUE;
        Object objB = this.d.b(null, this);
        return objB == CoroutineSingletons.COROUTINE_SUSPENDED ? objB : new Result(objB);
    }
}
