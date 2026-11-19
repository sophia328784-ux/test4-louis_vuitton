package com.vuitton.android.domain.usecase.forms;

import com.vuitton.core.infrastructure.data.forms.repository.FormRepository;
import javax.inject.Inject;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0019\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/domain/usecase/forms/GetCareServiceFormUseCase;", "", "Lcom/vuitton/android/domain/usecase/forms/BestFormDispatchIdUseCase;", "bestFormDispatchIdUseCase", "Lcom/vuitton/core/infrastructure/data/forms/repository/FormRepository;", "formRepository", "<init>", "(Lcom/vuitton/android/domain/usecase/forms/BestFormDispatchIdUseCase;Lcom/vuitton/core/infrastructure/data/forms/repository/FormRepository;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class GetCareServiceFormUseCase {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final BestFormDispatchIdUseCase f50049a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final FormRepository f50050b;

    @Inject
    public GetCareServiceFormUseCase(BestFormDispatchIdUseCase bestFormDispatchIdUseCase, FormRepository formRepository) {
        bestFormDispatchIdUseCase.getClass();
        formRepository.getClass();
        this.f50049a = bestFormDispatchIdUseCase;
        this.f50050b = formRepository;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0071, code lost:
    
        if (r6 == r1) goto L26;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object a(com.vuitton.foundation.model.domain.model.dispatch.InAppDispatch r7, kotlin.coroutines.jvm.internal.ContinuationImpl r8) {
        /*
            r6 = this;
            boolean r0 = r8 instanceof com.vuitton.android.domain.usecase.forms.GetCareServiceFormUseCase$run$1
            if (r0 == 0) goto L13
            r0 = r8
            com.vuitton.android.domain.usecase.forms.GetCareServiceFormUseCase$run$1 r0 = (com.vuitton.android.domain.usecase.forms.GetCareServiceFormUseCase$run$1) r0
            int r1 = r0.g
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.g = r1
            goto L18
        L13:
            com.vuitton.android.domain.usecase.forms.GetCareServiceFormUseCase$run$1 r0 = new com.vuitton.android.domain.usecase.forms.GetCareServiceFormUseCase$run$1
            r0.<init>(r6, r8)
        L18:
            java.lang.Object r8 = r0.f50053e
            kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r2 = r0.g
            r3 = 0
            r4 = 2
            r5 = 1
            if (r2 == 0) goto L43
            if (r2 == r5) goto L35
            if (r2 != r4) goto L2f
            kotlin.ResultKt.b(r8)     // Catch: java.lang.Throwable -> L7f
            kotlin.Result r8 = (kotlin.Result) r8     // Catch: java.lang.Throwable -> L7f
            java.lang.Object r6 = r8.f71708b     // Catch: java.lang.Throwable -> L7f
            goto L74
        L2f:
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.md.k(r6)
            return r3
        L35:
            int r7 = r0.d
            int r2 = r0.f50052c
            int r3 = r0.f50051b
            kotlin.ResultKt.b(r8)     // Catch: java.lang.Throwable -> L7f
            kotlin.Result r8 = (kotlin.Result) r8     // Catch: java.lang.Throwable -> L7f
            java.lang.Object r8 = r8.f71708b     // Catch: java.lang.Throwable -> L7f
            goto L5c
        L43:
            kotlin.ResultKt.b(r8)
            kotlin.Result$Companion r8 = kotlin.Result.INSTANCE     // Catch: java.lang.Throwable -> L7f
            com.vuitton.android.domain.usecase.forms.BestFormDispatchIdUseCase r8 = r6.f50049a     // Catch: java.lang.Throwable -> L7f
            r2 = 0
            r0.f50051b = r2     // Catch: java.lang.Throwable -> L7f
            r0.f50052c = r2     // Catch: java.lang.Throwable -> L7f
            r0.d = r2     // Catch: java.lang.Throwable -> L7f
            r0.g = r5     // Catch: java.lang.Throwable -> L7f
            java.lang.Object r8 = r8.b(r7, r3, r0)     // Catch: java.lang.Throwable -> L7f
            if (r8 != r1) goto L5a
            goto L73
        L5a:
            r7 = r2
            r3 = r7
        L5c:
            kotlin.ResultKt.b(r8)     // Catch: java.lang.Throwable -> L7f
            com.vuitton.foundation.model.domain.model.forms.FormDispatchId r8 = (com.vuitton.foundation.model.domain.model.forms.FormDispatchId) r8     // Catch: java.lang.Throwable -> L7f
            java.lang.String r8 = r8.f67581a     // Catch: java.lang.Throwable -> L7f
            com.vuitton.core.infrastructure.data.forms.repository.FormRepository r6 = r6.f50050b     // Catch: java.lang.Throwable -> L7f
            r0.f50051b = r3     // Catch: java.lang.Throwable -> L7f
            r0.f50052c = r2     // Catch: java.lang.Throwable -> L7f
            r0.d = r7     // Catch: java.lang.Throwable -> L7f
            r0.g = r4     // Catch: java.lang.Throwable -> L7f
            java.lang.Object r6 = r6.i(r8, r0)     // Catch: java.lang.Throwable -> L7f
            if (r6 != r1) goto L74
        L73:
            return r1
        L74:
            kotlin.ResultKt.b(r6)     // Catch: java.lang.Throwable -> L7f
            com.vuitton.foundation.model.domain.model.forms.Form r6 = (com.vuitton.foundation.model.domain.model.forms.Form) r6     // Catch: java.lang.Throwable -> L7f
            kotlin.Result r7 = new kotlin.Result     // Catch: java.lang.Throwable -> L7f
            r7.<init>(r6)     // Catch: java.lang.Throwable -> L7f
            goto L87
        L7f:
            r6 = move-exception
            kotlin.Result$Companion r7 = kotlin.Result.INSTANCE
            kotlin.Result$Failure r7 = new kotlin.Result$Failure
            r7.<init>(r6)
        L87:
            java.lang.Throwable r6 = kotlin.Result.a(r7)
            if (r6 != 0) goto L8e
            goto L9d
        L8e:
            boolean r7 = r6 instanceof java.util.concurrent.CancellationException
            if (r7 != 0) goto La2
            kotlin.Result$Failure r7 = new kotlin.Result$Failure
            r7.<init>(r6)
            kotlin.Result r6 = new kotlin.Result
            r6.<init>(r7)
            r7 = r6
        L9d:
            kotlin.Result r7 = (kotlin.Result) r7
            java.lang.Object r6 = r7.f71708b
            return r6
        La2:
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vuitton.android.domain.usecase.forms.GetCareServiceFormUseCase.a(com.vuitton.foundation.model.domain.model.dispatch.InAppDispatch, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }
}
