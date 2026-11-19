package com.vuitton.android.domain.usecase.authentication;

import com.vuitton.android.domain.repository.ATGSessionRepository;
import com.vuitton.android.domain.repository.SalesforceAuthRepository;
import javax.inject.Inject;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0019\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/domain/usecase/authentication/FinaliseSalesforceAuthenticationUseCase;", "", "Lcom/vuitton/android/domain/repository/ATGSessionRepository;", "atgSessionRepository", "Lcom/vuitton/android/domain/repository/SalesforceAuthRepository;", "salesforceAuthRepository", "<init>", "(Lcom/vuitton/android/domain/repository/ATGSessionRepository;Lcom/vuitton/android/domain/repository/SalesforceAuthRepository;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class FinaliseSalesforceAuthenticationUseCase {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ATGSessionRepository f49342a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final SalesforceAuthRepository f49343b;

    @Inject
    public FinaliseSalesforceAuthenticationUseCase(ATGSessionRepository aTGSessionRepository, SalesforceAuthRepository salesforceAuthRepository) {
        aTGSessionRepository.getClass();
        salesforceAuthRepository.getClass();
        this.f49342a = aTGSessionRepository;
        this.f49343b = salesforceAuthRepository;
    }

    /* JADX WARN: Code duplicated, block: B:30:0x0082 A[Catch: all -> 0x009d, TRY_ENTER, TryCatch #0 {all -> 0x009d, blocks: (B:13:0x002c, B:33:0x0095, B:30:0x0082), top: B:41:0x0024 }] */
    /* JADX WARN: Code duplicated, block: B:38:0x00a7 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x0092, code lost:
    
        if (r9 == r1) goto L32;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object a(com.vuitton.foundation.model.domain.model.authentication.AuthToken.Atg r10, kotlin.coroutines.jvm.internal.ContinuationImpl r11) {
        /*
            r9 = this;
            boolean r0 = r11 instanceof com.vuitton.android.domain.usecase.authentication.FinaliseSalesforceAuthenticationUseCase$run$1
            if (r0 == 0) goto L13
            r0 = r11
            com.vuitton.android.domain.usecase.authentication.FinaliseSalesforceAuthenticationUseCase$run$1 r0 = (com.vuitton.android.domain.usecase.authentication.FinaliseSalesforceAuthenticationUseCase$run$1) r0
            int r1 = r0.g
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.g = r1
            goto L18
        L13:
            com.vuitton.android.domain.usecase.authentication.FinaliseSalesforceAuthenticationUseCase$run$1 r0 = new com.vuitton.android.domain.usecase.authentication.FinaliseSalesforceAuthenticationUseCase$run$1
            r0.<init>(r9, r11)
        L18:
            java.lang.Object r11 = r0.f49346e
            kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r2 = r0.g
            com.vuitton.android.domain.repository.ATGSessionRepository r3 = r9.f49342a
            r4 = 3
            r5 = 2
            r6 = 1
            r7 = 0
            if (r2 == 0) goto L52
            if (r2 == r6) goto L46
            if (r2 == r5) goto L3a
            if (r2 != r4) goto L34
            kotlin.ResultKt.b(r11)     // Catch: java.lang.Throwable -> L9d
            kotlin.Result r11 = (kotlin.Result) r11     // Catch: java.lang.Throwable -> L9d
            java.lang.Object r9 = r11.f71708b     // Catch: java.lang.Throwable -> L9d
            goto L95
        L34:
            java.lang.String r9 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.md.k(r9)
            return r7
        L3a:
            int r10 = r0.d
            com.vuitton.foundation.model.domain.model.authentication.AuthToken$Atg r2 = r0.f49344b
            kotlin.ResultKt.b(r11)
            kotlin.Result r11 = (kotlin.Result) r11
            java.lang.Object r11 = r11.f71708b
            goto L7c
        L46:
            int r10 = r0.d
            java.lang.String r2 = r0.f49345c
            com.vuitton.foundation.model.domain.model.authentication.AuthToken$Atg r6 = r0.f49344b
            kotlin.ResultKt.b(r11)
            r11 = r10
            r10 = r6
            goto L69
        L52:
            kotlin.ResultKt.b(r11)
            java.lang.String r2 = r10.f66589b
            if (r2 == 0) goto La8
            r0.f49344b = r10
            r0.f49345c = r2
            r11 = 0
            r0.d = r11
            r0.g = r6
            kotlin.Unit r6 = r3.c()
            if (r6 != r1) goto L69
            goto L94
        L69:
            r0.f49344b = r10
            r0.f49345c = r7
            r0.d = r11
            r0.g = r5
            java.lang.Object r2 = r3.b(r2, r0)
            if (r2 != r1) goto L78
            goto L94
        L78:
            r8 = r2
            r2 = r10
            r10 = r11
            r11 = r8
        L7c:
            kotlin.Result$Companion r3 = kotlin.Result.INSTANCE
            boolean r3 = r11 instanceof kotlin.Result.Failure
            if (r3 != 0) goto La7
            kotlin.Unit r11 = (kotlin.Unit) r11     // Catch: java.lang.Throwable -> L9d
            com.vuitton.android.domain.repository.SalesforceAuthRepository r9 = r9.f49343b     // Catch: java.lang.Throwable -> L9d
            r0.f49344b = r7     // Catch: java.lang.Throwable -> L9d
            r0.f49345c = r7     // Catch: java.lang.Throwable -> L9d
            r0.d = r10     // Catch: java.lang.Throwable -> L9d
            r0.g = r4     // Catch: java.lang.Throwable -> L9d
            java.lang.Object r9 = r9.d(r2, r0)     // Catch: java.lang.Throwable -> L9d
            if (r9 != r1) goto L95
        L94:
            return r1
        L95:
            kotlin.ResultKt.b(r9)     // Catch: java.lang.Throwable -> L9d
            kotlin.Unit r9 = kotlin.Unit.f71739a     // Catch: java.lang.Throwable -> L9d
            kotlin.Result$Companion r10 = kotlin.Result.INSTANCE     // Catch: java.lang.Throwable -> L9d
            goto La6
        L9d:
            r9 = move-exception
            kotlin.Result$Companion r10 = kotlin.Result.INSTANCE
            kotlin.Result$Failure r10 = new kotlin.Result$Failure
            r10.<init>(r9)
            r9 = r10
        La6:
            return r9
        La7:
            return r11
        La8:
            kotlin.Result$Companion r9 = kotlin.Result.INSTANCE
            java.lang.IllegalArgumentException r9 = new java.lang.IllegalArgumentException
            java.lang.String r10 = "Empty access token"
            r9.<init>(r10)
            kotlin.Result$Failure r10 = new kotlin.Result$Failure
            r10.<init>(r9)
            return r10
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vuitton.android.domain.usecase.authentication.FinaliseSalesforceAuthenticationUseCase.a(com.vuitton.foundation.model.domain.model.authentication.AuthToken$Atg, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }
}
