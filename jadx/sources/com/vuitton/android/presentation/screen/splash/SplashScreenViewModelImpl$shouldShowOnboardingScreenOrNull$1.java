package com.vuitton.android.presentation.screen.splash;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.splash.SplashScreenViewModelImpl", f = "SplashScreenViewModelImpl.kt", l = {452, 456, 460, 464}, m = "shouldShowOnboardingScreenOrNull", v = 2)
final class SplashScreenViewModelImpl$shouldShowOnboardingScreenOrNull$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Object f64508b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public /* synthetic */ Object f64509c;
    public final /* synthetic */ SplashScreenViewModelImpl d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f64510e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SplashScreenViewModelImpl$shouldShowOnboardingScreenOrNull$1(SplashScreenViewModelImpl splashScreenViewModelImpl, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.d = splashScreenViewModelImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f64509c = obj;
        this.f64510e |= Integer.MIN_VALUE;
        return SplashScreenViewModelImpl.Hc(this.d, this);
    }
}
