package com.vuitton.android.presentation.screen.splash;

import defpackage.md;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u0004\u0018\u00010\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "Lcom/vuitton/android/presentation/screen/splash/SplashScreenAction;", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.splash.SplashScreenViewModelImpl$fetchConfigsVersionAndAppLinkExclusionsOrNull$2$appLinkExclusionsDeferred$1", f = "SplashScreenViewModelImpl.kt", l = {370}, m = "invokeSuspend", v = 2)
final class SplashScreenViewModelImpl$fetchConfigsVersionAndAppLinkExclusionsOrNull$2$appLinkExclusionsDeferred$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super SplashScreenAction>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f64477b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ SplashScreenViewModelImpl f64478c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SplashScreenViewModelImpl$fetchConfigsVersionAndAppLinkExclusionsOrNull$2$appLinkExclusionsDeferred$1(SplashScreenViewModelImpl splashScreenViewModelImpl, Continuation continuation) {
        super(2, continuation);
        this.f64478c = splashScreenViewModelImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new SplashScreenViewModelImpl$fetchConfigsVersionAndAppLinkExclusionsOrNull$2$appLinkExclusionsDeferred$1(this.f64478c, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((SplashScreenViewModelImpl$fetchConfigsVersionAndAppLinkExclusionsOrNull$2$appLinkExclusionsDeferred$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f64477b;
        if (i2 == 0) {
            ResultKt.b(obj);
            this.f64477b = 1;
            Object objZc = SplashScreenViewModelImpl.zc(this.f64478c, this);
            return objZc == coroutineSingletons ? coroutineSingletons : objZc;
        }
        if (i2 == 1) {
            ResultKt.b(obj);
            return obj;
        }
        md.k("call to 'resume' before 'invoke' with coroutine");
        return null;
    }
}
