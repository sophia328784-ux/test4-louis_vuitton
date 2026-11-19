package com.vuitton.android.presentation.screen.osa.form.contactinformation;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import net.rtccloud.sdk.Sink;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.osa.form.contactinformation.OsaContactFormViewModelImpl$refreshProfileAfterAppointmentSaved$1", f = "OsaContactFormViewModelImpl.kt", l = {Sink.ORIENTATION_270, Sink.ORIENTATION_270}, m = "invokeSuspend", v = 2)
final class OsaContactFormViewModelImpl$refreshProfileAfterAppointmentSaved$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f60674b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ OsaContactFormViewModelImpl f60675c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public OsaContactFormViewModelImpl$refreshProfileAfterAppointmentSaved$1(Continuation continuation, OsaContactFormViewModelImpl osaContactFormViewModelImpl) {
        super(2, continuation);
        this.f60675c = osaContactFormViewModelImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new OsaContactFormViewModelImpl$refreshProfileAfterAppointmentSaved$1(continuation, this.f60675c);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((OsaContactFormViewModelImpl$refreshProfileAfterAppointmentSaved$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
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
            int r1 = r6.f60674b
            r2 = 0
            com.vuitton.android.presentation.screen.osa.form.contactinformation.OsaContactFormViewModelImpl r3 = r6.f60675c
            r4 = 2
            r5 = 1
            if (r1 == 0) goto L21
            if (r1 == r5) goto L1d
            if (r1 != r4) goto L17
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
            com.vuitton.android.domain.usecase.account.GetProfileUseCase r7 = r3.m
            r6.f60674b = r5
            java.lang.Object r7 = r7.a(r6)
            if (r7 != r0) goto L2f
            goto L39
        L2f:
            com.vuitton.foundation.model.domain.model.common.ResultStrategy r7 = (com.vuitton.foundation.model.domain.model.common.ResultStrategy) r7
            r6.f60674b = r4
            java.lang.Object r6 = r7.a(r6)
            if (r6 != r0) goto L3a
        L39:
            return r0
        L3a:
            kotlin.Result$Companion r7 = kotlin.Result.INSTANCE
            boolean r7 = r6 instanceof kotlin.Result.Failure
            if (r7 != 0) goto L48
            r7 = r6
            com.vuitton.foundation.model.domain.model.profile.Profile r7 = (com.vuitton.foundation.model.domain.model.profile.Profile) r7
            kotlinx.coroutines.flow.MutableStateFlow r0 = r3.P
            r0.setValue(r7)
        L48:
            java.lang.Throwable r6 = kotlin.Result.a(r6)
            if (r6 == 0) goto L59
            java.lang.String r7 = "OsaContactFormViewModelImpl"
            java.lang.String r6 = r6.getMessage()
            com.vuitton.foundation.logger.LegacyLogger r0 = com.vuitton.foundation.logger.LegacyLogger.f66205a
            r0.c(r7, r6, r2)
        L59:
            kotlin.Unit r6 = kotlin.Unit.f71739a
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vuitton.android.presentation.screen.osa.form.contactinformation.OsaContactFormViewModelImpl$refreshProfileAfterAppointmentSaved$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
