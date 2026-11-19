package com.vuitton.android.domain.usecase.wishlist;

import com.vuitton.android.domain.repository.WishlistRepository;
import javax.inject.Inject;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0011\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/domain/usecase/wishlist/AddProductListToWishlistUseCase;", "", "Lcom/vuitton/android/domain/repository/WishlistRepository;", "wishListRepository", "<init>", "(Lcom/vuitton/android/domain/repository/WishlistRepository;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class AddProductListToWishlistUseCase {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final WishlistRepository f50428a;

    @Inject
    public AddProductListToWishlistUseCase(WishlistRepository wishlistRepository) {
        wishlistRepository.getClass();
        this.f50428a = wishlistRepository;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0059, code lost:
    
        if (r5 == r1) goto L24;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object a(java.util.ArrayList r6, kotlin.coroutines.jvm.internal.ContinuationImpl r7) {
        /*
            r5 = this;
            boolean r0 = r7 instanceof com.vuitton.android.domain.usecase.wishlist.AddProductListToWishlistUseCase$run$1
            if (r0 == 0) goto L13
            r0 = r7
            com.vuitton.android.domain.usecase.wishlist.AddProductListToWishlistUseCase$run$1 r0 = (com.vuitton.android.domain.usecase.wishlist.AddProductListToWishlistUseCase$run$1) r0
            int r1 = r0.d
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.d = r1
            goto L18
        L13:
            com.vuitton.android.domain.usecase.wishlist.AddProductListToWishlistUseCase$run$1 r0 = new com.vuitton.android.domain.usecase.wishlist.AddProductListToWishlistUseCase$run$1
            r0.<init>(r5, r7)
        L18:
            java.lang.Object r7 = r0.f50429b
            kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r2 = r0.d
            com.vuitton.android.domain.repository.WishlistRepository r5 = r5.f50428a
            r3 = 2
            r4 = 1
            if (r2 == 0) goto L3f
            if (r2 == r4) goto L37
            if (r2 != r3) goto L30
            kotlin.ResultKt.b(r7)     // Catch: java.lang.Throwable -> L64
            kotlin.Result r7 = (kotlin.Result) r7     // Catch: java.lang.Throwable -> L64
            java.lang.Object r5 = r7.f71708b     // Catch: java.lang.Throwable -> L64
            goto L5c
        L30:
            java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.md.k(r5)
            r5 = 0
            return r5
        L37:
            kotlin.ResultKt.b(r7)
            kotlin.Result r7 = (kotlin.Result) r7
            java.lang.Object r6 = r7.f71708b
            goto L4b
        L3f:
            kotlin.ResultKt.b(r7)
            r0.d = r4
            java.lang.Object r6 = r5.d(r6, r0)
            if (r6 != r1) goto L4b
            goto L5b
        L4b:
            kotlin.Result$Companion r7 = kotlin.Result.INSTANCE
            boolean r7 = r6 instanceof kotlin.Result.Failure
            if (r7 != 0) goto L6c
            kotlin.Unit r6 = (kotlin.Unit) r6     // Catch: java.lang.Throwable -> L64
            r0.d = r3     // Catch: java.lang.Throwable -> L64
            java.lang.Object r5 = r5.a(r0)     // Catch: java.lang.Throwable -> L64
            if (r5 != r1) goto L5c
        L5b:
            return r1
        L5c:
            kotlin.ResultKt.b(r5)     // Catch: java.lang.Throwable -> L64
            kotlin.Unit r5 = kotlin.Unit.f71739a     // Catch: java.lang.Throwable -> L64
            kotlin.Result$Companion r6 = kotlin.Result.INSTANCE     // Catch: java.lang.Throwable -> L64
            return r5
        L64:
            r5 = move-exception
            kotlin.Result$Companion r6 = kotlin.Result.INSTANCE
            kotlin.Result$Failure r6 = new kotlin.Result$Failure
            r6.<init>(r5)
        L6c:
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vuitton.android.domain.usecase.wishlist.AddProductListToWishlistUseCase.a(java.util.ArrayList, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }
}
