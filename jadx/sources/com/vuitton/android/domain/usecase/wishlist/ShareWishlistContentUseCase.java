package com.vuitton.android.domain.usecase.wishlist;

import com.vuitton.android.domain.repository.AuthTokenRepository;
import com.vuitton.android.domain.repository.WishlistRepository;
import com.vuitton.android.domain.usecase.dispatch.RequireUserInAppDispatchUseCase;
import javax.inject.Inject;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B!\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lcom/vuitton/android/domain/usecase/wishlist/ShareWishlistContentUseCase;", "", "Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;", "requireUserInAppDispatchUseCase", "Lcom/vuitton/android/domain/repository/AuthTokenRepository;", "authTokenRepository", "Lcom/vuitton/android/domain/repository/WishlistRepository;", "wishlistRepository", "<init>", "(Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;Lcom/vuitton/android/domain/repository/AuthTokenRepository;Lcom/vuitton/android/domain/repository/WishlistRepository;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class ShareWishlistContentUseCase {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final RequireUserInAppDispatchUseCase f50448a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AuthTokenRepository f50449b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final WishlistRepository f50450c;

    @Inject
    public ShareWishlistContentUseCase(RequireUserInAppDispatchUseCase requireUserInAppDispatchUseCase, AuthTokenRepository authTokenRepository, WishlistRepository wishlistRepository) {
        requireUserInAppDispatchUseCase.getClass();
        authTokenRepository.getClass();
        wishlistRepository.getClass();
        this.f50448a = requireUserInAppDispatchUseCase;
        this.f50449b = authTokenRepository;
        this.f50450c = wishlistRepository;
    }

    /* JADX WARN: Code duplicated, block: B:8:0x0014  */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0082, code lost:
    
        if (r14 == r0) goto L26;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object a(java.lang.String r10, java.lang.String r11, java.lang.String r12, java.util.List r13, kotlin.coroutines.jvm.internal.ContinuationImpl r14) {
        /*
            r9 = this;
            boolean r0 = r14 instanceof com.vuitton.android.domain.usecase.wishlist.ShareWishlistContentUseCase$run$1
            if (r0 == 0) goto L14
            r0 = r14
            com.vuitton.android.domain.usecase.wishlist.ShareWishlistContentUseCase$run$1 r0 = (com.vuitton.android.domain.usecase.wishlist.ShareWishlistContentUseCase$run$1) r0
            int r1 = r0.f50455h
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L14
            int r1 = r1 - r2
            r0.f50455h = r1
        L12:
            r8 = r0
            goto L1a
        L14:
            com.vuitton.android.domain.usecase.wishlist.ShareWishlistContentUseCase$run$1 r0 = new com.vuitton.android.domain.usecase.wishlist.ShareWishlistContentUseCase$run$1
            r0.<init>(r9, r14)
            goto L12
        L1a:
            java.lang.Object r14 = r8.f50454f
            kotlin.coroutines.intrinsics.CoroutineSingletons r0 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r1 = r8.f50455h
            r2 = 2
            r3 = 1
            r4 = 0
            if (r1 == 0) goto L49
            if (r1 == r3) goto L33
            if (r1 != r2) goto L2d
            kotlin.ResultKt.b(r14)     // Catch: java.lang.Throwable -> L8d
            goto L85
        L2d:
            java.lang.String r9 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.md.k(r9)
            return r4
        L33:
            java.lang.Object r10 = r8.f50453e
            r13 = r10
            java.util.List r13 = (java.util.List) r13
            java.lang.String r12 = r8.d
            java.lang.String r11 = r8.f50452c
            java.lang.String r10 = r8.f50451b
            kotlin.ResultKt.b(r14)
            kotlin.Result r14 = (kotlin.Result) r14
            java.lang.Object r14 = r14.f71708b
        L45:
            r3 = r10
            r5 = r12
            r6 = r13
            goto L5f
        L49:
            kotlin.ResultKt.b(r14)
            r8.f50451b = r10
            r8.f50452c = r11
            r8.d = r12
            r8.f50453e = r13
            r8.f50455h = r3
            com.vuitton.android.domain.repository.AuthTokenRepository r14 = r9.f50449b
            java.lang.Object r14 = r14.e(r8)
            if (r14 != r0) goto L45
            goto L84
        L5f:
            kotlin.Result$Companion r10 = kotlin.Result.INSTANCE
            boolean r10 = r14 instanceof kotlin.Result.Failure
            if (r10 != 0) goto L97
            r7 = r14
            java.lang.String r7 = (java.lang.String) r7     // Catch: java.lang.Throwable -> L8d
            com.vuitton.android.domain.repository.WishlistRepository r1 = r9.f50450c     // Catch: java.lang.Throwable -> L8d
            com.vuitton.android.domain.usecase.dispatch.RequireUserInAppDispatchUseCase r9 = r9.f50448a     // Catch: java.lang.Throwable -> L8d
            com.vuitton.android.domain.repository.InAppDispatchRepository r9 = r9.f49912a     // Catch: java.lang.Throwable -> L8d
            com.vuitton.foundation.model.domain.model.dispatch.InAppDispatch r9 = r9.b()     // Catch: java.lang.Throwable -> L8d
            r8.f50451b = r4     // Catch: java.lang.Throwable -> L8d
            r8.f50452c = r4     // Catch: java.lang.Throwable -> L8d
            r8.d = r4     // Catch: java.lang.Throwable -> L8d
            r8.f50453e = r4     // Catch: java.lang.Throwable -> L8d
            r8.f50455h = r2     // Catch: java.lang.Throwable -> L8d
            r2 = r9
            r4 = r11
            java.lang.Object r14 = r1.e(r2, r3, r4, r5, r6, r7, r8)     // Catch: java.lang.Throwable -> L8d
            if (r14 != r0) goto L85
        L84:
            return r0
        L85:
            java.lang.Boolean r14 = (java.lang.Boolean) r14     // Catch: java.lang.Throwable -> L8d
            r14.getClass()     // Catch: java.lang.Throwable -> L8d
            kotlin.Result$Companion r9 = kotlin.Result.INSTANCE     // Catch: java.lang.Throwable -> L8d
            return r14
        L8d:
            r0 = move-exception
            r9 = r0
            kotlin.Result$Companion r10 = kotlin.Result.INSTANCE
            kotlin.Result$Failure r10 = new kotlin.Result$Failure
            r10.<init>(r9)
            return r10
        L97:
            return r14
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vuitton.android.domain.usecase.wishlist.ShareWishlistContentUseCase.a(java.lang.String, java.lang.String, java.lang.String, java.util.List, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }
}
