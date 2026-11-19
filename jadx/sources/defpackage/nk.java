package defpackage;

import androidx.collection.MutableObjectFloatMap;
import androidx.compose.animation.AnimatedContentKt;
import androidx.compose.animation.AnimatedContentScope;
import androidx.compose.animation.AnimatedContentTransitionScope;
import androidx.compose.animation.ContentTransform;
import androidx.compose.animation.EnterTransition;
import androidx.compose.animation.ExitTransition;
import androidx.compose.animation.SizeTransform;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.Arrangement$Top$1;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.PaddingValuesImpl;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.lazy.LazyItemScope;
import androidx.compose.foundation.lazy.LazyListScope;
import androidx.compose.material3.DateInputKt;
import androidx.compose.material3.DateInputValidator;
import androidx.compose.material3.TextKt;
import androidx.compose.material3.internal.CalendarDate;
import androidx.compose.material3.internal.CalendarModel;
import androidx.compose.material3.internal.DateInputFormat;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.runtime.State;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.BiasAlignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.res.StringResources_androidKt;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.input.TextFieldValue;
import androidx.compose.ui.text.style.TextOverflow;
import androidx.navigation.NavBackStackEntry;
import androidx.navigation.NavGraphBuilder;
import androidx.navigation.NavHostController;
import androidx.navigation.compose.ComposeNavigator;
import androidx.navigation.compose.NavGraphBuilderKt;
import com.vuitton.android.R;
import com.vuitton.android.designkit.ui.common.ModifierExtKt;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.templates.LVModalBottomSheetState;
import com.vuitton.android.presentation.common.editorial.models.EditorialModuleUiModel;
import com.vuitton.android.presentation.model.common.A11ySettings;
import com.vuitton.android.presentation.screen.account.myinformation.MyInformationViewModel;
import com.vuitton.android.presentation.screen.account.myinformation.components.edition.EditMyInfoComposableKt;
import com.vuitton.android.presentation.screen.catalog.CatalogTracker;
import com.vuitton.android.presentation.screen.catalog.components.ComposableSingletons$CatalogSubcategoryBottomSheetContentKt;
import com.vuitton.android.presentation.screen.catalog.models.SubcategoryGroupsUiModel;
import com.vuitton.android.presentation.screen.catalog.models.SubcategoryRedirectionUiModel;
import com.vuitton.android.presentation.screen.catalog.models.SubcategoryUiModel;
import com.vuitton.android.presentation.screen.options.optoutprivacymenu.components.OpOutMenu;
import com.vuitton.android.presentation.screen.options.optoutprivacymenu.components.OptOutOthers;
import com.vuitton.android.presentation.screen.options.settings.SettingsRoutes;
import com.vuitton.android.presentation.screen.options.settings.SettingsViewModel;
import com.vuitton.android.presentation.screen.privacy.PrivacyViewModel;
import com.vuitton.android.presentation.screen.repairs.list.components.ComposableSingletons$RepairListScreenKt;
import com.vuitton.android.presentation.screen.repairs.list.components.RepairListScreenKt;
import com.vuitton.android.presentation.screen.repairs.list.components.RepairListScreenKt$RepairListScreen$lambda$2$0$0$$inlined$items$default$1;
import com.vuitton.android.presentation.screen.repairs.list.components.RepairListScreenKt$RepairListScreen$lambda$2$0$0$$inlined$items$default$5;
import com.vuitton.android.presentation.screen.repairs.models.CareServiceUiModel;
import com.vuitton.android.presentation.screen.repairs.models.RepairsViewState;
import com.vuitton.android.presentation.screen.storemode.PSPStoreModeViewModel;
import com.vuitton.android.presentation.screen.storemode.StoreModeRoute;
import com.vuitton.android.presentation.screen.storemode.StoreModeViewModel;
import com.vuitton.android.presentation.screen.storemode.components.catalog.CatalogStoreModeKt;
import com.vuitton.android.presentation.screen.storemode.models.StoreModeViewState;
import defpackage.cj;
import defpackage.jm0;
import defpackage.sd0;
import defpackage.yj;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import kotlin.Function;
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
import kotlin.text.StringsKt;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class nk implements Function1 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f76544b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f76545c;
    public final /* synthetic */ Object d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f76546e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Function f76547f;
    public final /* synthetic */ Object g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ Object f76548h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ Object f76549i;

    public /* synthetic */ nk(MutableObjectFloatMap mutableObjectFloatMap, ComposeNavigator composeNavigator, Function1 function1, Function1 function2, Function1 function3, State state, MutableState mutableState) {
        this.f76544b = 4;
        this.d = mutableObjectFloatMap;
        this.f76545c = composeNavigator;
        this.f76547f = function1;
        this.g = function2;
        this.f76546e = function3;
        this.f76549i = state;
        this.f76548h = mutableState;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        List list;
        float f2;
        int i2 = this.f76544b;
        final int i3 = 0;
        Long lValueOf = null;
        int i4 = 3;
        Object obj2 = this.f76549i;
        Object obj3 = this.f76548h;
        Function function = this.f76547f;
        Object obj4 = this.f76546e;
        Object obj5 = this.g;
        Object obj6 = this.f76545c;
        Object obj7 = this.d;
        final int i5 = 1;
        switch (i2) {
            case 0:
                StoreModeViewModel storeModeViewModel = (StoreModeViewModel) obj7;
                NavHostController navHostController = (NavHostController) obj4;
                NavGraphBuilder navGraphBuilder = (NavGraphBuilder) obj;
                float f3 = CatalogStoreModeKt.f64850a;
                navGraphBuilder.getClass();
                ComposableLambdaImpl composableLambdaImpl = new ComposableLambdaImpl(212486427, true, new j0(storeModeViewModel, (StoreModeViewState) obj6, (Function0) obj5, navHostController, (Function1) function, (MutableState) obj3));
                Map mapC = MapsKt.c();
                EmptyList emptyList = EmptyList.f71768b;
                ReflectionFactory reflectionFactory = Reflection.f71922a;
                NavGraphBuilderKt.a(navGraphBuilder, reflectionFactory.b(StoreModeRoute.Level1.class), mapC, emptyList, null, null, null, null, composableLambdaImpl);
                jh jhVar = CatalogStoreModeKt.f64852c;
                jh jhVar2 = CatalogStoreModeKt.f64853e;
                jh jhVar3 = CatalogStoreModeKt.d;
                jh jhVar4 = CatalogStoreModeKt.f64854f;
                NavGraphBuilderKt.a(navGraphBuilder, reflectionFactory.b(StoreModeRoute.Plp.class), MapsKt.c(), emptyList, jhVar, jhVar2, jhVar3, jhVar4, new ComposableLambdaImpl(-1682503740, true, new cf(storeModeViewModel, navHostController, i5)));
                NavGraphBuilderKt.a(navGraphBuilder, reflectionFactory.b(StoreModeRoute.Psp.class), MapsKt.c(), emptyList, jhVar, jhVar2, jhVar3, jhVar4, new ComposableLambdaImpl(1581002339, true, new s8((PSPStoreModeViewModel) obj2, storeModeViewModel, navHostController, 2)));
                return Unit.f71739a;
            case 1:
                StoreModeViewState storeModeViewState = (StoreModeViewState) obj6;
                StoreModeViewModel storeModeViewModel2 = (StoreModeViewModel) obj7;
                NavHostController navHostController2 = (NavHostController) obj4;
                Function0 function0 = (Function0) obj5;
                NavGraphBuilder navGraphBuilder2 = (NavGraphBuilder) obj;
                float f4 = CatalogStoreModeKt.f64850a;
                navGraphBuilder2.getClass();
                jh jhVar5 = CatalogStoreModeKt.f64852c;
                jh jhVar6 = CatalogStoreModeKt.f64853e;
                jh jhVar7 = CatalogStoreModeKt.d;
                jh jhVar8 = CatalogStoreModeKt.f64854f;
                ComposableLambdaImpl composableLambdaImpl2 = new ComposableLambdaImpl(956113806, true, new j0(storeModeViewState, storeModeViewModel2, navHostController2, (Function1) function, function0, (Function0) obj3));
                Map mapC2 = MapsKt.c();
                EmptyList emptyList2 = EmptyList.f71768b;
                ReflectionFactory reflectionFactory2 = Reflection.f71922a;
                NavGraphBuilderKt.a(navGraphBuilder2, reflectionFactory2.b(StoreModeRoute.Home.class), mapC2, emptyList2, jhVar5, jhVar6, jhVar7, jhVar8, composableLambdaImpl2);
                NavGraphBuilderKt.a(navGraphBuilder2, reflectionFactory2.b(StoreModeRoute.Level1.class), MapsKt.c(), emptyList2, jhVar5, jhVar6, jhVar7, jhVar8, new ComposableLambdaImpl(-1128066889, true, new w4((Object) storeModeViewModel2, (Object) storeModeViewState, function0, navHostController2, 3)));
                NavGraphBuilderKt.a(navGraphBuilder2, reflectionFactory2.b(StoreModeRoute.Level2.class), MapsKt.c(), emptyList2, jhVar5, jhVar6, jhVar7, jhVar8, new ComposableLambdaImpl(699432150, true, new s8(storeModeViewModel2, storeModeViewState, navHostController2, i4)));
                NavGraphBuilderKt.a(navGraphBuilder2, reflectionFactory2.b(StoreModeRoute.Level3.class), MapsKt.c(), emptyList2, jhVar5, jhVar6, jhVar7, jhVar8, new ComposableLambdaImpl(-1768036107, true, new w4(storeModeViewModel2, storeModeViewState, (Function2) obj2, navHostController2, 4)));
                return Unit.f71739a;
            case 2:
                final List list2 = (List) obj7;
                EditorialModuleUiModel.CarouselMUiModel carouselMUiModel = (EditorialModuleUiModel.CarouselMUiModel) obj6;
                final Function1 function1 = (Function1) function;
                final Function1 function2 = (Function1) obj5;
                A11ySettings a11ySettings = (A11ySettings) obj4;
                CatalogTracker catalogTracker = (CatalogTracker) obj3;
                String str = (String) obj2;
                LazyListScope lazyListScope = (LazyListScope) obj;
                lazyListScope.getClass();
                if (list2 != null) {
                    lazyListScope.h(list2.size(), null, new Function1<Integer, Object>() { // from class: com.vuitton.android.presentation.screen.catalog.components.CatalogSubcategoryBottomSheetContentKt$CatalogSubcategoryBottomSheetContent$lambda$0$0$0$$inlined$itemsIndexed$default$2
                        @Override // kotlin.jvm.functions.Function1
                        public final Object invoke(Object obj8) {
                            list2.get(((Number) obj8).intValue());
                            return null;
                        }
                    }, new ComposableLambdaImpl(2039820996, true, new Function4<LazyItemScope, Integer, Composer, Integer, Unit>() { // from class: com.vuitton.android.presentation.screen.catalog.components.CatalogSubcategoryBottomSheetContentKt$CatalogSubcategoryBottomSheetContent$lambda$0$0$0$$inlined$itemsIndexed$default$3
                        @Override // kotlin.jvm.functions.Function4
                        public final Object g(Object obj8, Object obj9, Object obj10, Object obj11) {
                            Function2 function3;
                            Function2 function4;
                            Function2 function5;
                            Function2 function6;
                            Function0 function7;
                            int i6;
                            Modifier.Companion companion;
                            BiasAlignment.Horizontal horizontal;
                            Function1 function8;
                            LazyItemScope lazyItemScope = (LazyItemScope) obj8;
                            int iIntValue = ((Number) obj9).intValue();
                            Composer composer = (Composer) obj10;
                            int iIntValue2 = ((Number) obj11).intValue();
                            int i7 = (iIntValue2 & 6) == 0 ? (composer.K(lazyItemScope) ? 4 : 2) | iIntValue2 : iIntValue2;
                            if ((iIntValue2 & 48) == 0) {
                                i7 |= composer.d(iIntValue) ? 32 : 16;
                            }
                            if (composer.p(i7 & 1, (i7 & 147) != 146)) {
                                OpaqueKey opaqueKey = ComposerKt.f7940a;
                                SubcategoryGroupsUiModel subcategoryGroupsUiModel = (SubcategoryGroupsUiModel) list2.get(iIntValue);
                                composer.L(-806933698);
                                boolean z = iIntValue == list2.size() - 1;
                                float f5 = LVAppDesignKitTheme.l(composer).f48416e;
                                Modifier.Companion companion2 = Modifier.Companion.f8607b;
                                Modifier modifierK = PaddingKt.k(companion2, f5, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2);
                                Arrangement$Top$1 arrangement$Top$1 = Arrangement.f4920c;
                                Alignment.f8582a.getClass();
                                BiasAlignment.Horizontal horizontal2 = Alignment.Companion.n;
                                ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(arrangement$Top$1, horizontal2, composer, 0);
                                int iHashCode = Long.hashCode(composer.getT());
                                PersistentCompositionLocalMap persistentCompositionLocalMapN = composer.n();
                                Modifier modifierC = ComposedModifierKt.c(composer, modifierK);
                                ComposeUiNode.b0.getClass();
                                Function0 function9 = ComposeUiNode.Companion.f9641b;
                                if (composer.getF7976a() == null) {
                                    ComposablesKt.b();
                                    throw null;
                                }
                                composer.B();
                                if (composer.getS()) {
                                    composer.C(function9);
                                } else {
                                    composer.o();
                                }
                                Function2 function10 = ComposeUiNode.Companion.f9644f;
                                Updater.c(composer, columnMeasurePolicyA, function10);
                                Function2 function11 = ComposeUiNode.Companion.f9643e;
                                Updater.c(composer, persistentCompositionLocalMapN, function11);
                                Integer numValueOf = Integer.valueOf(iHashCode);
                                Function2 function12 = ComposeUiNode.Companion.g;
                                Updater.c(composer, numValueOf, function12);
                                Function1 function13 = ComposeUiNode.Companion.f9645h;
                                Updater.b(composer, function13);
                                Function2 function14 = ComposeUiNode.Companion.d;
                                Updater.c(composer, modifierC, function14);
                                String str2 = subcategoryGroupsUiModel.f55377a;
                                if (str2 == null) {
                                    composer.L(-1179849664);
                                    composer.F();
                                    function6 = function11;
                                    horizontal = horizontal2;
                                    function8 = function13;
                                    i6 = 0;
                                    companion = companion2;
                                    function3 = function12;
                                    function4 = function10;
                                    function5 = function14;
                                    function7 = function9;
                                } else {
                                    composer.L(-1179849663);
                                    function3 = function12;
                                    function4 = function10;
                                    function5 = function14;
                                    function6 = function11;
                                    function7 = function9;
                                    i6 = 0;
                                    companion = companion2;
                                    horizontal = horizontal2;
                                    function8 = function13;
                                    TextKt.c(str2, PaddingKt.m(companion2, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer).f48417f, 7), Color.b(LVAppDesignKitTheme.h(composer).d, LVAppDesignKitTheme.c(composer).f48361b.f48382k), 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(composer).l, composer, 0, 0, 131064);
                                    composer = composer;
                                    composer.F();
                                }
                                float f6 = 1.0f;
                                Modifier modifierD = SizeKt.d(companion, 1.0f);
                                ColumnMeasurePolicy columnMeasurePolicyA2 = ColumnKt.a(Arrangement.f(LVAppDesignKitTheme.l(composer).f48417f), horizontal, composer, i6);
                                int iHashCode2 = Long.hashCode(composer.getT());
                                PersistentCompositionLocalMap persistentCompositionLocalMapN2 = composer.n();
                                Modifier modifierC2 = ComposedModifierKt.c(composer, modifierD);
                                if (composer.getF7976a() == null) {
                                    ComposablesKt.b();
                                    throw null;
                                }
                                composer.B();
                                if (composer.getS()) {
                                    composer.C(function7);
                                } else {
                                    composer.o();
                                }
                                Updater.c(composer, columnMeasurePolicyA2, function4);
                                Updater.c(composer, persistentCompositionLocalMapN2, function6);
                                cj.s(iHashCode2, composer, function3, composer, function8);
                                Updater.c(composer, modifierC2, function5);
                                composer.L(138558248);
                                for (final SubcategoryUiModel subcategoryUiModel : subcategoryGroupsUiModel.f55378b) {
                                    boolean zY = composer.y(subcategoryUiModel);
                                    final Function1 function15 = function1;
                                    boolean zK = zY | composer.K(function15);
                                    final Function1 function16 = function2;
                                    boolean zK2 = zK | composer.K(function16);
                                    Object objX = composer.x();
                                    if (zK2 || objX == Composer.Companion.f7939a) {
                                        objX = new Function0<Unit>() { // from class: com.vuitton.android.presentation.screen.catalog.components.CatalogSubcategoryBottomSheetContentKt$CatalogSubcategoryBottomSheetContent$1$1$1$1$1$2$1$handleSubcategoryClick$1$1
                                            @Override // kotlin.jvm.functions.Function0
                                            /* JADX INFO: renamed from: invoke */
                                            public final Object mo47invoke() {
                                                SubcategoryUiModel subcategoryUiModel2 = subcategoryUiModel;
                                                SubcategoryRedirectionUiModel subcategoryRedirectionUiModel = subcategoryUiModel2.f55384c;
                                                List list3 = subcategoryRedirectionUiModel != null ? subcategoryRedirectionUiModel.f55379a : null;
                                                Function1 function17 = function15;
                                                if (list3 != null) {
                                                    function17.invoke(subcategoryUiModel2);
                                                } else {
                                                    if ((subcategoryRedirectionUiModel != null ? subcategoryRedirectionUiModel.f55380b : null) != null) {
                                                        function17.invoke(subcategoryUiModel2);
                                                    } else {
                                                        if ((subcategoryRedirectionUiModel != null ? subcategoryRedirectionUiModel.f55381c : null) != null) {
                                                            function16.invoke(subcategoryRedirectionUiModel.f55381c);
                                                        }
                                                    }
                                                }
                                                return Unit.f71739a;
                                            }
                                        };
                                        composer.q(objX);
                                    }
                                    Modifier modifierE = ModifierExtKt.e(ModifierExtKt.c(SizeKt.d(companion, f6), false, null, null, (Function0) objX, 27), "shop_subCategory_text");
                                    String str3 = subcategoryUiModel.f55383b;
                                    TextStyle textStyle = LVAppDesignKitTheme.n(composer).f48426f;
                                    long j2 = LVAppDesignKitTheme.c(composer).f48361b.f48382k;
                                    TextOverflow.f10989a.getClass();
                                    Composer composer2 = composer;
                                    TextKt.c(str3, modifierE, j2, 0L, null, 0L, null, null, 0L, TextOverflow.f10991c, false, 1, 0, null, textStyle, composer2, 0, 24960, 110584);
                                    composer = composer2;
                                    f6 = f6;
                                }
                                composer.F();
                                composer.r();
                                composer.r();
                                if (z) {
                                    composer.L(-804399542);
                                    composer.F();
                                } else {
                                    composer.L(-804463929);
                                    CatalogSubcategoryBottomSheetContentKt.b(composer, i6);
                                    composer.F();
                                }
                                composer.F();
                                OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                            } else {
                                composer.D();
                            }
                            return Unit.f71739a;
                        }
                    }));
                }
                ComposableSingletons$CatalogSubcategoryBottomSheetContentKt.f55305a.getClass();
                LazyListScope.f(lazyListScope, null, ComposableSingletons$CatalogSubcategoryBottomSheetContentKt.f55306b, 3);
                if (carouselMUiModel != null && (list = carouselMUiModel.f50827c) != null) {
                    LazyListScope.f(lazyListScope, null, new ComposableLambdaImpl(-1026315954, true, new p0((Object) carouselMUiModel, (Object) list, (Object) a11ySettings, (Object) catalogTracker, (Object) str, function2, 6)), 3);
                }
                return Unit.f71739a;
            case 3:
                MutableState mutableState = (MutableState) obj3;
                Function1 function3 = (Function1) function;
                CalendarModel calendarModel = (CalendarModel) obj6;
                Locale locale = (Locale) obj5;
                DateInputValidator dateInputValidator = (DateInputValidator) obj4;
                MutableState mutableState2 = (MutableState) obj2;
                TextFieldValue textFieldValue = (TextFieldValue) obj;
                PaddingValuesImpl paddingValuesImpl = DateInputKt.f6732a;
                String str2 = textFieldValue.f10840a.f10420c;
                int length = str2.length();
                String str3 = ((DateInputFormat) obj7).f7600c;
                if (length <= str3.length()) {
                    while (i3 < str2.length()) {
                        if (Character.isDigit(str2.charAt(i3))) {
                            i3++;
                        }
                    }
                    mutableState2.setValue(textFieldValue);
                    String string = StringsKt.a0(str2).toString();
                    if (string.length() != 0 && string.length() >= str3.length()) {
                        CalendarDate calendarDateI = calendarModel.i(string, str3, locale);
                        mutableState.setValue(dateInputValidator.a(calendarDateI, locale));
                        if (((CharSequence) mutableState.getF10755b()).length() == 0 && calendarDateI != null) {
                            lValueOf = Long.valueOf(calendarDateI.f7586e);
                        }
                        function3.invoke(lValueOf);
                    } else {
                        mutableState.setValue("");
                        function3.invoke(null);
                    }
                }
                return Unit.f71739a;
            case 4:
                MutableObjectFloatMap mutableObjectFloatMap = (MutableObjectFloatMap) obj7;
                ComposeNavigator composeNavigator = (ComposeNavigator) obj6;
                Function1 function4 = (Function1) function;
                Function1 function5 = (Function1) obj5;
                Function1 function6 = (Function1) obj4;
                MutableState mutableState3 = (MutableState) obj3;
                AnimatedContentTransitionScope animatedContentTransitionScope = (AnimatedContentTransitionScope) obj;
                if (!((List) ((State) obj2).getF10755b()).contains(animatedContentTransitionScope.getF4003a())) {
                    EnterTransition.f3626a.getClass();
                    EnterTransition enterTransition = EnterTransition.f3627b;
                    ExitTransition.f3629a.getClass();
                    return AnimatedContentKt.e(enterTransition, ExitTransition.f3630b);
                }
                String str4 = ((NavBackStackEntry) animatedContentTransitionScope.getF4003a()).g;
                int iA = mutableObjectFloatMap.a(str4);
                if (iA >= 0) {
                    f2 = mutableObjectFloatMap.f3337c[iA];
                } else {
                    mutableObjectFloatMap.f(str4, Call.Parameters.DEFAULT_CAMERA_ZOOM);
                    f2 = 0.0f;
                }
                if (!Intrinsics.c(((NavBackStackEntry) animatedContentTransitionScope.getF4004b()).g, ((NavBackStackEntry) animatedContentTransitionScope.getF4003a()).g)) {
                    f2 = (((Boolean) ((SnapshotMutableStateImpl) composeNavigator.f18233c).getF10755b()).booleanValue() || ((Boolean) mutableState3.getF10755b()).booleanValue()) ? f2 - 1.0f : f2 + 1.0f;
                }
                mutableObjectFloatMap.f(((NavBackStackEntry) animatedContentTransitionScope.getF4004b()).g, f2);
                return new ContentTransform((EnterTransition) function4.invoke(animatedContentTransitionScope), (ExitTransition) function5.invoke(animatedContentTransitionScope), f2, (SizeTransform) function6.invoke(animatedContentTransitionScope));
            case 5:
                final Function0 function7 = (Function0) obj5;
                final Function0 function8 = (Function0) obj7;
                final Function0 function9 = (Function0) obj6;
                final Function0 function10 = (Function0) function;
                final NavHostController navHostController3 = (NavHostController) obj4;
                final Function0 function11 = (Function0) obj3;
                final Function0 function12 = (Function0) obj2;
                NavGraphBuilder navGraphBuilder3 = (NavGraphBuilder) obj;
                navGraphBuilder3.getClass();
                ComposableLambdaImpl composableLambdaImpl3 = new ComposableLambdaImpl(1079993529, true, new Function4() { // from class: com.vuitton.android.presentation.screen.options.optoutprivacymenu.components.a
                    @Override // kotlin.jvm.functions.Function4
                    public final Object g(Object obj8, Object obj9, Object obj10, Object obj11) {
                        Composer composer = (Composer) obj10;
                        defpackage.a.x((Integer) obj11, (AnimatedContentScope) obj8, (NavBackStackEntry) obj9);
                        OpaqueKey opaqueKey = ComposerKt.f7940a;
                        Unit unit = Unit.f71739a;
                        Function0 function13 = function7;
                        boolean zK = composer.K(function13);
                        Object objX = composer.x();
                        if (zK || objX == Composer.Companion.f7939a) {
                            objX = new OptOutPrivacyMenuNavHostKt$OptOutPrivacyMenuNavHost$1$1$1$1$1(function13, null);
                            composer.q(objX);
                        }
                        EffectsKt.e(composer, unit, (Function2) objX);
                        OptOutMenuScreenKt.b(function8, function9, composer, 0);
                        return unit;
                    }
                });
                Map mapC3 = MapsKt.c();
                EmptyList emptyList3 = EmptyList.f71768b;
                ReflectionFactory reflectionFactory3 = Reflection.f71922a;
                NavGraphBuilderKt.a(navGraphBuilder3, reflectionFactory3.b(OpOutMenu.class), mapC3, emptyList3, null, null, null, null, composableLambdaImpl3);
                NavGraphBuilderKt.a(navGraphBuilder3, reflectionFactory3.b(OptOutOthers.class), MapsKt.c(), emptyList3, null, null, null, null, new ComposableLambdaImpl(-1649976848, true, new Function4() { // from class: com.vuitton.android.presentation.screen.options.optoutprivacymenu.components.b
                    @Override // kotlin.jvm.functions.Function4
                    public final Object g(Object obj8, Object obj9, Object obj10, Object obj11) {
                        Composer composer = (Composer) obj10;
                        ((Integer) obj11).getClass();
                        ((AnimatedContentScope) obj8).getClass();
                        ((NavBackStackEntry) obj9).getClass();
                        OpaqueKey opaqueKey = ComposerKt.f7940a;
                        Unit unit = Unit.f71739a;
                        Function0 function13 = function10;
                        boolean zK = composer.K(function13);
                        Object objX = composer.x();
                        Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
                        if (zK || objX == composer$Companion$Empty$1) {
                            objX = new OptOutPrivacyMenuNavHostKt$OptOutPrivacyMenuNavHost$1$1$2$1$1(function13, null);
                            composer.q(objX);
                        }
                        EffectsKt.e(composer, unit, (Function2) objX);
                        NavHostController navHostController4 = navHostController3;
                        boolean zY = composer.y(navHostController4);
                        Object objX2 = composer.x();
                        if (zY || objX2 == composer$Companion$Empty$1) {
                            objX2 = new yj(navHostController4, 10);
                            composer.q(objX2);
                        }
                        OptOutOthersScreenKt.a((Function0) objX2, function11, function12, composer, 0);
                        return unit;
                    }
                }));
                return Unit.f71739a;
            case 6:
                final RepairsViewState repairsViewState = (RepairsViewState) obj7;
                Function0 function13 = (Function0) obj5;
                final Function1 function14 = (Function1) function;
                final Function1 function15 = (Function1) obj6;
                final Function1 function16 = (Function1) obj4;
                final Function1 function17 = (Function1) obj3;
                Function0 function18 = (Function0) obj2;
                LazyListScope lazyListScope2 = (LazyListScope) obj;
                lazyListScope2.getClass();
                if (!repairsViewState.d.isEmpty() && repairsViewState.n.f64008i != null) {
                    LazyListScope.f(lazyListScope2, null, new ComposableLambdaImpl(404277498, true, new a3(function13, 29)), 3);
                }
                LazyListScope.f(lazyListScope2, null, new ComposableLambdaImpl(-130471521, true, new Function3() { // from class: at0
                    @Override // kotlin.jvm.functions.Function3
                    public final Object A(Object obj8, Object obj9, Object obj10) {
                        String strA;
                        String strA2;
                        int i6 = i3;
                        RepairsViewState repairsViewState2 = repairsViewState;
                        LazyItemScope lazyItemScope = (LazyItemScope) obj8;
                        Composer composer = (Composer) obj9;
                        int iIntValue = ((Integer) obj10).intValue();
                        switch (i6) {
                            case 0:
                                lazyItemScope.getClass();
                                if (composer.p(iIntValue & 1, (iIntValue & 17) != 16)) {
                                    OpaqueKey opaqueKey = ComposerKt.f7940a;
                                    List list3 = repairsViewState2.d;
                                    String strA3 = StringResources_androidKt.a(R.plurals.dr_repairs_section_ongoing_title_pluralization, list3.size(), new Object[]{Integer.valueOf(list3.size())}, composer);
                                    if (list3.isEmpty()) {
                                        strA = o60.k(composer, 68706411, R.string.dr_repairs_section_no_ongoing_subtitle, composer);
                                    } else {
                                        composer.L(68836580);
                                        strA = StringResources_androidKt.a(R.plurals.dr_ongoing_header, list3.size(), new Object[]{Integer.valueOf(list3.size())}, composer);
                                        composer.F();
                                    }
                                    RepairListScreenKt.a(strA3, strA, composer, 0);
                                } else {
                                    composer.D();
                                }
                                break;
                            default:
                                lazyItemScope.getClass();
                                if (composer.p(iIntValue & 1, (iIntValue & 17) != 16)) {
                                    OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                                    String strC = StringResources_androidKt.c(composer, R.string.dr_repairs_section_history_title);
                                    List list4 = repairsViewState2.f64016e;
                                    if (list4.isEmpty()) {
                                        strA2 = o60.k(composer, -966298860, R.string.dr_repairs_section_no_history_subtitle, composer);
                                    } else {
                                        composer.L(-966168691);
                                        strA2 = StringResources_androidKt.a(R.plurals.dr_history_header, list4.size(), new Object[]{Integer.valueOf(list4.size())}, composer);
                                        composer.F();
                                    }
                                    RepairListScreenKt.a(strC, strA2, composer, 0);
                                } else {
                                    composer.D();
                                }
                                break;
                        }
                        return Unit.f71739a;
                    }
                }), 3);
                final List list3 = repairsViewState.d;
                final RepairListScreenKt$RepairListScreen$lambda$2$0$0$$inlined$items$default$1 repairListScreenKt$RepairListScreen$lambda$2$0$0$$inlined$items$default$1 = new Function1() { // from class: com.vuitton.android.presentation.screen.repairs.list.components.RepairListScreenKt$RepairListScreen$lambda$2$0$0$$inlined$items$default$1
                    @Override // kotlin.jvm.functions.Function1
                    public final /* bridge */ /* synthetic */ Object invoke(Object obj8) {
                        return null;
                    }
                };
                lazyListScope2.h(list3.size(), null, new Function1<Integer, Object>() { // from class: com.vuitton.android.presentation.screen.repairs.list.components.RepairListScreenKt$RepairListScreen$lambda$2$0$0$$inlined$items$default$3
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj8) {
                        return repairListScreenKt$RepairListScreen$lambda$2$0$0$$inlined$items$default$1.invoke(list3.get(((Number) obj8).intValue()));
                    }
                }, new ComposableLambdaImpl(802480018, true, new Function4<LazyItemScope, Integer, Composer, Integer, Unit>() { // from class: com.vuitton.android.presentation.screen.repairs.list.components.RepairListScreenKt$RepairListScreen$lambda$2$0$0$$inlined$items$default$4
                    @Override // kotlin.jvm.functions.Function4
                    public final Object g(Object obj8, Object obj9, Object obj10, Object obj11) {
                        int i6;
                        LazyItemScope lazyItemScope = (LazyItemScope) obj8;
                        int iIntValue = ((Number) obj9).intValue();
                        Composer composer = (Composer) obj10;
                        int iIntValue2 = ((Number) obj11).intValue();
                        if ((iIntValue2 & 6) == 0) {
                            i6 = (composer.K(lazyItemScope) ? 4 : 2) | iIntValue2;
                        } else {
                            i6 = iIntValue2;
                        }
                        if ((iIntValue2 & 48) == 0) {
                            i6 |= composer.d(iIntValue) ? 32 : 16;
                        }
                        if (composer.p(i6 & 1, (i6 & 147) != 146)) {
                            OpaqueKey opaqueKey = ComposerKt.f7940a;
                            final CareServiceUiModel careServiceUiModel = (CareServiceUiModel) list3.get(iIntValue);
                            composer.L(-1088220776);
                            final Function1 function19 = function14;
                            boolean zK = composer.K(function19) | composer.y(careServiceUiModel);
                            Object objX = composer.x();
                            if (zK || objX == Composer.Companion.f7939a) {
                                objX = new Function0<Unit>() { // from class: com.vuitton.android.presentation.screen.repairs.list.components.RepairListScreenKt$RepairListScreen$3$1$1$3$1$1
                                    @Override // kotlin.jvm.functions.Function0
                                    /* JADX INFO: renamed from: invoke */
                                    public final Object mo47invoke() {
                                        function19.invoke(careServiceUiModel);
                                        return Unit.f71739a;
                                    }
                                };
                                composer.q(objX);
                            }
                            RepairListItemKt.c(repairsViewState, careServiceUiModel, (Function0) objX, function15, function16, function17, composer, 0);
                            composer.F();
                        } else {
                            composer.D();
                        }
                        return Unit.f71739a;
                    }
                }));
                LazyListScope.f(lazyListScope2, null, new ComposableLambdaImpl(-865917226, true, new Function3() { // from class: at0
                    @Override // kotlin.jvm.functions.Function3
                    public final Object A(Object obj8, Object obj9, Object obj10) {
                        String strA;
                        String strA2;
                        int i6 = i5;
                        RepairsViewState repairsViewState2 = repairsViewState;
                        LazyItemScope lazyItemScope = (LazyItemScope) obj8;
                        Composer composer = (Composer) obj9;
                        int iIntValue = ((Integer) obj10).intValue();
                        switch (i6) {
                            case 0:
                                lazyItemScope.getClass();
                                if (composer.p(iIntValue & 1, (iIntValue & 17) != 16)) {
                                    OpaqueKey opaqueKey = ComposerKt.f7940a;
                                    List list4 = repairsViewState2.d;
                                    String strA3 = StringResources_androidKt.a(R.plurals.dr_repairs_section_ongoing_title_pluralization, list4.size(), new Object[]{Integer.valueOf(list4.size())}, composer);
                                    if (list4.isEmpty()) {
                                        strA = o60.k(composer, 68706411, R.string.dr_repairs_section_no_ongoing_subtitle, composer);
                                    } else {
                                        composer.L(68836580);
                                        strA = StringResources_androidKt.a(R.plurals.dr_ongoing_header, list4.size(), new Object[]{Integer.valueOf(list4.size())}, composer);
                                        composer.F();
                                    }
                                    RepairListScreenKt.a(strA3, strA, composer, 0);
                                } else {
                                    composer.D();
                                }
                                break;
                            default:
                                lazyItemScope.getClass();
                                if (composer.p(iIntValue & 1, (iIntValue & 17) != 16)) {
                                    OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                                    String strC = StringResources_androidKt.c(composer, R.string.dr_repairs_section_history_title);
                                    List list5 = repairsViewState2.f64016e;
                                    if (list5.isEmpty()) {
                                        strA2 = o60.k(composer, -966298860, R.string.dr_repairs_section_no_history_subtitle, composer);
                                    } else {
                                        composer.L(-966168691);
                                        strA2 = StringResources_androidKt.a(R.plurals.dr_history_header, list5.size(), new Object[]{Integer.valueOf(list5.size())}, composer);
                                        composer.F();
                                    }
                                    RepairListScreenKt.a(strC, strA2, composer, 0);
                                } else {
                                    composer.D();
                                }
                                break;
                        }
                        return Unit.f71739a;
                    }
                }), 3);
                final List list4 = repairsViewState.f64016e;
                final RepairListScreenKt$RepairListScreen$lambda$2$0$0$$inlined$items$default$5 repairListScreenKt$RepairListScreen$lambda$2$0$0$$inlined$items$default$5 = new Function1() { // from class: com.vuitton.android.presentation.screen.repairs.list.components.RepairListScreenKt$RepairListScreen$lambda$2$0$0$$inlined$items$default$5
                    @Override // kotlin.jvm.functions.Function1
                    public final /* bridge */ /* synthetic */ Object invoke(Object obj8) {
                        return null;
                    }
                };
                lazyListScope2.h(list4.size(), null, new Function1<Integer, Object>() { // from class: com.vuitton.android.presentation.screen.repairs.list.components.RepairListScreenKt$RepairListScreen$lambda$2$0$0$$inlined$items$default$7
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj8) {
                        return repairListScreenKt$RepairListScreen$lambda$2$0$0$$inlined$items$default$5.invoke(list4.get(((Number) obj8).intValue()));
                    }
                }, new ComposableLambdaImpl(802480018, true, new Function4<LazyItemScope, Integer, Composer, Integer, Unit>() { // from class: com.vuitton.android.presentation.screen.repairs.list.components.RepairListScreenKt$RepairListScreen$lambda$2$0$0$$inlined$items$default$8
                    @Override // kotlin.jvm.functions.Function4
                    public final Object g(Object obj8, Object obj9, Object obj10, Object obj11) {
                        int i6;
                        LazyItemScope lazyItemScope = (LazyItemScope) obj8;
                        int iIntValue = ((Number) obj9).intValue();
                        Composer composer = (Composer) obj10;
                        int iIntValue2 = ((Number) obj11).intValue();
                        if ((iIntValue2 & 6) == 0) {
                            i6 = (composer.K(lazyItemScope) ? 4 : 2) | iIntValue2;
                        } else {
                            i6 = iIntValue2;
                        }
                        if ((iIntValue2 & 48) == 0) {
                            i6 |= composer.d(iIntValue) ? 32 : 16;
                        }
                        if (composer.p(i6 & 1, (i6 & 147) != 146)) {
                            OpaqueKey opaqueKey = ComposerKt.f7940a;
                            final CareServiceUiModel careServiceUiModel = (CareServiceUiModel) list4.get(iIntValue);
                            composer.L(-51424831);
                            final Function1 function19 = function14;
                            boolean zK = composer.K(function19) | composer.y(careServiceUiModel);
                            Object objX = composer.x();
                            if (zK || objX == Composer.Companion.f7939a) {
                                objX = new Function0<Unit>() { // from class: com.vuitton.android.presentation.screen.repairs.list.components.RepairListScreenKt$RepairListScreen$3$1$1$5$1$1
                                    @Override // kotlin.jvm.functions.Function0
                                    /* JADX INFO: renamed from: invoke */
                                    public final Object mo47invoke() {
                                        function19.invoke(careServiceUiModel);
                                        return Unit.f71739a;
                                    }
                                };
                                composer.q(objX);
                            }
                            RepairListItemKt.c(repairsViewState, careServiceUiModel, (Function0) objX, function15, function16, function17, composer, 0);
                            composer.F();
                        } else {
                            composer.D();
                        }
                        return Unit.f71739a;
                    }
                }));
                if (repairsViewState.m.f64009a) {
                    LazyListScope.f(lazyListScope2, null, new ComposableLambdaImpl(1926781809, true, new ni0(repairsViewState, function18, 19)), 3);
                } else {
                    ComposableSingletons$RepairListScreenKt.f63921a.getClass();
                    LazyListScope.f(lazyListScope2, null, ComposableSingletons$RepairListScreenKt.f63922b, 3);
                }
                return Unit.f71739a;
            default:
                SettingsViewModel settingsViewModel = (SettingsViewModel) obj7;
                PrivacyViewModel privacyViewModel = (PrivacyViewModel) obj6;
                final NavHostController navHostController4 = (NavHostController) obj4;
                Function0 function19 = (Function0) function;
                LVModalBottomSheetState lVModalBottomSheetState = (LVModalBottomSheetState) obj3;
                final MyInformationViewModel myInformationViewModel = (MyInformationViewModel) obj2;
                NavGraphBuilder navGraphBuilder4 = (NavGraphBuilder) obj;
                navGraphBuilder4.getClass();
                ComposableLambdaImpl composableLambdaImpl4 = new ComposableLambdaImpl(-21593547, true, new rl(settingsViewModel, privacyViewModel, (Function0) obj5, navHostController4, function19));
                Map mapC4 = MapsKt.c();
                EmptyList emptyList4 = EmptyList.f71768b;
                ReflectionFactory reflectionFactory4 = Reflection.f71922a;
                NavGraphBuilderKt.a(navGraphBuilder4, reflectionFactory4.b(SettingsRoutes.Home.class), mapC4, emptyList4, null, null, null, null, composableLambdaImpl4);
                NavGraphBuilderKt.a(navGraphBuilder4, reflectionFactory4.b(SettingsRoutes.EditSettings.class), MapsKt.c(), emptyList4, null, null, null, null, new ComposableLambdaImpl(-1023543060, true, new cf(navHostController4, settingsViewModel, 11)));
                NavGraphBuilderKt.a(navGraphBuilder4, reflectionFactory4.b(SettingsRoutes.EditConsents.class), MapsKt.c(), emptyList4, null, null, null, null, new ComposableLambdaImpl(1407207405, true, new w4((Object) privacyViewModel, (Object) lVModalBottomSheetState, function19, navHostController4, 12)));
                NavGraphBuilderKt.a(navGraphBuilder4, reflectionFactory4.b(SettingsRoutes.EditProfile.class), MapsKt.c(), emptyList4, null, null, null, null, new ComposableLambdaImpl(-457009426, true, new Function4() { // from class: com.vuitton.android.presentation.screen.options.settings.b
                    @Override // kotlin.jvm.functions.Function4
                    public final Object g(Object obj8, Object obj9, Object obj10, Object obj11) {
                        Composer composer = (Composer) obj10;
                        ((Integer) obj11).getClass();
                        ((AnimatedContentScope) obj8).getClass();
                        ((NavBackStackEntry) obj9).getClass();
                        OpaqueKey opaqueKey = ComposerKt.f7940a;
                        String strC = StringResources_androidKt.c(composer, R.string.content_description_edit_profile);
                        MyInformationViewModel myInformationViewModel2 = myInformationViewModel;
                        boolean zY = composer.y(myInformationViewModel2);
                        Object objX = composer.x();
                        Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
                        if (zY || objX == composer$Companion$Empty$1) {
                            objX = new sd0(myInformationViewModel2, 1);
                            composer.q(objX);
                        }
                        Function0 function20 = (Function0) objX;
                        NavHostController navHostController5 = navHostController4;
                        boolean zY2 = composer.y(navHostController5);
                        Object objX2 = composer.x();
                        if (zY2 || objX2 == composer$Companion$Empty$1) {
                            SettingsNavHostKt$SettingsNavHost$6$1$4$2$1 settingsNavHostKt$SettingsNavHost$6$1$4$2$1 = new SettingsNavHostKt$SettingsNavHost$6$1$4$2$1(0, navHostController5, NavHostController.class, "popBackStack", "popBackStack()Z", 8);
                            composer.q(settingsNavHostKt$SettingsNavHost$6$1$4$2$1);
                            objX2 = settingsNavHostKt$SettingsNavHost$6$1$4$2$1;
                        }
                        Function0 function21 = (Function0) objX2;
                        boolean zY3 = composer.y(myInformationViewModel2) | composer.y(navHostController5);
                        Object objX3 = composer.x();
                        if (zY3 || objX3 == composer$Companion$Empty$1) {
                            objX3 = new jm0(myInformationViewModel2, navHostController5, 21);
                            composer.q(objX3);
                        }
                        EditMyInfoComposableKt.a(myInformationViewModel2, strC, function20, function21, (Function0) objX3, composer, 0);
                        return Unit.f71739a;
                    }
                }));
                return Unit.f71739a;
        }
    }

    public /* synthetic */ nk(DateInputFormat dateInputFormat, MutableState mutableState, Function1 function1, CalendarModel calendarModel, Locale locale, DateInputValidator dateInputValidator, MutableState mutableState2) {
        this.f76544b = 3;
        this.d = dateInputFormat;
        this.f76548h = mutableState;
        this.f76547f = function1;
        this.f76545c = calendarModel;
        this.g = locale;
        this.f76546e = dateInputValidator;
        this.f76549i = mutableState2;
    }

    public /* synthetic */ nk(RepairsViewState repairsViewState, Function0 function0, Function0 function1, Function1 function2, Function1 function3, Function1 function4, Function1 function5) {
        this.f76544b = 6;
        this.d = repairsViewState;
        this.g = function0;
        this.f76547f = function2;
        this.f76545c = function3;
        this.f76546e = function4;
        this.f76548h = function5;
        this.f76549i = function1;
    }

    public /* synthetic */ nk(StoreModeViewState storeModeViewState, StoreModeViewModel storeModeViewModel, NavHostController navHostController, Function1 function1, Function0 function0, Function0 function2, Function2 function3) {
        this.f76544b = 1;
        this.f76545c = storeModeViewState;
        this.d = storeModeViewModel;
        this.f76546e = navHostController;
        this.f76547f = function1;
        this.g = function0;
        this.f76548h = function2;
        this.f76549i = function3;
    }

    public /* synthetic */ nk(Object obj, Object obj2, Function0 function0, NavHostController navHostController, Function function, Object obj3, Object obj4, int i2) {
        this.f76544b = i2;
        this.d = obj;
        this.f76545c = obj2;
        this.g = function0;
        this.f76546e = navHostController;
        this.f76547f = function;
        this.f76548h = obj3;
        this.f76549i = obj4;
    }

    public /* synthetic */ nk(List list, EditorialModuleUiModel.CarouselMUiModel carouselMUiModel, Function1 function1, Function1 function2, A11ySettings a11ySettings, CatalogTracker catalogTracker, String str) {
        this.f76544b = 2;
        this.d = list;
        this.f76545c = carouselMUiModel;
        this.f76547f = function1;
        this.g = function2;
        this.f76546e = a11ySettings;
        this.f76548h = catalogTracker;
        this.f76549i = str;
    }

    public /* synthetic */ nk(Function0 function0, Function0 function1, Function0 function2, Function0 function3, NavHostController navHostController, Function0 function4, Function0 function5) {
        this.f76544b = 5;
        this.g = function0;
        this.d = function1;
        this.f76545c = function2;
        this.f76547f = function3;
        this.f76546e = navHostController;
        this.f76548h = function4;
        this.f76549i = function5;
    }
}
