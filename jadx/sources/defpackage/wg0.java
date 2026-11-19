package defpackage;

import com.vuitton.android.presentation.screen.onboarding.OnboardingActivity;
import com.vuitton.android.presentation.screen.options.legaltext.LegalTextActivity;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class wg0 implements Function0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f80868b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ OnboardingActivity f80869c;

    public /* synthetic */ wg0(OnboardingActivity onboardingActivity, int i2) {
        this.f80868b = i2;
        this.f80869c = onboardingActivity;
    }

    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        int i2 = this.f80868b;
        OnboardingActivity onboardingActivity = this.f80869c;
        switch (i2) {
            case 0:
                return OnboardingActivity.H(onboardingActivity);
            default:
                OnboardingActivity.Companion companion = OnboardingActivity.t;
                LegalTextActivity.p.getClass();
                onboardingActivity.startActivity(LegalTextActivity.Companion.a(onboardingActivity, false));
                return Unit.f71739a;
        }
    }
}
