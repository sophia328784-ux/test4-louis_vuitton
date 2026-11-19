package defpackage;

import android.content.Context;
import android.content.res.Configuration;
import androidx.compose.animation.AnimatedContentScope;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScopeInstance;
import androidx.compose.foundation.layout.ColumnScope;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.layout.WindowInsetsKt;
import androidx.compose.foundation.layout.WindowInsets_androidKt;
import androidx.compose.foundation.lazy.LazyItemScope;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.compose.ui.res.StringResources_androidKt;
import androidx.compose.ui.unit.Dp;
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
import androidx.navigation.compose.NavHostKt;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.R;
import com.vuitton.android.core.type.SystemIcons;
import com.vuitton.android.designkit.ui.theme.atoms.LVBottomRoundOverlayKt;
import com.vuitton.android.designkit.ui.theme.templates.LVModalBottomSheetKt;
import com.vuitton.android.designkit.ui.theme.templates.LVModalBottomSheetState;
import com.vuitton.android.platform.extensions.IntentExtensionKt;
import com.vuitton.android.presentation.compose.components.compositionlocalprovider.LVWishlistLocalProviderKt;
import com.vuitton.android.presentation.extensions.ResourcesExtKt;
import com.vuitton.android.presentation.link.builder.PassAppLinkBuilder;
import com.vuitton.android.presentation.link.navigation.ContributionLinkNavigator;
import com.vuitton.android.presentation.screen.authentication.AuthenticationViewModel;
import com.vuitton.android.presentation.screen.authentication.models.TrackingAuthOrigin;
import com.vuitton.android.presentation.screen.authentication.social.components.SocialLoginBottomSheetKt;
import com.vuitton.android.presentation.screen.authentication.social.components.SocialLoginBottomSheetState;
import com.vuitton.android.presentation.screen.authentication.welcome.WelcomeViewModel;
import com.vuitton.android.presentation.screen.authentication.welcome.components.WelcomeComposableKt;
import com.vuitton.android.presentation.screen.authentication.welcome.model.WelcomeViewState;
import com.vuitton.android.presentation.screen.filter.quickaccess.QuickAccessFiltersViewModel;
import com.vuitton.android.presentation.screen.main.MainActivityRouter;
import com.vuitton.android.presentation.screen.main.MainActivityViewModel;
import com.vuitton.android.presentation.screen.main.MainNavigationState;
import com.vuitton.android.presentation.screen.main.components.MainActivityBottomSheetType;
import com.vuitton.android.presentation.screen.main.models.MainTopLevelDestination;
import com.vuitton.android.presentation.screen.main.navigation.CartRoute;
import com.vuitton.android.presentation.screen.main.navigation.CatalogRoute;
import com.vuitton.android.presentation.screen.main.navigation.FeedRoute;
import com.vuitton.android.presentation.screen.main.navigation.MyLvRoute;
import com.vuitton.android.presentation.screen.main.navigation.ServiceRoute;
import com.vuitton.android.presentation.screen.main.navigation.WishlistRoute;
import com.vuitton.android.presentation.screen.options.components.OptionsScreenKt;
import com.vuitton.android.presentation.screen.options.models.OptionsViewState;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.SkuIdUiModel;
import com.vuitton.android.presentation.screen.wishlist.WishlistDestinations;
import com.vuitton.android.presentation.screen.wishlist.WishlistDestinationsKt;
import com.vuitton.android.presentation.screen.wishlist.WishlistViewModelImpl;
import com.vuitton.android.presentation.screen.wishlist.components.WishlistComposableKt;
import com.vuitton.foundation.model.domain.model.authentication.LoginState;
import defpackage.av0;
import defpackage.ba0;
import defpackage.be0;
import defpackage.ce0;
import defpackage.dk;
import defpackage.dy;
import defpackage.hk;
import defpackage.j0;
import defpackage.jh;
import defpackage.md;
import defpackage.o51;
import defpackage.qb0;
import defpackage.r61;
import defpackage.rl;
import defpackage.s8;
import defpackage.tj;
import defpackage.za;
import java.util.Map;
import kotlin.Function;
import kotlin.NotImplementedError;
import kotlin.Unit;
import kotlin.collections.EmptyList;
import kotlin.collections.MapsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.functions.Function4;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.ReflectionFactory;
import kotlin.reflect.KFunction;
import kotlinx.coroutines.flow.SharedFlow;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class ub0 implements Function3 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f80275b = 0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Function0 f80276c;
    public final /* synthetic */ Function0 d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Function0 f80277e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Function0 f80278f;
    public final /* synthetic */ Object g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ Object f80279h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ Object f80280i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final /* synthetic */ Object f80281j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final /* synthetic */ Object f80282k;
    public final /* synthetic */ Function l;
    public final /* synthetic */ Object m;
    public final /* synthetic */ Object n;
    public final /* synthetic */ Object o;
    public final /* synthetic */ Object p;
    public final /* synthetic */ Object q;
    public final /* synthetic */ Object r;
    public final /* synthetic */ Object s;
    public final /* synthetic */ Object t;
    public final /* synthetic */ Function u;

    public /* synthetic */ ub0(NavHostController navHostController, MainNavigationState mainNavigationState, ContributionLinkNavigator contributionLinkNavigator, SharedFlow sharedFlow, MainActivityViewModel mainActivityViewModel, Function3 function3, Function0 function0, Context context, QuickAccessFiltersViewModel quickAccessFiltersViewModel, PassAppLinkBuilder passAppLinkBuilder, Function0 function1, Function0 function2, AuthenticationViewModel authenticationViewModel, WelcomeViewModel welcomeViewModel, MainActivityRouter mainActivityRouter, LVModalBottomSheetState lVModalBottomSheetState, MainActivityBottomSheetType mainActivityBottomSheetType, Function1 function4, Function0 function5) {
        this.g = navHostController;
        this.f80279h = mainNavigationState;
        this.f80280i = contributionLinkNavigator;
        this.f80281j = sharedFlow;
        this.f80282k = mainActivityViewModel;
        this.l = function3;
        this.f80276c = function0;
        this.m = context;
        this.n = quickAccessFiltersViewModel;
        this.o = passAppLinkBuilder;
        this.d = function1;
        this.f80277e = function2;
        this.p = authenticationViewModel;
        this.q = welcomeViewModel;
        this.r = mainActivityRouter;
        this.s = lVModalBottomSheetState;
        this.t = mainActivityBottomSheetType;
        this.u = function4;
        this.f80278f = function5;
    }

    @Override // kotlin.jvm.functions.Function3
    public final Object A(Object obj, Object obj2, Object obj3) {
        MainNavigationState mainNavigationState;
        MainActivityViewModel mainActivityViewModel;
        MutableState showNavBar;
        int i2 = this.f80275b;
        Function function = this.u;
        Object obj4 = this.t;
        Object obj5 = this.s;
        Object obj6 = this.r;
        Object obj7 = this.q;
        Object obj8 = this.p;
        Object obj9 = this.o;
        Object obj10 = this.n;
        Object obj11 = this.m;
        Function function2 = this.l;
        Object obj12 = this.f80282k;
        Object obj13 = this.f80281j;
        Object obj14 = this.f80280i;
        Object obj15 = this.f80279h;
        Object obj16 = this.g;
        switch (i2) {
            case 0:
                NavHostController navHostController = (NavHostController) obj16;
                final MainNavigationState mainNavigationState2 = (MainNavigationState) obj15;
                final ContributionLinkNavigator contributionLinkNavigator = (ContributionLinkNavigator) obj14;
                final SharedFlow sharedFlow = (SharedFlow) obj13;
                final MainActivityViewModel mainActivityViewModel2 = (MainActivityViewModel) obj12;
                final Function3 function3 = (Function3) function2;
                final Context context = (Context) obj11;
                final QuickAccessFiltersViewModel quickAccessFiltersViewModel = (QuickAccessFiltersViewModel) obj10;
                final PassAppLinkBuilder passAppLinkBuilder = (PassAppLinkBuilder) obj9;
                final AuthenticationViewModel authenticationViewModel = (AuthenticationViewModel) obj8;
                final WelcomeViewModel welcomeViewModel = (WelcomeViewModel) obj7;
                final MainActivityRouter mainActivityRouter = (MainActivityRouter) obj6;
                final LVModalBottomSheetState lVModalBottomSheetState = (LVModalBottomSheetState) obj5;
                final MainActivityBottomSheetType mainActivityBottomSheetType = (MainActivityBottomSheetType) obj4;
                final Function1 function1 = (Function1) function;
                PaddingValues paddingValues = (PaddingValues) obj;
                Composer composer = (Composer) obj2;
                int iIntValue = ((Integer) obj3).intValue();
                paddingValues.getClass();
                if ((iIntValue & 6) == 0) {
                    iIntValue |= composer.K(paddingValues) ? 4 : 2;
                }
                if (composer.p(iIntValue & 1, (iIntValue & 19) != 18)) {
                    OpaqueKey opaqueKey = ComposerKt.f7940a;
                    Modifier modifierO = PaddingKt.m(new DTFunctionNameModifier("MainActivityComposable$lambda$0$10"), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, paddingValues.getD(), 7).o(SizeKt.f5052c);
                    Alignment.f8582a.getClass();
                    MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
                    int iHashCode = Long.hashCode(composer.getT());
                    PersistentCompositionLocalMap persistentCompositionLocalMapN = composer.n();
                    Modifier modifierC = ComposedModifierKt.c(composer, modifierO);
                    ComposeUiNode.b0.getClass();
                    Function0 function0 = ComposeUiNode.Companion.f9641b;
                    if (composer.getF7976a() == null) {
                        ComposablesKt.b();
                        throw null;
                    }
                    composer.B();
                    if (composer.getS()) {
                        composer.C(function0);
                    } else {
                        composer.o();
                    }
                    Updater.c(composer, measurePolicyD, ComposeUiNode.Companion.f9644f);
                    Updater.c(composer, persistentCompositionLocalMapN, ComposeUiNode.Companion.f9643e);
                    Updater.c(composer, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
                    Updater.b(composer, ComposeUiNode.Companion.f9645h);
                    Updater.c(composer, modifierC, ComposeUiNode.Companion.d);
                    FeedRoute feedRoute = FeedRoute.INSTANCE;
                    boolean zK = composer.K(mainNavigationState2) | composer.y(contributionLinkNavigator) | composer.y(sharedFlow) | composer.y(mainActivityViewModel2) | composer.K(function3);
                    final Function0 function4 = this.f80276c;
                    boolean zK2 = zK | composer.K(function4) | composer.y(context) | composer.y(quickAccessFiltersViewModel) | composer.y(passAppLinkBuilder);
                    final Function0 function5 = this.d;
                    boolean zK3 = zK2 | composer.K(function5);
                    final Function0 function6 = this.f80277e;
                    boolean zK4 = zK3 | composer.K(function6) | composer.y(authenticationViewModel) | composer.y(welcomeViewModel) | composer.y(mainActivityRouter);
                    Object objX = composer.x();
                    Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
                    if (zK4 || objX == composer$Companion$Empty$1) {
                        objX = new Function1() { // from class: com.vuitton.android.presentation.screen.main.components.a
                            @Override // kotlin.jvm.functions.Function1
                            public final Object invoke(Object obj17) {
                                NavGraphBuilder navGraphBuilder = (NavGraphBuilder) obj17;
                                navGraphBuilder.getClass();
                                MainActivityViewModel mainActivityViewModel3 = mainActivityViewModel2;
                                MainActivityComposableKt$MainActivityComposable$1$3$1$1$1$1 mainActivityComposableKt$MainActivityComposable$1$3$1$1$1$1 = new MainActivityComposableKt$MainActivityComposable$1$3$1$1$1$1(1, mainActivityViewModel3, MainActivityViewModel.class, "updateNavBarVisibility", "updateNavBarVisibility(Z)V", 0);
                                qb0 qb0Var = new qb0(mainActivityViewModel3, 0);
                                SharedFlow sharedFlow2 = sharedFlow;
                                sharedFlow2.getClass();
                                final Function3 function7 = function3;
                                function7.getClass();
                                final Function0 function8 = function4;
                                function8.getClass();
                                dy dyVar = new dy(4);
                                dy dyVar2 = new dy(5);
                                final MainNavigationState mainNavigationState3 = mainNavigationState2;
                                ContributionLinkNavigator contributionLinkNavigator2 = contributionLinkNavigator;
                                ComposableLambdaImpl composableLambdaImpl = new ComposableLambdaImpl(879294770, true, new za(mainNavigationState3, contributionLinkNavigator2, sharedFlow2, mainActivityComposableKt$MainActivityComposable$1$3$1$1$1$1, qb0Var, function7, function8));
                                Map mapC = MapsKt.c();
                                EmptyList emptyList = EmptyList.f71768b;
                                ReflectionFactory reflectionFactory = Reflection.f71922a;
                                NavGraphBuilderKt.a(navGraphBuilder, reflectionFactory.b(FeedRoute.class), mapC, emptyList, dyVar, dyVar2, dyVar, dyVar2, composableLambdaImpl);
                                final Context context2 = context;
                                context2.getClass();
                                QuickAccessFiltersViewModel quickAccessFiltersViewModel2 = quickAccessFiltersViewModel;
                                quickAccessFiltersViewModel2.getClass();
                                PassAppLinkBuilder passAppLinkBuilder2 = passAppLinkBuilder;
                                passAppLinkBuilder2.getClass();
                                Function0 function9 = function5;
                                function9.getClass();
                                Function0 function10 = function6;
                                function10.getClass();
                                jh jhVar = new jh(13);
                                jh jhVar2 = new jh(14);
                                ComposableLambdaImpl composableLambdaImpl2 = new ComposableLambdaImpl(491448736, true, new hk(mainNavigationState3, context2, quickAccessFiltersViewModel2, passAppLinkBuilder2, contributionLinkNavigator2, function7, function8, function9, function10));
                                NavGraphBuilderKt.a(navGraphBuilder, reflectionFactory.b(CatalogRoute.class), MapsKt.c(), emptyList, jhVar, jhVar2, jhVar, jhVar2, composableLambdaImpl2);
                                av0 av0Var = new av0(3);
                                av0 av0Var2 = new av0(4);
                                ComposableLambdaImpl composableLambdaImpl3 = new ComposableLambdaImpl(-594571149, true, new s8(9, mainNavigationState3, function7, function8));
                                NavGraphBuilderKt.a(navGraphBuilder, reflectionFactory.b(ServiceRoute.class), MapsKt.c(), emptyList, av0Var, av0Var2, av0Var, av0Var2, composableLambdaImpl3);
                                ba0 ba0Var = new ba0(29);
                                be0 be0Var = new be0(0);
                                final AuthenticationViewModel authenticationViewModel2 = authenticationViewModel;
                                final MainActivityRouter mainActivityRouter2 = mainActivityRouter;
                                final WelcomeViewModel welcomeViewModel2 = welcomeViewModel;
                                ComposableLambdaImpl composableLambdaImpl4 = new ComposableLambdaImpl(-1511631126, true, new rl(authenticationViewModel2, mainNavigationState3, mainActivityRouter2, context2, welcomeViewModel2, 1));
                                NavGraphBuilderKt.a(navGraphBuilder, reflectionFactory.b(MyLvRoute.class), MapsKt.c(), emptyList, ba0Var, be0Var, ba0Var, be0Var, composableLambdaImpl4);
                                o51 o51Var = new o51(15);
                                o51 o51Var2 = new o51(16);
                                ComposableLambdaImpl composableLambdaImpl5 = new ComposableLambdaImpl(1883300197, true, new Function4() { // from class: com.vuitton.android.presentation.screen.main.navigation.b
                                    @Override // kotlin.jvm.functions.Function4
                                    public final Object g(Object obj18, Object obj19, Object obj20, Object obj21) {
                                        Composer composer2 = (Composer) obj20;
                                        ((Integer) obj21).getClass();
                                        ((AnimatedContentScope) obj18).getClass();
                                        ((NavBackStackEntry) obj19).getClass();
                                        OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                                        final int iB = (int) ResourcesExtKt.b(WindowInsetsKt.e(WindowInsets_androidKt.c(composer2), composer2).getF5031b());
                                        final int iB2 = (int) ResourcesExtKt.b(WindowInsetsKt.e(WindowInsets_androidKt.c(composer2), composer2).getD());
                                        AuthenticationViewModel authenticationViewModel3 = authenticationViewModel2;
                                        boolean zA = ((LoginState) SnapshotStateKt.b(authenticationViewModel3.getX(), composer2).getF10755b()).a();
                                        final MainNavigationState mainNavigationState4 = mainNavigationState3;
                                        final Context context3 = context2;
                                        Composer$Companion$Empty$1 composer$Companion$Empty$2 = Composer.Companion.f7939a;
                                        if (zA) {
                                            composer2.L(238801851);
                                            SystemIcons.f43533b.getClass();
                                            mainNavigationState4.g(SystemIcons.f43534c);
                                            ViewModelStoreOwner viewModelStoreOwnerA = LocalViewModelStoreOwner.a(composer2);
                                            if (viewModelStoreOwnerA == null) {
                                                md.k("No ViewModelStoreOwner was provided via LocalViewModelStoreOwner");
                                                return null;
                                            }
                                            final WishlistViewModelImpl wishlistViewModelImpl = (WishlistViewModelImpl) ViewModelKt.a(Reflection.f71922a.b(WishlistViewModelImpl.class), viewModelStoreOwnerA, null, HiltViewModelKt.a(viewModelStoreOwnerA, composer2), viewModelStoreOwnerA instanceof HasDefaultViewModelProviderFactory ? ((HasDefaultViewModelProviderFactory) viewModelStoreOwnerA).getDefaultViewModelCreationExtras() : CreationExtras.Empty.f13578c, composer2);
                                            Unit unit = Unit.f71739a;
                                            boolean zY = composer2.y(wishlistViewModelImpl);
                                            Object objX2 = composer2.x();
                                            if (zY || objX2 == composer$Companion$Empty$2) {
                                                objX2 = new WishlistNavigationKt$wishlistComposable$3$1$1(null, wishlistViewModelImpl);
                                                composer2.q(objX2);
                                            }
                                            EffectsKt.e(composer2, unit, (Function2) objX2);
                                            boolean zY2 = composer2.y(wishlistViewModelImpl) | composer2.y(context3);
                                            Object objX3 = composer2.x();
                                            if (zY2 || objX3 == composer$Companion$Empty$2) {
                                                objX3 = new WishlistNavigationKt$wishlistComposable$3$2$1(wishlistViewModelImpl, context3, null);
                                                composer2.q(objX3);
                                            }
                                            EffectsKt.e(composer2, unit, (Function2) objX3);
                                            final Function3 function11 = function7;
                                            final Function0 function12 = function8;
                                            LVWishlistLocalProviderKt.a(ComposableLambdaKt.b(-2051926360, new Function2() { // from class: com.vuitton.android.presentation.screen.main.navigation.c
                                                @Override // kotlin.jvm.functions.Function2
                                                public final Object invoke(Object obj22, Object obj23) {
                                                    Composer composer3 = (Composer) obj22;
                                                    int iIntValue2 = ((Integer) obj23).intValue();
                                                    if (composer3.p(iIntValue2 & 1, (iIntValue2 & 3) != 2)) {
                                                        OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                                                        WishlistViewModelImpl wishlistViewModelImpl2 = wishlistViewModelImpl;
                                                        boolean zY3 = composer3.y(wishlistViewModelImpl2);
                                                        Object objX4 = composer3.x();
                                                        Composer$Companion$Empty$1 composer$Companion$Empty$3 = Composer.Companion.f7939a;
                                                        if (zY3 || objX4 == composer$Companion$Empty$3) {
                                                            WishlistNavigationKt$wishlistComposable$3$3$1$1 wishlistNavigationKt$wishlistComposable$3$3$1$1 = new WishlistNavigationKt$wishlistComposable$3$3$1$1(0, wishlistViewModelImpl2, WishlistViewModelImpl.class, "nativeShareWishlist", "nativeShareWishlist()V", 0);
                                                            composer3.q(wishlistNavigationKt$wishlistComposable$3$3$1$1);
                                                            objX4 = wishlistNavigationKt$wishlistComposable$3$3$1$1;
                                                        }
                                                        KFunction kFunction = (KFunction) objX4;
                                                        boolean zY4 = composer3.y(wishlistViewModelImpl2);
                                                        Object objX5 = composer3.x();
                                                        if (zY4 || objX5 == composer$Companion$Empty$3) {
                                                            objX5 = new WishlistNavigationKt$wishlistComposable$3$3$2$1(1, wishlistViewModelImpl2, WishlistViewModelImpl.class, "deleteProduct", "deleteProduct-1Zqi3gk(Ljava/lang/String;)V", 0);
                                                            composer3.q(objX5);
                                                        }
                                                        KFunction kFunction2 = (KFunction) objX5;
                                                        boolean zY5 = composer3.y(wishlistViewModelImpl2);
                                                        Object objX6 = composer3.x();
                                                        if (zY5 || objX6 == composer$Companion$Empty$3) {
                                                            WishlistNavigationKt$wishlistComposable$3$3$3$1 wishlistNavigationKt$wishlistComposable$3$3$3$1 = new WishlistNavigationKt$wishlistComposable$3$3$3$1(2, wishlistViewModelImpl2, WishlistViewModelImpl.class, "onItemExpanded", "onItemExpanded-sAjZjhE(Ljava/lang/String;Ljava/lang/String;)V", 0);
                                                            composer3.q(wishlistNavigationKt$wishlistComposable$3$3$3$1);
                                                            objX6 = wishlistNavigationKt$wishlistComposable$3$3$3$1;
                                                        }
                                                        KFunction kFunction3 = (KFunction) objX6;
                                                        boolean zY6 = composer3.y(wishlistViewModelImpl2);
                                                        Object objX7 = composer3.x();
                                                        if (zY6 || objX7 == composer$Companion$Empty$3) {
                                                            WishlistNavigationKt$wishlistComposable$3$3$4$1 wishlistNavigationKt$wishlistComposable$3$3$4$1 = new WishlistNavigationKt$wishlistComposable$3$3$4$1(1, wishlistViewModelImpl2, WishlistViewModelImpl.class, "onItemCollapsed", "onItemCollapsed-fvG9qJw(Ljava/lang/String;)V", 0);
                                                            composer3.q(wishlistNavigationKt$wishlistComposable$3$3$4$1);
                                                            objX7 = wishlistNavigationKt$wishlistComposable$3$3$4$1;
                                                        }
                                                        KFunction kFunction4 = (KFunction) objX7;
                                                        MainNavigationState mainNavigationState5 = mainNavigationState4;
                                                        boolean zK5 = composer3.K(mainNavigationState5);
                                                        Object objX8 = composer3.x();
                                                        if (zK5 || objX8 == composer$Companion$Empty$3) {
                                                            objX8 = new dk(mainNavigationState5, 2);
                                                            composer3.q(objX8);
                                                        }
                                                        Function0 function13 = (Function0) objX8;
                                                        Function0 function14 = (Function0) kFunction;
                                                        Function2 function15 = (Function2) kFunction3;
                                                        Function1 function16 = (Function1) kFunction4;
                                                        Function1 function17 = (Function1) kFunction2;
                                                        final Context context4 = context3;
                                                        boolean zY7 = composer3.y(context4);
                                                        Object objX9 = composer3.x();
                                                        if (zY7 || objX9 == composer$Companion$Empty$3) {
                                                            objX9 = new Function2<SkuIdUiModel, String, Unit>() { // from class: com.vuitton.android.presentation.screen.main.navigation.WishlistNavigationKt$wishlistComposable$3$3$6$1
                                                                @Override // kotlin.jvm.functions.Function2
                                                                public final Object invoke(Object obj24, Object obj25) {
                                                                    String str = ((SkuIdUiModel) obj24).f61764b;
                                                                    str.getClass();
                                                                    WishlistDestinations.ToProductDetailsPage toProductDetailsPage = new WishlistDestinations.ToProductDetailsPage(str, (String) obj25, null);
                                                                    Context context5 = context4;
                                                                    IntentExtensionKt.a(context5, WishlistDestinationsKt.a(toProductDetailsPage, context5));
                                                                    return Unit.f71739a;
                                                                }
                                                            };
                                                            composer3.q(objX9);
                                                        }
                                                        Function2 function18 = (Function2) objX9;
                                                        Object objX10 = composer3.x();
                                                        if (objX10 == composer$Companion$Empty$3) {
                                                            objX10 = new r61(7);
                                                            composer3.q(objX10);
                                                        }
                                                        Function0 function19 = (Function0) objX10;
                                                        Function3 function20 = function11;
                                                        boolean zK6 = composer3.K(function20);
                                                        int i3 = iB;
                                                        boolean zD = zK6 | composer3.d(i3);
                                                        int i4 = iB2;
                                                        boolean zD2 = zD | composer3.d(i4);
                                                        Object objX11 = composer3.x();
                                                        if (zD2 || objX11 == composer$Companion$Empty$3) {
                                                            objX11 = new tj(function20, i3, i4, 14);
                                                            composer3.q(objX11);
                                                        }
                                                        WishlistComposableKt.a(wishlistViewModelImpl2, false, true, null, function13, function14, function15, function16, function17, function18, function19, (Function1) objX11, function12, composer3, 3504, 6);
                                                    } else {
                                                        composer3.D();
                                                    }
                                                    return Unit.f71739a;
                                                }
                                            }, composer2), composer2, 6);
                                            composer2.F();
                                        } else {
                                            composer2.L(241072570);
                                            SystemIcons.f43533b.getClass();
                                            mainNavigationState4.g(false);
                                            TrackingAuthOrigin trackingAuthOrigin = TrackingAuthOrigin.WISHLIST;
                                            boolean zY3 = composer2.y(authenticationViewModel3);
                                            MainActivityRouter mainActivityRouter3 = mainActivityRouter2;
                                            boolean zY4 = zY3 | composer2.y(mainActivityRouter3) | composer2.y(context3);
                                            Object objX4 = composer2.x();
                                            if (zY4 || objX4 == composer$Companion$Empty$2) {
                                                objX4 = new ce0(authenticationViewModel3, mainActivityRouter3, context3, 5);
                                                composer2.q(objX4);
                                            }
                                            Function0 function13 = (Function0) objX4;
                                            boolean zY5 = composer2.y(authenticationViewModel3) | composer2.y(mainActivityRouter3) | composer2.y(context3);
                                            Object objX5 = composer2.x();
                                            if (zY5 || objX5 == composer$Companion$Empty$2) {
                                                objX5 = new ce0(authenticationViewModel3, mainActivityRouter3, context3, 6);
                                                composer2.q(objX5);
                                            }
                                            SocialLoginBottomSheetState socialLoginBottomSheetStateB = SocialLoginBottomSheetKt.b(trackingAuthOrigin, function13, (Function0) objX5, null, null, composer2, 6, 24);
                                            WelcomeViewState welcomeViewState = (WelcomeViewState) SnapshotStateKt.b(welcomeViewModel2.getL(), composer2).getF10755b();
                                            boolean zY6 = composer2.y(authenticationViewModel3) | composer2.y(context3);
                                            Object objX6 = composer2.x();
                                            if (zY6 || objX6 == composer$Companion$Empty$2) {
                                                objX6 = new ce0(authenticationViewModel3, context3, 7);
                                                composer2.q(objX6);
                                            }
                                            Function0 function14 = (Function0) objX6;
                                            boolean zY7 = composer2.y(authenticationViewModel3) | composer2.y(context3);
                                            Object objX7 = composer2.x();
                                            if (zY7 || objX7 == composer$Companion$Empty$2) {
                                                objX7 = new ce0(authenticationViewModel3, context3, 4);
                                                composer2.q(objX7);
                                            }
                                            WelcomeComposableKt.a(null, socialLoginBottomSheetStateB, welcomeViewState, false, null, function14, (Function0) objX7, null, null, null, composer2, 0, 1849);
                                            composer2.F();
                                        }
                                        return Unit.f71739a;
                                    }
                                });
                                NavGraphBuilderKt.a(navGraphBuilder, reflectionFactory.b(WishlistRoute.class), MapsKt.c(), emptyList, o51Var, o51Var2, o51Var, o51Var2, composableLambdaImpl5);
                                qb0 qb0Var2 = new qb0(mainActivityViewModel3, 1);
                                jh jhVar3 = new jh(10);
                                jh jhVar4 = new jh(11);
                                ComposableLambdaImpl composableLambdaImpl6 = new ComposableLambdaImpl(-1489023901, true, new j0(mainNavigationState3, qb0Var2, context2, function7, function8, contributionLinkNavigator2));
                                NavGraphBuilderKt.a(navGraphBuilder, reflectionFactory.b(CartRoute.class), MapsKt.c(), emptyList, jhVar3, jhVar4, jhVar3, jhVar4, composableLambdaImpl6);
                                return Unit.f71739a;
                            }
                        };
                        mainNavigationState = mainNavigationState2;
                        mainActivityViewModel = mainActivityViewModel2;
                        composer.q(objX);
                    } else {
                        mainActivityViewModel = mainActivityViewModel2;
                        mainNavigationState = mainNavigationState2;
                    }
                    final MainActivityViewModel mainActivityViewModel3 = mainActivityViewModel;
                    NavHostKt.b(navHostController, feedRoute, null, null, null, null, null, null, null, (Function1) objX, composer, 48, 2044);
                    MainTopLevelDestination mainTopLevelDestinationC = mainNavigationState.c(composer, 0);
                    if ((mainTopLevelDestinationC == null || (showNavBar = mainTopLevelDestinationC.getShowNavBar()) == null) ? true : ((Boolean) showNavBar.getF10755b()).booleanValue()) {
                        LVBottomRoundOverlayKt.a(0, 2, 0L, composer, BoxScopeInstance.f4938a.g(pq0.j(645691632, composer, "MainActivityComposable$lambda$0$10"), Alignment.Companion.f8589i));
                        composer.F();
                    } else {
                        composer.L(645843470);
                        composer.F();
                    }
                    if (lVModalBottomSheetState.a()) {
                        composer.L(646040258);
                        float f2 = ((Configuration) composer.k(AndroidCompositionLocals_androidKt.f9935a)).screenHeightDp;
                        Dp.Companion companion = Dp.f11004c;
                        final float f3 = f2 * 0.85f;
                        String strC = StringResources_androidKt.c(composer, R.string.alt_close);
                        boolean zK5 = composer.K(mainActivityBottomSheetType) | composer.y(mainActivityViewModel3);
                        Object objX2 = composer.x();
                        if (zK5 || objX2 == composer$Companion$Empty$1) {
                            objX2 = new ob0(mainActivityBottomSheetType, mainActivityViewModel3);
                            composer.q(objX2);
                        }
                        final Function0 function7 = this.f80278f;
                        LVModalBottomSheetKt.b(null, strC, (Function0) objX2, lVModalBottomSheetState, null, 0L, false, null, ComposableLambdaKt.b(1353564316, new Function3() { // from class: pb0
                            @Override // kotlin.jvm.functions.Function3
                            public final Object A(Object obj17, Object obj18, Object obj19) {
                                Composer composer2 = (Composer) obj18;
                                int iIntValue2 = ((Integer) obj19).intValue();
                                ((ColumnScope) obj17).getClass();
                                if (composer2.p(iIntValue2 & 1, (iIntValue2 & 17) != 16)) {
                                    OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                                    MainActivityBottomSheetType mainActivityBottomSheetType2 = mainActivityBottomSheetType;
                                    boolean z = mainActivityBottomSheetType2 instanceof MainActivityBottomSheetType.SighCallBottomSheet;
                                    LVModalBottomSheetState lVModalBottomSheetState2 = lVModalBottomSheetState;
                                    Composer$Companion$Empty$1 composer$Companion$Empty$2 = Composer.Companion.f7939a;
                                    if (z) {
                                        Modifier modifierH = SizeKt.h(pq0.j(-599776496, composer2, "MainActivityComposable$lambda$0$10$0$2"), Call.Parameters.DEFAULT_CAMERA_ZOOM, f3, 1);
                                        String strC2 = StringResources_androidKt.c(composer2, R.string.sightcall_disclaimer_android);
                                        String strC3 = StringResources_androidKt.c(composer2, R.string.dr_legal_acception);
                                        boolean zY = composer2.y(lVModalBottomSheetState2);
                                        Function1 function8 = function1;
                                        boolean zK6 = zY | composer2.K(function8) | composer2.K(mainActivityBottomSheetType2);
                                        Object objX3 = composer2.x();
                                        if (zK6 || objX3 == composer$Companion$Empty$2) {
                                            objX3 = new pp(lVModalBottomSheetState2, function8, mainActivityBottomSheetType2);
                                            composer2.q(objX3);
                                        }
                                        Function0 function9 = (Function0) objX3;
                                        String strC4 = StringResources_androidKt.c(composer2, R.string.dr_legal_refuse);
                                        boolean zY2 = composer2.y(lVModalBottomSheetState2);
                                        Object objX4 = composer2.x();
                                        if (zY2 || objX4 == composer$Companion$Empty$2) {
                                            objX4 = new t8(lVModalBottomSheetState2, 9);
                                            composer2.q(objX4);
                                        }
                                        LVModalBottomSheetKt.a(modifierH, null, null, null, null, strC2, null, strC3, null, false, null, function9, strC4, false, null, (Function0) objX4, null, false, null, composer2, 0, 0, 976734);
                                        composer2.F();
                                    } else if (Intrinsics.c(mainActivityBottomSheetType2, MainActivityBottomSheetType.AlreadySignedBottomSheet.f59102a)) {
                                        composer2.L(-1412229875);
                                        String strC5 = StringResources_androidKt.c(composer2, R.string.popup_logged_in_under_another_account);
                                        String strC6 = StringResources_androidKt.c(composer2, R.string.log_out);
                                        String strC7 = StringResources_androidKt.c(composer2, R.string.mylv_lvpass_menu_disconnectfrommylv_popup_areyousure_stayloggedin);
                                        boolean zY3 = composer2.y(lVModalBottomSheetState2);
                                        Function0 function10 = function7;
                                        boolean zK7 = zY3 | composer2.K(function10);
                                        Object objX5 = composer2.x();
                                        if (zK7 || objX5 == composer$Companion$Empty$2) {
                                            objX5 = new t3(lVModalBottomSheetState2, function10, 10);
                                            composer2.q(objX5);
                                        }
                                        Function0 function11 = (Function0) objX5;
                                        boolean zY4 = composer2.y(lVModalBottomSheetState2);
                                        Object objX6 = composer2.x();
                                        if (zY4 || objX6 == composer$Companion$Empty$2) {
                                            objX6 = new t8(lVModalBottomSheetState2, 10);
                                            composer2.q(objX6);
                                        }
                                        LVModalBottomSheetKt.a(null, null, null, null, null, strC5, null, strC6, null, false, null, function11, strC7, false, null, (Function0) objX6, null, false, null, composer2, 0, 0, 976735);
                                        composer2.F();
                                    } else {
                                        if (!(mainActivityBottomSheetType2 instanceof MainActivityBottomSheetType.ChangeLocaleBottomSheet)) {
                                            if (!Intrinsics.c(mainActivityBottomSheetType2, MainActivityBottomSheetType.None.f59104a)) {
                                                throw o60.v(composer2, -599778334);
                                            }
                                            composer2.L(-599664222);
                                            composer2.F();
                                            throw new NotImplementedError(null, 1, null);
                                        }
                                        composer2.L(-1411172372);
                                        String strC8 = StringResources_androidKt.c(composer2, R.string.locale_change_alert_title);
                                        String strB = StringResources_androidKt.b(R.string.locale_change_alert_description, new Object[]{((MainActivityBottomSheetType.ChangeLocaleBottomSheet) mainActivityBottomSheetType2).f59103a.f50549c}, composer2);
                                        String strC9 = StringResources_androidKt.c(composer2, R.string.locale_change_alert_confirm);
                                        String strC10 = StringResources_androidKt.c(composer2, R.string.locale_change_alert_ignore);
                                        MainActivityViewModel mainActivityViewModel4 = mainActivityViewModel3;
                                        boolean zY5 = composer2.y(mainActivityViewModel4) | composer2.K(mainActivityBottomSheetType2);
                                        Object objX7 = composer2.x();
                                        if (zY5 || objX7 == composer$Companion$Empty$2) {
                                            objX7 = new ob0(mainActivityViewModel4, mainActivityBottomSheetType2);
                                            composer2.q(objX7);
                                        }
                                        Function0 function12 = (Function0) objX7;
                                        boolean zY6 = composer2.y(mainActivityViewModel4) | composer2.y(lVModalBottomSheetState2);
                                        Object objX8 = composer2.x();
                                        if (zY6 || objX8 == composer$Companion$Empty$2) {
                                            objX8 = new t30(mainActivityViewModel4, lVModalBottomSheetState2, 13);
                                            composer2.q(objX8);
                                        }
                                        LVModalBottomSheetKt.a(null, null, strC8, null, null, strB, null, strC9, null, false, null, function12, strC10, false, null, (Function0) objX8, null, false, null, composer2, 0, 0, 976731);
                                        composer2.F();
                                    }
                                } else {
                                    composer2.D();
                                }
                                return Unit.f71739a;
                            }
                        }, composer), composer, (LVModalBottomSheetState.f48797e << 9) | 100663296, 241);
                        composer.F();
                    } else {
                        composer.L(650449326);
                        composer.F();
                    }
                    composer.r();
                } else {
                    composer.D();
                }
                return Unit.f71739a;
            default:
                OptionsViewState optionsViewState = (OptionsViewState) obj16;
                Function0 function8 = (Function0) obj15;
                Function0 function9 = (Function0) obj14;
                Function0 function10 = (Function0) obj13;
                Function0 function11 = (Function0) obj12;
                Function0 function12 = (Function0) function2;
                Function0 function13 = (Function0) obj11;
                Function0 function14 = (Function0) obj10;
                Function0 function15 = (Function0) obj9;
                Function0 function16 = (Function0) obj8;
                Function0 function17 = (Function0) obj7;
                Function0 function18 = (Function0) obj6;
                Function0 function19 = (Function0) obj5;
                Function0 function20 = (Function0) obj4;
                Function0 function21 = (Function0) function;
                Composer composer2 = (Composer) obj2;
                int iIntValue2 = ((Integer) obj3).intValue();
                ((LazyItemScope) obj).getClass();
                if (composer2.p(iIntValue2 & 1, (iIntValue2 & 17) != 16)) {
                    OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                    OptionsScreenKt.d(null, optionsViewState, this.f80276c, this.d, this.f80277e, this.f80278f, function8, function9, function10, function11, function12, function13, function14, function15, function16, function17, function18, function19, function20, function21, composer2, 0);
                } else {
                    composer2.D();
                }
                return Unit.f71739a;
        }
    }

    public /* synthetic */ ub0(OptionsViewState optionsViewState, Function0 function0, Function0 function1, Function0 function2, Function0 function3, Function0 function4, Function0 function5, Function0 function6, Function0 function7, Function0 function8, Function0 function9, Function0 function10, Function0 function11, Function0 function12, Function0 function13, Function0 function14, Function0 function15, Function0 function16, Function0 function17) {
        this.g = optionsViewState;
        this.f80276c = function0;
        this.d = function1;
        this.f80277e = function2;
        this.f80278f = function3;
        this.f80279h = function4;
        this.f80280i = function5;
        this.f80281j = function6;
        this.f80282k = function7;
        this.l = function8;
        this.m = function9;
        this.n = function10;
        this.o = function11;
        this.p = function12;
        this.q = function13;
        this.r = function14;
        this.s = function15;
        this.t = function16;
        this.u = function17;
    }
}
