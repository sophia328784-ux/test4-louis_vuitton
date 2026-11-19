package com.vuitton.android.data.repository;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import org.bouncycastle.asn1.eac.EACTags;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.data.repository.WishlistRepositoryImpl", f = "WishlistRepositoryImpl.kt", l = {EACTags.DYNAMIC_INTERNAL_AUTHENTIFICATION, EACTags.DYNAMIC_EXTERNAL_AUTHENTIFICATION}, m = "addProductToWishlist-TPjgr7Q", v = 2)
final class WishlistRepositoryImpl$addProductToWishlist$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public String f48219b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public /* synthetic */ Object f48220c;
    public final /* synthetic */ WishlistRepositoryImpl d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f48221e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WishlistRepositoryImpl$addProductToWishlist$1(WishlistRepositoryImpl wishlistRepositoryImpl, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.d = wishlistRepositoryImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f48220c = obj;
        this.f48221e |= Integer.MIN_VALUE;
        Object objC = this.d.c(null, this);
        return objC == CoroutineSingletons.COROUTINE_SUSPENDED ? objC : new Result(objC);
    }
}
