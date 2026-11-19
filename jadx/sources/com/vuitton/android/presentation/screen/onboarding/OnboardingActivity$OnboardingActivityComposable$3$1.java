package com.vuitton.android.presentation.screen.onboarding;

import com.vuitton.android.presentation.screen.onboarding.models.OnboardingStateUiModel;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionReferenceImpl;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
final /* synthetic */ class OnboardingActivity$OnboardingActivityComposable$3$1 extends FunctionReferenceImpl implements Function1<OnboardingStateUiModel, Unit> {
    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        OnboardingStateUiModel onboardingStateUiModel = (OnboardingStateUiModel) obj;
        onboardingStateUiModel.getClass();
        ((OnboardingViewModelImpl) this.receiver).zc(onboardingStateUiModel);
        return Unit.f71739a;
    }
}
