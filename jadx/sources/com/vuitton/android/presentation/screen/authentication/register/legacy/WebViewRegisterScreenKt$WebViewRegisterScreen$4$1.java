package com.vuitton.android.presentation.screen.authentication.register.legacy;

import com.vuitton.android.presentation.screen.authentication.AuthenticationViewModel;
import com.vuitton.foundation.model.domain.model.account.consent.KisaConsents;
import defpackage.md;
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
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowCollector;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.authentication.register.legacy.WebViewRegisterScreenKt$WebViewRegisterScreen$4$1", f = "WebViewRegisterScreen.kt", l = {97}, m = "invokeSuspend", v = 2)
final class WebViewRegisterScreenKt$WebViewRegisterScreen$4$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f53905b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ AuthenticationViewModel f53906c;
    public final /* synthetic */ Function1 d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WebViewRegisterScreenKt$WebViewRegisterScreen$4$1(AuthenticationViewModel authenticationViewModel, Function1 function1, Continuation continuation) {
        super(2, continuation);
        this.f53906c = authenticationViewModel;
        this.d = function1;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new WebViewRegisterScreenKt$WebViewRegisterScreen$4$1(this.f53906c, this.d, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((WebViewRegisterScreenKt$WebViewRegisterScreen$4$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f53905b;
        if (i2 == 0) {
            ResultKt.b(obj);
            Flow u = this.f53906c.getU();
            final Function1 function1 = this.d;
            FlowCollector flowCollector = new FlowCollector() { // from class: com.vuitton.android.presentation.screen.authentication.register.legacy.WebViewRegisterScreenKt$WebViewRegisterScreen$4$1.1
                @Override // kotlinx.coroutines.flow.FlowCollector
                public final Object emit(Object obj2, Continuation continuation) {
                    function1.invoke((KisaConsents) obj2);
                    return Unit.f71739a;
                }
            };
            this.f53905b = 1;
            if (u.f(flowCollector, this) == coroutineSingletons) {
                return coroutineSingletons;
            }
        } else {
            if (i2 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.b(obj);
        }
        return Unit.f71739a;
    }
}
