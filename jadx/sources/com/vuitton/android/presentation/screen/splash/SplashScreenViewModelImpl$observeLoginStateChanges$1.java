package com.vuitton.android.presentation.screen.splash;

import com.vuitton.android.presentation.screen.onboarding.models.OnboardingStateUiModel;
import com.vuitton.foundation.model.domain.model.authentication.LoginState;
import com.vuitton.foundation.model.domain.model.onboarding.OnboardingState;
import defpackage.md;
import defpackage.os;
import defpackage.v40;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.flow.MutableStateFlow;
import kotlinx.coroutines.flow.StateFlow;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.splash.SplashScreenViewModelImpl$observeLoginStateChanges$1", f = "SplashScreenViewModelImpl.kt", l = {300}, m = "invokeSuspend", v = 2)
final class SplashScreenViewModelImpl$observeLoginStateChanges$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f64489b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ SplashScreenViewModelImpl f64490c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SplashScreenViewModelImpl$observeLoginStateChanges$1(SplashScreenViewModelImpl splashScreenViewModelImpl, Continuation continuation) {
        super(2, continuation);
        this.f64490c = splashScreenViewModelImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new SplashScreenViewModelImpl$observeLoginStateChanges$1(this.f64490c, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((SplashScreenViewModelImpl$observeLoginStateChanges$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f64489b;
        if (i2 == 0) {
            ResultKt.b(obj);
            final SplashScreenViewModelImpl splashScreenViewModelImpl = this.f64490c;
            StateFlow stateFlow = splashScreenViewModelImpl.f64457k.g;
            FlowCollector flowCollector = new FlowCollector() { // from class: com.vuitton.android.presentation.screen.splash.SplashScreenViewModelImpl$observeLoginStateChanges$1.1

                /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.splash.SplashScreenViewModelImpl$observeLoginStateChanges$1$1$WhenMappings */
                @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
                public static final /* synthetic */ class WhenMappings {

                    /* JADX INFO: renamed from: a, reason: collision with root package name */
                    public static final /* synthetic */ int[] f64492a;

                    static {
                        int[] iArr = new int[LoginState.values().length];
                        try {
                            iArr[LoginState.LOGGED_IN.ordinal()] = 1;
                        } catch (NoSuchFieldError unused) {
                        }
                        try {
                            iArr[LoginState.LOGGED_OUT.ordinal()] = 2;
                        } catch (NoSuchFieldError unused2) {
                        }
                        f64492a = iArr;
                    }
                }

                @Override // kotlinx.coroutines.flow.FlowCollector
                public final Object emit(Object obj2, Continuation continuation) {
                    LoginState loginState = (LoginState) obj2;
                    SplashScreenViewModelImpl splashScreenViewModelImpl2 = splashScreenViewModelImpl;
                    MutableStateFlow mutableStateFlow = splashScreenViewModelImpl2.L;
                    int i3 = WhenMappings.f64492a[loginState.ordinal()];
                    if (i3 == 1) {
                        mutableStateFlow.setValue(Boolean.TRUE);
                    } else {
                        if (i3 != 2) {
                            v40.g();
                            return null;
                        }
                        mutableStateFlow.setValue(Boolean.FALSE);
                    }
                    if (loginState != LoginState.LOGGED_IN || splashScreenViewModelImpl2.K != OnboardingStateUiModel.NOT_STARTED) {
                        return Unit.f71739a;
                    }
                    splashScreenViewModelImpl2.K = OnboardingStateUiModel.DONE;
                    Object objA = splashScreenViewModelImpl2.A.f50152a.a(OnboardingState.DONE, continuation);
                    CoroutineSingletons coroutineSingletons2 = CoroutineSingletons.COROUTINE_SUSPENDED;
                    if (objA != coroutineSingletons2) {
                        objA = Unit.f71739a;
                    }
                    return objA == coroutineSingletons2 ? objA : Unit.f71739a;
                }
            };
            this.f64489b = 1;
            if (stateFlow.f(flowCollector, this) == coroutineSingletons) {
                return coroutineSingletons;
            }
        } else {
            if (i2 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.b(obj);
        }
        os.d();
        return null;
    }
}
