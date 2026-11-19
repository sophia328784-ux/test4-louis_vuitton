package com.vuitton.android.domain.usecase.app;

import com.vuitton.android.domain.usecase.account.ResetLoginDetailsUseCase;
import com.vuitton.android.domain.usecase.config.ClearAllConfigUseCase;
import javax.inject.Inject;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0019\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/domain/usecase/app/ResetAppDataUseCase;", "", "Lcom/vuitton/android/domain/usecase/config/ClearAllConfigUseCase;", "clearAllConfigsUseCase", "Lcom/vuitton/android/domain/usecase/account/ResetLoginDetailsUseCase;", "resetLoginDetailsUseCase", "<init>", "(Lcom/vuitton/android/domain/usecase/config/ClearAllConfigUseCase;Lcom/vuitton/android/domain/usecase/account/ResetLoginDetailsUseCase;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class ResetAppDataUseCase {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ClearAllConfigUseCase f49244a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ResetLoginDetailsUseCase f49245b;

    @Inject
    public ResetAppDataUseCase(ClearAllConfigUseCase clearAllConfigUseCase, ResetLoginDetailsUseCase resetLoginDetailsUseCase) {
        clearAllConfigUseCase.getClass();
        resetLoginDetailsUseCase.getClass();
        this.f49244a = clearAllConfigUseCase;
        this.f49245b = resetLoginDetailsUseCase;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0051, code lost:
    
        if (r5.f49245b.a(r6, r0) == r1) goto L21;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object a(boolean r6, kotlin.coroutines.jvm.internal.ContinuationImpl r7) {
        /*
            r5 = this;
            boolean r0 = r7 instanceof com.vuitton.android.domain.usecase.app.ResetAppDataUseCase$run$1
            if (r0 == 0) goto L13
            r0 = r7
            com.vuitton.android.domain.usecase.app.ResetAppDataUseCase$run$1 r0 = (com.vuitton.android.domain.usecase.app.ResetAppDataUseCase$run$1) r0
            int r1 = r0.f49248e
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f49248e = r1
            goto L18
        L13:
            com.vuitton.android.domain.usecase.app.ResetAppDataUseCase$run$1 r0 = new com.vuitton.android.domain.usecase.app.ResetAppDataUseCase$run$1
            r0.<init>(r5, r7)
        L18:
            java.lang.Object r7 = r0.f49247c
            kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r2 = r0.f49248e
            r3 = 2
            r4 = 1
            if (r2 == 0) goto L37
            if (r2 == r4) goto L31
            if (r2 != r3) goto L2a
            kotlin.ResultKt.b(r7)
            goto L54
        L2a:
            java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.md.k(r5)
            r5 = 0
            return r5
        L31:
            boolean r6 = r0.f49246b
            kotlin.ResultKt.b(r7)
            goto L47
        L37:
            kotlin.ResultKt.b(r7)
            r0.f49246b = r6
            r0.f49248e = r4
            com.vuitton.android.domain.usecase.config.ClearAllConfigUseCase r7 = r5.f49244a
            java.lang.Object r7 = r7.a(r0)
            if (r7 != r1) goto L47
            goto L53
        L47:
            r0.f49246b = r6
            r0.f49248e = r3
            com.vuitton.android.domain.usecase.account.ResetLoginDetailsUseCase r5 = r5.f49245b
            java.lang.Object r5 = r5.a(r6, r0)
            if (r5 != r1) goto L54
        L53:
            return r1
        L54:
            kotlin.Unit r5 = kotlin.Unit.f71739a
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vuitton.android.domain.usecase.app.ResetAppDataUseCase.a(boolean, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }
}
