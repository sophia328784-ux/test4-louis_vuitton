package com.vuitton.android.data.repository;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import org.bouncycastle.asn1.eac.EACTags;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.data.repository.WishlistRepositoryImpl", f = "WishlistRepositoryImpl.kt", l = {EACTags.DATE_OF_BIRTH}, m = "refreshWishlist-IoAF18A", v = 2)
final class WishlistRepositoryImpl$refreshWishlist$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f48227b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ WishlistRepositoryImpl f48228c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WishlistRepositoryImpl$refreshWishlist$1(WishlistRepositoryImpl wishlistRepositoryImpl, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f48228c = wishlistRepositoryImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f48227b = obj;
        this.d |= Integer.MIN_VALUE;
        Object objA = this.f48228c.a(this);
        return objA == CoroutineSingletons.COROUTINE_SUSPENDED ? objA : new Result(objA);
    }
}
