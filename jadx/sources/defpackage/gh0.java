package defpackage;

import androidx.compose.animation.AnimatedContentScope;
import androidx.compose.foundation.lazy.LazyListScope;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.State;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.hilt.lifecycle.viewmodel.compose.HiltViewModelKt;
import androidx.lifecycle.HasDefaultViewModelProviderFactory;
import androidx.lifecycle.ViewModelStoreOwner;
import androidx.lifecycle.viewmodel.CreationExtras;
import androidx.lifecycle.viewmodel.compose.LocalViewModelStoreOwner;
import androidx.lifecycle.viewmodel.compose.ViewModelKt;
import androidx.navigation.NavBackStackEntry;
import androidx.navigation.NavGraphBuilder;
import androidx.navigation.NavHostController;
import androidx.navigation.compose.NavGraphBuilderKt;
import com.vuitton.android.designkit.ui.theme.templates.LVModalBottomSheetState;
import com.vuitton.android.presentation.screen.onboarding.OnboardingRoutes;
import com.vuitton.android.presentation.screen.onboarding.OnboardingViewModel;
import com.vuitton.android.presentation.screen.onboarding.b;
import com.vuitton.android.presentation.screen.onboarding.components.OnboardingPreferencesComposableKt;
import com.vuitton.android.presentation.screen.onboarding.components.OnboardingTransitionComposableKt;
import com.vuitton.android.presentation.screen.onboarding.d;
import com.vuitton.android.presentation.screen.onboarding.models.OnboardingViewState;
import com.vuitton.android.presentation.screen.options.accessibility.AccessibilityPreferencesViewModel;
import com.vuitton.android.presentation.screen.options.accessibility.AccessibilityPreferencesViewModelImpl;
import com.vuitton.android.presentation.screen.options.accessibility.components.AccessibilityPreferencesComposableKt;
import com.vuitton.android.presentation.screen.options.models.OptionsViewState;
import com.vuitton.android.presentation.screen.privacy.PrivacyViewModelImpl;
import defpackage.dh0;
import defpackage.md;
import java.util.Map;
import kotlin.Function;
import kotlin.Unit;
import kotlin.collections.EmptyList;
import kotlin.collections.MapsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function4;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.ReflectionFactory;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class gh0 implements Function1 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f69411b = 1;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Function0 f69412c;
    public final /* synthetic */ Function0 d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Function0 f69413e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Function0 f69414f;
    public final /* synthetic */ Function0 g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ Function0 f69415h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ Function0 f69416i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final /* synthetic */ Function0 f69417j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final /* synthetic */ Function0 f69418k;
    public final /* synthetic */ Function0 l;
    public final /* synthetic */ Object m;
    public final /* synthetic */ Object n;
    public final /* synthetic */ Object o;
    public final /* synthetic */ Object p;
    public final /* synthetic */ Object q;
    public final /* synthetic */ Function r;
    public final /* synthetic */ Function s;
    public final /* synthetic */ Function t;
    public final /* synthetic */ Object u;
    public final /* synthetic */ Object v;

    public /* synthetic */ gh0(OptionsViewState optionsViewState, Function0 function0, Function0 function1, Function0 function2, Function0 function3, Function0 function4, Function0 function5, Function0 function6, Function0 function7, Function0 function8, Function0 function9, Function0 function10, Function0 function11, Function0 function12, Function0 function13, Function0 function14, Function0 function15, Function0 function16, Function0 function17, Function0 function18) {
        this.m = optionsViewState;
        this.f69412c = function0;
        this.d = function1;
        this.f69413e = function2;
        this.f69414f = function3;
        this.g = function4;
        this.f69415h = function5;
        this.f69416i = function6;
        this.f69417j = function7;
        this.f69418k = function8;
        this.l = function9;
        this.n = function10;
        this.o = function11;
        this.p = function12;
        this.q = function13;
        this.r = function14;
        this.s = function15;
        this.t = function16;
        this.u = function17;
        this.v = function18;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        int i2 = this.f69411b;
        Object obj2 = this.v;
        Object obj3 = this.u;
        Function function = this.t;
        Function function2 = this.s;
        Function function3 = this.r;
        Object obj4 = this.q;
        Object obj5 = this.p;
        Object obj6 = this.o;
        Object obj7 = this.n;
        Object obj8 = this.m;
        int i3 = 1;
        switch (i2) {
            case 0:
                final Function2 function4 = (Function2) obj8;
                final NavHostController navHostController = (NavHostController) obj7;
                final OnboardingViewModel onboardingViewModel = (OnboardingViewModel) obj6;
                final State state = (State) obj5;
                final Function1 function1 = (Function1) function3;
                PrivacyViewModelImpl privacyViewModelImpl = (PrivacyViewModelImpl) obj3;
                Function1 function5 = (Function1) function2;
                LVModalBottomSheetState lVModalBottomSheetState = (LVModalBottomSheetState) obj2;
                Function1 function6 = (Function1) function;
                NavGraphBuilder navGraphBuilder = (NavGraphBuilder) obj;
                navGraphBuilder.getClass();
                ComposableLambdaImpl composableLambdaImpl = new ComposableLambdaImpl(2090425583, true, new d(function4, this.f69412c, this.d, navHostController, onboardingViewModel, state, (State) obj4));
                Map mapC = MapsKt.c();
                EmptyList emptyList = EmptyList.f71768b;
                ReflectionFactory reflectionFactory = Reflection.f71922a;
                NavGraphBuilderKt.a(navGraphBuilder, reflectionFactory.b(OnboardingRoutes.Login.class), mapC, emptyList, null, null, null, null, composableLambdaImpl);
                ComposableLambdaImpl composableLambdaImpl2 = new ComposableLambdaImpl(-227890458, true, new b(function4, onboardingViewModel, navHostController, state, function1, 0));
                NavGraphBuilderKt.a(navGraphBuilder, reflectionFactory.b(OnboardingRoutes.StartNow.class), MapsKt.c(), emptyList, null, null, null, null, composableLambdaImpl2);
                Function0 function0 = this.f69413e;
                ComposableLambdaImpl composableLambdaImpl3 = new ComposableLambdaImpl(-1497506649, true, new b(function4, privacyViewModelImpl, function0, navHostController, this.f69414f));
                NavGraphBuilderKt.a(navGraphBuilder, reflectionFactory.b(OnboardingRoutes.PrivacyPreCompliance.class), MapsKt.c(), emptyList, null, null, null, null, composableLambdaImpl3);
                ComposableLambdaImpl composableLambdaImpl4 = new ComposableLambdaImpl(1527844456, true, new b(function4, privacyViewModelImpl, navHostController, this.g, function5, 2));
                NavGraphBuilderKt.a(navGraphBuilder, reflectionFactory.b(OnboardingRoutes.PiplCbt.class), MapsKt.c(), emptyList, null, null, null, null, composableLambdaImpl4);
                ag0 ag0Var = new ag0(28);
                ag0 ag0Var2 = new ag0(29);
                ch0 ch0Var = new ch0(0);
                ch0 ch0Var2 = new ch0(1);
                ComposableLambdaImpl composableLambdaImpl5 = new ComposableLambdaImpl(258228265, true, new b(function4, privacyViewModelImpl, lVModalBottomSheetState, function0, navHostController));
                NavGraphBuilderKt.a(navGraphBuilder, reflectionFactory.b(OnboardingRoutes.Privacy.class), MapsKt.c(), emptyList, ag0Var, ag0Var2, ch0Var, ch0Var2, composableLambdaImpl5);
                final int i4 = 0;
                final Function0 function7 = this.f69415h;
                ComposableLambdaImpl composableLambdaImpl6 = new ComposableLambdaImpl(-1011387926, true, new Function4() { // from class: com.vuitton.android.presentation.screen.onboarding.c
                    @Override // kotlin.jvm.functions.Function4
                    public final Object g(Object obj9, Object obj10, Object obj11, Object obj12) {
                        int i5 = i4;
                        Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
                        State state2 = state;
                        OnboardingViewModel onboardingViewModel2 = onboardingViewModel;
                        Function2 function8 = function4;
                        AnimatedContentScope animatedContentScope = (AnimatedContentScope) obj9;
                        switch (i5) {
                            case 0:
                                Composer composer = (Composer) obj11;
                                ((Integer) obj12).getClass();
                                animatedContentScope.getClass();
                                ((NavBackStackEntry) obj10).getClass();
                                OpaqueKey opaqueKey = ComposerKt.f7940a;
                                Unit unit = Unit.f71739a;
                                boolean zK = composer.K(function8);
                                Object objX = composer.x();
                                if (zK || objX == composer$Companion$Empty$1) {
                                    objX = new OnboardingNavHostKt$OnboardingNavHost$3$1$10$1$1(function8, null);
                                    composer.q(objX);
                                }
                                EffectsKt.e(composer, unit, (Function2) objX);
                                OnboardingNavHostKt.a(composer, 0);
                                OnboardingViewState onboardingViewState = (OnboardingViewState) state2.getF10755b();
                                boolean zY = composer.y(onboardingViewModel2);
                                Object objX2 = composer.x();
                                if (zY || objX2 == composer$Companion$Empty$1) {
                                    objX2 = new dh0(onboardingViewModel2, 0);
                                    composer.q(objX2);
                                }
                                OnboardingPreferencesComposableKt.d(onboardingViewState, (Function0) objX2, function7, function1, composer, 0);
                                return unit;
                            default:
                                Composer composer2 = (Composer) obj11;
                                ((Integer) obj12).getClass();
                                animatedContentScope.getClass();
                                ((NavBackStackEntry) obj10).getClass();
                                OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                                Unit unit2 = Unit.f71739a;
                                boolean zK2 = composer2.K(function8);
                                Object objX3 = composer2.x();
                                if (zK2 || objX3 == composer$Companion$Empty$1) {
                                    objX3 = new OnboardingNavHostKt$OnboardingNavHost$3$1$11$1$1(function8, null);
                                    composer2.q(objX3);
                                }
                                EffectsKt.e(composer2, unit2, (Function2) objX3);
                                OnboardingNavHostKt.a(composer2, 0);
                                OnboardingViewState onboardingViewState2 = (OnboardingViewState) state2.getF10755b();
                                boolean zY2 = composer2.y(onboardingViewModel2);
                                Object objX4 = composer2.x();
                                if (zY2 || objX4 == composer$Companion$Empty$1) {
                                    objX4 = new dh0(onboardingViewModel2, 2);
                                    composer2.q(objX4);
                                }
                                OnboardingPreferencesComposableKt.b(onboardingViewState2, (Function0) objX4, function7, function1, composer2, 0);
                                return unit2;
                        }
                    }
                });
                NavGraphBuilderKt.a(navGraphBuilder, reflectionFactory.b(OnboardingRoutes.Notifications.class), MapsKt.c(), emptyList, null, null, null, null, composableLambdaImpl6);
                final int i5 = 1;
                final Function0 function8 = this.f69416i;
                ComposableLambdaImpl composableLambdaImpl7 = new ComposableLambdaImpl(2013963179, true, new Function4() { // from class: com.vuitton.android.presentation.screen.onboarding.c
                    @Override // kotlin.jvm.functions.Function4
                    public final Object g(Object obj9, Object obj10, Object obj11, Object obj12) {
                        int i6 = i5;
                        Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
                        State state2 = state;
                        OnboardingViewModel onboardingViewModel2 = onboardingViewModel;
                        Function2 function9 = function4;
                        AnimatedContentScope animatedContentScope = (AnimatedContentScope) obj9;
                        switch (i6) {
                            case 0:
                                Composer composer = (Composer) obj11;
                                ((Integer) obj12).getClass();
                                animatedContentScope.getClass();
                                ((NavBackStackEntry) obj10).getClass();
                                OpaqueKey opaqueKey = ComposerKt.f7940a;
                                Unit unit = Unit.f71739a;
                                boolean zK = composer.K(function9);
                                Object objX = composer.x();
                                if (zK || objX == composer$Companion$Empty$1) {
                                    objX = new OnboardingNavHostKt$OnboardingNavHost$3$1$10$1$1(function9, null);
                                    composer.q(objX);
                                }
                                EffectsKt.e(composer, unit, (Function2) objX);
                                OnboardingNavHostKt.a(composer, 0);
                                OnboardingViewState onboardingViewState = (OnboardingViewState) state2.getF10755b();
                                boolean zY = composer.y(onboardingViewModel2);
                                Object objX2 = composer.x();
                                if (zY || objX2 == composer$Companion$Empty$1) {
                                    objX2 = new dh0(onboardingViewModel2, 0);
                                    composer.q(objX2);
                                }
                                OnboardingPreferencesComposableKt.d(onboardingViewState, (Function0) objX2, function8, function1, composer, 0);
                                return unit;
                            default:
                                Composer composer2 = (Composer) obj11;
                                ((Integer) obj12).getClass();
                                animatedContentScope.getClass();
                                ((NavBackStackEntry) obj10).getClass();
                                OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                                Unit unit2 = Unit.f71739a;
                                boolean zK2 = composer2.K(function9);
                                Object objX3 = composer2.x();
                                if (zK2 || objX3 == composer$Companion$Empty$1) {
                                    objX3 = new OnboardingNavHostKt$OnboardingNavHost$3$1$11$1$1(function9, null);
                                    composer2.q(objX3);
                                }
                                EffectsKt.e(composer2, unit2, (Function2) objX3);
                                OnboardingNavHostKt.a(composer2, 0);
                                OnboardingViewState onboardingViewState2 = (OnboardingViewState) state2.getF10755b();
                                boolean zY2 = composer2.y(onboardingViewModel2);
                                Object objX4 = composer2.x();
                                if (zY2 || objX4 == composer$Companion$Empty$1) {
                                    objX4 = new dh0(onboardingViewModel2, 2);
                                    composer2.q(objX4);
                                }
                                OnboardingPreferencesComposableKt.b(onboardingViewState2, (Function0) objX4, function8, function1, composer2, 0);
                                return unit2;
                        }
                    }
                });
                NavGraphBuilderKt.a(navGraphBuilder, reflectionFactory.b(OnboardingRoutes.Geolocation.class), MapsKt.c(), emptyList, null, null, null, null, composableLambdaImpl7);
                Function0 function9 = this.f69417j;
                final Function0 function10 = this.f69418k;
                ComposableLambdaImpl composableLambdaImpl8 = new ComposableLambdaImpl(744346988, true, new d(function4, function9, onboardingViewModel, function6, function1, function10, state));
                NavGraphBuilderKt.a(navGraphBuilder, reflectionFactory.b(OnboardingRoutes.Icons.class), MapsKt.c(), emptyList, null, null, null, null, composableLambdaImpl8);
                ComposableLambdaImpl composableLambdaImpl9 = new ComposableLambdaImpl(-525269203, true, new Function4() { // from class: com.vuitton.android.presentation.screen.onboarding.e
                    @Override // kotlin.jvm.functions.Function4
                    public final Object g(Object obj9, Object obj10, Object obj11, Object obj12) {
                        Composer composer = (Composer) obj11;
                        defpackage.a.x((Integer) obj12, (AnimatedContentScope) obj9, (NavBackStackEntry) obj10);
                        OpaqueKey opaqueKey = ComposerKt.f7940a;
                        Unit unit = Unit.f71739a;
                        Function2 function11 = function4;
                        boolean zK = composer.K(function11);
                        Object objX = composer.x();
                        if (zK || objX == Composer.Companion.f7939a) {
                            objX = new OnboardingNavHostKt$OnboardingNavHost$3$1$13$1$1(function11, null);
                            composer.q(objX);
                        }
                        EffectsKt.e(composer, unit, (Function2) objX);
                        OnboardingNavHostKt.a(composer, 0);
                        OnboardingTransitionComposableKt.a(function10, composer, 0);
                        return unit;
                    }
                });
                NavGraphBuilderKt.a(navGraphBuilder, reflectionFactory.b(OnboardingRoutes.Transition.class), MapsKt.c(), emptyList, null, null, null, null, composableLambdaImpl9);
                ch0 ch0Var3 = new ch0(3);
                ch0 ch0Var4 = new ch0(4);
                ag0 ag0Var3 = new ag0(26);
                ag0 ag0Var4 = new ag0(27);
                final Function0 function11 = this.l;
                ComposableLambdaImpl composableLambdaImpl10 = new ComposableLambdaImpl(-1794885394, true, new Function4() { // from class: com.vuitton.android.presentation.screen.onboarding.a
                    @Override // kotlin.jvm.functions.Function4
                    public final Object g(Object obj9, Object obj10, Object obj11, Object obj12) {
                        Composer composer = (Composer) obj11;
                        ((Integer) obj12).getClass();
                        ((AnimatedContentScope) obj9).getClass();
                        ((NavBackStackEntry) obj10).getClass();
                        OpaqueKey opaqueKey = ComposerKt.f7940a;
                        Unit unit = Unit.f71739a;
                        Function2 function12 = function4;
                        boolean zK = composer.K(function12);
                        Object objX = composer.x();
                        Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
                        if (zK || objX == composer$Companion$Empty$1) {
                            objX = new OnboardingNavHostKt$OnboardingNavHost$3$1$18$1$1(function12, null);
                            composer.q(objX);
                        }
                        EffectsKt.e(composer, unit, (Function2) objX);
                        ViewModelStoreOwner viewModelStoreOwnerA = LocalViewModelStoreOwner.a(composer);
                        if (viewModelStoreOwnerA == null) {
                            md.k("No ViewModelStoreOwner was provided via LocalViewModelStoreOwner");
                            return null;
                        }
                        AccessibilityPreferencesViewModel accessibilityPreferencesViewModel = (AccessibilityPreferencesViewModel) ViewModelKt.a(Reflection.f71922a.b(AccessibilityPreferencesViewModelImpl.class), viewModelStoreOwnerA, null, HiltViewModelKt.a(viewModelStoreOwnerA, composer), viewModelStoreOwnerA instanceof HasDefaultViewModelProviderFactory ? ((HasDefaultViewModelProviderFactory) viewModelStoreOwnerA).getDefaultViewModelCreationExtras() : CreationExtras.Empty.f13578c, composer);
                        NavHostController navHostController2 = navHostController;
                        boolean zY = composer.y(navHostController2);
                        Object objX2 = composer.x();
                        if (zY || objX2 == composer$Companion$Empty$1) {
                            OnboardingNavHostKt$OnboardingNavHost$3$1$18$2$1 onboardingNavHostKt$OnboardingNavHost$3$1$18$2$1 = new OnboardingNavHostKt$OnboardingNavHost$3$1$18$2$1(0, navHostController2, NavHostController.class, "popBackStack", "popBackStack()Z", 8);
                            composer.q(onboardingNavHostKt$OnboardingNavHost$3$1$18$2$1);
                            objX2 = onboardingNavHostKt$OnboardingNavHost$3$1$18$2$1;
                        }
                        AccessibilityPreferencesComposableKt.a(accessibilityPreferencesViewModel, function11, (Function0) objX2, composer, 0);
                        return unit;
                    }
                });
                NavGraphBuilderKt.a(navGraphBuilder, reflectionFactory.b(OnboardingRoutes.Accessibility.class), MapsKt.c(), emptyList, ch0Var3, ch0Var4, ag0Var3, ag0Var4, composableLambdaImpl10);
                break;
            default:
                OptionsViewState optionsViewState = (OptionsViewState) obj8;
                LazyListScope lazyListScope = (LazyListScope) obj;
                lazyListScope.getClass();
                LazyListScope.f(lazyListScope, null, new ComposableLambdaImpl(-1384258503, true, new ub0(optionsViewState, this.f69412c, this.d, this.f69413e, this.f69414f, this.g, this.f69415h, this.f69416i, this.f69417j, this.f69418k, this.l, (Function0) obj7, (Function0) obj6, (Function0) obj5, (Function0) obj4, (Function0) function3, (Function0) function2, (Function0) function, (Function0) obj3)), 3);
                LazyListScope.f(lazyListScope, null, new ComposableLambdaImpl(-1032996446, true, new i61(optionsViewState, (Function0) obj2, i3)), 3);
                break;
        }
        return Unit.f71739a;
    }

    public /* synthetic */ gh0(Function2 function2, Function0 function0, Function0 function1, NavHostController navHostController, OnboardingViewModel onboardingViewModel, MutableState mutableState, MutableState mutableState2, Function1 function3, PrivacyViewModelImpl privacyViewModelImpl, Function0 function4, Function0 function5, Function0 function6, Function1 function7, LVModalBottomSheetState lVModalBottomSheetState, Function0 function8, Function0 function9, Function0 function10, Function1 function11, Function0 function12, Function0 function13) {
        this.m = function2;
        this.f69412c = function0;
        this.d = function1;
        this.n = navHostController;
        this.o = onboardingViewModel;
        this.p = mutableState;
        this.q = mutableState2;
        this.r = function3;
        this.u = privacyViewModelImpl;
        this.f69413e = function4;
        this.f69414f = function5;
        this.g = function6;
        this.s = function7;
        this.v = lVModalBottomSheetState;
        this.f69415h = function8;
        this.f69416i = function9;
        this.f69417j = function10;
        this.t = function11;
        this.f69418k = function12;
        this.l = function13;
    }
}
