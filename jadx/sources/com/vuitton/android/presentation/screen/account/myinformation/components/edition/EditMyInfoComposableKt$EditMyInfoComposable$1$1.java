package com.vuitton.android.presentation.screen.account.myinformation.components.edition;

import androidx.compose.runtime.State;
import com.vuitton.android.presentation.profile.models.PhoneNumberUiModel;
import com.vuitton.android.presentation.screen.account.myinformation.MyInformationViewModel;
import com.vuitton.android.presentation.screen.account.myinformation.models.MyInfoTrackingUiModel;
import com.vuitton.android.presentation.screen.account.myinformation.models.MyInformationViewState;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.account.myinformation.components.edition.EditMyInfoComposableKt$EditMyInfoComposable$1$1", f = "EditMyInfoComposable.kt", l = {}, m = "invokeSuspend", v = 2)
final class EditMyInfoComposableKt$EditMyInfoComposable$1$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Function0 f52613b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ MyInformationViewModel f52614c;
    public final /* synthetic */ State d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public EditMyInfoComposableKt$EditMyInfoComposable$1$1(Function0 function0, MyInformationViewModel myInformationViewModel, State state, Continuation continuation) {
        super(2, continuation);
        this.f52613b = function0;
        this.f52614c = myInformationViewModel;
        this.d = state;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new EditMyInfoComposableKt$EditMyInfoComposable$1$1(this.f52613b, this.f52614c, this.d, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((EditMyInfoComposableKt$EditMyInfoComposable$1$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    /* JADX WARN: Code duplicated, block: B:12:0x002b A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:13:0x002d  */
    /* JADX WARN: Code duplicated, block: B:14:0x0030  */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        MyInfoTrackingUiModel myInfoTrackingUiModel;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        ResultKt.b(obj);
        this.f52613b.mo47invoke();
        MyInformationViewState myInformationViewState = (MyInformationViewState) this.d.getF10755b();
        boolean z = myInformationViewState.g;
        if (z) {
            PhoneNumberUiModel phoneNumberUiModel = myInformationViewState.f52668e.f52662f;
            String str = phoneNumberUiModel != null ? phoneNumberUiModel.d : null;
            if (str == null || str.length() == 0) {
                myInfoTrackingUiModel = MyInfoTrackingUiModel.EditMyInfoScreenMissingPhoneNumber.f52648a;
            } else if (z) {
                myInfoTrackingUiModel = MyInfoTrackingUiModel.EditMyInfoScreenSmsMarketingDisclaimer.f52649a;
            } else {
                myInfoTrackingUiModel = MyInfoTrackingUiModel.EditMyInfoScreen.f52647a;
            }
        } else if (z) {
            myInfoTrackingUiModel = MyInfoTrackingUiModel.EditMyInfoScreenSmsMarketingDisclaimer.f52649a;
        } else {
            myInfoTrackingUiModel = MyInfoTrackingUiModel.EditMyInfoScreen.f52647a;
        }
        this.f52614c.m5(myInfoTrackingUiModel);
        return Unit.f71739a;
    }
}
