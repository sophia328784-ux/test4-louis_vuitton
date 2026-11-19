package com.vuitton.android.presentation.screen.account.myinformation.components.edition;

import com.vuitton.android.presentation.screen.account.myinformation.MyInformationViewModel;
import com.vuitton.android.presentation.screen.account.myinformation.models.MyInfoTrackingUiModel;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.account.myinformation.components.edition.EditPasswordComposableKt$EditPasswordComposable$1$1", f = "EditPasswordComposable.kt", l = {}, m = "invokeSuspend", v = 2)
final class EditPasswordComposableKt$EditPasswordComposable$1$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ MyInformationViewModel f52625b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public EditPasswordComposableKt$EditPasswordComposable$1$1(MyInformationViewModel myInformationViewModel, Continuation continuation) {
        super(2, continuation);
        this.f52625b = myInformationViewModel;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new EditPasswordComposableKt$EditPasswordComposable$1$1(this.f52625b, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((EditPasswordComposableKt$EditPasswordComposable$1$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        ResultKt.b(obj);
        MyInformationViewModel myInformationViewModel = this.f52625b;
        myInformationViewModel.z3();
        myInformationViewModel.m5(MyInfoTrackingUiModel.EditPasswordScreen.f52650a);
        return Unit.f71739a;
    }
}
