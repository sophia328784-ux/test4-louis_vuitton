package com.vuitton.android.presentation.screen.onboarding;

import com.vuitton.android.presentation.screen.immersivearticle.ImmersiveArticleActivity;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.FunctionReferenceImpl;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
final /* synthetic */ class OnboardingActivity$OnboardingActivityComposable$11$1 extends FunctionReferenceImpl implements Function0<Unit> {
    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        OnboardingActivity onboardingActivity = (OnboardingActivity) this.receiver;
        OnboardingActivity.Companion companion = OnboardingActivity.t;
        onboardingActivity.getClass();
        onboardingActivity.startActivity(ImmersiveArticleActivity.Companion.a(ImmersiveArticleActivity.H, onboardingActivity, "Accessibility-Statement", null, null, null, null, 124));
        return Unit.f71739a;
    }
}
