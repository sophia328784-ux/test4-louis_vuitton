package com.vuitton.android.domain.usecase.wishlist;

import com.vuitton.android.domain.repository.WishlistRepository;
import javax.inject.Inject;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0011\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/domain/usecase/wishlist/GetLocalWishlistSummaryUseCase;", "", "Lcom/vuitton/android/domain/repository/WishlistRepository;", "wishlistRepository", "<init>", "(Lcom/vuitton/android/domain/repository/WishlistRepository;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class GetLocalWishlistSummaryUseCase {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final WishlistRepository f50437a;

    @Inject
    public GetLocalWishlistSummaryUseCase(WishlistRepository wishlistRepository) {
        wishlistRepository.getClass();
        this.f50437a = wishlistRepository;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x004b, code lost:
    
        if (r7 == r1) goto L21;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object a(kotlin.coroutines.jvm.internal.ContinuationImpl r7) {
        /*
            r6 = this;
            boolean r0 = r7 instanceof com.vuitton.android.domain.usecase.wishlist.GetLocalWishlistSummaryUseCase$run$1
            if (r0 == 0) goto L13
            r0 = r7
            com.vuitton.android.domain.usecase.wishlist.GetLocalWishlistSummaryUseCase$run$1 r0 = (com.vuitton.android.domain.usecase.wishlist.GetLocalWishlistSummaryUseCase$run$1) r0
            int r1 = r0.d
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.d = r1
            goto L18
        L13:
            com.vuitton.android.domain.usecase.wishlist.GetLocalWishlistSummaryUseCase$run$1 r0 = new com.vuitton.android.domain.usecase.wishlist.GetLocalWishlistSummaryUseCase$run$1
            r0.<init>(r6, r7)
        L18:
            java.lang.Object r7 = r0.f50438b
            kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r2 = r0.d
            r3 = 0
            r4 = 2
            r5 = 1
            if (r2 == 0) goto L35
            if (r2 == r5) goto L31
            if (r2 != r4) goto L2b
            kotlin.ResultKt.b(r7)
            goto L4e
        L2b:
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.md.k(r6)
            return r3
        L31:
            kotlin.ResultKt.b(r7)
            goto L43
        L35:
            kotlin.ResultKt.b(r7)
            r0.d = r5
            com.vuitton.android.domain.repository.WishlistRepository r6 = r6.f50437a
            com.vuitton.foundation.model.domain.model.common.ResultStrategyLazy r7 = r6.f()
            if (r7 != r1) goto L43
            goto L4d
        L43:
            com.vuitton.foundation.model.domain.model.common.ResultStrategy r7 = (com.vuitton.foundation.model.domain.model.common.ResultStrategy) r7
            r0.d = r4
            java.io.Serializable r7 = r7.g(r0)
            if (r7 != r1) goto L4e
        L4d:
            return r1
        L4e:
            kotlin.Result r7 = (kotlin.Result) r7
            if (r7 == 0) goto L96
            java.lang.Object r6 = r7.f71708b
            boolean r7 = r6 instanceof kotlin.Result.Failure
            if (r7 != 0) goto L8b
            kotlin.Result$Companion r7 = kotlin.Result.INSTANCE     // Catch: java.lang.Throwable -> L69
            com.vuitton.foundation.model.domain.model.wishlist.Wishlist r6 = (com.vuitton.foundation.model.domain.model.wishlist.Wishlist) r6     // Catch: java.lang.Throwable -> L69
            com.vuitton.foundation.model.domain.model.wishlist.WishlistSummary r7 = new com.vuitton.foundation.model.domain.model.wishlist.WishlistSummary     // Catch: java.lang.Throwable -> L69
            if (r6 == 0) goto L6b
            java.util.List r0 = r6.f68282a     // Catch: java.lang.Throwable -> L69
            if (r0 == 0) goto L6b
            int r0 = r0.size()     // Catch: java.lang.Throwable -> L69
            goto L6c
        L69:
            r6 = move-exception
            goto L83
        L6b:
            r0 = 0
        L6c:
            if (r6 == 0) goto L7d
            java.util.List r6 = r6.f68282a     // Catch: java.lang.Throwable -> L69
            if (r6 == 0) goto L7d
            java.lang.Object r6 = kotlin.collections.CollectionsKt.N(r6)     // Catch: java.lang.Throwable -> L69
            com.vuitton.foundation.model.domain.model.wishlist.WishlistItem r6 = (com.vuitton.foundation.model.domain.model.wishlist.WishlistItem) r6     // Catch: java.lang.Throwable -> L69
            if (r6 == 0) goto L7d
            java.lang.String r6 = r6.d     // Catch: java.lang.Throwable -> L69
            goto L7e
        L7d:
            r6 = r3
        L7e:
            r7.<init>(r0, r6)     // Catch: java.lang.Throwable -> L69
        L81:
            r6 = r7
            goto L8b
        L83:
            kotlin.Result$Companion r7 = kotlin.Result.INSTANCE
            kotlin.Result$Failure r7 = new kotlin.Result$Failure
            r7.<init>(r6)
            goto L81
        L8b:
            boolean r7 = r6 instanceof kotlin.Result.Failure
            if (r7 == 0) goto L90
            goto L91
        L90:
            r3 = r6
        L91:
            com.vuitton.foundation.model.domain.model.wishlist.WishlistSummary r3 = (com.vuitton.foundation.model.domain.model.wishlist.WishlistSummary) r3
            if (r3 == 0) goto L96
            goto L9d
        L96:
            com.vuitton.foundation.model.domain.model.wishlist.WishlistSummary$Companion r6 = com.vuitton.foundation.model.domain.model.wishlist.WishlistSummary.f68291c
            r6.getClass()
            com.vuitton.foundation.model.domain.model.wishlist.WishlistSummary r3 = com.vuitton.foundation.model.domain.model.wishlist.WishlistSummary.d
        L9d:
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vuitton.android.domain.usecase.wishlist.GetLocalWishlistSummaryUseCase.a(kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }
}
