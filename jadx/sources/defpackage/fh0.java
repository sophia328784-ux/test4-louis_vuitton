package defpackage;

import androidx.navigation.NavController;
import androidx.navigation.NavHostController;
import com.vuitton.android.presentation.screen.onboarding.OnboardingRoutes;
import com.vuitton.android.presentation.screen.privacy.PrivacyViewModelImpl;
import com.vuitton.android.presentation.screen.privacy.components.PrivacyRoutes;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class fh0 implements Function0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f69146b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ PrivacyViewModelImpl f69147c;
    public final /* synthetic */ NavHostController d;

    public /* synthetic */ fh0(PrivacyViewModelImpl privacyViewModelImpl, NavHostController navHostController, int i2) {
        this.f69146b = i2;
        this.f69147c = privacyViewModelImpl;
        this.d = navHostController;
    }

    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        int i2 = this.f69146b;
        NavHostController navHostController = this.d;
        PrivacyViewModelImpl privacyViewModelImpl = this.f69147c;
        switch (i2) {
            case 0:
                privacyViewModelImpl.zc();
                NavController.d(navHostController, OnboardingRoutes.PrivacyPreCompliance.INSTANCE, null, 6);
                break;
            default:
                privacyViewModelImpl.zc();
                NavController.d(navHostController, PrivacyRoutes.PrivacyPreCompliance.INSTANCE, null, 6);
                break;
        }
        return Unit.f71739a;
    }
}
