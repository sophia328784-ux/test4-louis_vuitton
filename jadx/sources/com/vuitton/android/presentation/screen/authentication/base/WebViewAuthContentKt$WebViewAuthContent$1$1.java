package com.vuitton.android.presentation.screen.authentication.base;

import com.vuitton.android.presentation.screen.authentication.AuthenticationViewModel;
import com.vuitton.android.presentation.screen.authentication.models.AuthenticationTrackingUiModel;
import com.vuitton.foundation.model.domain.model.authentication.LoginState;
import defpackage.md;
import defpackage.os;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.flow.StateFlow;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.authentication.base.WebViewAuthContentKt$WebViewAuthContent$1$1", f = "WebViewAuthContent.kt", l = {49}, m = "invokeSuspend", v = 2)
final class WebViewAuthContentKt$WebViewAuthContent$1$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f53464b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ AuthenticationViewModel f53465c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WebViewAuthContentKt$WebViewAuthContent$1$1(AuthenticationViewModel authenticationViewModel, Continuation continuation) {
        super(2, continuation);
        this.f53465c = authenticationViewModel;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new WebViewAuthContentKt$WebViewAuthContent$1$1(this.f53465c, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((WebViewAuthContentKt$WebViewAuthContent$1$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f53464b;
        if (i2 == 0) {
            ResultKt.b(obj);
            final AuthenticationViewModel authenticationViewModel = this.f53465c;
            StateFlow x = authenticationViewModel.getX();
            FlowCollector flowCollector = new FlowCollector() { // from class: com.vuitton.android.presentation.screen.authentication.base.WebViewAuthContentKt$WebViewAuthContent$1$1.1
                @Override // kotlinx.coroutines.flow.FlowCollector
                public final Object emit(Object obj2, Continuation continuation) {
                    if (((LoginState) obj2) == LoginState.LOGGED_IN) {
                        authenticationViewModel.I0(AuthenticationTrackingUiModel.SignInSuccessfulEvent.f53709a);
                    }
                    return Unit.f71739a;
                }
            };
            this.f53464b = 1;
            if (x.f(flowCollector, this) == coroutineSingletons) {
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
