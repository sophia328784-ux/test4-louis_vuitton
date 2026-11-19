package com.vuitton.android.presentation.screen.catalog.components;

import androidx.compose.animation.AnimatedContentScope;
import androidx.compose.animation.AnimatedContentTransitionScope;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.unit.LayoutDirection;
import androidx.hilt.lifecycle.viewmodel.compose.HiltViewModelKt;
import androidx.lifecycle.HasDefaultViewModelProviderFactory;
import androidx.lifecycle.ViewModelStoreOwner;
import androidx.lifecycle.viewmodel.CreationExtras;
import androidx.lifecycle.viewmodel.compose.LocalViewModelStoreOwner;
import androidx.lifecycle.viewmodel.compose.ViewModelKt;
import androidx.navigation.NavBackStackEntry;
import androidx.navigation.NavBackStackEntryKt;
import androidx.navigation.NavGraphBuilder;
import androidx.navigation.NavHostController;
import androidx.navigation.compose.NavGraphBuilderKt;
import androidx.navigation.compose.NavHostKt;
import com.google.ar.core.ImageMetadata;
import com.vuitton.android.presentation.contact.ContactUsTracker;
import com.vuitton.android.presentation.contact.ContactUsTrackerEntryPointKt;
import com.vuitton.android.presentation.screen.catalog.CatalogTracker;
import com.vuitton.android.presentation.screen.catalog.CatalogTrackerEntryPointKt;
import com.vuitton.android.presentation.screen.catalog.components.CatalogNavHostKt;
import com.vuitton.android.presentation.screen.catalog.components.CatalogRoutes;
import com.vuitton.android.presentation.screen.catalog.components.b;
import com.vuitton.android.presentation.screen.catalog.models.CatalogTrackingUiModel;
import com.vuitton.android.presentation.screen.catalog.models.CatalogTrackingUiModelKt;
import com.vuitton.android.presentation.screen.catalog.models.CatalogUiModel;
import com.vuitton.android.presentation.screen.catalog.models.CatalogUiModelKt;
import com.vuitton.android.presentation.screen.catalog.models.CatalogViewState;
import com.vuitton.android.presentation.screen.catalog.models.CategoryRedirectionUiModel;
import com.vuitton.android.presentation.screen.catalog.models.CategoryUiModel;
import com.vuitton.android.presentation.screen.catalog.models.SubcategoryRedirectionUiModel;
import com.vuitton.android.presentation.screen.catalog.models.SubcategoryUiModel;
import com.vuitton.android.presentation.screen.catalog.thematicplp.screen.ThematicPlpComposableKt;
import com.vuitton.android.presentation.screen.catalog.thematicplp.viewmodel.ThematicPlpViewModelImpl;
import com.vuitton.android.presentation.screen.filter.quickaccess.QuickAccessFiltersViewModel;
import com.vuitton.android.presentation.screen.main.MainNavigationState;
import com.vuitton.android.presentation.screen.plp.components.composables.PLPCategoryComposableKt;
import com.vuitton.android.presentation.screen.plp.components.composables.PLPSimpleComposableKt;
import com.vuitton.android.presentation.screen.plp.viewmodels.PLPViewModel;
import com.vuitton.android.presentation.screen.plp.viewmodels.impl.PLPCatalogViewModelImpl;
import com.vuitton.android.presentation.screen.plp.viewmodels.impl.PLPSkusViewModelImpl;
import defpackage.ak;
import defpackage.bk;
import defpackage.ck;
import defpackage.dk;
import defpackage.hb;
import defpackage.md;
import defpackage.n0;
import defpackage.tf;
import defpackage.u;
import defpackage.w1;
import defpackage.yj;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.EmptyList;
import kotlin.collections.MapsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.functions.Function4;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.ReflectionFactory;
import kotlin.reflect.KFunction;
import org.bouncycastle.asn1.cmp.PKIFailureInfo;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class CatalogNavHostKt {
    public static final void a(final NavHostController navHostController, final CatalogViewState catalogViewState, final MainNavigationState mainNavigationState, final QuickAccessFiltersViewModel quickAccessFiltersViewModel, final Function0 function0, final Function0 function1, final Function0 function2, final Function0 function3, final Function0 function4, final Function1 function5, final Function3 function6, final Function1 function7, final Function2 function8, final Function2 function9, Composer composer, final int i2, final int i3) {
        int i4;
        Function0 function10;
        int i5;
        GapComposer gapComposer;
        int i6;
        int i7;
        navHostController.getClass();
        catalogViewState.getClass();
        quickAccessFiltersViewModel.getClass();
        function0.getClass();
        function1.getClass();
        function2.getClass();
        function3.getClass();
        function4.getClass();
        function5.getClass();
        function6.getClass();
        function7.getClass();
        function8.getClass();
        function9.getClass();
        GapComposer gapComposerH = composer.h(-1243004401);
        if ((i2 & 6) == 0) {
            i4 = (gapComposerH.y(navHostController) ? 4 : 2) | i2;
        } else {
            i4 = i2;
        }
        if ((i2 & 48) == 0) {
            i4 |= gapComposerH.y(catalogViewState) ? 32 : 16;
        }
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i4 |= gapComposerH.K(mainNavigationState) ? 256 : 128;
        }
        if ((i2 & 3072) == 0) {
            i4 |= (i2 & 4096) == 0 ? gapComposerH.K(quickAccessFiltersViewModel) : gapComposerH.y(quickAccessFiltersViewModel) ? 2048 : 1024;
        }
        if ((i2 & 24576) == 0) {
            function10 = function0;
            i4 |= gapComposerH.y(function10) ? 16384 : 8192;
        } else {
            function10 = function0;
        }
        if ((i2 & ImageMetadata.EDGE_MODE) == 0) {
            i4 |= gapComposerH.y(function1) ? 131072 : 65536;
        }
        if ((i2 & 1572864) == 0) {
            i4 |= gapComposerH.y(function2) ? 1048576 : 524288;
        }
        if ((i2 & 12582912) == 0) {
            i4 |= gapComposerH.y(function3) ? 8388608 : 4194304;
        }
        if ((i2 & 100663296) == 0) {
            i4 |= gapComposerH.y(function4) ? 67108864 : 33554432;
        }
        if ((i2 & 805306368) == 0) {
            i4 |= gapComposerH.y(function5) ? PKIFailureInfo.duplicateCertReq : 268435456;
        }
        if ((i3 & 6) == 0) {
            i5 = i3 | (gapComposerH.y(function6) ? 4 : 2);
        } else {
            i5 = i3;
        }
        if ((i3 & 48) == 0) {
            i5 |= gapComposerH.y(function7) ? 32 : 16;
        }
        if ((i3 & KyberEngine.KyberPolyBytes) == 0) {
            i5 |= gapComposerH.y(function8) ? 256 : 128;
        }
        if ((i3 & 3072) == 0) {
            i5 |= gapComposerH.y(function9) ? 2048 : 1024;
        }
        int i8 = i5;
        if (gapComposerH.p(i4 & 1, ((i4 & 306783379) == 306783378 && (i8 & 1171) == 1170) ? false : true)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            LayoutDirection layoutDirection = (LayoutDirection) gapComposerH.k(CompositionLocalsKt.n);
            LayoutDirection layoutDirection2 = LayoutDirection.Rtl;
            if (layoutDirection == layoutDirection2) {
                AnimatedContentTransitionScope.SlideDirection.f3451a.getClass();
                i6 = AnimatedContentTransitionScope.SlideDirection.f3452b;
            } else {
                AnimatedContentTransitionScope.SlideDirection.f3451a.getClass();
                i6 = 0;
            }
            if (layoutDirection == layoutDirection2) {
                AnimatedContentTransitionScope.SlideDirection.f3451a.getClass();
                i7 = 0;
            } else {
                AnimatedContentTransitionScope.SlideDirection.f3451a.getClass();
                i7 = AnimatedContentTransitionScope.SlideDirection.f3452b;
            }
            final CatalogTracker catalogTracker = (CatalogTracker) gapComposerH.k(CatalogTrackerEntryPointKt.f55232a);
            CatalogRoutes.Category category = CatalogRoutes.Category.INSTANCE;
            boolean zD = gapComposerH.d(i6);
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (zD || objX == composer$Companion$Empty$1) {
                objX = new hb(i6, 2);
                gapComposerH.q(objX);
            }
            Function1 function11 = (Function1) objX;
            boolean zD2 = gapComposerH.d(i6);
            Object objX2 = gapComposerH.x();
            if (zD2 || objX2 == composer$Companion$Empty$1) {
                objX2 = new hb(i6, 3);
                gapComposerH.q(objX2);
            }
            Function1 function12 = (Function1) objX2;
            boolean zD3 = gapComposerH.d(i7);
            Object objX3 = gapComposerH.x();
            if (zD3 || objX3 == composer$Companion$Empty$1) {
                objX3 = new hb(i7, 4);
                gapComposerH.q(objX3);
            }
            Function1 function13 = (Function1) objX3;
            boolean zD4 = gapComposerH.d(i7);
            Object objX4 = gapComposerH.x();
            if (zD4 || objX4 == composer$Companion$Empty$1) {
                objX4 = new hb(i7, 5);
                gapComposerH.q(objX4);
            }
            Function1 function14 = (Function1) objX4;
            boolean zY = ((i8 & 896) == 256) | ((i4 & 896) == 256) | gapComposerH.y(catalogTracker) | ((i8 & 7168) == 2048) | gapComposerH.y(catalogViewState) | gapComposerH.y(navHostController) | ((i8 & 112) == 32) | ((234881024 & i4) == 67108864) | ((1879048192 & i4) == 536870912) | ((i4 & 7168) == 2048 || ((i4 & 4096) != 0 && gapComposerH.y(quickAccessFiltersViewModel))) | ((57344 & i4) == 16384) | ((458752 & i4) == 131072) | ((29360128 & i4) == 8388608) | ((i8 & 14) == 4) | ((3670016 & i4) == 1048576);
            Object objX5 = gapComposerH.x();
            if (zY || objX5 == composer$Companion$Empty$1) {
                final Function0 function15 = function10;
                Function1 function16 = new Function1() { // from class: ek
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        NavGraphBuilder navGraphBuilder = (NavGraphBuilder) obj;
                        navGraphBuilder.getClass();
                        final MainNavigationState mainNavigationState2 = mainNavigationState;
                        final CatalogTracker catalogTracker2 = catalogTracker;
                        final Function2 function17 = function9;
                        final CatalogViewState catalogViewState2 = catalogViewState;
                        final NavHostController navHostController2 = navHostController;
                        Function1 function18 = function7;
                        final Function0 function19 = function4;
                        final Function1 function20 = function5;
                        ComposableLambdaImpl composableLambdaImpl = new ComposableLambdaImpl(1001117294, true, new b(mainNavigationState2, catalogTracker2, function17, catalogViewState2, navHostController2, function18, function19, function20));
                        Map mapC = MapsKt.c();
                        EmptyList emptyList = EmptyList.f71768b;
                        ReflectionFactory reflectionFactory = Reflection.f71922a;
                        NavGraphBuilderKt.a(navGraphBuilder, reflectionFactory.b(CatalogRoutes.Category.class), mapC, emptyList, null, null, null, null, composableLambdaImpl);
                        ComposableLambdaImpl composableLambdaImpl2 = new ComposableLambdaImpl(-1691551273, true, new b(mainNavigationState2, catalogViewState2, catalogTracker2, function17, navHostController2, function18, function20, function19));
                        NavGraphBuilderKt.a(navGraphBuilder, reflectionFactory.b(CatalogRoutes.Subcategory.class), MapsKt.c(), emptyList, null, null, null, null, composableLambdaImpl2);
                        final QuickAccessFiltersViewModel quickAccessFiltersViewModel2 = quickAccessFiltersViewModel;
                        final Function0 function21 = function15;
                        final Function0 function22 = function1;
                        final Function0 function23 = function3;
                        final Function3 function24 = function6;
                        final Function2 function25 = function8;
                        ComposableLambdaImpl composableLambdaImpl3 = new ComposableLambdaImpl(-1166745162, true, new Function4() { // from class: com.vuitton.android.presentation.screen.catalog.components.c
                            /* JADX WARN: Code duplicated, block: B:20:0x008a  */
                            /* JADX WARN: Code duplicated, block: B:24:0x0093  */
                            /* JADX WARN: Code duplicated, block: B:26:0x0096  */
                            /* JADX WARN: Code duplicated, block: B:28:0x009a  */
                            @Override // kotlin.jvm.functions.Function4
                            public final Object g(Object obj2, Object obj3, Object obj4, Object obj5) {
                                List list;
                                CategoryRedirectionUiModel categoryRedirectionUiModel;
                                SubcategoryUiModel subcategoryUiModelC;
                                SubcategoryRedirectionUiModel subcategoryRedirectionUiModel;
                                NavBackStackEntry navBackStackEntry = (NavBackStackEntry) obj3;
                                Composer composer2 = (Composer) obj4;
                                ((Integer) obj5).getClass();
                                ((AnimatedContentScope) obj2).getClass();
                                navBackStackEntry.getClass();
                                OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                                Unit unit = Unit.f71739a;
                                MainNavigationState mainNavigationState3 = mainNavigationState2;
                                boolean zK = composer2.K(mainNavigationState3);
                                Object objX6 = composer2.x();
                                Composer$Companion$Empty$1 composer$Companion$Empty$2 = Composer.Companion.f7939a;
                                if (zK || objX6 == composer$Companion$Empty$2) {
                                    objX6 = new CatalogNavHostKt$CatalogNavHost$5$1$3$1$1(mainNavigationState3, null);
                                    composer2.q(objX6);
                                }
                                EffectsKt.e(composer2, unit, (Function2) objX6);
                                ReflectionFactory reflectionFactory2 = Reflection.f71922a;
                                final String str = ((CatalogRoutes.Plp) NavBackStackEntryKt.a(navBackStackEntry, reflectionFactory2.b(CatalogRoutes.Plp.class))).d;
                                String str2 = ((CatalogRoutes.Plp) NavBackStackEntryKt.a(navBackStackEntry, reflectionFactory2.b(CatalogRoutes.Plp.class))).f55283a;
                                String str3 = ((CatalogRoutes.Plp) NavBackStackEntryKt.a(navBackStackEntry, reflectionFactory2.b(CatalogRoutes.Plp.class))).f55284b;
                                CatalogUiModel catalogUiModel = catalogViewState2.f55354a;
                                if (catalogUiModel != null) {
                                    str2.getClass();
                                    CategoryUiModel categoryUiModelA = CatalogUiModelKt.a(catalogUiModel, str2);
                                    if (str3 == null) {
                                        if (categoryUiModelA != null || (categoryRedirectionUiModel = categoryUiModelA.f55367f) == null) {
                                            list = null;
                                        } else {
                                            list = categoryRedirectionUiModel.f55359a;
                                        }
                                        if (list == null) {
                                            list = EmptyList.f71768b;
                                        }
                                    } else {
                                        list = (categoryUiModelA == null || (subcategoryUiModelC = CatalogUiModelKt.c(categoryUiModelA, str3)) == null || (subcategoryRedirectionUiModel = subcategoryUiModelC.f55384c) == null) ? null : subcategoryRedirectionUiModel.f55379a;
                                        if (list == null) {
                                            list = EmptyList.f71768b;
                                        }
                                        if (list == null) {
                                            if (categoryUiModelA != null) {
                                                list = null;
                                            } else {
                                                list = null;
                                            }
                                            if (list == null) {
                                                list = EmptyList.f71768b;
                                            }
                                        }
                                    }
                                    if (list == null) {
                                        list = EmptyList.f71768b;
                                    }
                                } else {
                                    list = EmptyList.f71768b;
                                }
                                ContactUsTracker contactUsTracker = (ContactUsTracker) composer2.k(ContactUsTrackerEntryPointKt.f51125a);
                                boolean zY2 = composer2.y(contactUsTracker);
                                Object objX7 = composer2.x();
                                if (zY2 || objX7 == composer$Companion$Empty$2) {
                                    objX7 = new CatalogNavHostKt$CatalogNavHost$5$1$3$2$1(contactUsTracker, null);
                                    composer2.q(objX7);
                                }
                                EffectsKt.e(composer2, contactUsTracker, (Function2) objX7);
                                Function2 function26 = function17;
                                boolean zK2 = composer2.K(function26) | composer2.y(list);
                                Object objX8 = composer2.x();
                                if (zK2 || objX8 == composer$Companion$Empty$2) {
                                    objX8 = new CatalogNavHostKt$CatalogNavHost$5$1$3$3$1(function26, list, null);
                                    composer2.q(objX8);
                                }
                                EffectsKt.e(composer2, unit, (Function2) objX8);
                                ViewModelStoreOwner viewModelStoreOwnerA = LocalViewModelStoreOwner.a(composer2);
                                if (viewModelStoreOwnerA == null) {
                                    md.k("No ViewModelStoreOwner was provided via LocalViewModelStoreOwner");
                                    return null;
                                }
                                PLPCatalogViewModelImpl pLPCatalogViewModelImpl = (PLPCatalogViewModelImpl) ViewModelKt.a(reflectionFactory2.b(PLPCatalogViewModelImpl.class), viewModelStoreOwnerA, null, HiltViewModelKt.a(viewModelStoreOwnerA, composer2), viewModelStoreOwnerA instanceof HasDefaultViewModelProviderFactory ? ((HasDefaultViewModelProviderFactory) viewModelStoreOwnerA).getDefaultViewModelCreationExtras() : CreationExtras.Empty.f13578c, composer2);
                                NavHostController navHostController3 = navHostController2;
                                boolean zY3 = composer2.y(navHostController3);
                                Object objX9 = composer2.x();
                                final int i9 = 0;
                                if (zY3 || objX9 == composer$Companion$Empty$2) {
                                    objX9 = new yj(navHostController3, 0);
                                    composer2.q(objX9);
                                }
                                Function0 function27 = (Function0) objX9;
                                final CatalogTracker catalogTracker3 = catalogTracker2;
                                boolean zY4 = composer2.y(catalogTracker3) | composer2.K(str);
                                Object objX10 = composer2.x();
                                if (zY4 || objX10 == composer$Companion$Empty$2) {
                                    objX10 = new Function1() { // from class: zj
                                        @Override // kotlin.jvm.functions.Function1
                                        public final Object invoke(Object obj6) {
                                            int i10 = i9;
                                            String str4 = str;
                                            CatalogTracker catalogTracker4 = catalogTracker3;
                                            int iIntValue = ((Integer) obj6).intValue();
                                            switch (i10) {
                                                case 0:
                                                    catalogTracker4.getClass();
                                                    str4.getClass();
                                                    catalogTracker4.f55231a.a(CatalogTrackingUiModelKt.a(new CatalogTrackingUiModel.OnPlpSwipeEvent(str4, iIntValue)));
                                                    break;
                                                default:
                                                    catalogTracker4.getClass();
                                                    str4.getClass();
                                                    catalogTracker4.f55231a.a(CatalogTrackingUiModelKt.a(new CatalogTrackingUiModel.OnPlpScrollEvent(str4, iIntValue)));
                                                    break;
                                            }
                                            return Unit.f71739a;
                                        }
                                    };
                                    composer2.q(objX10);
                                }
                                Function1 function28 = (Function1) objX10;
                                QuickAccessFiltersViewModel quickAccessFiltersViewModel3 = quickAccessFiltersViewModel2;
                                boolean zY5 = composer2.y(quickAccessFiltersViewModel3);
                                Object objX11 = composer2.x();
                                if (zY5 || objX11 == composer$Companion$Empty$2) {
                                    objX11 = new CatalogNavHostKt$CatalogNavHost$5$1$3$6$1(1, quickAccessFiltersViewModel3, QuickAccessFiltersViewModel.class, "updateFiltersContainerVisibility", "updateFiltersContainerVisibility(Z)V", 0);
                                    composer2.q(objX11);
                                }
                                Function1 function29 = (Function1) ((KFunction) objX11);
                                boolean zY6 = composer2.y(quickAccessFiltersViewModel3);
                                Object objX12 = composer2.x();
                                if (zY6 || objX12 == composer$Companion$Empty$2) {
                                    CatalogNavHostKt$CatalogNavHost$5$1$3$7$1 catalogNavHostKt$CatalogNavHost$5$1$3$7$1 = new CatalogNavHostKt$CatalogNavHost$5$1$3$7$1(1, quickAccessFiltersViewModel3, QuickAccessFiltersViewModel.class, "updateQuickAccessFiltersButtonState", "updateQuickAccessFiltersButtonState(Lcom/vuitton/android/presentation/screen/filter/quickaccess/models/FiltersButtonState;)V", 0);
                                    composer2.q(catalogNavHostKt$CatalogNavHost$5$1$3$7$1);
                                    objX12 = catalogNavHostKt$CatalogNavHost$5$1$3$7$1;
                                }
                                Function1 function30 = (Function1) ((KFunction) objX12);
                                boolean zK3 = composer2.K(function26) | composer2.y(catalogTracker3) | composer2.K(str);
                                Object objX13 = composer2.x();
                                if (zK3 || objX13 == composer$Companion$Empty$2) {
                                    objX13 = new u(function26, catalogTracker3, str, 17);
                                    composer2.q(objX13);
                                }
                                Function2 function31 = (Function2) objX13;
                                boolean zY7 = composer2.y(quickAccessFiltersViewModel3);
                                Object objX14 = composer2.x();
                                if (zY7 || objX14 == composer$Companion$Empty$2) {
                                    objX14 = new ak(quickAccessFiltersViewModel3, 0);
                                    composer2.q(objX14);
                                }
                                Function0 function32 = (Function0) objX14;
                                boolean zY8 = composer2.y(quickAccessFiltersViewModel3);
                                Object objX15 = composer2.x();
                                final int i10 = 1;
                                if (zY8 || objX15 == composer$Companion$Empty$2) {
                                    objX15 = new ak(quickAccessFiltersViewModel3, 1);
                                    composer2.q(objX15);
                                }
                                Function0 function33 = (Function0) objX15;
                                boolean zY9 = composer2.y(quickAccessFiltersViewModel3);
                                Object objX16 = composer2.x();
                                if (zY9 || objX16 == composer$Companion$Empty$2) {
                                    objX16 = new ak(quickAccessFiltersViewModel3, 2);
                                    composer2.q(objX16);
                                }
                                Function0 function34 = (Function0) objX16;
                                boolean zY10 = composer2.y(quickAccessFiltersViewModel3);
                                Object objX17 = composer2.x();
                                if (zY10 || objX17 == composer$Companion$Empty$2) {
                                    objX17 = new bk(quickAccessFiltersViewModel3, 0);
                                    composer2.q(objX17);
                                }
                                Function1 function35 = (Function1) objX17;
                                boolean zY11 = composer2.y(quickAccessFiltersViewModel3);
                                Object objX18 = composer2.x();
                                if (zY11 || objX18 == composer$Companion$Empty$2) {
                                    objX18 = new ak(quickAccessFiltersViewModel3, 3);
                                    composer2.q(objX18);
                                }
                                Function0 function36 = (Function0) objX18;
                                boolean zY12 = composer2.y(catalogTracker3) | composer2.K(str);
                                Object objX19 = composer2.x();
                                if (zY12 || objX19 == composer$Companion$Empty$2) {
                                    objX19 = new Function1() { // from class: zj
                                        @Override // kotlin.jvm.functions.Function1
                                        public final Object invoke(Object obj6) {
                                            int i11 = i10;
                                            String str4 = str;
                                            CatalogTracker catalogTracker4 = catalogTracker3;
                                            int iIntValue = ((Integer) obj6).intValue();
                                            switch (i11) {
                                                case 0:
                                                    catalogTracker4.getClass();
                                                    str4.getClass();
                                                    catalogTracker4.f55231a.a(CatalogTrackingUiModelKt.a(new CatalogTrackingUiModel.OnPlpSwipeEvent(str4, iIntValue)));
                                                    break;
                                                default:
                                                    catalogTracker4.getClass();
                                                    str4.getClass();
                                                    catalogTracker4.f55231a.a(CatalogTrackingUiModelKt.a(new CatalogTrackingUiModel.OnPlpScrollEvent(str4, iIntValue)));
                                                    break;
                                            }
                                            return Unit.f71739a;
                                        }
                                    };
                                    composer2.q(objX19);
                                }
                                Function1 function37 = (Function1) objX19;
                                boolean zY13 = composer2.y(pLPCatalogViewModelImpl);
                                Object objX20 = composer2.x();
                                if (zY13 || objX20 == composer$Companion$Empty$2) {
                                    objX20 = new ck(pLPCatalogViewModelImpl, 0);
                                    composer2.q(objX20);
                                }
                                Function1 function38 = (Function1) objX20;
                                boolean zY14 = composer2.y(pLPCatalogViewModelImpl);
                                Object objX21 = composer2.x();
                                if (zY14 || objX21 == composer$Companion$Empty$2) {
                                    objX21 = new w1(pLPCatalogViewModelImpl, 17);
                                    composer2.q(objX21);
                                }
                                PLPCategoryComposableKt.a(null, pLPCatalogViewModelImpl, quickAccessFiltersViewModel3, str, list, function27, function21, function22, function23, function28, function19, function20, function24, function29, function25, function30, function31, function32, function33, function34, function35, function36, function37, function38, (Function0) objX21, composer2, 0, 1);
                                return unit;
                            }
                        });
                        NavGraphBuilderKt.a(navGraphBuilder, reflectionFactory.b(CatalogRoutes.Plp.class), MapsKt.c(), emptyList, null, null, null, null, composableLambdaImpl3);
                        final Function0 function26 = function2;
                        ComposableLambdaImpl composableLambdaImpl4 = new ComposableLambdaImpl(-641939051, true, new Function4() { // from class: com.vuitton.android.presentation.screen.catalog.components.d
                            @Override // kotlin.jvm.functions.Function4
                            public final Object g(Object obj2, Object obj3, Object obj4, Object obj5) {
                                NavBackStackEntry navBackStackEntry = (NavBackStackEntry) obj3;
                                Composer composer2 = (Composer) obj4;
                                ((Integer) obj5).getClass();
                                ((AnimatedContentScope) obj2).getClass();
                                navBackStackEntry.getClass();
                                OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                                Unit unit = Unit.f71739a;
                                MainNavigationState mainNavigationState3 = mainNavigationState2;
                                boolean zK = composer2.K(mainNavigationState3);
                                Object objX6 = composer2.x();
                                Composer$Companion$Empty$1 composer$Companion$Empty$2 = Composer.Companion.f7939a;
                                if (zK || objX6 == composer$Companion$Empty$2) {
                                    objX6 = new CatalogNavHostKt$CatalogNavHost$5$1$4$1$1(mainNavigationState3, null);
                                    composer2.q(objX6);
                                }
                                EffectsKt.e(composer2, unit, (Function2) objX6);
                                ReflectionFactory reflectionFactory2 = Reflection.f71922a;
                                String str = ((CatalogRoutes.ThematicPlp) NavBackStackEntryKt.a(navBackStackEntry, reflectionFactory2.b(CatalogRoutes.ThematicPlp.class))).f55291a;
                                String str2 = ((CatalogRoutes.ThematicPlp) NavBackStackEntryKt.a(navBackStackEntry, reflectionFactory2.b(CatalogRoutes.ThematicPlp.class))).f55292b;
                                String str3 = ((CatalogRoutes.ThematicPlp) NavBackStackEntryKt.a(navBackStackEntry, reflectionFactory2.b(CatalogRoutes.ThematicPlp.class))).f55293c;
                                CatalogUiModel catalogUiModel = catalogViewState2.f55354a;
                                List listD = catalogUiModel != null ? CatalogUiModelKt.d(catalogUiModel, str, str2) : null;
                                CatalogRoutes.ThematicPlp thematicPlp = (CatalogRoutes.ThematicPlp) NavBackStackEntryKt.a(navBackStackEntry, reflectionFactory2.b(CatalogRoutes.ThematicPlp.class));
                                if (listD == null) {
                                    listD = EmptyList.f71768b;
                                }
                                List list = listD;
                                String str4 = thematicPlp.d;
                                String str5 = thematicPlp.f55294e;
                                ViewModelStoreOwner viewModelStoreOwnerA = LocalViewModelStoreOwner.a(composer2);
                                if (viewModelStoreOwnerA == null) {
                                    md.k("No ViewModelStoreOwner was provided via LocalViewModelStoreOwner");
                                    return null;
                                }
                                ThematicPlpViewModelImpl thematicPlpViewModelImpl = (ThematicPlpViewModelImpl) ViewModelKt.a(reflectionFactory2.b(ThematicPlpViewModelImpl.class), viewModelStoreOwnerA, null, HiltViewModelKt.a(viewModelStoreOwnerA, composer2), viewModelStoreOwnerA instanceof HasDefaultViewModelProviderFactory ? ((HasDefaultViewModelProviderFactory) viewModelStoreOwnerA).getDefaultViewModelCreationExtras() : CreationExtras.Empty.f13578c, composer2);
                                boolean zK2 = composer2.K(mainNavigationState3);
                                NavHostController navHostController3 = navHostController2;
                                boolean zY2 = zK2 | composer2.y(navHostController3);
                                Object objX7 = composer2.x();
                                if (zY2 || objX7 == composer$Companion$Empty$2) {
                                    objX7 = new tf(mainNavigationState3, navHostController3, 12);
                                    composer2.q(objX7);
                                }
                                Function0 function27 = (Function0) objX7;
                                boolean zK3 = composer2.K(mainNavigationState3);
                                Object objX8 = composer2.x();
                                if (zK3 || objX8 == composer$Companion$Empty$2) {
                                    objX8 = new dk(mainNavigationState3, 0);
                                    composer2.q(objX8);
                                }
                                Function0 function28 = (Function0) objX8;
                                Function2 function29 = function25;
                                boolean zK4 = composer2.K(function29) | composer2.K(str2) | composer2.K(str);
                                Object objX9 = composer2.x();
                                if (zK4 || objX9 == composer$Companion$Empty$2) {
                                    objX9 = new n0(function29, str2, str, 13);
                                    composer2.q(objX9);
                                }
                                ThematicPlpComposableKt.a(null, thematicPlpViewModelImpl, function27, function28, str3, list, (Function1) objX9, function26, str4, str5, composer2, 0);
                                return unit;
                            }
                        });
                        NavGraphBuilderKt.a(navGraphBuilder, reflectionFactory.b(CatalogRoutes.ThematicPlp.class), MapsKt.c(), emptyList, null, null, null, null, composableLambdaImpl4);
                        ComposableLambdaImpl composableLambdaImpl5 = new ComposableLambdaImpl(-117132940, true, new Function4() { // from class: com.vuitton.android.presentation.screen.catalog.components.a
                            @Override // kotlin.jvm.functions.Function4
                            public final Object g(Object obj2, Object obj3, Object obj4, Object obj5) {
                                Composer composer2 = (Composer) obj4;
                                ((Integer) obj5).getClass();
                                ((AnimatedContentScope) obj2).getClass();
                                ((NavBackStackEntry) obj3).getClass();
                                OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                                Unit unit = Unit.f71739a;
                                MainNavigationState mainNavigationState3 = mainNavigationState2;
                                boolean zK = composer2.K(mainNavigationState3);
                                Object objX6 = composer2.x();
                                Composer$Companion$Empty$1 composer$Companion$Empty$2 = Composer.Companion.f7939a;
                                if (zK || objX6 == composer$Companion$Empty$2) {
                                    objX6 = new CatalogNavHostKt$CatalogNavHost$5$1$5$1$1(mainNavigationState3, null);
                                    composer2.q(objX6);
                                }
                                EffectsKt.e(composer2, unit, (Function2) objX6);
                                ContactUsTracker contactUsTracker = (ContactUsTracker) composer2.k(ContactUsTrackerEntryPointKt.f51125a);
                                boolean zY2 = composer2.y(contactUsTracker);
                                Object objX7 = composer2.x();
                                if (zY2 || objX7 == composer$Companion$Empty$2) {
                                    objX7 = new CatalogNavHostKt$CatalogNavHost$5$1$5$2$1(contactUsTracker, null);
                                    composer2.q(objX7);
                                }
                                EffectsKt.e(composer2, contactUsTracker, (Function2) objX7);
                                ViewModelStoreOwner viewModelStoreOwnerA = LocalViewModelStoreOwner.a(composer2);
                                if (viewModelStoreOwnerA == null) {
                                    md.k("No ViewModelStoreOwner was provided via LocalViewModelStoreOwner");
                                    return null;
                                }
                                PLPViewModel pLPViewModel = (PLPViewModel) ViewModelKt.a(Reflection.f71922a.b(PLPSkusViewModelImpl.class), viewModelStoreOwnerA, null, HiltViewModelKt.a(viewModelStoreOwnerA, composer2), viewModelStoreOwnerA instanceof HasDefaultViewModelProviderFactory ? ((HasDefaultViewModelProviderFactory) viewModelStoreOwnerA).getDefaultViewModelCreationExtras() : CreationExtras.Empty.f13578c, composer2);
                                NavHostController navHostController3 = navHostController2;
                                boolean zY3 = composer2.y(navHostController3);
                                Object objX8 = composer2.x();
                                if (zY3 || objX8 == composer$Companion$Empty$2) {
                                    objX8 = new yj(navHostController3, 1);
                                    composer2.q(objX8);
                                }
                                PLPSimpleComposableKt.a(pLPViewModel, null, (Function0) objX8, function23, null, false, composer2, 48, 48);
                                return unit;
                            }
                        });
                        NavGraphBuilderKt.a(navGraphBuilder, reflectionFactory.b(CatalogRoutes.SkuList.class), MapsKt.c(), emptyList, null, null, null, null, composableLambdaImpl5);
                        return Unit.f71739a;
                    }
                };
                gapComposer = gapComposerH;
                gapComposer.q(function16);
                objX5 = function16;
            } else {
                gapComposer = gapComposerH;
            }
            NavHostKt.b(navHostController, category, null, null, null, function11, function12, function13, function14, (Function1) objX5, gapComposer, (i4 & 14) | 48, 1084);
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new Function2() { // from class: fk
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    ((Integer) obj2).getClass();
                    int iA = RecomposeScopeImplKt.a(i2 | 1);
                    int iA2 = RecomposeScopeImplKt.a(i3);
                    CatalogNavHostKt.a(navHostController, catalogViewState, mainNavigationState, quickAccessFiltersViewModel, function0, function1, function2, function3, function4, function5, function6, function7, function8, function9, (Composer) obj, iA, iA2);
                    return Unit.f71739a;
                }
            };
        }
    }
}
