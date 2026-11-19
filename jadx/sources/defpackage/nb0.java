package defpackage;

import android.content.Context;
import androidx.compose.material3.ScaffoldKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.compose.LifecycleEffectKt;
import androidx.navigation.NavDestination;
import androidx.navigation.NavHostController;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.templates.LVModalBottomSheetState;
import com.vuitton.android.presentation.common.ScreenOrigin;
import com.vuitton.android.presentation.compose.components.CircularRevealOverlayKt;
import com.vuitton.android.presentation.link.builder.PassAppLinkBuilder;
import com.vuitton.android.presentation.link.navigation.ContributionLinkNavigator;
import com.vuitton.android.presentation.screen.aicompanion.components.entrypoint.AICompanionTooltipKt;
import com.vuitton.android.presentation.screen.aicompanion.models.tracking.AICompanionTracker;
import com.vuitton.android.presentation.screen.aicompanion.models.tracking.AICompanionTrackerEntryPointKt;
import com.vuitton.android.presentation.screen.authentication.AuthenticationViewModel;
import com.vuitton.android.presentation.screen.authentication.welcome.WelcomeViewModel;
import com.vuitton.android.presentation.screen.filter.quickaccess.QuickAccessFiltersViewModel;
import com.vuitton.android.presentation.screen.main.MainActivityRouter;
import com.vuitton.android.presentation.screen.main.MainActivityViewModel;
import com.vuitton.android.presentation.screen.main.MainNavigationState;
import com.vuitton.android.presentation.screen.main.components.MainActivityBottomSheetType;
import com.vuitton.android.presentation.screen.main.models.MainActivityViewState;
import com.vuitton.android.presentation.screen.main.navigation.FeedRoute;
import com.vuitton.android.presentation.screen.options.components.OptionsScreenKt;
import com.vuitton.android.presentation.screen.options.models.OptionsViewState;
import kotlin.Function;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KClass;
import kotlinx.coroutines.flow.SharedFlow;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class nb0 implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f76485b = 1;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Function0 f76486c;
    public final /* synthetic */ Function0 d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Function0 f76487e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Function0 f76488f;
    public final /* synthetic */ Function0 g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ Function0 f76489h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ Object f76490i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final /* synthetic */ Object f76491j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final /* synthetic */ Object f76492k;
    public final /* synthetic */ Object l;
    public final /* synthetic */ Object m;
    public final /* synthetic */ Object n;
    public final /* synthetic */ Function o;
    public final /* synthetic */ Object p;
    public final /* synthetic */ Object q;
    public final /* synthetic */ Object r;
    public final /* synthetic */ Object s;
    public final /* synthetic */ Object t;
    public final /* synthetic */ Object u;
    public final /* synthetic */ Function v;

    public /* synthetic */ nb0(Modifier modifier, OptionsViewState optionsViewState, Function0 function0, Function0 function1, Function0 function2, Function0 function3, Function0 function4, Function0 function5, Function0 function6, Function0 function7, Function0 function8, Function0 function9, Function0 function10, Function0 function11, Function0 function12, Function0 function13, Function0 function14, Function0 function15, Function0 function16, Function0 function17, int i2) {
        this.f76490i = modifier;
        this.f76491j = optionsViewState;
        this.f76486c = function0;
        this.d = function1;
        this.f76487e = function2;
        this.f76488f = function3;
        this.g = function4;
        this.f76489h = function5;
        this.f76492k = function6;
        this.l = function7;
        this.m = function8;
        this.n = function9;
        this.o = function10;
        this.p = function11;
        this.q = function12;
        this.r = function13;
        this.s = function14;
        this.t = function15;
        this.u = function16;
        this.v = function17;
    }

    /* JADX WARN: Code duplicated, block: B:23:0x014f A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:24:0x0151  */
    /* JADX WARN: Code duplicated, block: B:25:0x0154  */
    /* JADX WARN: Code duplicated, block: B:48:0x0248  */
    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        ScreenOrigin screenOrigin;
        Composer$Companion$Empty$1 composer$Companion$Empty$1;
        MutableState mutableState;
        boolean zY;
        Object objX;
        int i2 = this.f76485b;
        Function function = this.v;
        Object obj3 = this.u;
        Object obj4 = this.t;
        Object obj5 = this.s;
        Object obj6 = this.r;
        Object obj7 = this.q;
        Object obj8 = this.p;
        Function function2 = this.o;
        Object obj9 = this.n;
        Object obj10 = this.m;
        Object obj11 = this.l;
        Object obj12 = this.f76492k;
        Object obj13 = this.f76491j;
        Object obj14 = this.f76490i;
        switch (i2) {
            case 0:
                MainActivityViewModel mainActivityViewModel = (MainActivityViewModel) obj14;
                QuickAccessFiltersViewModel quickAccessFiltersViewModel = (QuickAccessFiltersViewModel) obj13;
                MainNavigationState mainNavigationState = (MainNavigationState) obj12;
                NavHostController navHostController = (NavHostController) obj11;
                ContributionLinkNavigator contributionLinkNavigator = (ContributionLinkNavigator) obj10;
                SharedFlow sharedFlow = (SharedFlow) obj9;
                Function3 function3 = (Function3) function2;
                PassAppLinkBuilder passAppLinkBuilder = (PassAppLinkBuilder) obj8;
                AuthenticationViewModel authenticationViewModel = (AuthenticationViewModel) obj7;
                WelcomeViewModel welcomeViewModel = (WelcomeViewModel) obj6;
                MainActivityRouter mainActivityRouter = (MainActivityRouter) obj5;
                LVModalBottomSheetState lVModalBottomSheetState = (LVModalBottomSheetState) obj4;
                MainActivityBottomSheetType mainActivityBottomSheetType = (MainActivityBottomSheetType) obj3;
                Function1 function1 = (Function1) function;
                Composer composer = (Composer) obj;
                int iIntValue = ((Integer) obj2).intValue();
                if (composer.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                    OpaqueKey opaqueKey = ComposerKt.f7940a;
                    MutableState mutableStateB = SnapshotStateKt.b(mainActivityViewModel.getI(), composer);
                    MutableState mutableStateB2 = SnapshotStateKt.b(quickAccessFiltersViewModel.getL(), composer);
                    Context context = (Context) composer.k(AndroidCompositionLocals_androidKt.f9936b);
                    NavDestination navDestinationA = mainNavigationState.a(composer);
                    AICompanionTracker aICompanionTracker = (AICompanionTracker) composer.k(AICompanionTrackerEntryPointKt.f52911a);
                    Object objX2 = composer.x();
                    Composer$Companion$Empty$1 composer$Companion$Empty$2 = Composer.Companion.f7939a;
                    if (objX2 == composer$Companion$Empty$2) {
                        objX2 = SnapshotStateKt.g(null);
                        composer.q(objX2);
                    }
                    MutableState mutableState2 = (MutableState) objX2;
                    Object objX3 = composer.x();
                    if (objX3 == composer$Companion$Empty$2) {
                        objX3 = SnapshotStateKt.g(Boolean.FALSE);
                        composer.q(objX3);
                    }
                    MutableState mutableState3 = (MutableState) objX3;
                    boolean zBooleanValue = ((Boolean) ((SnapshotMutableStateImpl) mainNavigationState.f59098e).getF10755b()).booleanValue();
                    if (navDestinationA != null) {
                        NavDestination.Companion companion = NavDestination.g;
                        KClass kClassB = Reflection.f71922a.b(FeedRoute.class);
                        companion.getClass();
                        if (NavDestination.Companion.c(navDestinationA, kClassB)) {
                            screenOrigin = ScreenOrigin.FEED;
                        } else if (zBooleanValue) {
                            screenOrigin = ScreenOrigin.PLP;
                        } else {
                            screenOrigin = ScreenOrigin.CATALOG;
                        }
                    } else if (zBooleanValue) {
                        screenOrigin = ScreenOrigin.PLP;
                    } else {
                        screenOrigin = ScreenOrigin.CATALOG;
                    }
                    Lifecycle.Event event = Lifecycle.Event.ON_RESUME;
                    Object objX4 = composer.x();
                    if (objX4 == composer$Companion$Empty$2) {
                        objX4 = new u00(10, mutableState3);
                        composer.q(objX4);
                    }
                    LifecycleEffectKt.a(event, null, (Function0) objX4, composer, 390);
                    long j2 = LVAppDesignKitTheme.c(composer).f48361b.u;
                    Function0 function0 = this.d;
                    Function0 function4 = this.f76487e;
                    Function0 function5 = this.f76488f;
                    ScaffoldKt.a(null, null, ComposableLambdaKt.b(-1674424808, new le(mainNavigationState, mutableStateB, quickAccessFiltersViewModel, function0, function4, function5, aICompanionTracker, screenOrigin, mutableStateB2, mainActivityViewModel, mutableState3, mutableState2), composer), null, null, 0, j2, 0L, null, ComposableLambdaKt.b(1813864590, new ub0(navHostController, mainNavigationState, contributionLinkNavigator, sharedFlow, mainActivityViewModel, function3, this.g, context, quickAccessFiltersViewModel, passAppLinkBuilder, function0, function5, authenticationViewModel, welcomeViewModel, mainActivityRouter, lVModalBottomSheetState, mainActivityBottomSheetType, function1, this.f76489h), composer), composer, 805306752, 443);
                    if (((MainActivityViewState) mutableStateB.getF10755b()).f59145i || !((MainActivityViewState) mutableStateB.getF10755b()).f59144h) {
                        composer$Companion$Empty$1 = composer$Companion$Empty$2;
                        mutableState = mutableState3;
                        composer.L(657737029);
                        composer.F();
                    } else {
                        composer.L(1683771349);
                        Rect rect = (Rect) mutableState2.getF10755b();
                        if (rect == null) {
                            composer.L(657304268);
                            composer.F();
                            composer$Companion$Empty$1 = composer$Companion$Empty$2;
                            mutableState = mutableState3;
                        } else {
                            composer.L(657304269);
                            boolean zY2 = composer.y(mainActivityViewModel);
                            Object objX5 = composer.x();
                            if (zY2) {
                                composer$Companion$Empty$1 = composer$Companion$Empty$2;
                            } else {
                                composer$Companion$Empty$1 = composer$Companion$Empty$2;
                                if (objX5 == composer$Companion$Empty$1) {
                                }
                                Function0 function6 = (Function0) objX5;
                                zY = composer.y(mainActivityViewModel);
                                objX = composer.x();
                                if (!zY || objX == composer$Companion$Empty$1) {
                                    mutableState = mutableState3;
                                    objX = new t30(mainActivityViewModel, mutableState, 14);
                                    composer.q(objX);
                                } else {
                                    mutableState = mutableState3;
                                }
                                AICompanionTooltipKt.a(rect, function6, (Function0) objX, composer, 0);
                                composer.F();
                            }
                            objX5 = new qb0(mainActivityViewModel, 2);
                            composer.q(objX5);
                            Function0 function7 = (Function0) objX5;
                            zY = composer.y(mainActivityViewModel);
                            objX = composer.x();
                            if (zY) {
                                mutableState = mutableState3;
                                objX = new t30(mainActivityViewModel, mutableState, 14);
                                composer.q(objX);
                            } else {
                                mutableState = mutableState3;
                                objX = new t30(mainActivityViewModel, mutableState, 14);
                                composer.q(objX);
                            }
                            AICompanionTooltipKt.a(rect, function7, (Function0) objX, composer, 0);
                            composer.F();
                        }
                        composer.F();
                    }
                    boolean zBooleanValue2 = ((Boolean) mutableState.getF10755b()).booleanValue();
                    Rect rect2 = (Rect) mutableState2.getF10755b();
                    Function0 function8 = this.f76486c;
                    boolean zK = composer.K(function8);
                    Object objX6 = composer.x();
                    if (zK || objX6 == composer$Companion$Empty$1) {
                        objX6 = new py(function8, 26);
                        composer.q(objX6);
                    }
                    CircularRevealOverlayKt.a(zBooleanValue2, rect2, null, 0L, 0, (Function0) objX6, composer, 0, 28);
                } else {
                    composer.D();
                }
                break;
            default:
                ((Integer) obj2).getClass();
                OptionsScreenKt.d((Modifier) obj14, (OptionsViewState) obj13, this.f76486c, this.d, this.f76487e, this.f76488f, this.g, this.f76489h, (Function0) obj12, (Function0) obj11, (Function0) obj10, (Function0) obj9, (Function0) function2, (Function0) obj8, (Function0) obj7, (Function0) obj6, (Function0) obj5, (Function0) obj4, (Function0) obj3, (Function0) function, (Composer) obj, RecomposeScopeImplKt.a(1));
                break;
        }
        return Unit.f71739a;
    }

    public /* synthetic */ nb0(MainActivityViewModel mainActivityViewModel, QuickAccessFiltersViewModel quickAccessFiltersViewModel, MainNavigationState mainNavigationState, Function0 function0, Function0 function1, Function0 function2, Function0 function3, NavHostController navHostController, ContributionLinkNavigator contributionLinkNavigator, SharedFlow sharedFlow, Function3 function4, Function0 function5, PassAppLinkBuilder passAppLinkBuilder, AuthenticationViewModel authenticationViewModel, WelcomeViewModel welcomeViewModel, MainActivityRouter mainActivityRouter, LVModalBottomSheetState lVModalBottomSheetState, MainActivityBottomSheetType mainActivityBottomSheetType, Function1 function6, Function0 function7) {
        this.f76490i = mainActivityViewModel;
        this.f76491j = quickAccessFiltersViewModel;
        this.f76492k = mainNavigationState;
        this.f76486c = function0;
        this.d = function1;
        this.f76487e = function2;
        this.f76488f = function3;
        this.l = navHostController;
        this.m = contributionLinkNavigator;
        this.n = sharedFlow;
        this.o = function4;
        this.g = function5;
        this.p = passAppLinkBuilder;
        this.q = authenticationViewModel;
        this.r = welcomeViewModel;
        this.s = mainActivityRouter;
        this.t = lVModalBottomSheetState;
        this.u = mainActivityBottomSheetType;
        this.v = function6;
        this.f76489h = function7;
    }
}
