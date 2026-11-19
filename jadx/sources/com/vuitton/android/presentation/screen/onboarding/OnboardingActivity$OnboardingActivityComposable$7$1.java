package com.vuitton.android.presentation.screen.onboarding;

import android.content.Context;
import android.content.pm.PackageManager;
import androidx.lifecycle.LifecycleOwnerKt;
import com.vuitton.android.presentation.model.onboarding.IconLauncherType;
import com.vuitton.android.presentation.screen.onboarding.models.OnboardingStateUiModel;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlinx.coroutines.BuildersKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
final /* synthetic */ class OnboardingActivity$OnboardingActivityComposable$7$1 extends FunctionReferenceImpl implements Function1<IconLauncherType, Unit> {
    @Override // kotlin.jvm.functions.Function1
    public final /* bridge */ /* synthetic */ Object invoke(Object obj) {
        p((IconLauncherType) obj);
        return Unit.f71739a;
    }

    public final void p(IconLauncherType iconLauncherType) {
        iconLauncherType.getClass();
        OnboardingActivity onboardingActivity = (OnboardingActivity) this.receiver;
        OnboardingActivity.Companion companion = OnboardingActivity.t;
        onboardingActivity.J().zc(OnboardingStateUiModel.DONE);
        Context applicationContext = onboardingActivity.getApplicationContext();
        applicationContext.getClass();
        String packageName = onboardingActivity.getPackageName();
        packageName.getClass();
        PackageManager packageManager = onboardingActivity.getPackageManager();
        packageManager.getClass();
        IconLauncherUpdateHelper.b(iconLauncherType, applicationContext, packageName, packageManager);
        BuildersKt.c(LifecycleOwnerKt.a(onboardingActivity), null, null, new OnboardingActivity$onUpdateLauncherIcon$1(onboardingActivity, null), 3);
    }
}
