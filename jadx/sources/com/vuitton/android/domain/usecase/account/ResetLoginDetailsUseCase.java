package com.vuitton.android.domain.usecase.account;

import com.vuitton.android.domain.repository.AccountRepository;
import com.vuitton.android.domain.repository.OrderRepository;
import com.vuitton.android.domain.repository.WishlistRepository;
import javax.inject.Inject;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B!\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lcom/vuitton/android/domain/usecase/account/ResetLoginDetailsUseCase;", "", "Lcom/vuitton/android/domain/repository/AccountRepository;", "accountRepository", "Lcom/vuitton/android/domain/repository/OrderRepository;", "orderRepository", "Lcom/vuitton/android/domain/repository/WishlistRepository;", "wishlistRepository", "<init>", "(Lcom/vuitton/android/domain/repository/AccountRepository;Lcom/vuitton/android/domain/repository/OrderRepository;Lcom/vuitton/android/domain/repository/WishlistRepository;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class ResetLoginDetailsUseCase {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final AccountRepository f49055a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final OrderRepository f49056b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final WishlistRepository f49057c;

    @Inject
    public ResetLoginDetailsUseCase(AccountRepository accountRepository, OrderRepository orderRepository, WishlistRepository wishlistRepository) {
        accountRepository.getClass();
        orderRepository.getClass();
        wishlistRepository.getClass();
        this.f49055a = accountRepository;
        this.f49056b = orderRepository;
        this.f49057c = wishlistRepository;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0056, code lost:
    
        if (r5.f49055a.m(r6, r0) == r1) goto L21;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object a(boolean r6, kotlin.coroutines.jvm.internal.ContinuationImpl r7) {
        /*
            r5 = this;
            boolean r0 = r7 instanceof com.vuitton.android.domain.usecase.account.ResetLoginDetailsUseCase$run$1
            if (r0 == 0) goto L13
            r0 = r7
            com.vuitton.android.domain.usecase.account.ResetLoginDetailsUseCase$run$1 r0 = (com.vuitton.android.domain.usecase.account.ResetLoginDetailsUseCase$run$1) r0
            int r1 = r0.f49060e
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f49060e = r1
            goto L18
        L13:
            com.vuitton.android.domain.usecase.account.ResetLoginDetailsUseCase$run$1 r0 = new com.vuitton.android.domain.usecase.account.ResetLoginDetailsUseCase$run$1
            r0.<init>(r5, r7)
        L18:
            java.lang.Object r7 = r0.f49059c
            kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r2 = r0.f49060e
            r3 = 2
            r4 = 1
            if (r2 == 0) goto L37
            if (r2 == r4) goto L31
            if (r2 != r3) goto L2a
            kotlin.ResultKt.b(r7)
            goto L59
        L2a:
            java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.md.k(r5)
            r5 = 0
            return r5
        L31:
            boolean r6 = r0.f49058b
            kotlin.ResultKt.b(r7)
            goto L47
        L37:
            kotlin.ResultKt.b(r7)
            r0.f49058b = r6
            r0.f49060e = r4
            com.vuitton.android.domain.repository.OrderRepository r7 = r5.f49056b
            kotlin.Unit r7 = r7.a()
            if (r7 != r1) goto L47
            goto L58
        L47:
            com.vuitton.android.domain.repository.WishlistRepository r7 = r5.f49057c
            r7.g()
            r0.f49058b = r6
            r0.f49060e = r3
            com.vuitton.android.domain.repository.AccountRepository r5 = r5.f49055a
            java.lang.Object r5 = r5.m(r6, r0)
            if (r5 != r1) goto L59
        L58:
            return r1
        L59:
            kotlin.Unit r5 = kotlin.Unit.f71739a
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vuitton.android.domain.usecase.account.ResetLoginDetailsUseCase.a(boolean, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }
}
