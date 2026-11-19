package com.vuitton.android.presentation.screen.onboarding;

import android.content.Intent;
import android.net.Uri;
import com.batch.android.BatchPushPayload;
import com.vuitton.android.presentation.extensions.ActivityExtKt;
import com.vuitton.android.presentation.screen.splash.SplashScreenActivity;
import defpackage.md;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.time.Duration;
import kotlin.time.DurationKt;
import kotlin.time.DurationUnit;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.DelayKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.onboarding.OnboardingActivity$onUpdateLauncherIcon$1", f = "OnboardingActivity.kt", l = {232}, m = "invokeSuspend", v = 2)
final class OnboardingActivity$onUpdateLauncherIcon$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f59462b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ OnboardingActivity f59463c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public OnboardingActivity$onUpdateLauncherIcon$1(OnboardingActivity onboardingActivity, Continuation continuation) {
        super(2, continuation);
        this.f59463c = onboardingActivity;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new OnboardingActivity$onUpdateLauncherIcon$1(this.f59463c, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((OnboardingActivity$onUpdateLauncherIcon$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        String deeplink;
        Uri uri;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f59462b;
        Uri data = null;
        if (i2 == 0) {
            ResultKt.b(obj);
            Duration.Companion companion = Duration.INSTANCE;
            long jG = DurationKt.g(1, DurationUnit.SECONDS);
            this.f59462b = 1;
            if (DelayKt.c(jG, this) == coroutineSingletons) {
                return coroutineSingletons;
            }
        } else {
            if (i2 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.b(obj);
        }
        OnboardingActivity onboardingActivity = this.f59463c;
        onboardingActivity.finishAffinity();
        Intent intent = new Intent(onboardingActivity.getApplicationContext(), (Class<?>) SplashScreenActivity.class);
        Intent intent2 = onboardingActivity.getIntent();
        BatchPushPayload batchPushPayloadC = ActivityExtKt.c(intent2);
        if (batchPushPayloadC != null && (deeplink = batchPushPayloadC.getDeeplink()) != null && (uri = Uri.parse(deeplink)) != null) {
            data = uri;
        } else if (intent2 != null) {
            data = intent2.getData();
        }
        ActivityExtKt.b(intent, data, onboardingActivity.getIntent().getExtras());
        onboardingActivity.startActivity(intent);
        return Unit.f71739a;
    }
}
