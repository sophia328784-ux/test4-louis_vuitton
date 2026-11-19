package defpackage;

import androidx.compose.animation.AnimatedVisibilityKt;
import androidx.compose.animation.EnterExitTransitionKt;
import androidx.compose.animation.EnterTransition;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.State;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.navigation.NavHostController;
import com.vuitton.android.presentation.PreprodRouter;
import com.vuitton.android.presentation.common.ScreenOrigin;
import com.vuitton.android.presentation.screen.aicompanion.models.tracking.AICompanionTracker;
import com.vuitton.android.presentation.screen.cart.NativeCartViewModel;
import com.vuitton.android.presentation.screen.cart.components.NativeCartComposableKt;
import com.vuitton.android.presentation.screen.cart.models.CartPreviousScreen;
import com.vuitton.android.presentation.screen.distantrepairs.assessment.bff.DistantRepairAssessmentBffViewModel;
import com.vuitton.android.presentation.screen.distantrepairs.form.datepicker.DatePickerViewModel;
import com.vuitton.android.presentation.screen.filter.quickaccess.QuickAccessFiltersViewModel;
import com.vuitton.android.presentation.screen.main.MainActivityViewModel;
import com.vuitton.android.presentation.screen.main.MainNavigationState;
import com.vuitton.android.presentation.screen.main.models.MainActivityViewState;
import com.vuitton.android.presentation.screen.main.models.MainTopLevelDestination;
import com.vuitton.android.presentation.screen.options.OptionsNavHostKt;
import com.vuitton.android.presentation.screen.options.OptionsViewModel;
import com.vuitton.android.presentation.screen.options.appinfo.AppInfoViewModel;
import com.vuitton.android.presentation.screen.options.dispatch.DispatchCountryViewModel;
import com.vuitton.android.presentation.screen.options.notifications.NotificationsPreferencesViewModel;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.BeautyVtoViewModel;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.components.BeautyVtoBottomBarKt;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.components.BeautyVtoComposableKt;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.components.BeautyVtoScreenKt;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.models.BeautyVtoViewState;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.models.TryOnProductUiModel;
import com.vuitton.android.presentation.screen.permissions.PermissionsViewModel;
import com.vuitton.android.presentation.screen.personalselections.PersonalSelectionsNavHostKt;
import com.vuitton.android.presentation.screen.personalselections.PersonalSelectionsRoute;
import com.vuitton.android.presentation.screen.personalselections.detail.curationadvisor.PersonalSelectionsCurationAdvisorNavHostKt;
import com.vuitton.android.presentation.screen.personalselections.detail.curationadvisor.PersonalSelectionsCurationAdvisorViewModel;
import com.vuitton.android.presentation.screen.reinsurance.ReinsuranceViewModel;
import com.vuitton.android.presentation.screen.repairs.RepairBffViewModel;
import com.vuitton.android.presentation.screen.repairs.detail.components.RepairDetailBffComposableKt;
import com.vuitton.android.presentation.screen.repairs.models.bff.CareServiceShortUiModel;
import com.vuitton.android.presentation.screen.services.components.ServicesScreenKt;
import com.vuitton.android.presentation.screen.services.models.ServicesViewState;
import java.util.ArrayList;
import java.util.List;
import kotlin.Function;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class le implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f76000b = 4;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f76001c;
    public final /* synthetic */ Function0 d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Function0 f76002e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Function f76003f;
    public final /* synthetic */ Object g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ Object f76004h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ Object f76005i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final /* synthetic */ Object f76006j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final /* synthetic */ Object f76007k;
    public final /* synthetic */ Object l;
    public final /* synthetic */ Object m;
    public final /* synthetic */ Object n;

    public /* synthetic */ le(ServicesViewState servicesViewState, Function0 function0, Function0 function1, Function0 function2, Function0 function3, Function0 function4, Function0 function5, Function0 function6, Function0 function7, Function0 function8, Function0 function9, Function0 function10, int i2) {
        this.l = servicesViewState;
        this.d = function0;
        this.f76002e = function1;
        this.f76003f = function2;
        this.g = function3;
        this.f76004h = function4;
        this.f76006j = function5;
        this.f76007k = function6;
        this.m = function7;
        this.f76001c = function8;
        this.f76005i = function9;
        this.n = function10;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        boolean z;
        boolean z2;
        Function1 function1;
        ArrayList arrayList;
        MutableState showNavBar;
        int i2 = this.f76000b;
        Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
        Object obj3 = this.n;
        Object obj4 = this.f76005i;
        Object obj5 = this.f76001c;
        Object obj6 = this.m;
        Object obj7 = this.f76007k;
        Object obj8 = this.f76006j;
        Object obj9 = this.f76004h;
        Object obj10 = this.g;
        Function function = this.f76003f;
        Object obj11 = this.l;
        switch (i2) {
            case 0:
                ((Integer) obj2).getClass();
                BeautyVtoComposableKt.a((BeautyVtoViewModel) obj11, (PermissionsViewModel) obj6, this.d, this.f76002e, (Function1) obj5, (Function0) function, (Function0) obj10, (Function0) obj9, (Function0) obj8, (Function1) obj4, (Function0) obj7, (Function1) obj3, (Composer) obj, RecomposeScopeImplKt.a(1));
                break;
            case 1:
                BeautyVtoViewState beautyVtoViewState = (BeautyVtoViewState) obj11;
                Function1 function2 = (Function1) obj5;
                Function0 function0 = (Function0) function;
                Function0 function3 = (Function0) obj10;
                Function0 function4 = (Function0) obj9;
                Function1 function5 = (Function1) obj4;
                Function0 function6 = (Function0) obj8;
                Function0 function7 = (Function0) obj7;
                MutableState mutableState = (MutableState) obj6;
                MutableState mutableState2 = (MutableState) obj3;
                Composer composer = (Composer) obj;
                int iIntValue = ((Integer) obj2).intValue();
                float f2 = BeautyVtoScreenKt.f62031a;
                if (composer.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                    OpaqueKey opaqueKey = ComposerKt.f7940a;
                    boolean zBooleanValue = ((Boolean) mutableState.getF10755b()).booleanValue();
                    boolean zBooleanValue2 = ((Boolean) mutableState2.getF10755b()).booleanValue();
                    boolean z3 = zBooleanValue;
                    TryOnProductUiModel tryOnProductUiModel = beautyVtoViewState.f62155i;
                    List list = beautyVtoViewState.f62150b;
                    if (list != null) {
                        arrayList = new ArrayList();
                        for (Object obj12 : list) {
                            boolean z4 = zBooleanValue2;
                            boolean z5 = z3;
                            Function1 function8 = function5;
                            if (!Intrinsics.c((TryOnProductUiModel) obj12, beautyVtoViewState.f62155i)) {
                                arrayList.add(obj12);
                            }
                            zBooleanValue2 = z4;
                            z3 = z5;
                            function5 = function8;
                        }
                        z = zBooleanValue2;
                        z2 = z3;
                        function1 = function5;
                    } else {
                        z = zBooleanValue2;
                        z2 = z3;
                        function1 = function5;
                        arrayList = null;
                    }
                    ArrayList arrayList2 = arrayList;
                    TryOnProductUiModel tryOnProductUiModel2 = beautyVtoViewState.r;
                    boolean zK = composer.K(function2);
                    Object objX = composer.x();
                    if (zK || objX == composer$Companion$Empty$1) {
                        objX = new k0(function2, 4);
                        composer.q(objX);
                    }
                    Function1 function9 = (Function1) objX;
                    boolean zK2 = composer.K(function3);
                    Object objX2 = composer.x();
                    if (zK2 || objX2 == composer$Companion$Empty$1) {
                        objX2 = new na(function3, mutableState, 3);
                        composer.q(objX2);
                    }
                    Function0 function10 = (Function0) objX2;
                    boolean zY = composer.y(beautyVtoViewState) | composer.K(function4);
                    Object objX3 = composer.x();
                    if (zY || objX3 == composer$Companion$Empty$1) {
                        objX3 = new q(beautyVtoViewState, function4, mutableState, 14);
                        composer.q(objX3);
                    }
                    Function0 function11 = (Function0) objX3;
                    Object objX4 = composer.x();
                    if (objX4 == composer$Companion$Empty$1) {
                        objX4 = new d0(13, mutableState);
                        composer.q(objX4);
                    }
                    Function0 function12 = (Function0) objX4;
                    Object objX5 = composer.x();
                    if (objX5 == composer$Companion$Empty$1) {
                        objX5 = new d0(14, mutableState2);
                        composer.q(objX5);
                    }
                    BeautyVtoBottomBarKt.a(beautyVtoViewState, z2, z, tryOnProductUiModel, arrayList2, tryOnProductUiModel2, function9, this.d, this.f76002e, function0, function10, function11, function12, (Function0) objX5, function1, function6, function7, composer, 0);
                    OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                } else {
                    composer.D();
                }
                break;
            case 2:
                MainNavigationState mainNavigationState = (MainNavigationState) obj11;
                State state = (State) obj6;
                QuickAccessFiltersViewModel quickAccessFiltersViewModel = (QuickAccessFiltersViewModel) obj10;
                Function0 function13 = (Function0) function;
                AICompanionTracker aICompanionTracker = (AICompanionTracker) obj9;
                ScreenOrigin screenOrigin = (ScreenOrigin) obj8;
                State state2 = (State) obj7;
                MainActivityViewModel mainActivityViewModel = (MainActivityViewModel) obj5;
                MutableState mutableState3 = (MutableState) obj4;
                MutableState mutableState4 = (MutableState) obj3;
                Composer composer2 = (Composer) obj;
                int iIntValue2 = ((Integer) obj2).intValue();
                if (composer2.p(iIntValue2 & 1, (iIntValue2 & 3) != 2)) {
                    OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                    MainTopLevelDestination mainTopLevelDestinationC = mainNavigationState.c(composer2, 0);
                    if ((mainTopLevelDestinationC == null || (showNavBar = mainTopLevelDestinationC.getShowNavBar()) == null) ? true : ((Boolean) showNavBar.getF10755b()).booleanValue()) {
                        composer2.L(-1039095800);
                        boolean z6 = ((MainActivityViewState) state.getF10755b()).f59142e;
                        Object objX6 = composer2.x();
                        if (objX6 == composer$Companion$Empty$1) {
                            objX6 = new x20(18);
                            composer2.q(objX6);
                        }
                        EnterTransition enterTransitionR = EnterExitTransitionKt.r((Function1) objX6);
                        Object objX7 = composer2.x();
                        if (objX7 == composer$Companion$Empty$1) {
                            objX7 = new ba0(4);
                            composer2.q(objX7);
                        }
                        AnimatedVisibilityKt.e(z6, null, enterTransitionR, EnterExitTransitionKt.v(1, (Function1) objX7), "Full bottomBar Animation", ComposableLambdaKt.b(94775429, new me(mainNavigationState, quickAccessFiltersViewModel, this.d, this.f76002e, function13, aICompanionTracker, screenOrigin, state2, mainActivityViewModel, state, mutableState3, mutableState4), composer2), composer2, 224640, 2);
                        composer2.F();
                    } else {
                        composer2.L(-1035219126);
                        composer2.F();
                    }
                } else {
                    composer2.D();
                }
                break;
            case 3:
                ((Integer) obj2).getClass();
                NativeCartComposableKt.b((NativeCartViewModel) obj11, (ReinsuranceViewModel) obj6, (CartPreviousScreen) obj8, this.d, this.f76002e, (Function1) obj5, (Function0) function, (Function0) obj10, (Function1) obj4, (Function1) obj3, (Function0) obj9, (Function1) obj7, (Composer) obj, RecomposeScopeImplKt.a(1));
                break;
            case 4:
                ((Integer) obj2).getClass();
                OptionsNavHostKt.a((NavHostController) obj11, (OptionsViewModel) obj6, (DispatchCountryViewModel) obj9, (AppInfoViewModel) obj8, (NotificationsPreferencesViewModel) obj7, (PreprodRouter) obj3, this.d, this.f76002e, (Function1) obj5, (Function1) obj4, (Function0) function, (Function0) obj10, (Composer) obj, RecomposeScopeImplKt.a(1));
                break;
            case 5:
                ((Integer) obj2).getClass();
                PersonalSelectionsCurationAdvisorNavHostKt.a((PersonalSelectionsCurationAdvisorViewModel) obj11, this.d, (Function1) obj5, (Function1) obj4, (Function3) obj6, this.f76002e, (Function0) function, (Function1) obj3, (Function1) obj10, (Function1) obj9, (Function1) obj8, (Function1) obj7, (Composer) obj, RecomposeScopeImplKt.a(1));
                break;
            case 6:
                ((Integer) obj2).getClass();
                PersonalSelectionsNavHostKt.a((NavHostController) obj11, this.d, (PersonalSelectionsRoute) obj6, (Function3) function, this.f76002e, (Function1) obj5, (Function1) obj4, (Function1) obj3, (Function1) obj10, (Function1) obj9, (Function1) obj8, (Function1) obj7, (Composer) obj, RecomposeScopeImplKt.a(1));
                break;
            case 7:
                ((Integer) obj2).getClass();
                RepairDetailBffComposableKt.a((RepairBffViewModel) obj11, (DistantRepairAssessmentBffViewModel) obj6, (CareServiceShortUiModel) obj9, this.d, this.f76002e, (Function1) obj5, (Function1) obj4, (Function1) obj3, (Function0) function, (Function0) obj10, (Function1) obj8, (DatePickerViewModel) obj7, (Composer) obj, RecomposeScopeImplKt.a(1));
                break;
            default:
                ((Integer) obj2).getClass();
                ServicesScreenKt.f((ServicesViewState) obj11, this.d, this.f76002e, (Function0) function, (Function0) obj10, (Function0) obj9, (Function0) obj8, (Function0) obj7, (Function0) obj6, (Function0) obj5, (Function0) obj4, (Function0) obj3, (Composer) obj, RecomposeScopeImplKt.a(1));
                break;
        }
        return Unit.f71739a;
    }

    public /* synthetic */ le(NavHostController navHostController, Function0 function0, PersonalSelectionsRoute personalSelectionsRoute, Function3 function3, Function0 function1, Function1 function2, Function1 function4, Function1 function5, Function1 function6, Function1 function7, Function1 function8, Function1 function9, int i2) {
        this.l = navHostController;
        this.d = function0;
        this.m = personalSelectionsRoute;
        this.f76003f = function3;
        this.f76002e = function1;
        this.f76001c = function2;
        this.f76005i = function4;
        this.n = function5;
        this.g = function6;
        this.f76004h = function7;
        this.f76006j = function8;
        this.f76007k = function9;
    }

    public /* synthetic */ le(NativeCartViewModel nativeCartViewModel, ReinsuranceViewModel reinsuranceViewModel, CartPreviousScreen cartPreviousScreen, Function0 function0, Function0 function1, Function1 function2, Function0 function3, Function0 function4, Function1 function5, Function1 function6, Function0 function7, Function1 function8, int i2) {
        this.l = nativeCartViewModel;
        this.m = reinsuranceViewModel;
        this.f76006j = cartPreviousScreen;
        this.d = function0;
        this.f76002e = function1;
        this.f76001c = function2;
        this.f76003f = function3;
        this.g = function4;
        this.f76005i = function5;
        this.n = function6;
        this.f76004h = function7;
        this.f76007k = function8;
    }

    public /* synthetic */ le(MainNavigationState mainNavigationState, MutableState mutableState, QuickAccessFiltersViewModel quickAccessFiltersViewModel, Function0 function0, Function0 function1, Function0 function2, AICompanionTracker aICompanionTracker, ScreenOrigin screenOrigin, MutableState mutableState2, MainActivityViewModel mainActivityViewModel, MutableState mutableState3, MutableState mutableState4) {
        this.l = mainNavigationState;
        this.m = mutableState;
        this.g = quickAccessFiltersViewModel;
        this.d = function0;
        this.f76002e = function1;
        this.f76003f = function2;
        this.f76004h = aICompanionTracker;
        this.f76006j = screenOrigin;
        this.f76007k = mutableState2;
        this.f76001c = mainActivityViewModel;
        this.f76005i = mutableState3;
        this.n = mutableState4;
    }

    public /* synthetic */ le(BeautyVtoViewModel beautyVtoViewModel, PermissionsViewModel permissionsViewModel, Function0 function0, Function0 function1, Function1 function2, Function0 function3, Function0 function4, Function0 function5, Function0 function6, Function1 function7, Function0 function8, Function1 function9, int i2) {
        this.l = beautyVtoViewModel;
        this.m = permissionsViewModel;
        this.d = function0;
        this.f76002e = function1;
        this.f76001c = function2;
        this.f76003f = function3;
        this.g = function4;
        this.f76004h = function5;
        this.f76006j = function6;
        this.f76005i = function7;
        this.f76007k = function8;
        this.n = function9;
    }

    public /* synthetic */ le(BeautyVtoViewState beautyVtoViewState, Function1 function1, Function0 function0, Function0 function2, Function0 function3, Function0 function4, Function0 function5, Function1 function6, Function0 function7, Function0 function8, MutableState mutableState, MutableState mutableState2) {
        this.l = beautyVtoViewState;
        this.f76001c = function1;
        this.d = function0;
        this.f76002e = function2;
        this.f76003f = function3;
        this.g = function4;
        this.f76004h = function5;
        this.f76005i = function6;
        this.f76006j = function7;
        this.f76007k = function8;
        this.m = mutableState;
        this.n = mutableState2;
    }

    public /* synthetic */ le(PersonalSelectionsCurationAdvisorViewModel personalSelectionsCurationAdvisorViewModel, Function0 function0, Function1 function1, Function1 function2, Function3 function3, Function0 function4, Function0 function5, Function1 function6, Function1 function7, Function1 function8, Function1 function9, Function1 function10, int i2) {
        this.l = personalSelectionsCurationAdvisorViewModel;
        this.d = function0;
        this.f76001c = function1;
        this.f76005i = function2;
        this.m = function3;
        this.f76002e = function4;
        this.f76003f = function5;
        this.n = function6;
        this.g = function7;
        this.f76004h = function8;
        this.f76006j = function9;
        this.f76007k = function10;
    }

    public /* synthetic */ le(RepairBffViewModel repairBffViewModel, DistantRepairAssessmentBffViewModel distantRepairAssessmentBffViewModel, CareServiceShortUiModel careServiceShortUiModel, Function0 function0, Function0 function1, Function1 function2, Function1 function3, Function1 function4, Function0 function5, Function0 function6, Function1 function7, DatePickerViewModel datePickerViewModel, int i2) {
        this.l = repairBffViewModel;
        this.m = distantRepairAssessmentBffViewModel;
        this.f76004h = careServiceShortUiModel;
        this.d = function0;
        this.f76002e = function1;
        this.f76001c = function2;
        this.f76005i = function3;
        this.n = function4;
        this.f76003f = function5;
        this.g = function6;
        this.f76006j = function7;
        this.f76007k = datePickerViewModel;
    }

    public /* synthetic */ le(NavHostController navHostController, OptionsViewModel optionsViewModel, DispatchCountryViewModel dispatchCountryViewModel, AppInfoViewModel appInfoViewModel, NotificationsPreferencesViewModel notificationsPreferencesViewModel, PreprodRouter preprodRouter, Function0 function0, Function0 function1, Function1 function2, Function1 function3, Function0 function4, Function0 function5, int i2) {
        this.l = navHostController;
        this.m = optionsViewModel;
        this.f76004h = dispatchCountryViewModel;
        this.f76006j = appInfoViewModel;
        this.f76007k = notificationsPreferencesViewModel;
        this.n = preprodRouter;
        this.d = function0;
        this.f76002e = function1;
        this.f76001c = function2;
        this.f76005i = function3;
        this.f76003f = function4;
        this.g = function5;
    }
}
