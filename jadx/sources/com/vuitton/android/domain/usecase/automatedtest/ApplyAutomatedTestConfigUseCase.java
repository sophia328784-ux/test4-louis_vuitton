package com.vuitton.android.domain.usecase.automatedtest;

import com.vuitton.android.domain.repository.InAppDispatchRepository;
import com.vuitton.android.domain.usecase.environments.UpdateEnvironmentUseCase;
import javax.inject.Inject;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B!\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lcom/vuitton/android/domain/usecase/automatedtest/ApplyAutomatedTestConfigUseCase;", "", "Lcom/vuitton/android/domain/usecase/automatedtest/SaveSecurityCookieUseCase;", "saveSecurityCookieUseCase", "Lcom/vuitton/android/domain/usecase/environments/UpdateEnvironmentUseCase;", "updateEnvironmentUseCase", "Lcom/vuitton/android/domain/repository/InAppDispatchRepository;", "inAppDispatchRepository", "<init>", "(Lcom/vuitton/android/domain/usecase/automatedtest/SaveSecurityCookieUseCase;Lcom/vuitton/android/domain/usecase/environments/UpdateEnvironmentUseCase;Lcom/vuitton/android/domain/repository/InAppDispatchRepository;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class ApplyAutomatedTestConfigUseCase {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final SaveSecurityCookieUseCase f49427a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final UpdateEnvironmentUseCase f49428b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final InAppDispatchRepository f49429c;

    @Inject
    public ApplyAutomatedTestConfigUseCase(SaveSecurityCookieUseCase saveSecurityCookieUseCase, UpdateEnvironmentUseCase updateEnvironmentUseCase, InAppDispatchRepository inAppDispatchRepository) {
        saveSecurityCookieUseCase.getClass();
        updateEnvironmentUseCase.getClass();
        inAppDispatchRepository.getClass();
        this.f49427a = saveSecurityCookieUseCase;
        this.f49428b = updateEnvironmentUseCase;
        this.f49429c = inAppDispatchRepository;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x0086, code lost:
    
        if (r7.f49429c.a(r8, r0) == r1) goto L30;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object a(java.lang.String r8, com.vuitton.foundation.model.domain.model.environment.Environment r9, java.lang.String r10, kotlin.coroutines.jvm.internal.ContinuationImpl r11) {
        /*
            r7 = this;
            boolean r0 = r11 instanceof com.vuitton.android.domain.usecase.automatedtest.ApplyAutomatedTestConfigUseCase$run$1
            if (r0 == 0) goto L13
            r0 = r11
            com.vuitton.android.domain.usecase.automatedtest.ApplyAutomatedTestConfigUseCase$run$1 r0 = (com.vuitton.android.domain.usecase.automatedtest.ApplyAutomatedTestConfigUseCase$run$1) r0
            int r1 = r0.f49433f
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f49433f = r1
            goto L18
        L13:
            com.vuitton.android.domain.usecase.automatedtest.ApplyAutomatedTestConfigUseCase$run$1 r0 = new com.vuitton.android.domain.usecase.automatedtest.ApplyAutomatedTestConfigUseCase$run$1
            r0.<init>(r7, r11)
        L18:
            java.lang.Object r11 = r0.d
            kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r2 = r0.f49433f
            r3 = 3
            r4 = 2
            r5 = 1
            r6 = 0
            if (r2 == 0) goto L4c
            if (r2 == r5) goto L3f
            if (r2 == r4) goto L39
            if (r2 != r3) goto L33
            kotlin.ResultKt.b(r11)
            kotlin.Result r11 = (kotlin.Result) r11
            r11.getClass()
            goto L89
        L33:
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.md.k(r7)
            return r6
        L39:
            java.lang.String r8 = r0.f49431c
            kotlin.ResultKt.b(r11)
            goto L7a
        L3f:
            java.lang.String r10 = r0.f49431c
            com.vuitton.foundation.model.domain.model.environment.Environment r9 = r0.f49430b
            kotlin.ResultKt.b(r11)
            kotlin.Result r11 = (kotlin.Result) r11
            r11.getClass()
            goto L5e
        L4c:
            kotlin.ResultKt.b(r11)
            r0.f49430b = r9
            r0.f49431c = r10
            r0.f49433f = r5
            com.vuitton.android.domain.usecase.automatedtest.SaveSecurityCookieUseCase r11 = r7.f49427a
            java.lang.Object r8 = r11.a(r8, r0)
            if (r8 != r1) goto L5e
            goto L88
        L5e:
            r0.f49430b = r6
            r0.f49431c = r10
            r0.f49433f = r4
            com.vuitton.android.domain.usecase.environments.UpdateEnvironmentUseCase r8 = r7.f49428b
            com.vuitton.android.domain.repository.UserPreferencesRepository r11 = r8.f49995b
            r11.h(r9)
            com.vuitton.android.domain.usecase.app.ResetAppDataUseCase r8 = r8.f49994a
            java.lang.Object r8 = r8.a(r5, r0)
            if (r8 != r1) goto L74
            goto L76
        L74:
            kotlin.Unit r8 = kotlin.Unit.f71739a
        L76:
            if (r8 != r1) goto L79
            goto L88
        L79:
            r8 = r10
        L7a:
            r0.f49430b = r6
            r0.f49431c = r6
            r0.f49433f = r3
            com.vuitton.android.domain.repository.InAppDispatchRepository r7 = r7.f49429c
            java.lang.Object r7 = r7.a(r8, r0)
            if (r7 != r1) goto L89
        L88:
            return r1
        L89:
            kotlin.Unit r7 = kotlin.Unit.f71739a
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vuitton.android.domain.usecase.automatedtest.ApplyAutomatedTestConfigUseCase.a(java.lang.String, com.vuitton.foundation.model.domain.model.environment.Environment, java.lang.String, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }
}
