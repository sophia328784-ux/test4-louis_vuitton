package com.vuitton.android.domain.usecase.forms;

import com.vuitton.core.infrastructure.data.forms.repository.FormRepository;
import javax.inject.Inject;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0019\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/domain/usecase/forms/GetGuestAppointmentFormUseCase;", "", "Lcom/vuitton/android/domain/usecase/forms/BestFormDispatchIdUseCase;", "bestFormDispatchIdUseCase", "Lcom/vuitton/core/infrastructure/data/forms/repository/FormRepository;", "formRepository", "<init>", "(Lcom/vuitton/android/domain/usecase/forms/BestFormDispatchIdUseCase;Lcom/vuitton/core/infrastructure/data/forms/repository/FormRepository;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class GetGuestAppointmentFormUseCase {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final BestFormDispatchIdUseCase f50062a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final FormRepository f50063b;

    @Inject
    public GetGuestAppointmentFormUseCase(BestFormDispatchIdUseCase bestFormDispatchIdUseCase, FormRepository formRepository) {
        bestFormDispatchIdUseCase.getClass();
        formRepository.getClass();
        this.f50062a = bestFormDispatchIdUseCase;
        this.f50063b = formRepository;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x005d, code lost:
    
        if (r6 == r1) goto L24;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object a(com.vuitton.foundation.model.domain.model.dispatch.InAppDispatch r7, kotlin.coroutines.jvm.internal.ContinuationImpl r8) {
        /*
            r6 = this;
            boolean r0 = r8 instanceof com.vuitton.android.domain.usecase.forms.GetGuestAppointmentFormUseCase$run$1
            if (r0 == 0) goto L13
            r0 = r8
            com.vuitton.android.domain.usecase.forms.GetGuestAppointmentFormUseCase$run$1 r0 = (com.vuitton.android.domain.usecase.forms.GetGuestAppointmentFormUseCase$run$1) r0
            int r1 = r0.d
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.d = r1
            goto L18
        L13:
            com.vuitton.android.domain.usecase.forms.GetGuestAppointmentFormUseCase$run$1 r0 = new com.vuitton.android.domain.usecase.forms.GetGuestAppointmentFormUseCase$run$1
            r0.<init>(r6, r8)
        L18:
            java.lang.Object r8 = r0.f50064b
            kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r2 = r0.d
            r3 = 0
            r4 = 2
            r5 = 1
            if (r2 == 0) goto L3d
            if (r2 == r5) goto L35
            if (r2 != r4) goto L2f
            kotlin.ResultKt.b(r8)     // Catch: java.lang.Throwable -> L68
            kotlin.Result r8 = (kotlin.Result) r8     // Catch: java.lang.Throwable -> L68
            java.lang.Object r6 = r8.f71708b     // Catch: java.lang.Throwable -> L68
            goto L60
        L2f:
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.md.k(r6)
            return r3
        L35:
            kotlin.ResultKt.b(r8)
            kotlin.Result r8 = (kotlin.Result) r8
            java.lang.Object r7 = r8.f71708b
            goto L4b
        L3d:
            kotlin.ResultKt.b(r8)
            r0.d = r5
            com.vuitton.android.domain.usecase.forms.BestFormDispatchIdUseCase r8 = r6.f50062a
            java.lang.Object r7 = r8.b(r7, r3, r0)
            if (r7 != r1) goto L4b
            goto L5f
        L4b:
            kotlin.Result$Companion r8 = kotlin.Result.INSTANCE
            boolean r8 = r7 instanceof kotlin.Result.Failure
            if (r8 != 0) goto L70
            com.vuitton.foundation.model.domain.model.forms.FormDispatchId r7 = (com.vuitton.foundation.model.domain.model.forms.FormDispatchId) r7     // Catch: java.lang.Throwable -> L68
            java.lang.String r7 = r7.f67581a     // Catch: java.lang.Throwable -> L68
            com.vuitton.core.infrastructure.data.forms.repository.FormRepository r6 = r6.f50063b     // Catch: java.lang.Throwable -> L68
            r0.d = r4     // Catch: java.lang.Throwable -> L68
            java.lang.Object r6 = r6.k(r7, r0)     // Catch: java.lang.Throwable -> L68
            if (r6 != r1) goto L60
        L5f:
            return r1
        L60:
            kotlin.ResultKt.b(r6)     // Catch: java.lang.Throwable -> L68
            com.vuitton.foundation.model.domain.model.forms.Form r6 = (com.vuitton.foundation.model.domain.model.forms.Form) r6     // Catch: java.lang.Throwable -> L68
            kotlin.Result$Companion r7 = kotlin.Result.INSTANCE     // Catch: java.lang.Throwable -> L68
            return r6
        L68:
            r6 = move-exception
            kotlin.Result$Companion r7 = kotlin.Result.INSTANCE
            kotlin.Result$Failure r7 = new kotlin.Result$Failure
            r7.<init>(r6)
        L70:
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vuitton.android.domain.usecase.forms.GetGuestAppointmentFormUseCase.a(com.vuitton.foundation.model.domain.model.dispatch.InAppDispatch, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }
}
