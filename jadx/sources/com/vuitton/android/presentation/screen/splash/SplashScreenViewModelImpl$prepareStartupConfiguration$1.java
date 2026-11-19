package com.vuitton.android.presentation.screen.splash;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.splash.SplashScreenViewModelImpl", f = "SplashScreenViewModelImpl.kt", l = {230, 234, 236}, m = "prepareStartupConfiguration", v = 2)
final class SplashScreenViewModelImpl$prepareStartupConfiguration$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public String f64493b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public SplashScreenViewModelImpl f64494c;
    public /* synthetic */ Object d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ SplashScreenViewModelImpl f64495e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f64496f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SplashScreenViewModelImpl$prepareStartupConfiguration$1(SplashScreenViewModelImpl splashScreenViewModelImpl, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f64495e = splashScreenViewModelImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.d = obj;
        this.f64496f |= Integer.MIN_VALUE;
        return SplashScreenViewModelImpl.Bc(this.f64495e, null, this);
    }
}
