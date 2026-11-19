package com.vuitton.android.presentation.screen.account.myinformation.components;

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
@DebugMetadata(c = "com.vuitton.android.presentation.screen.account.myinformation.components.SeeMyInfoComposableKt$SeeMyInfoComposable$1$1", f = "SeeMyInfoComposable.kt", l = {}, m = "invokeSuspend", v = 2)
final class SeeMyInfoComposableKt$SeeMyInfoComposable$1$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ MyInformationViewModel f52599b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SeeMyInfoComposableKt$SeeMyInfoComposable$1$1(MyInformationViewModel myInformationViewModel, Continuation continuation) {
        super(2, continuation);
        this.f52599b = myInformationViewModel;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new SeeMyInfoComposableKt$SeeMyInfoComposable$1$1(this.f52599b, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((SeeMyInfoComposableKt$SeeMyInfoComposable$1$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        ResultKt.b(obj);
        MyInformationViewModel myInformationViewModel = this.f52599b;
        myInformationViewModel.q4();
        myInformationViewModel.m5(MyInfoTrackingUiModel.MyInformationScreen.f52652a);
        return Unit.f71739a;
    }
}
