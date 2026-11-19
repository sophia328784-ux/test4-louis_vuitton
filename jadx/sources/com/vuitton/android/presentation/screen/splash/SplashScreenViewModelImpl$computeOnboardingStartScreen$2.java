package com.vuitton.android.presentation.screen.splash;

import com.vuitton.android.presentation.screen.onboarding.OnboardingRoutesName;
import com.vuitton.foundation.model.domain.model.privacy.PrivacyType;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "Lcom/vuitton/android/presentation/screen/onboarding/OnboardingRoutesName;", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.splash.SplashScreenViewModelImpl$computeOnboardingStartScreen$2", f = "SplashScreenViewModelImpl.kt", l = {579, 581, 586}, m = "invokeSuspend", v = 2)
final class SplashScreenViewModelImpl$computeOnboardingStartScreen$2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super OnboardingRoutesName>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public PrivacyType f64465b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f64466c;
    public final /* synthetic */ SplashScreenViewModelImpl d;

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f64467a;

        static {
            int[] iArr = new int[PrivacyType.values().length];
            try {
                iArr[PrivacyType.GDPR.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[PrivacyType.CCPA.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[PrivacyType.PIPL.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            f64467a = iArr;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SplashScreenViewModelImpl$computeOnboardingStartScreen$2(SplashScreenViewModelImpl splashScreenViewModelImpl, Continuation continuation) {
        super(2, continuation);
        this.d = splashScreenViewModelImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new SplashScreenViewModelImpl$computeOnboardingStartScreen$2(this.d, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((SplashScreenViewModelImpl$computeOnboardingStartScreen$2) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x0052, code lost:
    
        if (r8 == r0) goto L30;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x0073, code lost:
    
        if (r7 == r0) goto L30;
     */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r8) throws com.vuitton.foundation.model.domain.error.privacy.PrivacyException.CbdtRetrievalException {
        /*
            r7 = this;
            kotlin.coroutines.intrinsics.CoroutineSingletons r0 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r1 = r7.f64466c
            r2 = 0
            r3 = 3
            r4 = 2
            r5 = 1
            com.vuitton.android.presentation.screen.splash.SplashScreenViewModelImpl r6 = r7.d
            if (r1 == 0) goto L2a
            if (r1 == r5) goto L24
            if (r1 == r4) goto L20
            if (r1 != r3) goto L1a
            kotlin.ResultKt.b(r8)
            kotlin.Result r8 = (kotlin.Result) r8
            java.lang.Object r7 = r8.f71708b
            goto L76
        L1a:
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.md.k(r7)
            return r2
        L20:
            kotlin.ResultKt.b(r8)
            goto L55
        L24:
            com.vuitton.foundation.model.domain.model.privacy.PrivacyType r1 = r7.f64465b
            kotlin.ResultKt.b(r8)
            goto L42
        L2a:
            kotlin.ResultKt.b(r8)
            com.vuitton.android.domain.usecase.privacy.consent.GetConsentTypeUseCase r8 = r6.x
            com.vuitton.android.domain.repository.ConsentRepository r8 = r8.f50268a
            com.vuitton.foundation.model.domain.model.privacy.PrivacyType r1 = r8.k()
            com.vuitton.android.domain.usecase.privacy.consent.HasConsentsUseCase r8 = r6.y
            r7.f64465b = r1
            r7.f64466c = r5
            java.lang.Object r8 = r8.a(r7)
            if (r8 != r0) goto L42
            goto L75
        L42:
            java.lang.Boolean r8 = (java.lang.Boolean) r8
            boolean r8 = r8.booleanValue()
            if (r8 == 0) goto L58
            r7.f64465b = r2
            r7.f64466c = r4
            java.lang.Object r8 = com.vuitton.android.presentation.screen.splash.SplashScreenViewModelImpl.Cc(r6, r1, r7)
            if (r8 != r0) goto L55
            goto L75
        L55:
            com.vuitton.android.presentation.screen.onboarding.OnboardingRoutesName r8 = (com.vuitton.android.presentation.screen.onboarding.OnboardingRoutesName) r8
            return r8
        L58:
            int[] r8 = com.vuitton.android.presentation.screen.splash.SplashScreenViewModelImpl$computeOnboardingStartScreen$2.WhenMappings.f64467a
            int r1 = r1.ordinal()
            r8 = r8[r1]
            if (r8 == r5) goto L90
            if (r8 == r4) goto L90
            if (r8 == r3) goto L69
            com.vuitton.android.presentation.screen.onboarding.OnboardingRoutesName r7 = com.vuitton.android.presentation.screen.onboarding.OnboardingRoutesName.LOGIN
            return r7
        L69:
            com.vuitton.android.domain.usecase.privacy.consent.GetPiplCbdtAgreementUseCase r8 = r6.f64456j
            r7.f64465b = r2
            r7.f64466c = r3
            java.lang.Object r7 = r8.a(r7)
            if (r7 != r0) goto L76
        L75:
            return r0
        L76:
            java.lang.Throwable r8 = kotlin.Result.a(r7)
            if (r8 != 0) goto L8a
            java.lang.Boolean r7 = (java.lang.Boolean) r7
            boolean r7 = r7.booleanValue()
            if (r7 == 0) goto L87
            com.vuitton.android.presentation.screen.onboarding.OnboardingRoutesName r7 = com.vuitton.android.presentation.screen.onboarding.OnboardingRoutesName.PRIVACY_PRE_COMPLIANCE
            return r7
        L87:
            com.vuitton.android.presentation.screen.onboarding.OnboardingRoutesName r7 = com.vuitton.android.presentation.screen.onboarding.OnboardingRoutesName.PIPL_CBT
            return r7
        L8a:
            com.vuitton.foundation.model.domain.error.privacy.PrivacyException$CbdtRetrievalException r7 = new com.vuitton.foundation.model.domain.error.privacy.PrivacyException$CbdtRetrievalException
            r7.<init>()
            throw r7
        L90:
            com.vuitton.android.presentation.screen.onboarding.OnboardingRoutesName r7 = com.vuitton.android.presentation.screen.onboarding.OnboardingRoutesName.PRIVACY_PRE_COMPLIANCE
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vuitton.android.presentation.screen.splash.SplashScreenViewModelImpl$computeOnboardingStartScreen$2.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
