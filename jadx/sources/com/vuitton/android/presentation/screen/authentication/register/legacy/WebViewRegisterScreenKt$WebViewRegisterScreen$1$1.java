package com.vuitton.android.presentation.screen.authentication.register.legacy;

import com.vuitton.android.presentation.screen.authentication.AuthenticationViewModel;
import defpackage.md;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowCollector;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.authentication.register.legacy.WebViewRegisterScreenKt$WebViewRegisterScreen$1$1", f = "WebViewRegisterScreen.kt", l = {61}, m = "invokeSuspend", v = 2)
final class WebViewRegisterScreenKt$WebViewRegisterScreen$1$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f53885b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ AuthenticationViewModel f53886c;
    public final /* synthetic */ String d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WebViewRegisterScreenKt$WebViewRegisterScreen$1$1(AuthenticationViewModel authenticationViewModel, String str, Continuation continuation) {
        super(2, continuation);
        this.f53886c = authenticationViewModel;
        this.d = str;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new WebViewRegisterScreenKt$WebViewRegisterScreen$1$1(this.f53886c, this.d, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((WebViewRegisterScreenKt$WebViewRegisterScreen$1$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f53885b;
        if (i2 == 0) {
            ResultKt.b(obj);
            final AuthenticationViewModel authenticationViewModel = this.f53886c;
            Flow flowM7 = authenticationViewModel.m7();
            final String str = this.d;
            FlowCollector flowCollector = new FlowCollector() { // from class: com.vuitton.android.presentation.screen.authentication.register.legacy.WebViewRegisterScreenKt$WebViewRegisterScreen$1$1.1
                @Override // kotlinx.coroutines.flow.FlowCollector
                public final Object emit(Object obj2, Continuation continuation) {
                    boolean zC = Intrinsics.c((Boolean) obj2, Boolean.TRUE);
                    String str2 = str;
                    AuthenticationViewModel authenticationViewModel2 = authenticationViewModel;
                    if (zC) {
                        authenticationViewModel2.k6(str2);
                    } else {
                        authenticationViewModel2.V9(str2);
                    }
                    return Unit.f71739a;
                }
            };
            this.f53885b = 1;
            if (flowM7.f(flowCollector, this) == coroutineSingletons) {
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
