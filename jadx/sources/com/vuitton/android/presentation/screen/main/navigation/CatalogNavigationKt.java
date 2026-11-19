package com.vuitton.android.presentation.screen.main.navigation;

import android.content.Context;
import androidx.compose.foundation.layout.WindowInsetsKt;
import androidx.compose.foundation.layout.WindowInsets_androidKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.hilt.lifecycle.viewmodel.compose.HiltViewModelKt;
import androidx.lifecycle.HasDefaultViewModelProviderFactory;
import androidx.lifecycle.ViewModelStoreOwner;
import androidx.lifecycle.viewmodel.CreationExtras;
import androidx.lifecycle.viewmodel.compose.LocalViewModelStoreOwner;
import androidx.lifecycle.viewmodel.compose.ViewModelKt;
import androidx.navigation.NavHostController;
import androidx.navigation.Navigator;
import androidx.navigation.compose.NavHostControllerKt;
import com.vuitton.android.presentation.extensions.ResourcesExtKt;
import com.vuitton.android.presentation.link.builder.PassAppLinkBuilder;
import com.vuitton.android.presentation.link.navigation.ContributionLinkNavigator;
import com.vuitton.android.presentation.screen.catalog.CatalogRoutingState;
import com.vuitton.android.presentation.screen.catalog.CatalogRoutingViewModel;
import com.vuitton.android.presentation.screen.catalog.CatalogRoutingViewModelImpl;
import com.vuitton.android.presentation.screen.catalog.CatalogViewModel;
import com.vuitton.android.presentation.screen.catalog.CatalogViewModelImpl;
import com.vuitton.android.presentation.screen.catalog.components.CatalogComposableKt;
import com.vuitton.android.presentation.screen.filter.quickaccess.QuickAccessFiltersViewModel;
import com.vuitton.android.presentation.screen.main.MainNavigationState;
import com.vuitton.android.presentation.screen.storemode.PSPStoreModeViewModel;
import com.vuitton.android.presentation.screen.storemode.PSPStoreModeViewModelImpl;
import com.vuitton.android.presentation.screen.storemode.StoreModeNavHostKt;
import com.vuitton.android.presentation.screen.storemode.StoreModeRoute;
import com.vuitton.android.presentation.screen.storemode.StoreModeViewModel;
import com.vuitton.android.presentation.screen.storemode.StoreModeViewModelImpl;
import dagger.hilt.android.internal.lifecycle.HiltViewModelFactory;
import defpackage.d21;
import defpackage.dk;
import defpackage.f1;
import defpackage.gk;
import defpackage.je;
import defpackage.m;
import defpackage.md;
import defpackage.tj;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.ReflectionFactory;
import org.bouncycastle.asn1.cmp.PKIFailureInfo;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\b\n\u0002\u0018\u0002\n\u0002\b\u0002¨\u0006\u0002²\u0006\f\u0010\u0001\u001a\u00020\u00008\nX\u008a\u0084\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/catalog/CatalogRoutingState;", "catalogRoutingState", "presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class CatalogNavigationKt {
    public static final void a(MainNavigationState mainNavigationState, Context context, CatalogRoute catalogRoute, CatalogRoutingViewModel catalogRoutingViewModel, QuickAccessFiltersViewModel quickAccessFiltersViewModel, PassAppLinkBuilder passAppLinkBuilder, ContributionLinkNavigator contributionLinkNavigator, Function3 function3, Function0 function0, Function0 function1, Function0 function2, Composer composer, int i2) {
        CatalogRoutingViewModel catalogRoutingViewModel2;
        int i3;
        CatalogRoutingViewModel catalogRoutingViewModel3;
        int i4;
        GapComposer gapComposerH = composer.h(746973484);
        int i5 = i2 | (gapComposerH.K(mainNavigationState) ? 4 : 2) | (gapComposerH.y(context) ? 32 : 16) | (gapComposerH.y(catalogRoute) ? 256 : 128) | 1024 | (gapComposerH.K(quickAccessFiltersViewModel) ? 16384 : 8192) | (gapComposerH.y(passAppLinkBuilder) ? 131072 : 65536) | (gapComposerH.y(contributionLinkNavigator) ? 1048576 : 524288) | (gapComposerH.y(function3) ? 8388608 : 4194304) | (gapComposerH.y(function0) ? 67108864 : 33554432) | (gapComposerH.y(function1) ? PKIFailureInfo.duplicateCertReq : 268435456);
        int i6 = gapComposerH.y(function2) ? 4 : 2;
        if (gapComposerH.p(i5 & 1, ((306783379 & i5) == 306783378 && (i6 & 3) == 2) ? false : true)) {
            gapComposerH.y0();
            if ((i2 & 1) == 0 || gapComposerH.h0()) {
                ViewModelStoreOwner viewModelStoreOwnerA = LocalViewModelStoreOwner.a(gapComposerH);
                if (viewModelStoreOwnerA == null) {
                    md.k("No ViewModelStoreOwner was provided via LocalViewModelStoreOwner");
                    return;
                } else {
                    i3 = i5 & (-7169);
                    catalogRoutingViewModel3 = (CatalogRoutingViewModel) ViewModelKt.a(Reflection.f71922a.b(CatalogRoutingViewModelImpl.class), viewModelStoreOwnerA, null, HiltViewModelKt.a(viewModelStoreOwnerA, gapComposerH), viewModelStoreOwnerA instanceof HasDefaultViewModelProviderFactory ? ((HasDefaultViewModelProviderFactory) viewModelStoreOwnerA).getDefaultViewModelCreationExtras() : CreationExtras.Empty.f13578c, gapComposerH);
                }
            } else {
                gapComposerH.D();
                i3 = i5 & (-7169);
                catalogRoutingViewModel3 = catalogRoutingViewModel;
            }
            gapComposerH.a0();
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            MutableState mutableStateB = SnapshotStateKt.b(catalogRoutingViewModel3.D3(), gapComposerH);
            int iB = (int) ResourcesExtKt.b(WindowInsetsKt.e(WindowInsets_androidKt.c(gapComposerH), gapComposerH).getF5031b());
            int iB2 = (int) ResourcesExtKt.b(WindowInsetsKt.e(WindowInsets_androidKt.c(gapComposerH), gapComposerH).getD());
            Unit unit = Unit.f71739a;
            int i7 = i3 & 14;
            boolean zK = (i7 == 4) | gapComposerH.K(mutableStateB);
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (zK || objX == composer$Companion$Empty$1) {
                objX = new CatalogNavigationKt$CatalogNavigationComposable$3$1(mainNavigationState, mutableStateB, null);
                gapComposerH.q(objX);
            }
            EffectsKt.e(gapComposerH, unit, (Function2) objX);
            CatalogRoutingState catalogRoutingState = (CatalogRoutingState) mutableStateB.getF10755b();
            if (catalogRoutingState instanceof CatalogRoutingState.StoreMode) {
                gapComposerH.L(862664297);
                boolean z = i7 == 4;
                Object objX2 = gapComposerH.x();
                if (z || objX2 == composer$Companion$Empty$1) {
                    objX2 = new CatalogNavigationKt$CatalogNavigationComposable$4$1(mainNavigationState, null);
                    gapComposerH.q(objX2);
                }
                EffectsKt.e(gapComposerH, unit, (Function2) objX2);
                NavHostController navHostControllerA = NavHostControllerKt.a(new Navigator[0], gapComposerH);
                CatalogRoutingState catalogRoutingState2 = (CatalogRoutingState) mutableStateB.getF10755b();
                catalogRoutingState2.getClass();
                StoreModeRoute storeModeRoute = ((CatalogRoutingState.StoreMode) catalogRoutingState2).f55226a ? StoreModeRoute.StoreModeHome.INSTANCE : StoreModeRoute.Welcome.INSTANCE;
                ViewModelStoreOwner viewModelStoreOwnerA2 = LocalViewModelStoreOwner.a(gapComposerH);
                if (viewModelStoreOwnerA2 == null) {
                    md.k("No ViewModelStoreOwner was provided via LocalViewModelStoreOwner");
                    return;
                }
                HiltViewModelFactory hiltViewModelFactoryA = HiltViewModelKt.a(viewModelStoreOwnerA2, gapComposerH);
                CreationExtras defaultViewModelCreationExtras = viewModelStoreOwnerA2 instanceof HasDefaultViewModelProviderFactory ? ((HasDefaultViewModelProviderFactory) viewModelStoreOwnerA2).getDefaultViewModelCreationExtras() : CreationExtras.Empty.f13578c;
                ReflectionFactory reflectionFactory = Reflection.f71922a;
                StoreModeViewModel storeModeViewModel = (StoreModeViewModel) ViewModelKt.a(reflectionFactory.b(StoreModeViewModelImpl.class), viewModelStoreOwnerA2, null, hiltViewModelFactoryA, defaultViewModelCreationExtras, gapComposerH);
                ViewModelStoreOwner viewModelStoreOwnerA3 = LocalViewModelStoreOwner.a(gapComposerH);
                if (viewModelStoreOwnerA3 == null) {
                    md.k("No ViewModelStoreOwner was provided via LocalViewModelStoreOwner");
                    return;
                }
                PSPStoreModeViewModel pSPStoreModeViewModel = (PSPStoreModeViewModel) ViewModelKt.a(reflectionFactory.b(PSPStoreModeViewModelImpl.class), viewModelStoreOwnerA3, null, HiltViewModelKt.a(viewModelStoreOwnerA3, gapComposerH), viewModelStoreOwnerA3 instanceof HasDefaultViewModelProviderFactory ? ((HasDefaultViewModelProviderFactory) viewModelStoreOwnerA3).getDefaultViewModelCreationExtras() : CreationExtras.Empty.f13578c, gapComposerH);
                boolean zY = gapComposerH.y(context);
                Object objX3 = gapComposerH.x();
                if (zY || objX3 == composer$Companion$Empty$1) {
                    i4 = 4;
                    objX3 = new je(context, 4);
                    gapComposerH.q(objX3);
                } else {
                    i4 = 4;
                }
                Function0 function4 = (Function0) objX3;
                boolean z2 = i7 == i4;
                Object objX4 = gapComposerH.x();
                if (z2 || objX4 == composer$Companion$Empty$1) {
                    objX4 = new dk(mainNavigationState, 1);
                    gapComposerH.q(objX4);
                }
                Function0 function5 = (Function0) objX4;
                boolean zY2 = gapComposerH.y(contributionLinkNavigator) | gapComposerH.y(context);
                Object objX5 = gapComposerH.x();
                if (zY2 || objX5 == composer$Companion$Empty$1) {
                    objX5 = new m(contributionLinkNavigator, context, 4);
                    gapComposerH.q(objX5);
                }
                StoreModeNavHostKt.a(navHostControllerA, storeModeRoute, storeModeViewModel, pSPStoreModeViewModel, function4, function5, (Function1) objX5, gapComposerH, 0);
                gapComposerH = gapComposerH;
                gapComposerH.Z(false);
            } else {
                if (!(catalogRoutingState instanceof CatalogRoutingState.Catalog)) {
                    throw d21.u(gapComposerH, 582016814, false);
                }
                gapComposerH.L(864252892);
                boolean z3 = i7 == 4;
                Object objX6 = gapComposerH.x();
                if (z3 || objX6 == composer$Companion$Empty$1) {
                    objX6 = new CatalogNavigationKt$CatalogNavigationComposable$8$1(mainNavigationState, null);
                    gapComposerH.q(objX6);
                }
                EffectsKt.e(gapComposerH, unit, (Function2) objX6);
                NavHostController navHostControllerA2 = NavHostControllerKt.a(new Navigator[0], gapComposerH);
                ViewModelStoreOwner viewModelStoreOwnerA4 = LocalViewModelStoreOwner.a(gapComposerH);
                if (viewModelStoreOwnerA4 == null) {
                    md.k("No ViewModelStoreOwner was provided via LocalViewModelStoreOwner");
                    return;
                }
                CatalogViewModel catalogViewModel = (CatalogViewModel) ViewModelKt.a(Reflection.f71922a.b(CatalogViewModelImpl.class), viewModelStoreOwnerA4, null, HiltViewModelKt.a(viewModelStoreOwnerA4, gapComposerH), viewModelStoreOwnerA4 instanceof HasDefaultViewModelProviderFactory ? ((HasDefaultViewModelProviderFactory) viewModelStoreOwnerA4).getDefaultViewModelCreationExtras() : CreationExtras.Empty.f13578c, gapComposerH);
                boolean zY3 = gapComposerH.y(passAppLinkBuilder) | gapComposerH.y(context);
                Object objX7 = gapComposerH.x();
                if (zY3 || objX7 == composer$Companion$Empty$1) {
                    objX7 = new f1(passAppLinkBuilder, context, 15);
                    gapComposerH.q(objX7);
                }
                Function3 function6 = (Function3) objX7;
                boolean zD = ((29360128 & i3) == 8388608) | gapComposerH.d(iB) | gapComposerH.d(iB2);
                Object objX8 = gapComposerH.x();
                if (zD || objX8 == composer$Companion$Empty$1) {
                    objX8 = new tj(function3, iB, iB2, 1);
                    gapComposerH.q(objX8);
                }
                Function1 function7 = (Function1) objX8;
                int i8 = i3 >> 6;
                int i9 = i3 << 3;
                CatalogComposableKt.a(catalogRoute, mainNavigationState, navHostControllerA2, catalogViewModel, contributionLinkNavigator, quickAccessFiltersViewModel, function6, function7, function0, function1, function2, gapComposerH, (i8 & 57344) | (i8 & 14) | (i9 & 112) | (458752 & i9) | (234881024 & i3) | (i3 & 1879048192), i6 & 14);
                gapComposerH = gapComposerH;
                gapComposerH.Z(false);
            }
            catalogRoutingViewModel2 = catalogRoutingViewModel3;
        } else {
            gapComposerH.D();
            catalogRoutingViewModel2 = catalogRoutingViewModel;
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new gk(mainNavigationState, context, catalogRoute, catalogRoutingViewModel2, quickAccessFiltersViewModel, passAppLinkBuilder, contributionLinkNavigator, function3, function0, function1, function2, i2);
        }
    }
}
