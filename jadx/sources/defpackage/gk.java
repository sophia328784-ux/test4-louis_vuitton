package defpackage;

import android.content.Context;
import androidx.compose.animation.AnimatedVisibilityKt;
import androidx.compose.animation.AnimationModifierKt;
import androidx.compose.animation.EnterExitTransitionKt;
import androidx.compose.animation.EnterTransition;
import androidx.compose.animation.core.AnimationSpecKt;
import androidx.compose.animation.core.TweenSpec;
import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.WindowInsetsPadding_androidKt;
import androidx.compose.material3.TopAppBarScrollBehavior;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.BiasAlignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.RectangleShapeKt;
import androidx.compose.ui.graphics.RectangleShapeKt$RectangleShape$1;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.navigation.NavController;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.google.ar.core.ImageMetadata;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.molecules.topbar.LVMediumTopBarKt;
import com.vuitton.android.presentation.compose.animation.EnterTransitionKt;
import com.vuitton.android.presentation.compose.animation.ExitTransitionKt;
import com.vuitton.android.presentation.contact.ContactUsTracker;
import com.vuitton.android.presentation.contact.models.ContactUsUiModel;
import com.vuitton.android.presentation.link.builder.PassAppLinkBuilder;
import com.vuitton.android.presentation.link.navigation.ContributionLinkNavigator;
import com.vuitton.android.presentation.screen.aicompanion.models.tracking.AICompanionTracker;
import com.vuitton.android.presentation.screen.catalog.CatalogRoutingViewModel;
import com.vuitton.android.presentation.screen.feed.FeedViewModel;
import com.vuitton.android.presentation.screen.feed.components.FeedComposableKt;
import com.vuitton.android.presentation.screen.filter.quickaccess.QuickAccessFiltersViewModel;
import com.vuitton.android.presentation.screen.filter.quickaccess.components.QuickAccessFiltersContainerKt;
import com.vuitton.android.presentation.screen.filter.quickaccess.models.QuickAccessFiltersViewState;
import com.vuitton.android.presentation.screen.main.MainNavigationState;
import com.vuitton.android.presentation.screen.main.navigation.CatalogNavigationKt;
import com.vuitton.android.presentation.screen.main.navigation.CatalogRoute;
import com.vuitton.android.presentation.screen.options.OptionsViewModel;
import com.vuitton.android.presentation.screen.options.components.OptionsComposableKt;
import com.vuitton.android.presentation.screen.pdp.models.PdpViewState;
import com.vuitton.android.presentation.screen.pdp.models.tracking.PdpTracker;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.ProductUiModel;
import com.vuitton.android.presentation.screen.permissions.PermissionsViewModel;
import com.vuitton.android.presentation.screen.plp.models.viewstates.PLPViewState;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlinx.coroutines.flow.SharedFlow;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class gk implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f69428b = 1;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f69429c;
    public final /* synthetic */ Function0 d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Function0 f69430e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Function0 f69431f;
    public final /* synthetic */ Object g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ Object f69432h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ Object f69433i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final /* synthetic */ Object f69434j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final /* synthetic */ Object f69435k;
    public final /* synthetic */ Object l;
    public final /* synthetic */ Object m;

    public /* synthetic */ gk(FeedViewModel feedViewModel, PermissionsViewModel permissionsViewModel, ContributionLinkNavigator contributionLinkNavigator, SharedFlow sharedFlow, Function1 function1, Function1 function2, qb0 qb0Var, Function1 function3, Function0 function0, Function0 function4, Function0 function5, int i2) {
        this.g = feedViewModel;
        this.f69432h = permissionsViewModel;
        this.f69429c = contributionLinkNavigator;
        this.f69433i = sharedFlow;
        this.f69434j = function1;
        this.f69435k = function2;
        this.l = qb0Var;
        this.m = function3;
        this.d = function0;
        this.f69430e = function4;
        this.f69431f = function5;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i2 = this.f69428b;
        Object[] objArr = 0;
        Object obj3 = this.m;
        Object obj4 = this.f69429c;
        Object obj5 = this.l;
        Object obj6 = this.f69435k;
        Object obj7 = this.f69434j;
        Object obj8 = this.f69433i;
        Object obj9 = this.f69432h;
        Object obj10 = this.g;
        switch (i2) {
            case 0:
                ((Integer) obj2).getClass();
                CatalogNavigationKt.a((MainNavigationState) obj10, (Context) obj9, (CatalogRoute) obj8, (CatalogRoutingViewModel) obj7, (QuickAccessFiltersViewModel) obj6, (PassAppLinkBuilder) obj5, (ContributionLinkNavigator) obj4, (Function3) obj3, this.d, this.f69430e, this.f69431f, (Composer) obj, RecomposeScopeImplKt.a(1));
                return Unit.f71739a;
            case 1:
                ((Integer) obj2).getClass();
                FeedComposableKt.b((FeedViewModel) obj10, (PermissionsViewModel) obj9, (ContributionLinkNavigator) obj4, (SharedFlow) obj8, (Function1) obj7, (Function1) obj6, (qb0) obj5, (Function1) obj3, this.d, this.f69430e, this.f69431f, (Composer) obj, RecomposeScopeImplKt.a(1));
                return Unit.f71739a;
            case 2:
                ((Integer) obj2).getClass();
                OptionsComposableKt.b((OptionsViewModel) obj10, (NavController) obj9, this.d, this.f69430e, this.f69431f, (Function0) obj8, (Function0) obj7, (Function0) obj6, (Function0) obj5, (Function0) obj4, (Function0) obj3, (Composer) obj, RecomposeScopeImplKt.a(1));
                return Unit.f71739a;
            case 3:
                QuickAccessFiltersViewState quickAccessFiltersViewState = (QuickAccessFiltersViewState) obj10;
                Function2 function2 = (Function2) obj9;
                Function1 function1 = (Function1) obj8;
                Function0 function0 = (Function0) obj7;
                PLPViewState pLPViewState = (PLPViewState) obj6;
                AICompanionTracker aICompanionTracker = (AICompanionTracker) obj5;
                MutableState mutableState = (MutableState) obj4;
                MutableState mutableState2 = (MutableState) obj3;
                Composer composer = (Composer) obj;
                int iIntValue = ((Integer) obj2).intValue();
                if (composer.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                    OpaqueKey opaqueKey = ComposerKt.f7940a;
                    if ((quickAccessFiltersViewState == null || !quickAccessFiltersViewState.f58171c) && quickAccessFiltersViewState != null) {
                        DTFunctionNameModifier dTFunctionNameModifierJ = pq0.j(-166761312, composer, "PLPScreen_J1OVMuw$lambda$5$37");
                        long j2 = LVAppDesignKitTheme.c(composer).f48361b.u;
                        RectangleShapeKt$RectangleShape$1 rectangleShapeKt$RectangleShape$1 = RectangleShapeKt.f8913a;
                        Modifier modifierB = BackgroundKt.b(dTFunctionNameModifierJ, j2, rectangleShapeKt$RectangleShape$1);
                        Alignment.f8582a.getClass();
                        MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
                        int iHashCode = Long.hashCode(composer.getT());
                        PersistentCompositionLocalMap persistentCompositionLocalMapN = composer.n();
                        Modifier modifierC = ComposedModifierKt.c(composer, modifierB);
                        ComposeUiNode.b0.getClass();
                        Function0 function3 = ComposeUiNode.Companion.f9641b;
                        if (composer.getF7976a() == null) {
                            ComposablesKt.b();
                            throw null;
                        }
                        composer.B();
                        if (composer.getS()) {
                            composer.C(function3);
                        } else {
                            composer.o();
                        }
                        Updater.c(composer, measurePolicyD, ComposeUiNode.Companion.f9644f);
                        Updater.c(composer, persistentCompositionLocalMapN, ComposeUiNode.Companion.f9643e);
                        Updater.c(composer, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
                        Updater.b(composer, ComposeUiNode.Companion.f9645h);
                        Updater.c(composer, modifierC, ComposeUiNode.Companion.d);
                        boolean z = !quickAccessFiltersViewState.f58170b;
                        TweenSpec tweenSpecC = AnimationSpecKt.c(400, 200, null, 4);
                        Object objX = composer.x();
                        Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
                        if (objX == composer$Companion$Empty$1) {
                            objX = new fj0(29);
                            composer.q(objX);
                        }
                        EnterTransition enterTransitionQ = EnterExitTransitionKt.q((Function1) objX, tweenSpecC);
                        TweenSpec tweenSpecC2 = AnimationSpecKt.c(400, 0, null, 6);
                        Object objX2 = composer.x();
                        if (objX2 == composer$Companion$Empty$1) {
                            objX2 = new yk0(objArr == true ? 1 : 0);
                            composer.q(objX2);
                        }
                        AnimatedVisibilityKt.e(z, null, enterTransitionQ, EnterExitTransitionKt.u((Function1) objX2, tweenSpecC2), null, ComposableLambdaKt.b(-51576503, new n4(function0, pLPViewState, aICompanionTracker, mutableState, mutableState2), composer), composer, 200064, 18);
                        Modifier modifierB2 = WindowInsetsPadding_androidKt.b(AnimationModifierKt.b(BackgroundKt.b(new DTFunctionNameModifier("PLPScreen_J1OVMuw$lambda$5$37"), LVAppDesignKitTheme.c(composer).f48361b.u, rectangleShapeKt$RectangleShape$1), null, 3));
                        boolean z2 = quickAccessFiltersViewState.f58170b;
                        EnterTransition enterTransition = EnterTransitionKt.f50932a;
                        TweenSpec tweenSpecC3 = AnimationSpecKt.c(400, 200, null, 4);
                        BiasAlignment.Vertical vertical = Alignment.Companion.f8591k;
                        QuickAccessFiltersContainerKt.a(quickAccessFiltersViewState, modifierB2, z2, false, enterTransition.b(EnterExitTransitionKt.d(tweenSpecC3, vertical, null, 12)), ExitTransitionKt.f50933a.b(EnterExitTransitionKt.n(null, vertical, null, 13)), function2, this.d, this.f69430e, this.f69431f, function1, composer, 224256, 0);
                        composer.r();
                        composer.F();
                    } else {
                        composer.L(-162992270);
                        composer.F();
                    }
                } else {
                    composer.D();
                }
                return Unit.f71739a;
            default:
                String str = (String) obj10;
                PdpViewState pdpViewState = (PdpViewState) obj9;
                TopAppBarScrollBehavior topAppBarScrollBehavior = (TopAppBarScrollBehavior) obj8;
                ContactUsUiModel contactUsUiModel = (ContactUsUiModel) obj7;
                ContactUsTracker contactUsTracker = (ContactUsTracker) obj6;
                Function1 function4 = (Function1) obj5;
                Function1 function5 = (Function1) obj4;
                PdpTracker pdpTracker = (PdpTracker) obj3;
                Composer composer2 = (Composer) obj;
                int iIntValue2 = ((Integer) obj2).intValue();
                if (composer2.p(iIntValue2 & 1, (iIntValue2 & 3) != 2)) {
                    OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                    ProductUiModel productUiModel = pdpViewState.f61566b;
                    LVMediumTopBarKt.a(null, null, str, productUiModel != null ? productUiModel.f61735b : null, this.d, ComposableLambdaKt.b(-210122295, new hk(contactUsUiModel, pdpViewState, contactUsTracker, function4, function5, pdpTracker, this.f69430e, str, this.f69431f), composer2), null, topAppBarScrollBehavior, composer2, ImageMetadata.EDGE_MODE, 67);
                } else {
                    composer2.D();
                }
                return Unit.f71739a;
        }
    }

    public /* synthetic */ gk(QuickAccessFiltersViewState quickAccessFiltersViewState, Function2 function2, Function0 function0, Function0 function1, Function0 function3, Function1 function4, Function0 function5, PLPViewState pLPViewState, AICompanionTracker aICompanionTracker, MutableState mutableState, MutableState mutableState2) {
        this.g = quickAccessFiltersViewState;
        this.f69432h = function2;
        this.d = function0;
        this.f69430e = function1;
        this.f69431f = function3;
        this.f69433i = function4;
        this.f69434j = function5;
        this.f69435k = pLPViewState;
        this.l = aICompanionTracker;
        this.f69429c = mutableState;
        this.m = mutableState2;
    }

    public /* synthetic */ gk(MainNavigationState mainNavigationState, Context context, CatalogRoute catalogRoute, CatalogRoutingViewModel catalogRoutingViewModel, QuickAccessFiltersViewModel quickAccessFiltersViewModel, PassAppLinkBuilder passAppLinkBuilder, ContributionLinkNavigator contributionLinkNavigator, Function3 function3, Function0 function0, Function0 function1, Function0 function2, int i2) {
        this.g = mainNavigationState;
        this.f69432h = context;
        this.f69433i = catalogRoute;
        this.f69434j = catalogRoutingViewModel;
        this.f69435k = quickAccessFiltersViewModel;
        this.l = passAppLinkBuilder;
        this.f69429c = contributionLinkNavigator;
        this.m = function3;
        this.d = function0;
        this.f69430e = function1;
        this.f69431f = function2;
    }

    public /* synthetic */ gk(OptionsViewModel optionsViewModel, NavController navController, Function0 function0, Function0 function1, Function0 function2, Function0 function3, Function0 function4, Function0 function5, Function0 function6, Function0 function7, Function0 function8, int i2) {
        this.g = optionsViewModel;
        this.f69432h = navController;
        this.d = function0;
        this.f69430e = function1;
        this.f69431f = function2;
        this.f69433i = function3;
        this.f69434j = function4;
        this.f69435k = function5;
        this.l = function6;
        this.f69429c = function7;
        this.m = function8;
    }

    public /* synthetic */ gk(String str, PdpViewState pdpViewState, Function0 function0, TopAppBarScrollBehavior topAppBarScrollBehavior, ContactUsUiModel contactUsUiModel, ContactUsTracker contactUsTracker, Function1 function1, Function1 function2, PdpTracker pdpTracker, Function0 function3, Function0 function4) {
        this.g = str;
        this.f69432h = pdpViewState;
        this.d = function0;
        this.f69433i = topAppBarScrollBehavior;
        this.f69434j = contactUsUiModel;
        this.f69435k = contactUsTracker;
        this.l = function1;
        this.f69429c = function2;
        this.m = pdpTracker;
        this.f69430e = function3;
        this.f69431f = function4;
    }
}
