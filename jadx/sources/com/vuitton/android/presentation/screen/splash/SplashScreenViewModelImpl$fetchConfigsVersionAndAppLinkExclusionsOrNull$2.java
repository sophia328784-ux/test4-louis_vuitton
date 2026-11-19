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
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Deferred;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u0004\u0018\u00010\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "Lcom/vuitton/android/presentation/screen/splash/SplashScreenAction;", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.splash.SplashScreenViewModelImpl$fetchConfigsVersionAndAppLinkExclusionsOrNull$2", f = "SplashScreenViewModelImpl.kt", l = {372, 373}, m = "invokeSuspend", v = 2)
final class SplashScreenViewModelImpl$fetchConfigsVersionAndAppLinkExclusionsOrNull$2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super SplashScreenAction>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Object f64474b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f64475c;
    public /* synthetic */ Object d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ SplashScreenViewModelImpl f64476e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SplashScreenViewModelImpl$fetchConfigsVersionAndAppLinkExclusionsOrNull$2(SplashScreenViewModelImpl splashScreenViewModelImpl, Continuation continuation) {
        super(2, continuation);
        this.f64476e = splashScreenViewModelImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        SplashScreenViewModelImpl$fetchConfigsVersionAndAppLinkExclusionsOrNull$2 splashScreenViewModelImpl$fetchConfigsVersionAndAppLinkExclusionsOrNull$2 = new SplashScreenViewModelImpl$fetchConfigsVersionAndAppLinkExclusionsOrNull$2(this.f64476e, continuation);
        splashScreenViewModelImpl$fetchConfigsVersionAndAppLinkExclusionsOrNull$2.d = obj;
        return splashScreenViewModelImpl$fetchConfigsVersionAndAppLinkExclusionsOrNull$2;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((SplashScreenViewModelImpl$fetchConfigsVersionAndAppLinkExclusionsOrNull$2) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Deferred deferredA;
        CoroutineScope coroutineScope = (CoroutineScope) this.d;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f64475c;
        if (i2 == 0) {
            ResultKt.b(obj);
            SplashScreenViewModelImpl splashScreenViewModelImpl = this.f64476e;
            Deferred deferredA2 = BuildersKt.a(coroutineScope, null, new SplashScreenViewModelImpl$fetchConfigsVersionAndAppLinkExclusionsOrNull$2$configsVersionDeferred$1(splashScreenViewModelImpl, null), 3);
            deferredA = BuildersKt.a(coroutineScope, null, new SplashScreenViewModelImpl$fetchConfigsVersionAndAppLinkExclusionsOrNull$2$appLinkExclusionsDeferred$1(splashScreenViewModelImpl, null), 3);
            this.d = null;
            this.f64474b = deferredA;
            this.f64475c = 1;
            obj = deferredA2.k(this);
            if (obj != coroutineSingletons) {
            }
        }
        if (i2 != 1) {
            if (i2 == 2) {
                ResultKt.b(obj);
                return obj;
            }
            md.k("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
        deferredA = (Deferred) this.f64474b;
        ResultKt.b(obj);
        SplashScreenAction splashScreenAction = (SplashScreenAction) obj;
        if (splashScreenAction != null) {
            return splashScreenAction;
        }
        this.d = null;
        this.f64474b = null;
        this.f64475c = 2;
        Object objK = deferredA.k(this);
        return objK == coroutineSingletons ? coroutineSingletons : objK;
    }
}
