package com.vuitton.android.presentation.screen.account.lvpass.components;

import com.vuitton.android.presentation.screen.account.lvpass.QRCodeScreenState;
import com.vuitton.android.presentation.screen.account.userworldwideid.StoreModeAffiliation;
import com.vuitton.android.presentation.screen.account.userworldwideid.UserWorldwideIdViewModel;
import com.vuitton.android.presentation.screen.mylv.models.MyLvTrackingUiModel;
import com.vuitton.android.presentation.tracking.AppsFlyerUiTracker;
import com.vuitton.android.presentation.tracking.PassActions;
import defpackage.md;
import defpackage.os;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.flow.SharedFlow;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.account.lvpass.components.QRCodeComposableKt$HandleStoreModeAffiliation$1$1", f = "QRCodeComposable.kt", l = {144}, m = "invokeSuspend", v = 2)
final class QRCodeComposableKt$HandleStoreModeAffiliation$1$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f52468b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ UserWorldwideIdViewModel f52469c;
    public final /* synthetic */ QRCodeScreenState d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ AppsFlyerUiTracker f52470e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Function1 f52471f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public QRCodeComposableKt$HandleStoreModeAffiliation$1$1(UserWorldwideIdViewModel userWorldwideIdViewModel, QRCodeScreenState qRCodeScreenState, AppsFlyerUiTracker appsFlyerUiTracker, Function1 function1, Continuation continuation) {
        super(2, continuation);
        this.f52469c = userWorldwideIdViewModel;
        this.d = qRCodeScreenState;
        this.f52470e = appsFlyerUiTracker;
        this.f52471f = function1;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new QRCodeComposableKt$HandleStoreModeAffiliation$1$1(this.f52469c, this.d, this.f52470e, this.f52471f, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((QRCodeComposableKt$HandleStoreModeAffiliation$1$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f52468b;
        if (i2 == 0) {
            ResultKt.b(obj);
            final UserWorldwideIdViewModel userWorldwideIdViewModel = this.f52469c;
            SharedFlow f52697k = userWorldwideIdViewModel.getF52697k();
            final AppsFlyerUiTracker appsFlyerUiTracker = this.f52470e;
            final Function1 function1 = this.f52471f;
            final QRCodeScreenState qRCodeScreenState = this.d;
            FlowCollector flowCollector = new FlowCollector() { // from class: com.vuitton.android.presentation.screen.account.lvpass.components.QRCodeComposableKt$HandleStoreModeAffiliation$1$1.1
                @Override // kotlinx.coroutines.flow.FlowCollector
                public final Object emit(Object obj2, Continuation continuation) {
                    StoreModeAffiliation storeModeAffiliation = (StoreModeAffiliation) obj2;
                    if (storeModeAffiliation instanceof StoreModeAffiliation.Success) {
                        QRCodeScreenState qRCodeScreenState2 = qRCodeScreenState;
                        if (!(qRCodeScreenState2 instanceof QRCodeScreenState.Success)) {
                            return Unit.f71739a;
                        }
                        QRCodeScreenState.Success success = (QRCodeScreenState.Success) qRCodeScreenState2;
                        boolean zA = success.a();
                        String str = ((StoreModeAffiliation.Success) storeModeAffiliation).f52687a;
                        userWorldwideIdViewModel.W(new MyLvTrackingUiModel.ActivateStoreModeWithQrCodeEvent(zA, str));
                        appsFlyerUiTracker.c(success.a() ? PassActions.SpeedyPass.USED : PassActions.LVPass.IDENTIFIED, str);
                        function1.invoke(str);
                    }
                    return Unit.f71739a;
                }
            };
            this.f52468b = 1;
            if (f52697k.f(flowCollector, this) == coroutineSingletons) {
                return coroutineSingletons;
            }
        } else {
            if (i2 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.b(obj);
        }
        os.d();
        return null;
    }
}
