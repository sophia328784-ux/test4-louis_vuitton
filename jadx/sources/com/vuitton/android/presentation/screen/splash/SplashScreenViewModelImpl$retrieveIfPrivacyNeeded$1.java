package com.vuitton.android.presentation.screen.splash;

import com.vuitton.foundation.model.domain.model.privacy.PrivacyType;
import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.splash.SplashScreenViewModelImpl", f = "SplashScreenViewModelImpl.kt", l = {607, 616}, m = "retrieveIfPrivacyNeeded", v = 2)
final class SplashScreenViewModelImpl$retrieveIfPrivacyNeeded$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public PrivacyType f64497b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public /* synthetic */ Object f64498c;
    public final /* synthetic */ SplashScreenViewModelImpl d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f64499e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SplashScreenViewModelImpl$retrieveIfPrivacyNeeded$1(SplashScreenViewModelImpl splashScreenViewModelImpl, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.d = splashScreenViewModelImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f64498c = obj;
        this.f64499e |= Integer.MIN_VALUE;
        return SplashScreenViewModelImpl.Cc(this.d, null, this);
    }
}
