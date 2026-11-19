package defpackage;

import androidx.compose.animation.AnimatedVisibilityScope;
import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.foundation.layout.WindowInsetsPadding_androidKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.State;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.RectangleShapeKt;
import androidx.compose.ui.res.StringResources_androidKt;
import androidx.paging.compose.LazyPagingItems;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.R;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.templates.LVModalBottomSheetKt;
import com.vuitton.android.designkit.ui.theme.templates.LVModalBottomSheetState;
import com.vuitton.android.presentation.common.ScreenOrigin;
import com.vuitton.android.presentation.screen.aicompanion.models.tracking.AICompanionTracker;
import com.vuitton.android.presentation.screen.filter.quickaccess.QuickAccessFiltersViewModel;
import com.vuitton.android.presentation.screen.filter.quickaccess.models.QuickAccessFiltersViewState;
import com.vuitton.android.presentation.screen.main.MainActivityViewModel;
import com.vuitton.android.presentation.screen.main.MainNavigationState;
import com.vuitton.android.presentation.screen.main.components.MainNavBarKt;
import com.vuitton.android.presentation.screen.main.models.MainActivityViewState;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.BeautyVtoRoutes;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.BeautyVtoViewModel;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.components.BeautyVtoComposableKt;
import com.vuitton.android.presentation.screen.permissions.PermissionsViewModel;
import com.vuitton.android.presentation.screen.storemode.components.plp.PLPStoreModeKt;
import com.vuitton.android.presentation.screen.storemode.filters.model.ProductFilterViewState;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.functions.Function5;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class me implements Function3 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f76238b = 2;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Function0 f76239c;
    public final /* synthetic */ Function0 d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Function0 f76240e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Object f76241f;
    public final /* synthetic */ Object g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ Object f76242h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ Object f76243i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final /* synthetic */ Object f76244j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final /* synthetic */ Object f76245k;
    public final /* synthetic */ Object l;
    public final /* synthetic */ Object m;
    public final /* synthetic */ Object n;

    public /* synthetic */ me(LazyPagingItems lazyPagingItems, Function1 function1, Function1 function2, Function1 function3, Function2 function4, LVModalBottomSheetState lVModalBottomSheetState, ProductFilterViewState productFilterViewState, Function0 function0, Function0 function5, Function0 function6, Function2 function7, Function5 function8) {
        this.f76241f = lazyPagingItems;
        this.l = function1;
        this.m = function2;
        this.n = function3;
        this.g = function4;
        this.f76242h = lVModalBottomSheetState;
        this.f76243i = productFilterViewState;
        this.f76239c = function0;
        this.d = function5;
        this.f76240e = function6;
        this.f76244j = function7;
        this.f76245k = function8;
    }

    @Override // kotlin.jvm.functions.Function3
    public final Object A(Object obj, Object obj2, Object obj3) {
        int i2 = this.f76238b;
        Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
        Function0 function0 = this.f76239c;
        Object obj4 = this.f76245k;
        Object obj5 = this.f76244j;
        Object obj6 = this.f76243i;
        Object obj7 = this.f76242h;
        Object obj8 = this.g;
        Object obj9 = this.n;
        Object obj10 = this.m;
        Object obj11 = this.l;
        Object obj12 = this.f76241f;
        switch (i2) {
            case 0:
                BeautyVtoViewModel beautyVtoViewModel = (BeautyVtoViewModel) obj12;
                PermissionsViewModel permissionsViewModel = (PermissionsViewModel) obj8;
                Function1 function1 = (Function1) obj11;
                Function0 function2 = (Function0) obj7;
                Function0 function3 = (Function0) obj6;
                Function0 function4 = (Function0) obj5;
                Function1 function5 = (Function1) obj10;
                Function0 function6 = (Function0) obj4;
                Function1 function7 = (Function1) obj9;
                Composer composer = (Composer) obj2;
                int iIntValue = ((Integer) obj3).intValue();
                ((BeautyVtoRoutes.Vto) obj).getClass();
                if (composer.p(iIntValue & 1, (iIntValue & 17) != 16)) {
                    OpaqueKey opaqueKey = ComposerKt.f7940a;
                    BeautyVtoComposableKt.a(beautyVtoViewModel, permissionsViewModel, this.f76239c, this.d, function1, this.f76240e, function2, function3, function4, function5, function6, function7, composer, 0);
                } else {
                    composer.D();
                }
                break;
            case 1:
                MainNavigationState mainNavigationState = (MainNavigationState) obj12;
                QuickAccessFiltersViewModel quickAccessFiltersViewModel = (QuickAccessFiltersViewModel) obj8;
                AICompanionTracker aICompanionTracker = (AICompanionTracker) obj7;
                ScreenOrigin screenOrigin = (ScreenOrigin) obj6;
                State state = (State) obj5;
                MainActivityViewModel mainActivityViewModel = (MainActivityViewModel) obj4;
                State state2 = (State) obj11;
                MutableState mutableState = (MutableState) obj10;
                MutableState mutableState2 = (MutableState) obj9;
                Composer composer2 = (Composer) obj2;
                ((Integer) obj3).getClass();
                ((AnimatedVisibilityScope) obj).getClass();
                OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                Modifier modifierB = WindowInsetsPadding_androidKt.b(BackgroundKt.b(new DTFunctionNameModifier("MainActivityComposable$lambda$0$9$2"), LVAppDesignKitTheme.c(composer2).f48361b.u, RectangleShapeKt.f8913a));
                QuickAccessFiltersViewState quickAccessFiltersViewState = (QuickAccessFiltersViewState) state.getF10755b();
                boolean z = ((MainActivityViewState) state2.getF10755b()).d;
                boolean z2 = ((MainActivityViewState) state2.getF10755b()).f59144h;
                boolean zY = composer2.y(quickAccessFiltersViewModel) | composer2.K(function0);
                Object objX = composer2.x();
                if (zY || objX == composer$Companion$Empty$1) {
                    objX = new sb0(quickAccessFiltersViewModel, function0, 0);
                    composer2.q(objX);
                }
                Function0 function8 = (Function0) objX;
                boolean zY2 = composer2.y(quickAccessFiltersViewModel);
                Function0 function9 = this.f76240e;
                boolean zK = zY2 | composer2.K(function9);
                Object objX2 = composer2.x();
                if (zK || objX2 == composer$Companion$Empty$1) {
                    objX2 = new sb0(quickAccessFiltersViewModel, function9, 1);
                    composer2.q(objX2);
                }
                Function0 function10 = (Function0) objX2;
                boolean zY3 = composer2.y(aICompanionTracker) | composer2.d(screenOrigin.ordinal());
                Object objX3 = composer2.x();
                if (zY3 || objX3 == composer$Companion$Empty$1) {
                    objX3 = new pp(aICompanionTracker, screenOrigin, mutableState, 20);
                    composer2.q(objX3);
                }
                Function0 function11 = (Function0) objX3;
                Object objX4 = composer2.x();
                if (objX4 == composer$Companion$Empty$1) {
                    objX4 = new c30(13, mutableState2);
                    composer2.q(objX4);
                }
                Function1 function12 = (Function1) objX4;
                boolean zY4 = composer2.y(quickAccessFiltersViewModel) | composer2.K(state);
                Object objX5 = composer2.x();
                if (zY4 || objX5 == composer$Companion$Empty$1) {
                    objX5 = new rs(quickAccessFiltersViewModel, state, 28);
                    composer2.q(objX5);
                }
                Function2 function13 = (Function2) objX5;
                boolean zY5 = composer2.y(quickAccessFiltersViewModel);
                Object objX6 = composer2.x();
                if (zY5 || objX6 == composer$Companion$Empty$1) {
                    objX6 = new bk(quickAccessFiltersViewModel, 1);
                    composer2.q(objX6);
                }
                Function1 function14 = (Function1) objX6;
                boolean zY6 = composer2.y(quickAccessFiltersViewModel);
                Object objX7 = composer2.x();
                if (zY6 || objX7 == composer$Companion$Empty$1) {
                    objX7 = new ak(quickAccessFiltersViewModel, 4);
                    composer2.q(objX7);
                }
                Function0 function15 = (Function0) objX7;
                boolean zY7 = composer2.y(mainActivityViewModel);
                Object objX8 = composer2.x();
                if (zY7 || objX8 == composer$Companion$Empty$1) {
                    objX8 = new tb0(mainActivityViewModel, 0);
                    composer2.q(objX8);
                }
                MainNavBarKt.a(modifierB, mainNavigationState, quickAccessFiltersViewState, z, z2, function8, this.d, function10, function11, function12, function13, function14, function15, (Function1) objX8, composer2, 805306368);
                break;
            default:
                LazyPagingItems lazyPagingItems = (LazyPagingItems) obj12;
                Function1 function16 = (Function1) obj11;
                Function1 function17 = (Function1) obj10;
                Function1 function18 = (Function1) obj9;
                Function2 function19 = (Function2) obj8;
                LVModalBottomSheetState lVModalBottomSheetState = (LVModalBottomSheetState) obj7;
                ProductFilterViewState productFilterViewState = (ProductFilterViewState) obj6;
                Function2 function20 = (Function2) obj5;
                Function5 function21 = (Function5) obj4;
                PaddingValues paddingValues = (PaddingValues) obj;
                Composer composer3 = (Composer) obj2;
                int iIntValue2 = ((Integer) obj3).intValue();
                paddingValues.getClass();
                if ((iIntValue2 & 6) == 0) {
                    iIntValue2 |= composer3.K(paddingValues) ? 4 : 2;
                }
                if (composer3.p(iIntValue2 & 1, (iIntValue2 & 19) != 18)) {
                    OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                    Modifier modifierE = o60.e("PLPStoreModeScreen$lambda$3", paddingValues);
                    Object objX9 = composer3.x();
                    if (objX9 == composer$Companion$Empty$1) {
                        objX9 = new yk0(9);
                        composer3.q(objX9);
                    }
                    PLPStoreModeKt.a(modifierE, lazyPagingItems, false, (Function1) objX9, function16, function17, function18, function19, composer3, 3136, 4);
                    if (!lVModalBottomSheetState.a() || productFilterViewState == null) {
                        composer3.L(630758236);
                        composer3.F();
                    } else {
                        composer3.L(629927622);
                        String strC = StringResources_androidKt.c(composer3, R.string.alt_close);
                        boolean zY8 = composer3.y(lVModalBottomSheetState) | composer3.K(function0);
                        Object objX10 = composer3.x();
                        if (zY8 || objX10 == composer$Companion$Empty$1) {
                            objX10 = new t3(lVModalBottomSheetState, function0, 13);
                            composer3.q(objX10);
                        }
                        LVModalBottomSheetKt.b(null, strC, (Function0) objX10, lVModalBottomSheetState, null, 0L, false, null, ComposableLambdaKt.b(1901954487, new p0(productFilterViewState, this.d, lVModalBottomSheetState, this.f76240e, function20, function21, 15), composer3), composer3, (LVModalBottomSheetState.f48797e << 9) | 100663296, 241);
                        composer3.F();
                    }
                } else {
                    composer3.D();
                }
                break;
        }
        return Unit.f71739a;
    }

    public /* synthetic */ me(MainNavigationState mainNavigationState, QuickAccessFiltersViewModel quickAccessFiltersViewModel, Function0 function0, Function0 function1, Function0 function2, AICompanionTracker aICompanionTracker, ScreenOrigin screenOrigin, State state, MainActivityViewModel mainActivityViewModel, State state2, MutableState mutableState, MutableState mutableState2) {
        this.f76241f = mainNavigationState;
        this.g = quickAccessFiltersViewModel;
        this.f76239c = function0;
        this.d = function1;
        this.f76240e = function2;
        this.f76242h = aICompanionTracker;
        this.f76243i = screenOrigin;
        this.f76244j = state;
        this.f76245k = mainActivityViewModel;
        this.l = state2;
        this.m = mutableState;
        this.n = mutableState2;
    }

    public /* synthetic */ me(BeautyVtoViewModel beautyVtoViewModel, PermissionsViewModel permissionsViewModel, Function0 function0, Function0 function1, Function1 function2, Function0 function3, Function0 function4, Function0 function5, Function0 function6, Function1 function7, Function0 function8, Function1 function9) {
        this.f76241f = beautyVtoViewModel;
        this.g = permissionsViewModel;
        this.f76239c = function0;
        this.d = function1;
        this.l = function2;
        this.f76240e = function3;
        this.f76242h = function4;
        this.f76243i = function5;
        this.f76244j = function6;
        this.m = function7;
        this.f76245k = function8;
        this.n = function9;
    }
}
