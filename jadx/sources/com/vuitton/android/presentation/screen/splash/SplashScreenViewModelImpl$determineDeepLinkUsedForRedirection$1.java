package com.vuitton.android.presentation.screen.splash;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.splash.SplashScreenViewModelImpl", f = "SplashScreenViewModelImpl.kt", l = {279, 280}, m = "determineDeepLinkUsedForRedirection", v = 2)
final class SplashScreenViewModelImpl$determineDeepLinkUsedForRedirection$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Object f64468b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public SplashScreenViewModelImpl f64469c;
    public /* synthetic */ Object d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ SplashScreenViewModelImpl f64470e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f64471f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SplashScreenViewModelImpl$determineDeepLinkUsedForRedirection$1(SplashScreenViewModelImpl splashScreenViewModelImpl, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f64470e = splashScreenViewModelImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.d = obj;
        this.f64471f |= Integer.MIN_VALUE;
        return this.f64470e.Lc(null, this);
    }
}
