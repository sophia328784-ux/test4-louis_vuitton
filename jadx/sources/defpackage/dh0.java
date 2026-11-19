package defpackage;

import com.vuitton.android.presentation.screen.onboarding.OnboardingViewModel;
import com.vuitton.android.presentation.screen.onboarding.models.OnboardingTrackingUiModel;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class dh0 implements Function0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f68584b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ OnboardingViewModel f68585c;

    public /* synthetic */ dh0(OnboardingViewModel onboardingViewModel, int i2) {
        this.f68584b = i2;
        this.f68585c = onboardingViewModel;
    }

    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        int i2 = this.f68584b;
        OnboardingViewModel onboardingViewModel = this.f68585c;
        switch (i2) {
            case 0:
                onboardingViewModel.D4(OnboardingTrackingUiModel.NotificationScreen.f59593a);
                break;
            case 1:
                onboardingViewModel.D4(OnboardingTrackingUiModel.StartScreen.f59599a);
                break;
            case 2:
                onboardingViewModel.D4(OnboardingTrackingUiModel.GeolocationScreen.f59588a);
                break;
            case 3:
                onboardingViewModel.D4(OnboardingTrackingUiModel.AuthenticationScreen.f59584a);
                break;
            default:
                onboardingViewModel.D4(OnboardingTrackingUiModel.IconsScreen.f59591a);
                break;
        }
        return Unit.f71739a;
    }
}
