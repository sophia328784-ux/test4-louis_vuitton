package defpackage;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.navigation.NavHostController;
import com.vuitton.android.designkit.ui.theme.templates.LVModalBottomSheetState;
import com.vuitton.android.presentation.link.builder.PassAppLinkBuilder;
import com.vuitton.android.presentation.link.navigation.ContributionLinkNavigator;
import com.vuitton.android.presentation.screen.authentication.AuthenticationViewModel;
import com.vuitton.android.presentation.screen.authentication.welcome.WelcomeViewModel;
import com.vuitton.android.presentation.screen.filter.quickaccess.QuickAccessFiltersViewModel;
import com.vuitton.android.presentation.screen.main.MainActivityRouter;
import com.vuitton.android.presentation.screen.main.MainActivityViewModel;
import com.vuitton.android.presentation.screen.main.MainNavigationState;
import com.vuitton.android.presentation.screen.main.components.MainActivityBottomSheetType;
import com.vuitton.android.presentation.screen.main.components.MainActivityComposableKt;
import com.vuitton.android.presentation.screen.plp.models.viewstates.PLPViewState;
import com.vuitton.android.presentation.screen.storemode.components.plp.PLPStoreModeScreenKt;
import com.vuitton.android.presentation.screen.storemode.filters.model.ProductFilterViewState;
import com.vuitton.android.presentation.screen.storemode.filters.model.StoreModePLPFiltersViewState;
import com.vuitton.android.presentation.screen.storemode.models.PLPStoreModeViewState;
import kotlin.Function;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.functions.Function5;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.SharedFlow;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class rb0 implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f79304b = 0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Function0 f79305c;
    public final /* synthetic */ Function0 d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Function0 f79306e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Function0 f79307f;
    public final /* synthetic */ Function0 g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ Function0 f79308h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ Function1 f79309i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final /* synthetic */ int f79310j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final /* synthetic */ Object f79311k;
    public final /* synthetic */ Object l;
    public final /* synthetic */ Object m;
    public final /* synthetic */ Object n;
    public final /* synthetic */ Object o;
    public final /* synthetic */ Object p;
    public final /* synthetic */ Object q;
    public final /* synthetic */ Object r;
    public final /* synthetic */ Object s;
    public final /* synthetic */ Object t;
    public final /* synthetic */ Object u;
    public final /* synthetic */ Object v;
    public final /* synthetic */ Function w;

    public /* synthetic */ rb0(MainActivityViewModel mainActivityViewModel, WelcomeViewModel welcomeViewModel, QuickAccessFiltersViewModel quickAccessFiltersViewModel, AuthenticationViewModel authenticationViewModel, SharedFlow sharedFlow, MainNavigationState mainNavigationState, LVModalBottomSheetState lVModalBottomSheetState, MainActivityRouter mainActivityRouter, NavHostController navHostController, ContributionLinkNavigator contributionLinkNavigator, PassAppLinkBuilder passAppLinkBuilder, MainActivityBottomSheetType mainActivityBottomSheetType, Function0 function0, Function0 function1, Function0 function2, Function1 function3, Function0 function4, Function0 function5, Function0 function6, Function3 function7, int i2) {
        this.f79311k = mainActivityViewModel;
        this.l = welcomeViewModel;
        this.m = quickAccessFiltersViewModel;
        this.n = authenticationViewModel;
        this.o = sharedFlow;
        this.p = mainNavigationState;
        this.q = lVModalBottomSheetState;
        this.r = mainActivityRouter;
        this.s = navHostController;
        this.t = contributionLinkNavigator;
        this.u = passAppLinkBuilder;
        this.v = mainActivityBottomSheetType;
        this.f79305c = function0;
        this.d = function1;
        this.f79306e = function2;
        this.f79309i = function3;
        this.f79307f = function4;
        this.g = function5;
        this.f79308h = function6;
        this.w = function7;
        this.f79310j = i2;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i2 = this.f79304b;
        int i3 = this.f79310j;
        Function function = this.w;
        Object obj3 = this.v;
        Object obj4 = this.u;
        Object obj5 = this.t;
        Object obj6 = this.s;
        Object obj7 = this.r;
        Object obj8 = this.q;
        Object obj9 = this.p;
        Object obj10 = this.o;
        Object obj11 = this.n;
        Object obj12 = this.m;
        Object obj13 = this.l;
        Object obj14 = this.f79311k;
        switch (i2) {
            case 0:
                ((Integer) obj2).getClass();
                int iA = RecomposeScopeImplKt.a(i3 | 1);
                MainActivityComposableKt.a((MainActivityViewModel) obj14, (WelcomeViewModel) obj13, (QuickAccessFiltersViewModel) obj12, (AuthenticationViewModel) obj11, (SharedFlow) obj10, (MainNavigationState) obj9, (LVModalBottomSheetState) obj8, (MainActivityRouter) obj7, (NavHostController) obj6, (ContributionLinkNavigator) obj5, (PassAppLinkBuilder) obj4, (MainActivityBottomSheetType) obj3, this.f79305c, this.d, this.f79306e, this.f79309i, this.f79307f, this.g, this.f79308h, (Function3) function, (Composer) obj, iA);
                break;
            default:
                ((Integer) obj2).getClass();
                int iA2 = RecomposeScopeImplKt.a(i3 | 1);
                PLPStoreModeScreenKt.a((PLPViewState) obj14, (PLPStoreModeViewState) obj13, (StoreModePLPFiltersViewState) obj12, (ProductFilterViewState) obj11, (String) obj10, (Flow) obj9, this.f79305c, this.d, this.f79306e, this.f79307f, this.g, this.f79308h, (Function0) obj8, this.f79309i, (Function2) obj7, (Function1) obj6, (Function1) obj5, (Function1) obj4, (Function2) obj3, (Function5) function, (Composer) obj, iA2);
                break;
        }
        return Unit.f71739a;
    }

    public /* synthetic */ rb0(PLPViewState pLPViewState, PLPStoreModeViewState pLPStoreModeViewState, StoreModePLPFiltersViewState storeModePLPFiltersViewState, ProductFilterViewState productFilterViewState, String str, Flow flow, Function0 function0, Function0 function1, Function0 function2, Function0 function3, Function0 function4, Function0 function5, Function0 function6, Function1 function7, Function2 function8, Function1 function9, Function1 function10, Function1 function11, Function2 function12, Function5 function13, int i2) {
        this.f79311k = pLPViewState;
        this.l = pLPStoreModeViewState;
        this.m = storeModePLPFiltersViewState;
        this.n = productFilterViewState;
        this.o = str;
        this.p = flow;
        this.f79305c = function0;
        this.d = function1;
        this.f79306e = function2;
        this.f79307f = function3;
        this.g = function4;
        this.f79308h = function5;
        this.q = function6;
        this.f79309i = function7;
        this.r = function8;
        this.s = function9;
        this.t = function10;
        this.u = function11;
        this.v = function12;
        this.w = function13;
        this.f79310j = i2;
    }
}
