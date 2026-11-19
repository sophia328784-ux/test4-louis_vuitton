package com.vuitton.android.presentation.screen.certificates.diamonds.add;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.certificates.diamonds.add.AddCertificateViewModelImpl$getUserLoginAndAtgId$1", f = "AddCertificateViewModelImpl.kt", l = {105, 105}, m = "invokeSuspend", v = 2)
final class AddCertificateViewModelImpl$getUserLoginAndAtgId$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f55769b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ AddCertificateViewModelImpl f55770c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AddCertificateViewModelImpl$getUserLoginAndAtgId$1(Continuation continuation, AddCertificateViewModelImpl addCertificateViewModelImpl) {
        super(2, continuation);
        this.f55770c = addCertificateViewModelImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new AddCertificateViewModelImpl$getUserLoginAndAtgId$1(continuation, this.f55770c);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((AddCertificateViewModelImpl$getUserLoginAndAtgId$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x0037, code lost:
    
        if (r6 == r0) goto L15;
     */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r7) {
        /*
            r6 = this;
            kotlin.coroutines.intrinsics.CoroutineSingletons r0 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r1 = r6.f55769b
            r2 = 0
            r3 = 2
            r4 = 1
            com.vuitton.android.presentation.screen.certificates.diamonds.add.AddCertificateViewModelImpl r5 = r6.f55770c
            if (r1 == 0) goto L21
            if (r1 == r4) goto L1d
            if (r1 != r3) goto L17
            kotlin.ResultKt.b(r7)
            kotlin.Result r7 = (kotlin.Result) r7
            java.lang.Object r6 = r7.f71708b
            goto L3a
        L17:
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.md.k(r6)
            return r2
        L1d:
            kotlin.ResultKt.b(r7)
            goto L2f
        L21:
            kotlin.ResultKt.b(r7)
            com.vuitton.android.domain.usecase.account.GetProfileUseCase r7 = r5.g
            r6.f55769b = r4
            java.lang.Object r7 = r7.a(r6)
            if (r7 != r0) goto L2f
            goto L39
        L2f:
            com.vuitton.foundation.model.domain.model.common.ResultStrategy r7 = (com.vuitton.foundation.model.domain.model.common.ResultStrategy) r7
            r6.f55769b = r3
            java.lang.Object r6 = r7.c(r6)
            if (r6 != r0) goto L3a
        L39:
            return r0
        L3a:
            kotlin.Result$Companion r7 = kotlin.Result.INSTANCE
            boolean r7 = r6 instanceof kotlin.Result.Failure
            if (r7 != 0) goto L73
            r7 = r6
            com.vuitton.foundation.model.domain.model.profile.Profile r7 = (com.vuitton.foundation.model.domain.model.profile.Profile) r7
            com.vuitton.foundation.model.domain.model.profile.Profile$Id r0 = r7.f68164a
            boolean r0 = r0 instanceof com.vuitton.foundation.model.domain.model.profile.Profile.Id.AtgId
            if (r0 == 0) goto L4a
            goto L4b
        L4a:
            r7 = r2
        L4b:
            if (r7 == 0) goto L73
            kotlinx.coroutines.flow.MutableStateFlow r0 = r5.o
        L4f:
            java.lang.Object r1 = r0.getValue()
            r3 = r1
            java.lang.String r3 = (java.lang.String) r3
            com.vuitton.foundation.model.domain.model.profile.Profile$Id r3 = r7.f68164a
            java.lang.String r3 = r3.getF68177a()
            boolean r1 = r0.i(r1, r3)
            if (r1 == 0) goto L4f
            kotlinx.coroutines.flow.MutableStateFlow r1 = r5.n
        L64:
            java.lang.Object r0 = r1.getValue()
            r3 = r0
            java.lang.String r3 = (java.lang.String) r3
            java.lang.String r3 = r7.f68165b
            boolean r0 = r1.i(r0, r3)
            if (r0 == 0) goto L64
        L73:
            java.lang.Throwable r6 = kotlin.Result.a(r6)
            if (r6 == 0) goto L84
            com.vuitton.foundation.logger.Logger r7 = r5.f55751a
            java.lang.String r0 = com.vuitton.android.presentation.screen.certificates.diamonds.add.AddCertificateViewModelImpl.s
            java.lang.String r6 = r6.getMessage()
            r7.c(r0, r6, r2)
        L84:
            kotlin.Unit r6 = kotlin.Unit.f71739a
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vuitton.android.presentation.screen.certificates.diamonds.add.AddCertificateViewModelImpl$getUserLoginAndAtgId$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
