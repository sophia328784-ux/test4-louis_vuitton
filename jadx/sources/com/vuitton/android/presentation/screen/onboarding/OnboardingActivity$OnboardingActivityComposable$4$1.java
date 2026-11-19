package com.vuitton.android.presentation.screen.onboarding;

import androidx.core.app.ActivityCompat;
import androidx.core.content.ContextCompat;
import com.vuitton.android.presentation.screen.onboarding.models.OnboardingTrackingUiModel;
import com.vuitton.android.presentation.utils.PermissionUtils;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.FunctionReferenceImpl;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
final /* synthetic */ class OnboardingActivity$OnboardingActivityComposable$4$1 extends FunctionReferenceImpl implements Function0<Unit> {
    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        OnboardingActivity onboardingActivity = (OnboardingActivity) this.receiver;
        OnboardingActivity.Companion companion = OnboardingActivity.t;
        onboardingActivity.J().D4(OnboardingTrackingUiModel.GeolocationContinueClickEvent.f59586a);
        for (int i2 = 0; i2 < 2; i2++) {
            if (ContextCompat.checkSelfPermission(onboardingActivity, PermissionUtils.f65862a[i2]) != 0) {
                onboardingActivity.J().f59498e.f50379a.b();
                ActivityCompat.requestPermissions(onboardingActivity, new String[]{"android.permission.ACCESS_COARSE_LOCATION", "android.permission.ACCESS_FINE_LOCATION"}, 22);
                return Unit.f71739a;
            }
        }
        onboardingActivity.K();
        return Unit.f71739a;
    }
}
