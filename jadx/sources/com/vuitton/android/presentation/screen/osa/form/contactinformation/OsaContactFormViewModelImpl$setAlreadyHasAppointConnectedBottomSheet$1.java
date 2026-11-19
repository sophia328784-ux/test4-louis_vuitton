package com.vuitton.android.presentation.screen.osa.form.contactinformation;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.osa.form.contactinformation.OsaContactFormViewModelImpl$setAlreadyHasAppointConnectedBottomSheet$1", f = "OsaContactFormViewModelImpl.kt", l = {601, 605, 607, 611}, m = "invokeSuspend", v = 2)
final class OsaContactFormViewModelImpl$setAlreadyHasAppointConnectedBottomSheet$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Object f60690b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f60691c;
    public final /* synthetic */ OsaContactFormViewModelImpl d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public OsaContactFormViewModelImpl$setAlreadyHasAppointConnectedBottomSheet$1(Continuation continuation, OsaContactFormViewModelImpl osaContactFormViewModelImpl) {
        super(2, continuation);
        this.d = osaContactFormViewModelImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new OsaContactFormViewModelImpl$setAlreadyHasAppointConnectedBottomSheet$1(continuation, this.d);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((OsaContactFormViewModelImpl$setAlreadyHasAppointConnectedBottomSheet$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    /* JADX WARN: Code duplicated, block: B:37:0x0090  */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0074, code lost:
    
        if (r1.emit(r3, r10) == r2) goto L39;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x0077, code lost:
    
        r1 = r11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x0087, code lost:
    
        if (com.vuitton.android.presentation.screen.osa.form.contactinformation.OsaContactFormViewModelImpl.yc(r0, r1, r10) == r2) goto L39;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x009d, code lost:
    
        if (com.vuitton.android.presentation.screen.osa.form.contactinformation.OsaContactFormViewModelImpl.yc(r0, r1, r10) == r2) goto L39;
     */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r11) {
        /*
            r10 = this;
            com.vuitton.android.presentation.screen.osa.form.contactinformation.OsaContactFormViewModelImpl r0 = r10.d
            kotlinx.coroutines.flow.MutableStateFlow r1 = r0.Q
            kotlin.coroutines.intrinsics.CoroutineSingletons r2 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r3 = r10.f60691c
            java.lang.String r4 = "Unable to retrieve the ongoing appointment"
            r5 = 4
            r6 = 3
            r7 = 2
            r8 = 1
            r9 = 0
            if (r3 == 0) goto L32
            if (r3 == r8) goto L2a
            if (r3 == r7) goto L24
            if (r3 == r6) goto L24
            if (r3 != r5) goto L1e
            kotlin.ResultKt.b(r11)
            goto La0
        L1e:
            java.lang.String r10 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.md.k(r10)
            return r9
        L24:
            java.lang.Object r1 = r10.f60690b
            kotlin.ResultKt.b(r11)
            goto L78
        L2a:
            kotlin.ResultKt.b(r11)
            kotlin.Result r11 = (kotlin.Result) r11
            java.lang.Object r11 = r11.f71708b
            goto L40
        L32:
            kotlin.ResultKt.b(r11)
            com.vuitton.android.domain.usecase.osa.GetOnlineStoreAppointmentListUseCase r11 = r0.u
            r10.f60691c = r8
            java.lang.Object r11 = r11.a(r10)
            if (r11 != r2) goto L40
            goto L9f
        L40:
            kotlin.Result$Companion r3 = kotlin.Result.INSTANCE
            boolean r3 = r11 instanceof kotlin.Result.Failure
            if (r3 != 0) goto L8a
            r3 = r11
            com.vuitton.foundation.model.domain.model.osa.OnlineStoreAppointments r3 = (com.vuitton.foundation.model.domain.model.osa.OnlineStoreAppointments) r3
            java.util.List r3 = r3.f67770a
            java.lang.Object r3 = kotlin.collections.CollectionsKt.firstOrNull(r3)
            com.vuitton.foundation.model.domain.model.osa.OsaItem r3 = (com.vuitton.foundation.model.domain.model.osa.OsaItem) r3
            if (r3 == 0) goto L5f
            java.lang.Object r3 = com.vuitton.android.presentation.screen.osa.models.OsaMapperKt.c(r3)
            boolean r8 = r3 instanceof kotlin.Result.Failure
            if (r8 == 0) goto L5c
            goto L5d
        L5c:
            r9 = r3
        L5d:
            com.vuitton.android.presentation.screen.osa.models.OsaItemUiModel r9 = (com.vuitton.android.presentation.screen.osa.models.OsaItemUiModel) r9
        L5f:
            r1.setValue(r9)
            java.lang.Object r1 = r1.getValue()
            if (r1 == 0) goto L7a
            kotlinx.coroutines.flow.SharedFlowImpl r1 = r0.A
            com.vuitton.android.presentation.screen.osa.form.contactinformation.components.OsaContactFormBottomSheetScreen$ReplaceAppointmentBottomSheet r3 = com.vuitton.android.presentation.screen.osa.form.contactinformation.components.OsaContactFormBottomSheetScreen.ReplaceAppointmentBottomSheet.f60717a
            r10.f60690b = r11
            r10.f60691c = r7
            java.lang.Object r1 = r1.emit(r3, r10)
            if (r1 != r2) goto L77
            goto L9f
        L77:
            r1 = r11
        L78:
            r11 = r1
            goto L8a
        L7a:
            com.vuitton.android.presentation.model.stringhandling.StringResourceUiModel$Text r1 = new com.vuitton.android.presentation.model.stringhandling.StringResourceUiModel$Text
            r1.<init>(r4)
            r10.f60690b = r11
            r10.f60691c = r6
            java.lang.Object r1 = com.vuitton.android.presentation.screen.osa.form.contactinformation.OsaContactFormViewModelImpl.yc(r0, r1, r10)
            if (r1 != r2) goto L77
            goto L9f
        L8a:
            java.lang.Throwable r1 = kotlin.Result.a(r11)
            if (r1 == 0) goto La0
            com.vuitton.android.presentation.model.stringhandling.StringResourceUiModel$Text r1 = new com.vuitton.android.presentation.model.stringhandling.StringResourceUiModel$Text
            r1.<init>(r4)
            r10.f60690b = r11
            r10.f60691c = r5
            java.lang.Object r10 = com.vuitton.android.presentation.screen.osa.form.contactinformation.OsaContactFormViewModelImpl.yc(r0, r1, r10)
            if (r10 != r2) goto La0
        L9f:
            return r2
        La0:
            kotlin.Unit r10 = kotlin.Unit.f71739a
            return r10
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vuitton.android.presentation.screen.osa.form.contactinformation.OsaContactFormViewModelImpl$setAlreadyHasAppointConnectedBottomSheet$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
