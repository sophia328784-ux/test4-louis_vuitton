package com.vuitton.android.domain.usecase.avatar;

import com.vuitton.android.domain.repository.AvatarRepository;
import com.vuitton.android.domain.usecase.account.GetUserIdentifierUseCase;
import javax.inject.Inject;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0019\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/domain/usecase/avatar/GetUserAvatarUseCase;", "", "Lcom/vuitton/android/domain/repository/AvatarRepository;", "avatarRepository", "Lcom/vuitton/android/domain/usecase/account/GetUserIdentifierUseCase;", "getUserIdentifierUseCase", "<init>", "(Lcom/vuitton/android/domain/repository/AvatarRepository;Lcom/vuitton/android/domain/usecase/account/GetUserIdentifierUseCase;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class GetUserAvatarUseCase {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final AvatarRepository f49445a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final GetUserIdentifierUseCase f49446b;

    @Inject
    public GetUserAvatarUseCase(AvatarRepository avatarRepository, GetUserIdentifierUseCase getUserIdentifierUseCase) {
        avatarRepository.getClass();
        getUserIdentifierUseCase.getClass();
        this.f49445a = avatarRepository;
        this.f49446b = getUserIdentifierUseCase;
    }

    /* JADX WARN: Code duplicated, block: B:28:0x0077  */
    /* JADX WARN: Code duplicated, block: B:31:0x008e  */
    /* JADX WARN: Code duplicated, block: B:34:0x0096  */
    /* JADX WARN: Code duplicated, block: B:36:0x009b  */
    /* JADX WARN: Code duplicated, block: B:47:0x00be  */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x00a7, code lost:
    
        if (r10 == r1) goto L38;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object a(kotlin.coroutines.jvm.internal.ContinuationImpl r10) {
        /*
            r9 = this;
            boolean r0 = r10 instanceof com.vuitton.android.domain.usecase.avatar.GetUserAvatarUseCase$run$1
            if (r0 == 0) goto L13
            r0 = r10
            com.vuitton.android.domain.usecase.avatar.GetUserAvatarUseCase$run$1 r0 = (com.vuitton.android.domain.usecase.avatar.GetUserAvatarUseCase$run$1) r0
            int r1 = r0.g
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.g = r1
            goto L18
        L13:
            com.vuitton.android.domain.usecase.avatar.GetUserAvatarUseCase$run$1 r0 = new com.vuitton.android.domain.usecase.avatar.GetUserAvatarUseCase$run$1
            r0.<init>(r9, r10)
        L18:
            java.lang.Object r10 = r0.f49449e
            kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r2 = r0.g
            com.vuitton.android.domain.repository.AvatarRepository r3 = r9.f49445a
            r4 = 4
            r5 = 3
            r6 = 2
            r7 = 1
            if (r2 == 0) goto L5a
            if (r2 == r7) goto L56
            if (r2 == r6) goto L4e
            if (r2 == r5) goto L40
            if (r2 != r4) goto L39
            com.vuitton.foundation.model.domain.model.avatar.AvatarResponse r9 = r0.f49447b
            kotlin.ResultKt.b(r10)
            kotlin.Result r10 = (kotlin.Result) r10
            java.lang.Object r10 = r10.f71708b
            goto Laa
        L39:
            java.lang.String r9 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.md.k(r9)
            r9 = 0
            return r9
        L40:
            int r9 = r0.d
            int r2 = r0.f49448c
            com.vuitton.foundation.model.domain.model.avatar.AvatarResponse r5 = r0.f49447b
            kotlin.ResultKt.b(r10)
            r8 = r2
            r2 = r9
            r9 = r5
            r5 = r8
            goto L92
        L4e:
            kotlin.ResultKt.b(r10)
            kotlin.Result r10 = (kotlin.Result) r10
            java.lang.Object r10 = r10.f71708b
            goto L71
        L56:
            kotlin.ResultKt.b(r10)
            goto L66
        L5a:
            kotlin.ResultKt.b(r10)
            r0.g = r7
            com.vuitton.foundation.model.domain.model.common.ResultStrategyLazy r10 = r3.a()
            if (r10 != r1) goto L66
            goto La9
        L66:
            com.vuitton.foundation.model.domain.model.common.ResultStrategy r10 = (com.vuitton.foundation.model.domain.model.common.ResultStrategy) r10
            r0.g = r6
            java.lang.Object r10 = r10.c(r0)
            if (r10 != r1) goto L71
            goto La9
        L71:
            java.lang.Throwable r2 = kotlin.Result.a(r10)
            if (r2 != 0) goto Lbe
            kotlin.ResultKt.b(r10)
            com.vuitton.foundation.model.domain.model.avatar.AvatarResponse r10 = (com.vuitton.foundation.model.domain.model.avatar.AvatarResponse) r10
            r0.f49447b = r10
            r2 = 0
            r0.f49448c = r2
            r0.d = r2
            r0.g = r5
            com.vuitton.android.domain.usecase.account.GetUserIdentifierUseCase r9 = r9.f49446b
            java.lang.Object r9 = r9.a(r0)
            if (r9 != r1) goto L8e
            goto La9
        L8e:
            r5 = r10
            r10 = r9
            r9 = r5
            r5 = r2
        L92:
            java.lang.String r10 = (java.lang.String) r10
            if (r10 != 0) goto L9b
            kotlin.Result$Companion r10 = kotlin.Result.INSTANCE
            com.vuitton.foundation.model.domain.model.avatar.AvatarItem r9 = r9.f66668b
            return r9
        L9b:
            r0.f49447b = r9
            r0.f49448c = r5
            r0.d = r2
            r0.g = r4
            java.lang.Object r10 = r3.c(r10, r0)
            if (r10 != r1) goto Laa
        La9:
            return r1
        Laa:
            java.lang.Throwable r0 = kotlin.Result.a(r10)
            if (r0 != 0) goto Lb1
            goto Lbd
        Lb1:
            com.vuitton.foundation.model.domain.model.avatar.AvatarItem r9 = r9.f66668b     // Catch: java.lang.Throwable -> Lb5
            r10 = r9
            goto Lbd
        Lb5:
            r9 = move-exception
            kotlin.Result$Companion r10 = kotlin.Result.INSTANCE
            kotlin.Result$Failure r10 = new kotlin.Result$Failure
            r10.<init>(r9)
        Lbd:
            return r10
        Lbe:
            kotlin.Result$Failure r9 = new kotlin.Result$Failure
            r9.<init>(r2)
            return r9
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vuitton.android.domain.usecase.avatar.GetUserAvatarUseCase.a(kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }
}
