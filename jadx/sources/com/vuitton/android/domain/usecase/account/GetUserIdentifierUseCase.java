package com.vuitton.android.domain.usecase.account;

import javax.inject.Inject;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0011\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/domain/usecase/account/GetUserIdentifierUseCase;", "", "Lcom/vuitton/android/domain/usecase/account/GetProfileUseCase;", "getProfileUseCase", "<init>", "(Lcom/vuitton/android/domain/usecase/account/GetProfileUseCase;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class GetUserIdentifierUseCase {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final GetProfileUseCase f49046a;

    @Inject
    public GetUserIdentifierUseCase(GetProfileUseCase getProfileUseCase) {
        getProfileUseCase.getClass();
        this.f49046a = getProfileUseCase;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x004f, code lost:
    
        if (r6 == r1) goto L21;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object a(kotlin.coroutines.jvm.internal.ContinuationImpl r7) {
        /*
            r6 = this;
            boolean r0 = r7 instanceof com.vuitton.android.domain.usecase.account.GetUserIdentifierUseCase$run$1
            if (r0 == 0) goto L13
            r0 = r7
            com.vuitton.android.domain.usecase.account.GetUserIdentifierUseCase$run$1 r0 = (com.vuitton.android.domain.usecase.account.GetUserIdentifierUseCase$run$1) r0
            int r1 = r0.d
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.d = r1
            goto L18
        L13:
            com.vuitton.android.domain.usecase.account.GetUserIdentifierUseCase$run$1 r0 = new com.vuitton.android.domain.usecase.account.GetUserIdentifierUseCase$run$1
            r0.<init>(r6, r7)
        L18:
            java.lang.Object r7 = r0.f49047b
            kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r2 = r0.d
            r3 = 0
            r4 = 2
            r5 = 1
            if (r2 == 0) goto L39
            if (r2 == r5) goto L35
            if (r2 != r4) goto L2f
            kotlin.ResultKt.b(r7)
            kotlin.Result r7 = (kotlin.Result) r7
            java.lang.Object r6 = r7.f71708b
            goto L52
        L2f:
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.md.k(r6)
            return r3
        L35:
            kotlin.ResultKt.b(r7)
            goto L47
        L39:
            kotlin.ResultKt.b(r7)
            r0.d = r5
            com.vuitton.android.domain.usecase.account.GetProfileUseCase r6 = r6.f49046a
            java.lang.Object r7 = r6.a(r0)
            if (r7 != r1) goto L47
            goto L51
        L47:
            com.vuitton.foundation.model.domain.model.common.ResultStrategy r7 = (com.vuitton.foundation.model.domain.model.common.ResultStrategy) r7
            r0.d = r4
            java.lang.Object r6 = r7.c(r0)
            if (r6 != r1) goto L52
        L51:
            return r1
        L52:
            kotlin.Result$Companion r7 = kotlin.Result.INSTANCE
            boolean r7 = r6 instanceof kotlin.Result.Failure
            if (r7 != 0) goto L7c
            com.vuitton.foundation.model.domain.model.profile.Profile r6 = (com.vuitton.foundation.model.domain.model.profile.Profile) r6
            com.vuitton.foundation.model.domain.model.profile.Profile$Id r6 = r6.f68164a
            boolean r7 = r6 instanceof com.vuitton.foundation.model.domain.model.profile.Profile.Id.AtgId
            if (r7 == 0) goto L65
            com.vuitton.foundation.model.domain.model.profile.Profile$Id$AtgId r6 = (com.vuitton.foundation.model.domain.model.profile.Profile.Id.AtgId) r6
            java.lang.String r6 = r6.f68175a
            goto L7c
        L65:
            boolean r7 = r6 instanceof com.vuitton.foundation.model.domain.model.profile.Profile.Id.SalesforceId
            if (r7 == 0) goto L6e
            com.vuitton.foundation.model.domain.model.profile.Profile$Id$SalesforceId r6 = (com.vuitton.foundation.model.domain.model.profile.Profile.Id.SalesforceId) r6
            java.lang.String r6 = r6.f68177a
            goto L7c
        L6e:
            com.vuitton.foundation.model.domain.model.profile.Profile$Id$Empty r7 = com.vuitton.foundation.model.domain.model.profile.Profile.Id.Empty.f68176a
            boolean r6 = kotlin.jvm.internal.Intrinsics.c(r6, r7)
            if (r6 == 0) goto L78
            r6 = r3
            goto L7c
        L78:
            defpackage.v40.g()
            return r3
        L7c:
            boolean r7 = r6 instanceof kotlin.Result.Failure
            if (r7 == 0) goto L81
            return r3
        L81:
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vuitton.android.domain.usecase.account.GetUserIdentifierUseCase.a(kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }
}
