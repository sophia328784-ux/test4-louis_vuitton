package com.vuitton.android.presentation.screen.osa.form.contactinformation;

import com.vuitton.android.presentation.screen.osa.models.OsaItemUiModel;
import com.vuitton.android.presentation.screen.osa.reasons.models.OsaReasonUiModel;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.osa.form.contactinformation.OsaContactFormViewModelImpl$replaceCurrentAppointment$1$1$1", f = "OsaContactFormViewModelImpl.kt", l = {532, 540, 544, 547}, m = "invokeSuspend", v = 2)
final class OsaContactFormViewModelImpl$replaceCurrentAppointment$1$1$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Object f60678b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public OsaContactFormViewModelImpl f60679c;
    public OsaReasonUiModel d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f60680e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ OsaContactFormViewModelImpl f60681f;
    public final /* synthetic */ OsaItemUiModel g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ OsaReasonUiModel f60682h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public OsaContactFormViewModelImpl$replaceCurrentAppointment$1$1$1(OsaContactFormViewModelImpl osaContactFormViewModelImpl, OsaItemUiModel osaItemUiModel, OsaReasonUiModel osaReasonUiModel, Continuation continuation) {
        super(2, continuation);
        this.f60681f = osaContactFormViewModelImpl;
        this.g = osaItemUiModel;
        this.f60682h = osaReasonUiModel;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new OsaContactFormViewModelImpl$replaceCurrentAppointment$1$1$1(this.f60681f, this.g, this.f60682h, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((OsaContactFormViewModelImpl$replaceCurrentAppointment$1$1$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    /* JADX WARN: Code duplicated, block: B:40:0x00af  */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x00c0, code lost:
    
        if (com.vuitton.android.presentation.screen.osa.form.contactinformation.OsaContactFormViewModelImpl.yc(r7, r11, r10) == r0) goto L42;
     */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r11) {
        /*
            r10 = this;
            kotlin.coroutines.intrinsics.CoroutineSingletons r0 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r1 = r10.f60680e
            r2 = 2132019802(0x7f140a5a, float:1.967795E38)
            com.vuitton.android.presentation.screen.osa.models.OsaItemUiModel r3 = r10.g
            r4 = 4
            r5 = 3
            r6 = 1
            com.vuitton.android.presentation.screen.osa.form.contactinformation.OsaContactFormViewModelImpl r7 = r10.f60681f
            r8 = 2
            r9 = 0
            if (r1 == 0) goto L47
            if (r1 == r6) goto L3e
            if (r1 == r8) goto L34
            if (r1 == r5) goto L29
            if (r1 != r4) goto L23
            com.vuitton.android.presentation.screen.osa.form.contactinformation.OsaContactFormViewModelImpl r10 = r10.f60679c
            java.lang.Throwable r10 = (java.lang.Throwable) r10
            kotlin.ResultKt.b(r11)
            goto Lc3
        L23:
            java.lang.String r10 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.md.k(r10)
            return r9
        L29:
            com.vuitton.android.presentation.screen.osa.form.contactinformation.OsaContactFormViewModelImpl r1 = r10.f60679c
            com.vuitton.foundation.model.domain.model.osa.CancelAppointmentResponseItem r1 = (com.vuitton.foundation.model.domain.model.osa.CancelAppointmentResponseItem) r1
            java.lang.Object r1 = r10.f60678b
            kotlin.ResultKt.b(r11)
            goto La9
        L34:
            com.vuitton.android.presentation.screen.osa.reasons.models.OsaReasonUiModel r1 = r10.d
            com.vuitton.android.presentation.screen.osa.form.contactinformation.OsaContactFormViewModelImpl r3 = r10.f60679c
            java.lang.Object r5 = r10.f60678b
            kotlin.ResultKt.b(r11)
            goto L92
        L3e:
            kotlin.ResultKt.b(r11)
            kotlin.Result r11 = (kotlin.Result) r11
            java.lang.Object r11 = r11.f71708b
        L45:
            r1 = r11
            goto L58
        L47:
            kotlin.ResultKt.b(r11)
            com.vuitton.android.domain.usecase.osa.CancelAppointmentUseCase r11 = r7.o
            java.lang.String r1 = r3.f60924a
            r10.f60680e = r6
            java.lang.Object r11 = r11.a(r1, r10)
            if (r11 != r0) goto L45
            goto Lc2
        L58:
            kotlin.Result$Companion r11 = kotlin.Result.INSTANCE
            boolean r11 = r1 instanceof kotlin.Result.Failure
            if (r11 != 0) goto La9
            r11 = r1
            com.vuitton.foundation.model.domain.model.osa.CancelAppointmentResponseItem r11 = (com.vuitton.foundation.model.domain.model.osa.CancelAppointmentResponseItem) r11
            boolean r11 = r11.f67766a
            if (r11 == 0) goto L97
            com.vuitton.android.presentation.tracking.OnlineStoreAppointmentActions r11 = com.vuitton.android.presentation.tracking.OnlineStoreAppointmentActions.CANCELLED
            com.vuitton.android.presentation.screen.osa.models.StoreInformationItemUiModel r5 = r3.f60929h
            if (r5 == 0) goto L6e
            java.lang.String r5 = r5.f60938a
            goto L6f
        L6e:
            r5 = r9
        L6f:
            com.vuitton.android.presentation.screen.osa.reasons.models.OsaReasonUiModel r3 = r3.f60930i
            if (r3 == 0) goto L76
            java.lang.String r3 = r3.f60965a
            goto L77
        L76:
            r3 = r9
        L77:
            com.vuitton.android.presentation.screen.osa.form.contactinformation.OsaContactFormViewModelImpl.zc(r7, r11, r5, r3)
            com.vuitton.android.core.events.LVEventSender r11 = r7.d
            r10.f60678b = r1
            r10.f60679c = r7
            com.vuitton.android.presentation.screen.osa.reasons.models.OsaReasonUiModel r3 = r10.f60682h
            r10.d = r3
            r10.f60680e = r8
            com.vuitton.android.core.events.AppEvent$RefreshAppointmentsEvent r5 = com.vuitton.android.core.events.AppEvent.RefreshAppointmentsEvent.f43499a
            java.lang.Object r11 = r11.a(r5, r10)
            if (r11 != r0) goto L8f
            goto Lc2
        L8f:
            r5 = r1
            r1 = r3
            r3 = r7
        L92:
            r3.Ac(r1)
            r1 = r5
            goto La9
        L97:
            com.vuitton.android.presentation.model.stringhandling.StringResourceUiModel$ResId r11 = new com.vuitton.android.presentation.model.stringhandling.StringResourceUiModel$ResId
            r11.<init>(r2, r9, r8, r9)
            r10.f60678b = r1
            r10.f60679c = r9
            r10.f60680e = r5
            java.lang.Object r11 = com.vuitton.android.presentation.screen.osa.form.contactinformation.OsaContactFormViewModelImpl.yc(r7, r11, r10)
            if (r11 != r0) goto La9
            goto Lc2
        La9:
            java.lang.Throwable r11 = kotlin.Result.a(r1)
            if (r11 == 0) goto Lc3
            com.vuitton.android.presentation.model.stringhandling.StringResourceUiModel$ResId r11 = new com.vuitton.android.presentation.model.stringhandling.StringResourceUiModel$ResId
            r11.<init>(r2, r9, r8, r9)
            r10.f60678b = r1
            r10.f60679c = r9
            r10.d = r9
            r10.f60680e = r4
            java.lang.Object r10 = com.vuitton.android.presentation.screen.osa.form.contactinformation.OsaContactFormViewModelImpl.yc(r7, r11, r10)
            if (r10 != r0) goto Lc3
        Lc2:
            return r0
        Lc3:
            kotlin.Unit r10 = kotlin.Unit.f71739a
            return r10
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vuitton.android.presentation.screen.osa.form.contactinformation.OsaContactFormViewModelImpl$replaceCurrentAppointment$1$1$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
