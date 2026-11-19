package com.vuitton.android.presentation.screen.splash;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.splash.SplashScreenViewModelImpl", f = "SplashScreenViewModelImpl.kt", l = {345}, m = "shouldShowDispatchCountryScreenOrNull", v = 2)
final class SplashScreenViewModelImpl$shouldShowDispatchCountryScreenOrNull$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f64504b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ SplashScreenViewModelImpl f64505c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SplashScreenViewModelImpl$shouldShowDispatchCountryScreenOrNull$1(SplashScreenViewModelImpl splashScreenViewModelImpl, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f64505c = splashScreenViewModelImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f64504b = obj;
        this.d |= Integer.MIN_VALUE;
        return SplashScreenViewModelImpl.Fc(this.f64505c, this);
    }
}
