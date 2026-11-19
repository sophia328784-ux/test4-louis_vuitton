package com.vuitton.android.domain.usecase.forms;

import com.vuitton.core.infrastructure.data.forms.repository.FormRepository;
import javax.inject.Inject;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0019\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/domain/usecase/forms/GetMainAddressFormUseCase;", "", "Lcom/vuitton/android/domain/usecase/forms/BestFormDispatchIdUseCase;", "bestFormDispatchIdUseCase", "Lcom/vuitton/core/infrastructure/data/forms/repository/FormRepository;", "formRepository", "<init>", "(Lcom/vuitton/android/domain/usecase/forms/BestFormDispatchIdUseCase;Lcom/vuitton/core/infrastructure/data/forms/repository/FormRepository;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class GetMainAddressFormUseCase {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final BestFormDispatchIdUseCase f50066a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final FormRepository f50067b;

    @Inject
    public GetMainAddressFormUseCase(BestFormDispatchIdUseCase bestFormDispatchIdUseCase, FormRepository formRepository) {
        bestFormDispatchIdUseCase.getClass();
        formRepository.getClass();
        this.f50066a = bestFormDispatchIdUseCase;
        this.f50067b = formRepository;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x005d, code lost:
    
        if (r5 == r1) goto L24;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object a(com.vuitton.foundation.model.domain.model.dispatch.InAppDispatch r6, java.lang.String r7, kotlin.coroutines.jvm.internal.ContinuationImpl r8) {
        /*
            r5 = this;
            boolean r0 = r8 instanceof com.vuitton.android.domain.usecase.forms.GetMainAddressFormUseCase$run$1
            if (r0 == 0) goto L13
            r0 = r8
            com.vuitton.android.domain.usecase.forms.GetMainAddressFormUseCase$run$1 r0 = (com.vuitton.android.domain.usecase.forms.GetMainAddressFormUseCase$run$1) r0
            int r1 = r0.d
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.d = r1
            goto L18
        L13:
            com.vuitton.android.domain.usecase.forms.GetMainAddressFormUseCase$run$1 r0 = new com.vuitton.android.domain.usecase.forms.GetMainAddressFormUseCase$run$1
            r0.<init>(r5, r8)
        L18:
            java.lang.Object r8 = r0.f50068b
            kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r2 = r0.d
            r3 = 2
            r4 = 1
            if (r2 == 0) goto L3d
            if (r2 == r4) goto L35
            if (r2 != r3) goto L2e
            kotlin.ResultKt.b(r8)     // Catch: java.lang.Throwable -> L68
            kotlin.Result r8 = (kotlin.Result) r8     // Catch: java.lang.Throwable -> L68
            java.lang.Object r5 = r8.f71708b     // Catch: java.lang.Throwable -> L68
            goto L60
        L2e:
            java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.md.k(r5)
            r5 = 0
            return r5
        L35:
            kotlin.ResultKt.b(r8)
            kotlin.Result r8 = (kotlin.Result) r8
            java.lang.Object r6 = r8.f71708b
            goto L4b
        L3d:
            kotlin.ResultKt.b(r8)
            r0.d = r4
            com.vuitton.android.domain.usecase.forms.BestFormDispatchIdUseCase r8 = r5.f50066a
            java.lang.Object r6 = r8.b(r6, r7, r0)
            if (r6 != r1) goto L4b
            goto L5f
        L4b:
            kotlin.Result$Companion r7 = kotlin.Result.INSTANCE
            boolean r7 = r6 instanceof kotlin.Result.Failure
            if (r7 != 0) goto L70
            com.vuitton.foundation.model.domain.model.forms.FormDispatchId r6 = (com.vuitton.foundation.model.domain.model.forms.FormDispatchId) r6     // Catch: java.lang.Throwable -> L68
            java.lang.String r6 = r6.f67581a     // Catch: java.lang.Throwable -> L68
            com.vuitton.core.infrastructure.data.forms.repository.FormRepository r5 = r5.f50067b     // Catch: java.lang.Throwable -> L68
            r0.d = r3     // Catch: java.lang.Throwable -> L68
            java.lang.Object r5 = r5.c(r6, r0)     // Catch: java.lang.Throwable -> L68
            if (r5 != r1) goto L60
        L5f:
            return r1
        L60:
            kotlin.ResultKt.b(r5)     // Catch: java.lang.Throwable -> L68
            com.vuitton.foundation.model.domain.model.forms.Form r5 = (com.vuitton.foundation.model.domain.model.forms.Form) r5     // Catch: java.lang.Throwable -> L68
            kotlin.Result$Companion r6 = kotlin.Result.INSTANCE     // Catch: java.lang.Throwable -> L68
            return r5
        L68:
            r5 = move-exception
            kotlin.Result$Companion r6 = kotlin.Result.INSTANCE
            kotlin.Result$Failure r6 = new kotlin.Result$Failure
            r6.<init>(r5)
        L70:
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vuitton.android.domain.usecase.forms.GetMainAddressFormUseCase.a(com.vuitton.foundation.model.domain.model.dispatch.InAppDispatch, java.lang.String, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }
}
