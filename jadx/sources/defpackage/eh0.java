package defpackage;

import androidx.compose.runtime.State;
import androidx.navigation.NavController;
import androidx.navigation.NavHostController;
import com.vuitton.android.presentation.screen.onboarding.OnboardingNavHostKt;
import com.vuitton.android.presentation.screen.onboarding.OnboardingViewModel;
import com.vuitton.android.presentation.screen.onboarding.models.OnboardingTrackingUiModel;
import com.vuitton.android.presentation.screen.onboarding.models.OnboardingViewState;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class eh0 implements Function0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f68860b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ OnboardingViewModel f68861c;
    public final /* synthetic */ NavHostController d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ State f68862e;

    public /* synthetic */ eh0(OnboardingViewModel onboardingViewModel, NavHostController navHostController, State state, int i2) {
        this.f68860b = i2;
        this.f68861c = onboardingViewModel;
        this.d = navHostController;
        this.f68862e = state;
    }

    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        int i2 = this.f68860b;
        State state = this.f68862e;
        NavHostController navHostController = this.d;
        OnboardingViewModel onboardingViewModel = this.f68861c;
        switch (i2) {
            case 0:
                onboardingViewModel.D4(OnboardingTrackingUiModel.StartClickEvent.f59598a);
                NavController.d(navHostController, OnboardingNavHostKt.c((OnboardingViewState) state.getF10755b()), null, 6);
                break;
            default:
                onboardingViewModel.D4(OnboardingTrackingUiModel.GuestClickEvent.f59589a);
                NavController.d(navHostController, OnboardingNavHostKt.c((OnboardingViewState) state.getF10755b()), null, 6);
                break;
        }
        return Unit.f71739a;
    }
}
