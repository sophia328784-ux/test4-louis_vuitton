package com.vuitton.android.data.repository;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import org.bouncycastle.asn1.eac.EACTags;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.data.repository.WishlistRepositoryImpl", f = "WishlistRepositoryImpl.kt", l = {EACTags.LANGUAGE_PREFERENCES}, m = "getAndCacheRemoteWishlist-IoAF18A", v = 2)
final class WishlistRepositoryImpl$getAndCacheRemoteWishlist$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f48225b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ WishlistRepositoryImpl f48226c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WishlistRepositoryImpl$getAndCacheRemoteWishlist$1(WishlistRepositoryImpl wishlistRepositoryImpl, Continuation continuation) {
        super(continuation);
        this.f48226c = wishlistRepositoryImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f48225b = obj;
        this.d |= Integer.MIN_VALUE;
        int i2 = WishlistRepositoryImpl.d;
        Object objH = this.f48226c.h(this);
        return objH == CoroutineSingletons.COROUTINE_SUSPENDED ? objH : new Result(objH);
    }
}
