package com.vuitton.android.data.repository;

import com.vuitton.android.data.datasource.wishlist.WishlistLocalDataSource;
import com.vuitton.foundation.model.domain.model.wishlist.Wishlist;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.SuspendFunction;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.AdaptedFunctionReference;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
final /* synthetic */ class WishlistRepositoryImpl$getWishlist$3 extends AdaptedFunctionReference implements Function1<Continuation<? super Result<? extends Wishlist>>, Object>, SuspendFunction {
    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        WishlistLocalDataSource wishlistLocalDataSource = (WishlistLocalDataSource) this.receiver;
        int i2 = WishlistRepositoryImpl.d;
        wishlistLocalDataSource.getClass();
        Result.Companion companion = Result.INSTANCE;
        Object value = wishlistLocalDataSource.f44274b.getValue();
        return value == CoroutineSingletons.COROUTINE_SUSPENDED ? value : new Result(value);
    }
}
