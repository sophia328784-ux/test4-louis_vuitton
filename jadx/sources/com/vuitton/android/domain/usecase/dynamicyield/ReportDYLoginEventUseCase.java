package com.vuitton.android.domain.usecase.dynamicyield;

import com.vuitton.android.domain.repository.DynamicYieldRepository;
import com.vuitton.android.domain.usecase.account.GetProfileUseCase;
import com.vuitton.foundation.logger.Logger;
import javax.inject.Inject;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B!\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lcom/vuitton/android/domain/usecase/dynamicyield/ReportDYLoginEventUseCase;", "", "Lcom/vuitton/foundation/logger/Logger;", "logger", "Lcom/vuitton/android/domain/usecase/account/GetProfileUseCase;", "getProfileUseCase", "Lcom/vuitton/android/domain/repository/DynamicYieldRepository;", "dynamicYieldRepository", "<init>", "(Lcom/vuitton/foundation/logger/Logger;Lcom/vuitton/android/domain/usecase/account/GetProfileUseCase;Lcom/vuitton/android/domain/repository/DynamicYieldRepository;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class ReportDYLoginEventUseCase {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Logger f49964a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final GetProfileUseCase f49965b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final DynamicYieldRepository f49966c;

    @Inject
    public ReportDYLoginEventUseCase(Logger logger, GetProfileUseCase getProfileUseCase, DynamicYieldRepository dynamicYieldRepository) {
        logger.getClass();
        getProfileUseCase.getClass();
        dynamicYieldRepository.getClass();
        this.f49964a = logger;
        this.f49965b = getProfileUseCase;
        this.f49966c = dynamicYieldRepository;
    }

    /* JADX WARN: Code duplicated, block: B:27:0x0064  */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x0081, code lost:
    
        if (r8 == r1) goto L36;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object a(kotlin.coroutines.jvm.internal.ContinuationImpl r8) throws java.security.NoSuchAlgorithmException {
        /*
            r7 = this;
            boolean r0 = r8 instanceof com.vuitton.android.domain.usecase.dynamicyield.ReportDYLoginEventUseCase$run$1
            if (r0 == 0) goto L13
            r0 = r8
            com.vuitton.android.domain.usecase.dynamicyield.ReportDYLoginEventUseCase$run$1 r0 = (com.vuitton.android.domain.usecase.dynamicyield.ReportDYLoginEventUseCase$run$1) r0
            int r1 = r0.d
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.d = r1
            goto L18
        L13:
            com.vuitton.android.domain.usecase.dynamicyield.ReportDYLoginEventUseCase$run$1 r0 = new com.vuitton.android.domain.usecase.dynamicyield.ReportDYLoginEventUseCase$run$1
            r0.<init>(r7, r8)
        L18:
            java.lang.Object r8 = r0.f49967b
            kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r2 = r0.d
            r3 = 0
            r4 = 3
            r5 = 2
            r6 = 1
            if (r2 == 0) goto L44
            if (r2 == r6) goto L40
            if (r2 == r5) goto L38
            if (r2 != r4) goto L32
            kotlin.ResultKt.b(r8)
            kotlin.Result r8 = (kotlin.Result) r8
            java.lang.Object r8 = r8.f71708b
            goto L84
        L32:
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.md.k(r7)
            return r3
        L38:
            kotlin.ResultKt.b(r8)
            kotlin.Result r8 = (kotlin.Result) r8
            java.lang.Object r8 = r8.f71708b
            goto L5d
        L40:
            kotlin.ResultKt.b(r8)
            goto L52
        L44:
            kotlin.ResultKt.b(r8)
            r0.d = r6
            com.vuitton.android.domain.usecase.account.GetProfileUseCase r8 = r7.f49965b
            java.lang.Object r8 = r8.a(r0)
            if (r8 != r1) goto L52
            goto L83
        L52:
            com.vuitton.foundation.model.domain.model.common.ResultStrategy r8 = (com.vuitton.foundation.model.domain.model.common.ResultStrategy) r8
            r0.d = r5
            java.lang.Object r8 = r8.c(r0)
            if (r8 != r1) goto L5d
            goto L83
        L5d:
            kotlin.Result$Companion r2 = kotlin.Result.INSTANCE
            boolean r2 = r8 instanceof kotlin.Result.Failure
            if (r2 == 0) goto L64
            goto L65
        L64:
            r3 = r8
        L65:
            com.vuitton.foundation.model.domain.model.profile.Profile r3 = (com.vuitton.foundation.model.domain.model.profile.Profile) r3
            if (r3 == 0) goto L92
            com.vuitton.foundation.model.domain.model.profile.Profile$Id r8 = r3.f68164a
            if (r8 == 0) goto L92
            java.lang.String r8 = r8.getF68177a()
            if (r8 == 0) goto L92
            java.lang.String r8 = com.vuitton.foundation.util.StringKtExtKt.g(r8)
            com.vuitton.foundation.model.domain.model.dynamicyield.DYUserEventType r2 = com.vuitton.foundation.model.domain.model.dynamicyield.DYUserEventType.LOGIN
            r0.d = r4
            com.vuitton.android.domain.repository.DynamicYieldRepository r3 = r7.f49966c
            java.lang.Object r8 = r3.b(r2, r8, r0)
            if (r8 != r1) goto L84
        L83:
            return r1
        L84:
            java.lang.Throwable r8 = kotlin.Result.a(r8)
            if (r8 == 0) goto L92
            r8.getMessage()
            com.vuitton.foundation.logger.Logger r7 = r7.f49964a
            r7.getClass()
        L92:
            kotlin.Unit r7 = kotlin.Unit.f71739a
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vuitton.android.domain.usecase.dynamicyield.ReportDYLoginEventUseCase.a(kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }
}
