package com.vuitton.android.presentation.screen.onboarding;

import android.content.Intent;
import android.net.Uri;
import com.batch.android.BatchPushPayload;
import com.vuitton.android.presentation.extensions.ActivityExtKt;
import com.vuitton.android.presentation.screen.main.MainActivity;
import com.vuitton.android.presentation.screen.onboarding.models.OnboardingStateUiModel;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.FunctionReferenceImpl;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
final /* synthetic */ class OnboardingActivity$OnboardingActivityComposable$8$1 extends FunctionReferenceImpl implements Function0<Unit> {
    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() throws Throwable {
        Uri data;
        String deeplink;
        OnboardingActivity onboardingActivity = (OnboardingActivity) this.receiver;
        OnboardingActivity.Companion companion = OnboardingActivity.t;
        onboardingActivity.J().zc(OnboardingStateUiModel.DONE);
        Intent intentA = MainActivity.Companion.a(MainActivity.L, onboardingActivity, null, null, null, null, 30);
        Intent intent = onboardingActivity.getIntent();
        BatchPushPayload batchPushPayloadC = ActivityExtKt.c(intent);
        if (batchPushPayloadC == null || (deeplink = batchPushPayloadC.getDeeplink()) == null || (data = Uri.parse(deeplink)) == null) {
            data = intent != null ? intent.getData() : null;
        }
        ActivityExtKt.b(intentA, data, onboardingActivity.getIntent().getExtras());
        onboardingActivity.startActivity(intentA);
        onboardingActivity.finish();
        return Unit.f71739a;
    }
}
