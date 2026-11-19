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
import com.vuitton.android.designkit.ui.theme.templates.LVModalBottomSheetState;
import com.vuitton.android.presentation.screen.onboarding.components.OnboardingStartNowComposableKt;
import com.vuitton.android.presentation.screen.onboarding.models.OnboardingViewState;
import com.vuitton.android.presentation.screen.privacy.PrivacyViewModelImpl;
import com.vuitton.android.presentation.screen.privacy.components.PiplCbdtComposableKt;
import com.vuitton.android.presentation.screen.privacy.components.PrivacyComposableKt;
import com.vuitton.android.presentation.screen.privacy.components.precompliance.PrivacyPreComplianceComposableKt;
import defpackage.dh0;
import defpackage.eh0;
import defpackage.fh0;
import defpackage.mg0;
import defpackage.of0;
import defpackage.yj;
import kotlin.Function;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function4;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class b implements Function4 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f59541b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Function2 f59542c;
    public final /* synthetic */ NavHostController d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f59543e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Object f59544f;
    public final /* synthetic */ Function g;

    public /* synthetic */ b(Function2 function2, PrivacyViewModelImpl privacyViewModelImpl, LVModalBottomSheetState lVModalBottomSheetState, Function0 function0, NavHostController navHostController) {
        this.f59541b = 3;
        this.f59542c = function2;
        this.f59543e = privacyViewModelImpl;
        this.f59544f = lVModalBottomSheetState;
        this.g = function0;
        this.d = navHostController;
    }

    @Override // kotlin.jvm.functions.Function4
    public final Object g(Object obj, Object obj2, Object obj3, Object obj4) {
        int i2 = this.f59541b;
        Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
        NavHostController navHostController = this.d;
        Function function = this.g;
        Object obj5 = this.f59544f;
        Object obj6 = this.f59543e;
        Function2 function2 = this.f59542c;
        switch (i2) {
            case 0:
                OnboardingViewModel onboardingViewModel = (OnboardingViewModel) obj6;
                State state = (State) obj5;
                Function1 function1 = (Function1) function;
                Composer composer = (Composer) obj3;
                ((Integer) obj4).getClass();
                ((AnimatedContentScope) obj).getClass();
                ((NavBackStackEntry) obj2).getClass();
                OpaqueKey opaqueKey = ComposerKt.f7940a;
                Unit unit = Unit.f71739a;
                boolean zK = composer.K(function2);
                Object objX = composer.x();
                if (zK || objX == composer$Companion$Empty$1) {
                    objX = new OnboardingNavHostKt$OnboardingNavHost$3$1$2$1$1(function2, null);
                    composer.q(objX);
                }
                EffectsKt.e(composer, unit, (Function2) objX);
                OnboardingNavHostKt.a(composer, 0);
                OnboardingViewState onboardingViewState = (OnboardingViewState) state.getF10755b();
                boolean zY = composer.y(onboardingViewModel);
                Object objX2 = composer.x();
                if (zY || objX2 == composer$Companion$Empty$1) {
                    objX2 = new dh0(onboardingViewModel, 1);
                    composer.q(objX2);
                }
                Function0 function0 = (Function0) objX2;
                boolean zY2 = composer.y(onboardingViewModel) | composer.y(navHostController) | composer.K(state);
                Object objX3 = composer.x();
                if (zY2 || objX3 == composer$Companion$Empty$1) {
                    objX3 = new eh0(onboardingViewModel, navHostController, state, 0);
                    composer.q(objX3);
                }
                OnboardingStartNowComposableKt.a(onboardingViewState, function0, (Function0) objX3, function1, composer, 0);
                return unit;
            case 1:
                PrivacyViewModelImpl privacyViewModelImpl = (PrivacyViewModelImpl) obj6;
                Function0 function3 = (Function0) obj5;
                Function0 function4 = (Function0) function;
                Composer composer2 = (Composer) obj3;
                ((Integer) obj4).getClass();
                ((AnimatedContentScope) obj).getClass();
                ((NavBackStackEntry) obj2).getClass();
                OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                Unit unit2 = Unit.f71739a;
                boolean zK2 = composer2.K(function2);
                Object objX4 = composer2.x();
                if (zK2 || objX4 == composer$Companion$Empty$1) {
                    objX4 = new OnboardingNavHostKt$OnboardingNavHost$3$1$3$1$1(function2, null);
                    composer2.q(objX4);
                }
                EffectsKt.e(composer2, unit2, (Function2) objX4);
                Object objX5 = composer2.x();
                if (objX5 == composer$Companion$Empty$1) {
                    objX5 = new mg0(6);
                    composer2.q(objX5);
                }
                Function0 function5 = (Function0) objX5;
                boolean zY3 = composer2.y(navHostController);
                Object objX6 = composer2.x();
                if (zY3 || objX6 == composer$Companion$Empty$1) {
                    objX6 = new yj(navHostController, 9);
                    composer2.q(objX6);
                }
                PrivacyPreComplianceComposableKt.a(privacyViewModelImpl, true, function5, function3, (Function0) objX6, function4, composer2, 432);
                return unit2;
            case 2:
                PrivacyViewModelImpl privacyViewModelImpl2 = (PrivacyViewModelImpl) obj6;
                Function0 function6 = (Function0) obj5;
                Function1 function7 = (Function1) function;
                Composer composer3 = (Composer) obj3;
                ((Integer) obj4).getClass();
                ((AnimatedContentScope) obj).getClass();
                ((NavBackStackEntry) obj2).getClass();
                OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                Unit unit3 = Unit.f71739a;
                boolean zK3 = composer3.K(function2);
                Object objX7 = composer3.x();
                if (zK3 || objX7 == composer$Companion$Empty$1) {
                    objX7 = new OnboardingNavHostKt$OnboardingNavHost$3$1$4$1$1(function2, null);
                    composer3.q(objX7);
                }
                EffectsKt.e(composer3, unit3, (Function2) objX7);
                boolean zY4 = composer3.y(privacyViewModelImpl2) | composer3.y(navHostController);
                Object objX8 = composer3.x();
                if (zY4 || objX8 == composer$Companion$Empty$1) {
                    objX8 = new fh0(privacyViewModelImpl2, navHostController, 0);
                    composer3.q(objX8);
                }
                PiplCbdtComposableKt.a((Function0) objX8, function6, function7, composer3, 0);
                return unit3;
            default:
                PrivacyViewModelImpl privacyViewModelImpl3 = (PrivacyViewModelImpl) obj6;
                LVModalBottomSheetState lVModalBottomSheetState = (LVModalBottomSheetState) obj5;
                Function0 function8 = (Function0) function;
                Composer composer4 = (Composer) obj3;
                ((Integer) obj4).getClass();
                ((AnimatedContentScope) obj).getClass();
                ((NavBackStackEntry) obj2).getClass();
                OpaqueKey opaqueKey4 = ComposerKt.f7940a;
                Unit unit4 = Unit.f71739a;
                boolean zK4 = composer4.K(function2);
                Object objX9 = composer4.x();
                if (zK4 || objX9 == composer$Companion$Empty$1) {
                    objX9 = new OnboardingNavHostKt$OnboardingNavHost$3$1$9$1$1(function2, null);
                    composer4.q(objX9);
                }
                EffectsKt.e(composer4, unit4, (Function2) objX9);
                boolean zY5 = composer4.y(navHostController);
                Object objX10 = composer4.x();
                if (zY5 || objX10 == composer$Companion$Empty$1) {
                    objX10 = new yj(navHostController, 6);
                    composer4.q(objX10);
                }
                Function0 function9 = (Function0) objX10;
                boolean zY6 = composer4.y(lVModalBottomSheetState) | composer4.y(privacyViewModelImpl3) | composer4.y(navHostController);
                Object objX11 = composer4.x();
                if (zY6 || objX11 == composer$Companion$Empty$1) {
                    objX11 = new of0(lVModalBottomSheetState, privacyViewModelImpl3, navHostController);
                    composer4.q(objX11);
                }
                PrivacyComposableKt.a(privacyViewModelImpl3, true, true, lVModalBottomSheetState, function8, function9, (Function0) objX11, composer4, (LVModalBottomSheetState.f48797e << 9) | 432);
                return unit4;
        }
    }

    public /* synthetic */ b(Function2 function2, PrivacyViewModelImpl privacyViewModelImpl, Function0 function0, NavHostController navHostController, Function0 function1) {
        this.f59541b = 1;
        this.f59542c = function2;
        this.f59543e = privacyViewModelImpl;
        this.f59544f = function0;
        this.d = navHostController;
        this.g = function1;
    }

    public /* synthetic */ b(Function2 function2, Object obj, NavHostController navHostController, Object obj2, Function1 function1, int i2) {
        this.f59541b = i2;
        this.f59542c = function2;
        this.f59543e = obj;
        this.d = navHostController;
        this.f59544f = obj2;
        this.g = function1;
    }
}
