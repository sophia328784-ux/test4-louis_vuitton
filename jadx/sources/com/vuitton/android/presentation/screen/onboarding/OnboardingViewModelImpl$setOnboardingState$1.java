package com.vuitton.android.presentation.screen.onboarding;

import com.vuitton.android.domain.usecase.onboarding.SetOnboardingStateUseCase;
import com.vuitton.android.presentation.screen.onboarding.models.OnboardingMapperKt;
import com.vuitton.android.presentation.screen.onboarding.models.OnboardingStateUiModel;
import com.vuitton.foundation.model.domain.model.onboarding.OnboardingState;
import defpackage.md;
import defpackage.v40;
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
@DebugMetadata(c = "com.vuitton.android.presentation.screen.onboarding.OnboardingViewModelImpl$setOnboardingState$1", f = "OnboardingViewModelImpl.kt", l = {222}, m = "invokeSuspend", v = 2)
final class OnboardingViewModelImpl$setOnboardingState$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f59527b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ OnboardingViewModelImpl f59528c;
    public final /* synthetic */ OnboardingStateUiModel d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public OnboardingViewModelImpl$setOnboardingState$1(OnboardingViewModelImpl onboardingViewModelImpl, OnboardingStateUiModel onboardingStateUiModel, Continuation continuation) {
        super(2, continuation);
        this.f59528c = onboardingViewModelImpl;
        this.d = onboardingStateUiModel;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new OnboardingViewModelImpl$setOnboardingState$1(this.f59528c, this.d, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((OnboardingViewModelImpl$setOnboardingState$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        OnboardingState onboardingState;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f59527b;
        if (i2 == 0) {
            ResultKt.b(obj);
            SetOnboardingStateUseCase setOnboardingStateUseCase = this.f59528c.f59500h;
            OnboardingStateUiModel onboardingStateUiModel = this.d;
            onboardingStateUiModel.getClass();
            switch (OnboardingMapperKt.WhenMappings.f59583b[onboardingStateUiModel.ordinal()]) {
                case 1:
                    onboardingState = OnboardingState.NOT_STARTED;
                    break;
                case 2:
                    onboardingState = OnboardingState.START;
                    break;
                case 3:
                    onboardingState = OnboardingState.GEOLOCATION;
                    break;
                case 4:
                    onboardingState = OnboardingState.NOTIFICATION;
                    break;
                case 5:
                    onboardingState = OnboardingState.ICONS;
                    break;
                case 6:
                    onboardingState = OnboardingState.DONE;
                    break;
                default:
                    v40.g();
                    return null;
            }
            this.f59527b = 1;
            Object objA = setOnboardingStateUseCase.f50152a.a(onboardingState, this);
            if (objA != coroutineSingletons) {
                objA = Unit.f71739a;
            }
            if (objA == coroutineSingletons) {
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
