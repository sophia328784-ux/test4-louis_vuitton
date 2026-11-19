package com.vuitton.android.presentation.screen.catalog.components;

import android.content.Context;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.navigation.NavHostController;
import com.vuitton.android.presentation.link.navigation.ContributionLinkNavigator;
import com.vuitton.android.presentation.screen.catalog.CatalogDestinations;
import com.vuitton.android.presentation.screen.catalog.CatalogDestinationsKt;
import com.vuitton.android.presentation.screen.catalog.CatalogViewModel;
import com.vuitton.android.presentation.screen.catalog.models.CatalogViewState;
import com.vuitton.android.presentation.screen.filter.quickaccess.QuickAccessFiltersViewModel;
import com.vuitton.android.presentation.screen.main.MainNavigationState;
import com.vuitton.android.presentation.screen.main.navigation.CatalogRoute;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.SkuIdUiModel;
import defpackage.je;
import defpackage.m;
import defpackage.tf;
import defpackage.xj;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.reflect.KFunction;
import org.bouncycastle.asn1.cmp.PKIFailureInfo;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\b\n\u0002\u0018\u0002\n\u0002\b\u0002¨\u0006\u0002²\u0006\f\u0010\u0001\u001a\u00020\u00008\nX\u008a\u0084\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/catalog/models/CatalogViewState;", "viewState", "presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class CatalogComposableKt {
    public static final void a(CatalogRoute catalogRoute, MainNavigationState mainNavigationState, NavHostController navHostController, CatalogViewModel catalogViewModel, ContributionLinkNavigator contributionLinkNavigator, QuickAccessFiltersViewModel quickAccessFiltersViewModel, Function3 function3, Function1 function1, Function0 function0, Function0 function2, Function0 function4, Composer composer, int i2, int i3) {
        int i4;
        int i5;
        Composer$Companion$Empty$1 composer$Companion$Empty$1;
        final Context context;
        MutableState mutableState;
        catalogRoute.getClass();
        navHostController.getClass();
        catalogViewModel.getClass();
        quickAccessFiltersViewModel.getClass();
        function3.getClass();
        function1.getClass();
        function0.getClass();
        function2.getClass();
        function4.getClass();
        GapComposer gapComposerH = composer.h(1752504723);
        if ((i2 & 6) == 0) {
            i4 = (gapComposerH.y(catalogRoute) ? 4 : 2) | i2;
        } else {
            i4 = i2;
        }
        if ((i2 & 48) == 0) {
            i4 |= gapComposerH.K(mainNavigationState) ? 32 : 16;
        }
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i4 |= gapComposerH.y(navHostController) ? 256 : 128;
        }
        if ((i2 & 3072) == 0) {
            i4 |= (i2 & 4096) == 0 ? gapComposerH.K(catalogViewModel) : gapComposerH.y(catalogViewModel) ? 2048 : 1024;
        }
        if ((i2 & 24576) == 0) {
            i4 |= gapComposerH.y(contributionLinkNavigator) ? 16384 : 8192;
        }
        if ((196608 & i2) == 0) {
            i4 |= (262144 & i2) == 0 ? gapComposerH.K(quickAccessFiltersViewModel) : gapComposerH.y(quickAccessFiltersViewModel) ? 131072 : 65536;
        }
        if ((1572864 & i2) == 0) {
            i4 |= gapComposerH.y(function3) ? 1048576 : 524288;
        }
        if ((12582912 & i2) == 0) {
            i4 |= gapComposerH.y(function1) ? 8388608 : 4194304;
        }
        if ((100663296 & i2) == 0) {
            i4 |= gapComposerH.y(function0) ? 67108864 : 33554432;
        }
        if ((805306368 & i2) == 0) {
            i4 |= gapComposerH.y(function2) ? PKIFailureInfo.duplicateCertReq : 268435456;
        }
        if ((i3 & 6) == 0) {
            i5 = i3 | (gapComposerH.y(function4) ? 4 : 2);
        } else {
            i5 = i3;
        }
        boolean z = true;
        if (gapComposerH.p(i4 & 1, ((306783379 & i4) == 306783378 && (i5 & 3) == 2) ? false : true)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Context context2 = (Context) gapComposerH.k(AndroidCompositionLocals_androidKt.f9936b);
            MutableState mutableStateB = SnapshotStateKt.b(catalogViewModel.getF55240j(), gapComposerH);
            int i6 = i4;
            Boolean boolValueOf = Boolean.valueOf(((CatalogViewState) mutableStateB.getF10755b()).f55356c);
            boolean zK = gapComposerH.K(mutableStateB) | gapComposerH.y(catalogRoute) | gapComposerH.y(context2) | gapComposerH.y(navHostController);
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$2 = Composer.Companion.f7939a;
            if (zK || objX == composer$Companion$Empty$2) {
                composer$Companion$Empty$1 = composer$Companion$Empty$2;
                context = context2;
                mutableState = mutableStateB;
                objX = new CatalogComposableKt$CatalogComposable$1$1(mutableState, catalogRoute, context, navHostController, null);
                gapComposerH.q(objX);
            } else {
                context = context2;
                composer$Companion$Empty$1 = composer$Companion$Empty$2;
                mutableState = mutableStateB;
            }
            EffectsKt.e(gapComposerH, boolValueOf, (Function2) objX);
            CatalogViewState catalogViewState = (CatalogViewState) mutableState.getF10755b();
            boolean zY = gapComposerH.y(context);
            Object objX2 = gapComposerH.x();
            if (zY || objX2 == composer$Companion$Empty$1) {
                objX2 = new je(context, 2);
                gapComposerH.q(objX2);
            }
            Function0 function5 = (Function0) objX2;
            boolean zY2 = gapComposerH.y(context);
            Object objX3 = gapComposerH.x();
            if (zY2 || objX3 == composer$Companion$Empty$1) {
                objX3 = new je(context, 3);
                gapComposerH.q(objX3);
            }
            Function0 function6 = (Function0) objX3;
            int i7 = i6 & 7168;
            boolean z2 = (i7 == 2048 || ((i6 & 4096) != 0 && gapComposerH.y(catalogViewModel))) | ((234881024 & i6) == 67108864);
            Object objX4 = gapComposerH.x();
            if (z2 || objX4 == composer$Companion$Empty$1) {
                objX4 = new tf(catalogViewModel, function0, 11);
                gapComposerH.q(objX4);
            }
            Function0 function7 = (Function0) objX4;
            boolean zY3 = gapComposerH.y(contributionLinkNavigator) | gapComposerH.y(context);
            Object objX5 = gapComposerH.x();
            if (zY3 || objX5 == composer$Companion$Empty$1) {
                objX5 = new m(contributionLinkNavigator, context, 3);
                gapComposerH.q(objX5);
            }
            Function1 function8 = (Function1) objX5;
            boolean zY4 = gapComposerH.y(context);
            Object objX6 = gapComposerH.x();
            if (zY4 || objX6 == composer$Companion$Empty$1) {
                objX6 = new Function2<SkuIdUiModel, String, Unit>() { // from class: com.vuitton.android.presentation.screen.catalog.components.CatalogComposableKt$CatalogComposable$6$1
                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj, Object obj2) {
                        String str = ((SkuIdUiModel) obj).f61764b;
                        String str2 = (String) obj2;
                        str.getClass();
                        str2.getClass();
                        CatalogDestinations.ToPdpPage toPdpPage = new CatalogDestinations.ToPdpPage(str, str2, false, 4, null);
                        Context context3 = context;
                        context3.startActivity(CatalogDestinationsKt.a(toPdpPage, context3));
                        return Unit.f71739a;
                    }
                };
                gapComposerH.q(objX6);
            }
            Function2 function9 = (Function2) objX6;
            if (i7 != 2048 && ((i6 & 4096) == 0 || !gapComposerH.y(catalogViewModel))) {
                z = false;
            }
            Object objX7 = gapComposerH.x();
            if (z || objX7 == composer$Companion$Empty$1) {
                objX7 = new CatalogComposableKt$CatalogComposable$7$1(2, catalogViewModel, CatalogViewModel.class, "trackCategory", "trackCategory(Ljava/lang/String;Ljava/lang/String;)V", 0);
                gapComposerH.q(objX7);
            }
            int i8 = i6 >> 6;
            CatalogNavHostKt.a(navHostController, catalogViewState, mainNavigationState, quickAccessFiltersViewModel, function2, function4, function5, function6, function7, function1, function3, function8, function9, (Function2) ((KFunction) objX7), gapComposerH, (i8 & 7168) | (i8 & 14) | ((i6 << 3) & 896) | ((i6 >> 15) & 57344) | (458752 & (i5 << 15)) | (1879048192 & (i6 << 6)), (i6 >> 18) & 14);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new xj(catalogRoute, mainNavigationState, navHostController, catalogViewModel, contributionLinkNavigator, quickAccessFiltersViewModel, function3, function1, function0, function2, function4, i2, i3);
        }
    }
}
