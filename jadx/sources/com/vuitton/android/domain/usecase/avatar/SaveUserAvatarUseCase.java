package com.vuitton.android.domain.usecase.avatar;

import com.vuitton.android.domain.repository.AvatarRepository;
import com.vuitton.android.domain.usecase.account.GetUserIdentifierUseCase;
import javax.inject.Inject;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0019\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/domain/usecase/avatar/SaveUserAvatarUseCase;", "", "Lcom/vuitton/android/domain/repository/AvatarRepository;", "avatarRepository", "Lcom/vuitton/android/domain/usecase/account/GetUserIdentifierUseCase;", "getUserIdentifierUseCase", "<init>", "(Lcom/vuitton/android/domain/repository/AvatarRepository;Lcom/vuitton/android/domain/usecase/account/GetUserIdentifierUseCase;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class SaveUserAvatarUseCase {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final AvatarRepository f49454a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final GetUserIdentifierUseCase f49455b;

    @Inject
    public SaveUserAvatarUseCase(AvatarRepository avatarRepository, GetUserIdentifierUseCase getUserIdentifierUseCase) {
        avatarRepository.getClass();
        getUserIdentifierUseCase.getClass();
        this.f49454a = avatarRepository;
        this.f49455b = getUserIdentifierUseCase;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0076, code lost:
    
        if (r8.b(r10, r9, r0) == r1) goto L28;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object a(java.lang.String r9, kotlin.coroutines.jvm.internal.ContinuationImpl r10) {
        /*
            r8 = this;
            boolean r0 = r10 instanceof com.vuitton.android.domain.usecase.avatar.SaveUserAvatarUseCase$run$1
            if (r0 == 0) goto L13
            r0 = r10
            com.vuitton.android.domain.usecase.avatar.SaveUserAvatarUseCase$run$1 r0 = (com.vuitton.android.domain.usecase.avatar.SaveUserAvatarUseCase$run$1) r0
            int r1 = r0.f49460h
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f49460h = r1
            goto L18
        L13:
            com.vuitton.android.domain.usecase.avatar.SaveUserAvatarUseCase$run$1 r0 = new com.vuitton.android.domain.usecase.avatar.SaveUserAvatarUseCase$run$1
            r0.<init>(r8, r10)
        L18:
            java.lang.Object r10 = r0.f49459f
            kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r2 = r0.f49460h
            r3 = 0
            r4 = 2
            r5 = 1
            if (r2 == 0) goto L47
            if (r2 == r5) goto L36
            if (r2 != r4) goto L30
            kotlin.ResultKt.b(r10)     // Catch: java.lang.Throwable -> L89
            kotlin.Result r10 = (kotlin.Result) r10     // Catch: java.lang.Throwable -> L89
            r10.getClass()     // Catch: java.lang.Throwable -> L89
            goto L79
        L30:
            java.lang.String r8 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.md.k(r8)
            return r3
        L36:
            int r9 = r0.f49458e
            int r2 = r0.d
            int r5 = r0.f49457c
            java.lang.String r6 = r0.f49456b
            kotlin.ResultKt.b(r10)     // Catch: java.lang.Throwable -> L89
            r7 = r2
            r2 = r9
            r9 = r6
            r6 = r5
            r5 = r7
            goto L62
        L47:
            kotlin.ResultKt.b(r10)
            kotlin.Result$Companion r10 = kotlin.Result.INSTANCE     // Catch: java.lang.Throwable -> L89
            com.vuitton.android.domain.usecase.account.GetUserIdentifierUseCase r10 = r8.f49455b     // Catch: java.lang.Throwable -> L89
            r0.f49456b = r9     // Catch: java.lang.Throwable -> L89
            r2 = 0
            r0.f49457c = r2     // Catch: java.lang.Throwable -> L89
            r0.d = r2     // Catch: java.lang.Throwable -> L89
            r0.f49458e = r2     // Catch: java.lang.Throwable -> L89
            r0.f49460h = r5     // Catch: java.lang.Throwable -> L89
            java.lang.Object r10 = r10.a(r0)     // Catch: java.lang.Throwable -> L89
            if (r10 != r1) goto L60
            goto L78
        L60:
            r5 = r2
            r6 = r5
        L62:
            java.lang.String r10 = (java.lang.String) r10     // Catch: java.lang.Throwable -> L89
            if (r10 == 0) goto L81
            com.vuitton.android.domain.repository.AvatarRepository r8 = r8.f49454a     // Catch: java.lang.Throwable -> L89
            r0.f49456b = r3     // Catch: java.lang.Throwable -> L89
            r0.f49457c = r6     // Catch: java.lang.Throwable -> L89
            r0.d = r5     // Catch: java.lang.Throwable -> L89
            r0.f49458e = r2     // Catch: java.lang.Throwable -> L89
            r0.f49460h = r4     // Catch: java.lang.Throwable -> L89
            java.lang.Object r8 = r8.b(r10, r9, r0)     // Catch: java.lang.Throwable -> L89
            if (r8 != r1) goto L79
        L78:
            return r1
        L79:
            kotlin.Unit r8 = kotlin.Unit.f71739a     // Catch: java.lang.Throwable -> L89
            kotlin.Result r9 = new kotlin.Result     // Catch: java.lang.Throwable -> L89
            r9.<init>(r8)     // Catch: java.lang.Throwable -> L89
            goto L91
        L81:
            java.lang.IllegalStateException r8 = new java.lang.IllegalStateException     // Catch: java.lang.Throwable -> L89
            java.lang.String r9 = "User must be logged in to save avatar"
            r8.<init>(r9)     // Catch: java.lang.Throwable -> L89
            throw r8     // Catch: java.lang.Throwable -> L89
        L89:
            r8 = move-exception
            kotlin.Result$Companion r9 = kotlin.Result.INSTANCE
            kotlin.Result$Failure r9 = new kotlin.Result$Failure
            r9.<init>(r8)
        L91:
            java.lang.Throwable r8 = kotlin.Result.a(r9)
            if (r8 != 0) goto L98
            goto La7
        L98:
            boolean r9 = r8 instanceof java.util.concurrent.CancellationException
            if (r9 != 0) goto Lac
            kotlin.Result$Failure r9 = new kotlin.Result$Failure
            r9.<init>(r8)
            kotlin.Result r8 = new kotlin.Result
            r8.<init>(r9)
            r9 = r8
        La7:
            kotlin.Result r9 = (kotlin.Result) r9
            java.lang.Object r8 = r9.f71708b
            return r8
        Lac:
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vuitton.android.domain.usecase.avatar.SaveUserAvatarUseCase.a(java.lang.String, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }
}
