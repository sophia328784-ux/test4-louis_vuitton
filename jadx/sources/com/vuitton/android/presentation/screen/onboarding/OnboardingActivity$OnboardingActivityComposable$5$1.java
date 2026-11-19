package com.vuitton.android.presentation.screen.onboarding;

import android.content.Context;
import android.os.Build;
import androidx.core.app.ActivityCompat;
import com.batch.android.e.x;
import com.vuitton.android.presentation.screen.onboarding.models.OnboardingTrackingUiModel;
import com.vuitton.android.presentation.utils.NotificationUtils;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.FunctionReferenceImpl;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
final /* synthetic */ class OnboardingActivity$OnboardingActivityComposable$5$1 extends FunctionReferenceImpl implements Function0<Unit> {
    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        OnboardingActivity onboardingActivity = (OnboardingActivity) this.receiver;
        OnboardingActivity.Companion companion = OnboardingActivity.t;
        onboardingActivity.J().D4(OnboardingTrackingUiModel.NotificationsContinueClickEvent.f59595a);
        Context applicationContext = onboardingActivity.getApplicationContext();
        applicationContext.getClass();
        if (NotificationUtils.a(applicationContext) || Build.VERSION.SDK_INT < 33) {
            onboardingActivity.J().yc(OnboardingRoutes.Geolocation.INSTANCE);
        } else {
            ActivityCompat.requestPermissions(onboardingActivity, new String[]{x.d}, 32);
            onboardingActivity.J().f59499f.f50212a.b();
        }
        return Unit.f71739a;
    }
}
