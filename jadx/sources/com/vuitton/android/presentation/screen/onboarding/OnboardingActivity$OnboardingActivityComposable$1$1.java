package com.vuitton.android.presentation.screen.onboarding;

import androidx.navigation.NavController;
import androidx.navigation.NavHostController;
import defpackage.md;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.flow.FlowKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.onboarding.OnboardingActivity$OnboardingActivityComposable$1$1", f = "OnboardingActivity.kt", l = {91}, m = "invokeSuspend", v = 2)
final class OnboardingActivity$OnboardingActivityComposable$1$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f59459b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ OnboardingActivity f59460c;
    public final /* synthetic */ NavHostController d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public OnboardingActivity$OnboardingActivityComposable$1$1(OnboardingActivity onboardingActivity, NavHostController navHostController, Continuation continuation) {
        super(2, continuation);
        this.f59460c = onboardingActivity;
        this.d = navHostController;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new OnboardingActivity$OnboardingActivityComposable$1$1(this.f59460c, this.d, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((OnboardingActivity$OnboardingActivityComposable$1$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f59459b;
        if (i2 == 0) {
            ResultKt.b(obj);
            OnboardingActivity.Companion companion = OnboardingActivity.t;
            Flow flowY = FlowKt.y(this.f59460c.J().f59502j);
            final NavHostController navHostController = this.d;
            FlowCollector flowCollector = new FlowCollector() { // from class: com.vuitton.android.presentation.screen.onboarding.OnboardingActivity$OnboardingActivityComposable$1$1.1
                @Override // kotlinx.coroutines.flow.FlowCollector
                public final Object emit(Object obj2, Continuation continuation) {
                    NavController.d(navHostController, (OnboardingRoutes) obj2, null, 6);
                    return Unit.f71739a;
                }
            };
            this.f59459b = 1;
            if (flowY.f(flowCollector, this) == coroutineSingletons) {
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
