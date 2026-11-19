package com.vuitton.android.presentation.screen.onboarding;

import android.content.Context;
import android.content.pm.PackageManager;
import com.vuitton.android.presentation.model.onboarding.IconLauncherType;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.FunctionReferenceImpl;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
final /* synthetic */ class OnboardingActivity$OnboardingActivityComposable$6$1 extends FunctionReferenceImpl implements Function0<IconLauncherType> {
    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        OnboardingActivity onboardingActivity = (OnboardingActivity) this.receiver;
        OnboardingActivity.Companion companion = OnboardingActivity.t;
        Context applicationContext = onboardingActivity.getApplicationContext();
        applicationContext.getClass();
        String packageName = onboardingActivity.getPackageName();
        packageName.getClass();
        PackageManager packageManager = onboardingActivity.getPackageManager();
        packageManager.getClass();
        return IconLauncherUpdateHelper.a(applicationContext, packageName, packageManager);
    }
}
