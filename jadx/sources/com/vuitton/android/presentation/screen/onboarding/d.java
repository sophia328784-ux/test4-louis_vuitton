package com.vuitton.android.presentation.screen.onboarding;

import androidx.compose.animation.AnimatedContentScope;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.State;
import androidx.navigation.NavBackStackEntry;
import androidx.navigation.NavHostController;
import com.vuitton.android.presentation.screen.authentication.models.TrackingAuthOrigin;
import com.vuitton.android.presentation.screen.authentication.social.components.SocialLoginBottomSheetKt;
import com.vuitton.android.presentation.screen.authentication.social.components.SocialLoginBottomSheetState;
import com.vuitton.android.presentation.screen.authentication.welcome.components.WelcomeComposableKt;
import com.vuitton.android.presentation.screen.authentication.welcome.model.WelcomeViewState;
import com.vuitton.android.presentation.screen.onboarding.components.OnboardingIconComposableKt;
import com.vuitton.android.presentation.screen.onboarding.models.OnboardingViewState;
import defpackage.dh0;
import defpackage.eh0;
import defpackage.tb0;
import defpackage.yj;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function4;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class d implements Function4 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f59570b = 1;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Function2 f59571c;
    public final /* synthetic */ Function0 d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ OnboardingViewModel f59572e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Function0 f59573f;
    public final /* synthetic */ State g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ Object f59574h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ Object f59575i;

    public /* synthetic */ d(Function2 function2, Function0 function0, OnboardingViewModel onboardingViewModel, Function1 function1, Function1 function3, Function0 function4, State state) {
        this.f59571c = function2;
        this.d = function0;
        this.f59572e = onboardingViewModel;
        this.f59574h = function1;
        this.f59575i = function3;
        this.f59573f = function4;
        this.g = state;
    }

    @Override // kotlin.jvm.functions.Function4
    public final Object g(Object obj, Object obj2, Object obj3, Object obj4) {
        int i2 = this.f59570b;
        Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
        State state = this.g;
        Object obj5 = this.f59575i;
        Object obj6 = this.f59574h;
        OnboardingViewModel onboardingViewModel = this.f59572e;
        Function2 function2 = this.f59571c;
        switch (i2) {
            case 0:
                NavHostController navHostController = (NavHostController) obj6;
                State state2 = (State) obj5;
                Composer composer = (Composer) obj3;
                ((Integer) obj4).getClass();
                ((AnimatedContentScope) obj).getClass();
                ((NavBackStackEntry) obj2).getClass();
                OpaqueKey opaqueKey = ComposerKt.f7940a;
                Unit unit = Unit.f71739a;
                boolean zK = composer.K(function2);
                Object objX = composer.x();
                if (zK || objX == composer$Companion$Empty$1) {
                    objX = new OnboardingNavHostKt$OnboardingNavHost$3$1$1$1$1(function2, null);
                    composer.q(objX);
                }
                EffectsKt.e(composer, unit, (Function2) objX);
                TrackingAuthOrigin trackingAuthOrigin = TrackingAuthOrigin.ONBOARDING;
                boolean zY = composer.y(navHostController);
                Object objX2 = composer.x();
                if (zY || objX2 == composer$Companion$Empty$1) {
                    objX2 = new yj(navHostController, 7);
                    composer.q(objX2);
                }
                SocialLoginBottomSheetState socialLoginBottomSheetStateB = SocialLoginBottomSheetKt.b(trackingAuthOrigin, this.d, this.f59573f, (Function0) objX2, null, composer, 6, 16);
                WelcomeViewState welcomeViewState = (WelcomeViewState) state2.getF10755b();
                boolean zY2 = composer.y(onboardingViewModel) | composer.y(navHostController) | composer.K(state);
                Object objX3 = composer.x();
                if (zY2 || objX3 == composer$Companion$Empty$1) {
                    objX3 = new eh0(onboardingViewModel, navHostController, state, 1);
                    composer.q(objX3);
                }
                Function0 function0 = (Function0) objX3;
                boolean zY3 = composer.y(onboardingViewModel);
                Object objX4 = composer.x();
                if (zY3 || objX4 == composer$Companion$Empty$1) {
                    objX4 = new dh0(onboardingViewModel, 3);
                    composer.q(objX4);
                }
                Function0 function1 = (Function0) objX4;
                boolean zY4 = composer.y(navHostController);
                Object objX5 = composer.x();
                if (zY4 || objX5 == composer$Companion$Empty$1) {
                    objX5 = new yj(navHostController, 8);
                    composer.q(objX5);
                }
                WelcomeComposableKt.a(null, socialLoginBottomSheetStateB, welcomeViewState, false, function0, null, null, null, function1, (Function0) objX5, composer, 0, 473);
                return unit;
            default:
                Function1 function3 = (Function1) obj6;
                Function1 function4 = (Function1) obj5;
                Composer composer2 = (Composer) obj3;
                ((Integer) obj4).getClass();
                ((AnimatedContentScope) obj).getClass();
                ((NavBackStackEntry) obj2).getClass();
                OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                Unit unit2 = Unit.f71739a;
                boolean zK2 = composer2.K(function2);
                Object objX6 = composer2.x();
                if (zK2 || objX6 == composer$Companion$Empty$1) {
                    objX6 = new OnboardingNavHostKt$OnboardingNavHost$3$1$12$1$1(function2, null);
                    composer2.q(objX6);
                }
                EffectsKt.e(composer2, unit2, (Function2) objX6);
                OnboardingNavHostKt.a(composer2, 0);
                OnboardingViewState onboardingViewState = (OnboardingViewState) state.getF10755b();
                boolean zY5 = composer2.y(onboardingViewModel);
                Object objX7 = composer2.x();
                if (zY5 || objX7 == composer$Companion$Empty$1) {
                    objX7 = new dh0(onboardingViewModel, 4);
                    composer2.q(objX7);
                }
                Function0 function5 = (Function0) objX7;
                boolean zY6 = composer2.y(onboardingViewModel);
                Object objX8 = composer2.x();
                if (zY6 || objX8 == composer$Companion$Empty$1) {
                    objX8 = new tb0(onboardingViewModel, 16);
                    composer2.q(objX8);
                }
                OnboardingIconComposableKt.a(onboardingViewState, this.d, function5, (Function1) objX8, function3, function4, this.f59573f, composer2, 0);
                return unit2;
        }
    }

    public /* synthetic */ d(Function2 function2, Function0 function0, Function0 function1, NavHostController navHostController, OnboardingViewModel onboardingViewModel, State state, State state2) {
        this.f59571c = function2;
        this.d = function0;
        this.f59573f = function1;
        this.f59574h = navHostController;
        this.f59572e = onboardingViewModel;
        this.g = state;
        this.f59575i = state2;
    }
}
