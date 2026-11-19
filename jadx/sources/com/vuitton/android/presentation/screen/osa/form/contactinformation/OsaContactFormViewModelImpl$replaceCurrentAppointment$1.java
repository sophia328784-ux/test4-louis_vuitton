package com.vuitton.android.presentation.screen.osa.form.contactinformation;

import androidx.lifecycle.ViewModelKt;
import com.vuitton.android.presentation.screen.osa.form.contactinformation.components.OsaContactFormBottomSheetScreen;
import com.vuitton.android.presentation.screen.osa.form.contactinformation.models.OsaContactFormViewState;
import com.vuitton.android.presentation.screen.osa.models.OsaItemUiModel;
import com.vuitton.android.presentation.screen.osa.reasons.models.OsaReasonUiModel;
import com.vuitton.android.presentation.screen.osa.tracking.OsaTrackingUiModel;
import defpackage.md;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.SharedFlowImpl;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.osa.form.contactinformation.OsaContactFormViewModelImpl$replaceCurrentAppointment$1", f = "OsaContactFormViewModelImpl.kt", l = {521}, m = "invokeSuspend", v = 2)
final class OsaContactFormViewModelImpl$replaceCurrentAppointment$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f60676b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ OsaContactFormViewModelImpl f60677c;
    public final /* synthetic */ OsaReasonUiModel d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public OsaContactFormViewModelImpl$replaceCurrentAppointment$1(OsaContactFormViewModelImpl osaContactFormViewModelImpl, OsaReasonUiModel osaReasonUiModel, Continuation continuation) {
        super(2, continuation);
        this.f60677c = osaContactFormViewModelImpl;
        this.d = osaReasonUiModel;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new OsaContactFormViewModelImpl$replaceCurrentAppointment$1(this.f60677c, this.d, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((OsaContactFormViewModelImpl$replaceCurrentAppointment$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f60676b;
        OsaContactFormViewModelImpl osaContactFormViewModelImpl = this.f60677c;
        if (i2 == 0) {
            ResultKt.b(obj);
            SharedFlowImpl sharedFlowImpl = osaContactFormViewModelImpl.A;
            OsaContactFormBottomSheetScreen.LoadingBottomSheet loadingBottomSheet = OsaContactFormBottomSheetScreen.LoadingBottomSheet.f60716a;
            this.f60676b = 1;
            if (sharedFlowImpl.emit(loadingBottomSheet, this) == coroutineSingletons) {
                return coroutineSingletons;
            }
        } else {
            if (i2 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.b(obj);
        }
        OsaItemUiModel osaItemUiModel = ((OsaContactFormViewState) osaContactFormViewModelImpl.U.getValue()).p;
        if (osaItemUiModel != null) {
            osaContactFormViewModelImpl.o(new OsaTrackingUiModel.CancellationConfirmedEvent(osaItemUiModel));
            BuildersKt.c(ViewModelKt.a(osaContactFormViewModelImpl), null, null, new OsaContactFormViewModelImpl$replaceCurrentAppointment$1$1$1(osaContactFormViewModelImpl, osaItemUiModel, this.d, null), 3);
        }
        return Unit.f71739a;
    }
}
