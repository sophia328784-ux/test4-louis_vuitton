package com.vuitton.android.presentation.screen.splash;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.splash.SplashScreenViewModelImpl", f = "SplashScreenViewModelImpl.kt", l = {248, 256}, m = "applyAutomatedTestConfigThenRestartApp", v = 2)
final class SplashScreenViewModelImpl$applyAutomatedTestConfigThenRestartApp$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public AutomatedTestConfig f64462b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public /* synthetic */ Object f64463c;
    public final /* synthetic */ SplashScreenViewModelImpl d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f64464e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SplashScreenViewModelImpl$applyAutomatedTestConfigThenRestartApp$1(SplashScreenViewModelImpl splashScreenViewModelImpl, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.d = splashScreenViewModelImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f64463c = obj;
        this.f64464e |= Integer.MIN_VALUE;
        return SplashScreenViewModelImpl.yc(this.d, null, this);
    }
}
