package com.vuitton.android.presentation.screen.plp.components.composables;

import android.content.Context;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.lifecycle.compose.FlowExtKt;
import com.vuitton.android.presentation.screen.filter.quickaccess.QuickAccessFiltersViewModel;
import com.vuitton.android.presentation.screen.filter.quickaccess.models.QuickAccessFiltersViewState;
import com.vuitton.android.presentation.screen.plp.components.screens.PSPScreenKt;
import com.vuitton.android.presentation.screen.plp.components.screens.PSPStyle;
import com.vuitton.android.presentation.screen.plp.models.PLPAddToWishlistTrackingMode;
import com.vuitton.android.presentation.screen.plp.models.PLPRemoveFromWishlistTrackingMode;
import com.vuitton.android.presentation.screen.plp.models.PLPTrackingUiModel;
import com.vuitton.android.presentation.screen.plp.models.PLPWishlistUpdateUiModel;
import com.vuitton.android.presentation.screen.plp.models.viewstates.PLPViewState;
import com.vuitton.android.presentation.screen.plp.models.viewstates.PSPViewState;
import com.vuitton.android.presentation.screen.plp.viewmodels.PSPViewModel;
import com.vuitton.android.presentation.tracking.AppsFlyerTrackerEntryPointKt;
import com.vuitton.android.presentation.tracking.AppsFlyerUiTracker;
import defpackage.ak;
import defpackage.bk;
import defpackage.d1;
import defpackage.fk0;
import defpackage.je;
import defpackage.ll0;
import defpackage.o;
import defpackage.rh0;
import defpackage.wd0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.reflect.KFunction;
import kotlinx.coroutines.flow.SharedFlowImpl;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002¨\u0006\u0006²\u0006\f\u0010\u0001\u001a\u00020\u00008\nX\u008a\u0084\u0002²\u0006\f\u0010\u0003\u001a\u00020\u00028\nX\u008a\u0084\u0002²\u0006\f\u0010\u0005\u001a\u00020\u00048\nX\u008a\u0084\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/plp/models/viewstates/PLPViewState;", "viewState", "Lcom/vuitton/android/presentation/screen/plp/models/viewstates/PSPViewState;", "pspViewState", "Lcom/vuitton/android/presentation/screen/filter/quickaccess/models/QuickAccessFiltersViewState;", "quickAccessFiltersViewState", "presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class PSPComposableKt {
    /* JADX WARN: Multi-variable type inference failed */
    public static final void a(final PSPViewModel pSPViewModel, QuickAccessFiltersViewModel quickAccessFiltersViewModel, PSPStyle pSPStyle, Function1 function1, Function0 function0, Function0 function2, Function0 function3, Composer composer, int i2) {
        GapComposer gapComposer;
        String str;
        AppsFlyerUiTracker appsFlyerUiTracker;
        boolean z;
        Composer$Companion$Empty$1 composer$Companion$Empty$1;
        MutableState mutableState;
        int i3;
        QuickAccessFiltersViewModel quickAccessFiltersViewModel2;
        QuickAccessFiltersViewModel quickAccessFiltersViewModel3;
        QuickAccessFiltersViewModel quickAccessFiltersViewModel4;
        final int i4;
        final PSPViewModel pSPViewModel2 = pSPViewModel;
        pSPViewModel2.getClass();
        function0.getClass();
        GapComposer gapComposerH = composer.h(-1148040087);
        int i5 = i2 | (gapComposerH.K(pSPViewModel2) ? 4 : 2) | (gapComposerH.K(quickAccessFiltersViewModel) ? 32 : 16) | (gapComposerH.y(function1) ? 2048 : 1024) | (gapComposerH.y(function0) ? 16384 : 8192) | (gapComposerH.y(function2) ? 131072 : 65536) | (gapComposerH.y(function3) ? 1048576 : 524288);
        if (gapComposerH.p(i5 & 1, (599187 & i5) != 599186)) {
            gapComposerH.y0();
            if ((i2 & 1) != 0 && !gapComposerH.h0()) {
                gapComposerH.D();
            }
            gapComposerH.a0();
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Context context = (Context) gapComposerH.k(AndroidCompositionLocals_androidKt.f9936b);
            AppsFlyerUiTracker appsFlyerUiTracker2 = (AppsFlyerUiTracker) gapComposerH.k(AppsFlyerTrackerEntryPointKt.f65808a);
            MutableState mutableStateC = FlowExtKt.c(pSPViewModel2.a(), null, gapComposerH, 0, 7);
            MutableState mutableStateC2 = FlowExtKt.c(pSPViewModel2.M0(), null, gapComposerH, 0, 7);
            MutableState mutableStateC3 = FlowExtKt.c(quickAccessFiltersViewModel.getL(), null, gapComposerH, 0, 7);
            String str2 = ((PLPViewState) mutableStateC.getF10755b()).f63006b;
            if (str2 == null) {
                str2 = "";
            }
            String str3 = ((PLPViewState) mutableStateC.getF10755b()).f63005a;
            if (str3 == null) {
                str3 = "";
            }
            Unit unit = Unit.f71739a;
            boolean z2 = (i5 & 7168) == 2048;
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$2 = Composer.Companion.f7939a;
            if (z2 || objX == composer$Companion$Empty$2) {
                objX = new PSPComposableKt$PSPComposable$4$1(null, function1);
                gapComposerH.q(objX);
            }
            EffectsKt.e(gapComposerH, unit, (Function2) objX);
            PLPViewState pLPViewState = (PLPViewState) mutableStateC.getF10755b();
            PSPViewState pSPViewState = (PSPViewState) mutableStateC2.getF10755b();
            QuickAccessFiltersViewState quickAccessFiltersViewState = (QuickAccessFiltersViewState) mutableStateC3.getF10755b();
            SharedFlowImpl sharedFlowImplG = pSPViewModel2.g();
            int i6 = i5 & 14;
            boolean z3 = i6 == 4;
            Object objX2 = gapComposerH.x();
            if (z3 || objX2 == composer$Companion$Empty$2) {
                str = str2;
                appsFlyerUiTracker = appsFlyerUiTracker2;
                z = true;
                composer$Companion$Empty$1 = composer$Companion$Empty$2;
                mutableState = mutableStateC3;
                objX2 = new PSPComposableKt$PSPComposable$5$1(0, pSPViewModel2, PSPViewModel.class, "refreshWishlist", "refreshWishlist()V", 0);
                gapComposerH.q(objX2);
            } else {
                str = str2;
                z = true;
                appsFlyerUiTracker = appsFlyerUiTracker2;
                mutableState = mutableStateC3;
                composer$Companion$Empty$1 = composer$Companion$Empty$2;
            }
            Function0 function4 = (Function0) ((KFunction) objX2);
            boolean zY = gapComposerH.y(r22);
            Object objX3 = gapComposerH.x();
            if (zY || objX3 == composer$Companion$Empty$1) {
                objX3 = new je(r22, 24);
                gapComposerH.q(objX3);
            }
            Function0 function5 = (Function0) objX3;
            int i7 = (i5 & 112) ^ 48;
            boolean z4 = (((i7 <= 32 || !gapComposerH.y(quickAccessFiltersViewModel)) && (i5 & 48) != 32) ? false : z) | (r25 != 4 ? false : z);
            Object objX4 = gapComposerH.x();
            if (z4 || objX4 == composer$Companion$Empty$1) {
                objX4 = new rh0(pSPViewModel2, quickAccessFiltersViewModel, 24);
                gapComposerH.q(objX4);
            }
            Function0 function6 = (Function0) objX4;
            boolean z5 = r25 != 4 ? false : z;
            Object objX5 = gapComposerH.x();
            if (z5 || objX5 == composer$Companion$Empty$1) {
                i3 = i7;
                PSPComposableKt$PSPComposable$8$1 pSPComposableKt$PSPComposable$8$1 = new PSPComposableKt$PSPComposable$8$1(1, pSPViewModel2, PSPViewModel.class, "search", "search(Ljava/lang/String;)V", 0);
                gapComposerH.q(pSPComposableKt$PSPComposable$8$1);
                objX5 = pSPComposableKt$PSPComposable$8$1;
            } else {
                i3 = i7;
            }
            Function1 function7 = (Function1) ((KFunction) objX5);
            boolean z6 = (i3 > 32 && gapComposerH.y(quickAccessFiltersViewModel)) || (i5 & 48) == 32;
            Object objX6 = gapComposerH.x();
            if (z6 || objX6 == composer$Companion$Empty$1) {
                quickAccessFiltersViewModel2 = quickAccessFiltersViewModel;
                objX6 = new PSPComposableKt$PSPComposable$9$1(1, quickAccessFiltersViewModel2, QuickAccessFiltersViewModel.class, "updateCategory", "updateCategory(Ljava/lang/String;)V", 0);
                gapComposerH.q(objX6);
            } else {
                quickAccessFiltersViewModel2 = quickAccessFiltersViewModel;
            }
            Function1 function8 = (Function1) ((KFunction) objX6);
            boolean z7 = (i3 > 32 && gapComposerH.y(quickAccessFiltersViewModel2)) || (i5 & 48) == 32;
            Object objX7 = gapComposerH.x();
            if (z7 || objX7 == composer$Companion$Empty$1) {
                objX7 = new PSPComposableKt$PSPComposable$10$1(1, quickAccessFiltersViewModel2, QuickAccessFiltersViewModel.class, "updateFiltersContainerVisibility", "updateFiltersContainerVisibility(Z)V", 0);
                gapComposerH.q(objX7);
            }
            Function1 function9 = (Function1) ((KFunction) objX7);
            boolean zK = gapComposerH.K(mutableState) | ((i3 > 32 && gapComposerH.y(quickAccessFiltersViewModel2)) || (i5 & 48) == 32);
            Object objX8 = gapComposerH.x();
            if (zK || objX8 == composer$Companion$Empty$1) {
                objX8 = new fk0(quickAccessFiltersViewModel2, mutableState, 1);
                gapComposerH.q(objX8);
            }
            Function2 function10 = (Function2) objX8;
            boolean z8 = r25 == 4;
            Object objX9 = gapComposerH.x();
            if (z8 || objX9 == composer$Companion$Empty$1) {
                objX9 = new ll0(pSPViewModel, 0);
                gapComposerH.q(objX9);
            }
            Function2 function11 = (Function2) objX9;
            boolean z9 = r25 == 4;
            Object objX10 = gapComposerH.x();
            if (z9 || objX10 == composer$Companion$Empty$1) {
                quickAccessFiltersViewModel3 = quickAccessFiltersViewModel;
                objX10 = new PSPComposableKt$PSPComposable$13$1(1, pSPViewModel, PSPViewModel.class, "onWishlistAnimationEnded", "onWishlistAnimationEnded(Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel;)V", 0);
                gapComposerH.q(objX10);
            } else {
                quickAccessFiltersViewModel3 = quickAccessFiltersViewModel2;
            }
            Function1 function12 = (Function1) ((KFunction) objX10);
            boolean z10 = (i3 > 32 && gapComposerH.y(quickAccessFiltersViewModel3)) || (i5 & 48) == 32;
            Object objX11 = gapComposerH.x();
            if (z10 || objX11 == composer$Companion$Empty$1) {
                QuickAccessFiltersViewModel quickAccessFiltersViewModel5 = quickAccessFiltersViewModel3;
                objX11 = new PSPComposableKt$PSPComposable$14$1(1, quickAccessFiltersViewModel5, QuickAccessFiltersViewModel.class, "updateQuickAccessFiltersButtonState", "updateQuickAccessFiltersButtonState(Lcom/vuitton/android/presentation/screen/filter/quickaccess/models/FiltersButtonState;)V", 0);
                quickAccessFiltersViewModel4 = quickAccessFiltersViewModel5;
                gapComposerH.q(objX11);
            } else {
                quickAccessFiltersViewModel4 = quickAccessFiltersViewModel3;
            }
            Function1 function13 = (Function1) ((KFunction) objX11);
            boolean z11 = r25 == 4;
            Object objX12 = gapComposerH.x();
            if (z11 || objX12 == composer$Companion$Empty$1) {
                i4 = 0;
                objX12 = new Function1() { // from class: kl0
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        int i8 = i4;
                        PSPViewModel pSPViewModel3 = pSPViewModel;
                        switch (i8) {
                            case 0:
                                PLPWishlistUpdateUiModel pLPWishlistUpdateUiModel = (PLPWishlistUpdateUiModel) obj;
                                pLPWishlistUpdateUiModel.getClass();
                                pSPViewModel3.ka(pLPWishlistUpdateUiModel, PLPAddToWishlistTrackingMode.Legacy.f62875a, PLPRemoveFromWishlistTrackingMode.Legacy.f62877a);
                                break;
                            default:
                                pSPViewModel3.O0(new PLPTrackingUiModel.PlpScrolledEvent(((Integer) obj).intValue(), true));
                                break;
                        }
                        return Unit.f71739a;
                    }
                };
                gapComposerH.q(objX12);
            } else {
                i4 = 0;
            }
            Function1 function14 = (Function1) objX12;
            int i8 = (gapComposerH.y(r22) ? 1 : 0) | (r25 != 4 ? i4 : 1);
            Object objX13 = gapComposerH.x();
            if (i8 != 0 || objX13 == composer$Companion$Empty$1) {
                objX13 = new wd0(pSPViewModel, context, 19);
                gapComposerH.q(objX13);
            }
            Function2 function15 = (Function2) objX13;
            int i9 = ((i3 <= 32 || !gapComposerH.y(quickAccessFiltersViewModel4)) && (i5 & 48) != 32) ? i4 : 1;
            Object objX14 = gapComposerH.x();
            if (i9 != 0 || objX14 == composer$Companion$Empty$1) {
                objX14 = new ak(quickAccessFiltersViewModel4, 6);
                gapComposerH.q(objX14);
            }
            Function0 function16 = (Function0) objX14;
            int i10 = ((i3 <= 32 || !gapComposerH.y(quickAccessFiltersViewModel4)) && (i5 & 48) != 32) ? i4 : 1;
            Object objX15 = gapComposerH.x();
            if (i10 != 0 || objX15 == composer$Companion$Empty$1) {
                objX15 = new ak(quickAccessFiltersViewModel4, 5);
                gapComposerH.q(objX15);
            }
            Function0 function17 = (Function0) objX15;
            int i11 = ((i3 <= 32 || !gapComposerH.y(quickAccessFiltersViewModel4)) && (i5 & 48) != 32) ? i4 : 1;
            Object objX16 = gapComposerH.x();
            if (i11 != 0 || objX16 == composer$Companion$Empty$1) {
                objX16 = new bk(quickAccessFiltersViewModel4, 2);
                gapComposerH.q(objX16);
            }
            Function1 function18 = (Function1) objX16;
            int i12 = ((i3 <= 32 || !gapComposerH.y(quickAccessFiltersViewModel4)) && (i5 & 48) != 32) ? i4 : 1;
            Object objX17 = gapComposerH.x();
            if (i12 != 0 || objX17 == composer$Companion$Empty$1) {
                objX17 = new ak(quickAccessFiltersViewModel4, 7);
                gapComposerH.q(objX17);
            }
            Function0 function19 = (Function0) objX17;
            String str4 = str;
            String str5 = str3;
            boolean z12 = (((((gapComposerH.K(mutableStateC2) ? 1 : 0) | (gapComposerH.y(appsFlyerUiTracker) ? 1 : 0)) | (r25 != 4 ? i4 : 1)) | (gapComposerH.K(str4) ? 1 : 0)) == true ? 1 : 0) | (gapComposerH.K(str5) ? 1 : 0);
            Object objX18 = gapComposerH.x();
            if (z12 != 0 || objX18 == composer$Companion$Empty$1) {
                d1 d1Var = new d1((Object) pSPViewModel, str4, (Object) str5, (Object) mutableStateC2, (Object) appsFlyerUiTracker, 15);
                pSPViewModel2 = pSPViewModel;
                gapComposerH.q(d1Var);
                objX18 = d1Var;
            } else {
                pSPViewModel2 = pSPViewModel;
            }
            Function1 function20 = (Function1) objX18;
            int i13 = i6 != 4 ? i4 : 1;
            Object objX19 = gapComposerH.x();
            if (i13 != 0 || objX19 == composer$Companion$Empty$1) {
                final int i14 = 1;
                objX19 = new Function1() { // from class: kl0
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        int i15 = i14;
                        PSPViewModel pSPViewModel3 = pSPViewModel2;
                        switch (i15) {
                            case 0:
                                PLPWishlistUpdateUiModel pLPWishlistUpdateUiModel = (PLPWishlistUpdateUiModel) obj;
                                pLPWishlistUpdateUiModel.getClass();
                                pSPViewModel3.ka(pLPWishlistUpdateUiModel, PLPAddToWishlistTrackingMode.Legacy.f62875a, PLPRemoveFromWishlistTrackingMode.Legacy.f62877a);
                                break;
                            default:
                                pSPViewModel3.O0(new PLPTrackingUiModel.PlpScrolledEvent(((Integer) obj).intValue(), true));
                                break;
                        }
                        return Unit.f71739a;
                    }
                };
                gapComposerH.q(objX19);
            }
            int i15 = i5 << 9;
            gapComposer = gapComposerH;
            PSPScreenKt.a(pLPViewState, pSPViewState, quickAccessFiltersViewState, pSPStyle, sharedFlowImplG, function4, function2, function0, function5, function3, function6, function7, function8, function9, function10, function11, function12, function13, function14, function15, function16, function17, function18, function19, function20, (Function1) objX19, gapComposer, ((i5 << 3) & 3677184) | (29360128 & i15) | (i15 & 1879048192));
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new o(pSPViewModel2, quickAccessFiltersViewModel, pSPStyle, function1, function0, function2, function3, i2);
        }
    }
}
