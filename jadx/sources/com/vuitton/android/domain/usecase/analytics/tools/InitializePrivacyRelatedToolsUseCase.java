package com.vuitton.android.domain.usecase.analytics.tools;

import javax.inject.Inject;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B!\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lcom/vuitton/android/domain/usecase/analytics/tools/InitializePrivacyRelatedToolsUseCase;", "", "Lcom/vuitton/android/domain/usecase/analytics/tools/InitializeDynatraceUseCase;", "initializeDynatraceUseCase", "Lcom/vuitton/android/domain/usecase/analytics/tools/InitializeTingyunUseCase;", "initializeTingyunUseCase", "Lcom/vuitton/android/domain/usecase/analytics/tools/InitializeNotificationsManagerUseCase;", "initializeNotificationsManagerUseCase", "<init>", "(Lcom/vuitton/android/domain/usecase/analytics/tools/InitializeDynatraceUseCase;Lcom/vuitton/android/domain/usecase/analytics/tools/InitializeTingyunUseCase;Lcom/vuitton/android/domain/usecase/analytics/tools/InitializeNotificationsManagerUseCase;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class InitializePrivacyRelatedToolsUseCase {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final InitializeDynatraceUseCase f49208a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final InitializeTingyunUseCase f49209b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final InitializeNotificationsManagerUseCase f49210c;

    @Inject
    public InitializePrivacyRelatedToolsUseCase(InitializeDynatraceUseCase initializeDynatraceUseCase, InitializeTingyunUseCase initializeTingyunUseCase, InitializeNotificationsManagerUseCase initializeNotificationsManagerUseCase) {
        initializeDynatraceUseCase.getClass();
        initializeTingyunUseCase.getClass();
        initializeNotificationsManagerUseCase.getClass();
        this.f49208a = initializeDynatraceUseCase;
        this.f49209b = initializeTingyunUseCase;
        this.f49210c = initializeNotificationsManagerUseCase;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x005d, code lost:
    
        if (r6.f49210c.a(r0) == r1) goto L26;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object a(kotlin.coroutines.jvm.internal.ContinuationImpl r7) {
        /*
            r6 = this;
            boolean r0 = r7 instanceof com.vuitton.android.domain.usecase.analytics.tools.InitializePrivacyRelatedToolsUseCase$run$1
            if (r0 == 0) goto L13
            r0 = r7
            com.vuitton.android.domain.usecase.analytics.tools.InitializePrivacyRelatedToolsUseCase$run$1 r0 = (com.vuitton.android.domain.usecase.analytics.tools.InitializePrivacyRelatedToolsUseCase$run$1) r0
            int r1 = r0.d
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.d = r1
            goto L18
        L13:
            com.vuitton.android.domain.usecase.analytics.tools.InitializePrivacyRelatedToolsUseCase$run$1 r0 = new com.vuitton.android.domain.usecase.analytics.tools.InitializePrivacyRelatedToolsUseCase$run$1
            r0.<init>(r6, r7)
        L18:
            java.lang.Object r7 = r0.f49211b
            kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r2 = r0.d
            r3 = 3
            r4 = 2
            r5 = 1
            if (r2 == 0) goto L3c
            if (r2 == r5) goto L38
            if (r2 == r4) goto L34
            if (r2 != r3) goto L2d
            kotlin.ResultKt.b(r7)
            goto L60
        L2d:
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.md.k(r6)
            r6 = 0
            return r6
        L34:
            kotlin.ResultKt.b(r7)
            goto L55
        L38:
            kotlin.ResultKt.b(r7)
            goto L4a
        L3c:
            kotlin.ResultKt.b(r7)
            r0.d = r5
            com.vuitton.android.domain.usecase.analytics.tools.InitializeTingyunUseCase r7 = r6.f49209b
            java.lang.Object r7 = r7.a(r0)
            if (r7 != r1) goto L4a
            goto L5f
        L4a:
            r0.d = r4
            com.vuitton.android.domain.usecase.analytics.tools.InitializeDynatraceUseCase r7 = r6.f49208a
            java.lang.Object r7 = r7.a(r0)
            if (r7 != r1) goto L55
            goto L5f
        L55:
            r0.d = r3
            com.vuitton.android.domain.usecase.analytics.tools.InitializeNotificationsManagerUseCase r6 = r6.f49210c
            java.lang.Object r6 = r6.a(r0)
            if (r6 != r1) goto L60
        L5f:
            return r1
        L60:
            kotlin.Unit r6 = kotlin.Unit.f71739a
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vuitton.android.domain.usecase.analytics.tools.InitializePrivacyRelatedToolsUseCase.a(kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }
}
