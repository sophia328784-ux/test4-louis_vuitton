package com.vuitton.android.presentation.screen.onboarding;

import com.vuitton.android.domain.usecase.onboarding.GetOnboardingStateUseCase;
import com.vuitton.android.presentation.screen.onboarding.models.OnboardingMapperKt;
import com.vuitton.android.presentation.screen.onboarding.models.OnboardingStateUiModel;
import com.vuitton.foundation.model.domain.model.onboarding.OnboardingState;
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

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.onboarding.OnboardingViewModelImpl$retrieveOnboardingState$1", f = "OnboardingViewModelImpl.kt", l = {138}, m = "invokeSuspend", v = 2)
final class OnboardingViewModelImpl$retrieveOnboardingState$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public OnboardingViewModelImpl f59524b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f59525c;
    public final /* synthetic */ OnboardingViewModelImpl d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public OnboardingViewModelImpl$retrieveOnboardingState$1(OnboardingViewModelImpl onboardingViewModelImpl, Continuation continuation) {
        super(2, continuation);
        this.d = onboardingViewModelImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new OnboardingViewModelImpl$retrieveOnboardingState$1(this.d, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((OnboardingViewModelImpl$retrieveOnboardingState$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        OnboardingViewModelImpl onboardingViewModelImpl;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f59525c;
        if (i2 == 0) {
            ResultKt.b(obj);
            OnboardingViewModelImpl onboardingViewModelImpl2 = this.d;
            GetOnboardingStateUseCase getOnboardingStateUseCase = onboardingViewModelImpl2.g;
            this.f59524b = onboardingViewModelImpl2;
            this.f59525c = 1;
            Object objG = getOnboardingStateUseCase.f50151a.g(this);
            if (objG == coroutineSingletons) {
                return coroutineSingletons;
            }
            obj = objG;
            onboardingViewModelImpl = onboardingViewModelImpl2;
        } else {
            if (i2 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            onboardingViewModelImpl = this.f59524b;
            ResultKt.b(obj);
        }
        OnboardingState onboardingState = (OnboardingState) obj;
        if (onboardingState == null || OnboardingMapperKt.a(onboardingState) == null) {
            OnboardingStateUiModel onboardingStateUiModel = OnboardingStateUiModel.NOT_STARTED;
        }
        onboardingViewModelImpl.getClass();
        return Unit.f71739a;
    }
}
