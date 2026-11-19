package com.vuitton.android.presentation.screen.plp.components.composables;

import android.content.Context;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.compose.ui.unit.Dp;
import androidx.lifecycle.compose.FlowExtKt;
import com.google.ar.core.ImageMetadata;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.presentation.contact.models.ContactUsUiModel;
import com.vuitton.android.presentation.screen.catalog.thematicplp.models.GridModes;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.SkuIdUiModel;
import com.vuitton.android.presentation.screen.plp.components.screens.PLPScreenKt;
import com.vuitton.android.presentation.screen.plp.models.PLPAddToWishlistTrackingMode;
import com.vuitton.android.presentation.screen.plp.models.PLPRemoveFromWishlistTrackingMode;
import com.vuitton.android.presentation.screen.plp.models.PLPTrackingUiModel;
import com.vuitton.android.presentation.screen.plp.models.PLPWishlistUpdateUiModel;
import com.vuitton.android.presentation.screen.plp.models.productshortlist.PlpProductUiModel;
import com.vuitton.android.presentation.screen.plp.models.viewstates.PLPViewState;
import com.vuitton.android.presentation.screen.plp.viewmodels.PLPViewModel;
import com.vuitton.android.presentation.tracking.AppsFlyerTrackerEntryPointKt;
import com.vuitton.android.presentation.tracking.AppsFlyerUiTracker;
import com.vuitton.android.presentation.tracking.PLPListTrackingIds;
import defpackage.aj0;
import defpackage.cl0;
import defpackage.ii0;
import defpackage.je;
import defpackage.od;
import defpackage.rh0;
import defpackage.rp;
import defpackage.xe0;
import defpackage.yk0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.EmptyList;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.reflect.KFunction;
import kotlin.text.StringsKt;
import kotlinx.coroutines.flow.SharedFlowImpl;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002¨\u0006\u0004²\u0006\f\u0010\u0001\u001a\u00020\u00008\nX\u008a\u0084\u0002²\u0006\f\u0010\u0003\u001a\u00020\u00028\nX\u008a\u0084\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/plp/models/viewstates/PLPViewState;", "viewState", "Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;", "contactUsUiModel", "presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class PLPSimpleComposableKt {
    /* JADX WARN: Code duplicated, block: B:59:0x0107  */
    public static final void a(PLPViewModel pLPViewModel, String str, Function0 function0, Function0 function1, Function1 function2, boolean z, Composer composer, int i2, int i3) {
        Function1 function3;
        int i4;
        boolean z2;
        int i5;
        GapComposer gapComposer;
        boolean z3;
        Function1 function4;
        PLPListTrackingIds pLPListTrackingIds;
        Context context;
        AppsFlyerUiTracker appsFlyerUiTracker;
        int i6;
        float f2;
        int i7;
        final PLPViewModel pLPViewModel2;
        Object odVar;
        PLPListTrackingIds pLPListTrackingIds2;
        Function1 function5;
        boolean z4;
        final PLPViewModel pLPViewModel3;
        final int i8;
        pLPViewModel.getClass();
        function0.getClass();
        function1.getClass();
        GapComposer gapComposerH = composer.h(1372632827);
        int i9 = i2 | (gapComposerH.K(pLPViewModel) ? 4 : 2);
        if ((i2 & 48) == 0) {
            i9 |= gapComposerH.K(str) ? 32 : 16;
        }
        int i10 = i9 | (gapComposerH.y(function0) ? 256 : 128) | (gapComposerH.y(function1) ? 2048 : 1024);
        int i11 = i3 & 16;
        if (i11 != 0) {
            i4 = i10 | 24576;
            function3 = function2;
        } else {
            function3 = function2;
            i4 = i10 | (gapComposerH.y(function3) ? 16384 : 8192);
        }
        int i12 = i3 & 32;
        if (i12 != 0) {
            i5 = i4 | ImageMetadata.EDGE_MODE;
            z2 = z;
        } else {
            z2 = z;
            i5 = i4 | (gapComposerH.b(z2) ? 131072 : 65536);
        }
        int i13 = i5;
        if (gapComposerH.p(i13 & 1, (i13 & 74899) != 74898)) {
            Function1 function6 = i11 != 0 ? null : function3;
            boolean z5 = i12 != 0 ? false : z2;
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Context context2 = (Context) gapComposerH.k(AndroidCompositionLocals_androidKt.f9936b);
            AppsFlyerUiTracker appsFlyerUiTracker2 = (AppsFlyerUiTracker) gapComposerH.k(AppsFlyerTrackerEntryPointKt.f65808a);
            MutableState mutableStateC = FlowExtKt.c(pLPViewModel.a(), null, gapComposerH, 0, 7);
            MutableState mutableStateA = FlowExtKt.a(pLPViewModel.i(), new ContactUsUiModel(false, null, null, null, null, null, null, null, false, false, false, null, 4095, null), gapComposerH);
            PLPViewState pLPViewState = (PLPViewState) mutableStateC.getF10755b();
            pLPViewState.getClass();
            String str2 = pLPViewState.f63006b;
            if (z5) {
                if (str2 == null) {
                    str2 = "LVPass/products_catalog/productlist";
                } else {
                    if (StringsKt.w(str2)) {
                        str2 = null;
                    }
                    if (str2 == null) {
                        str2 = "LVPass/products_catalog/productlist";
                    }
                }
                String str3 = "product_list." + str2 + ".[" + pLPViewState.f63009f + "]";
                pLPListTrackingIds = new PLPListTrackingIds(str3, "plp.most_purchased_with", str3, "preview.most_purchased_with");
            } else {
                String str4 = str2 == null ? "" : str2;
                String str5 = pLPViewState.f63005a;
                String str6 = str5 == null ? "" : str5;
                if (str2 == null) {
                    str2 = "";
                }
                pLPListTrackingIds = new PLPListTrackingIds(str4, str6, str2, str5 != null ? str5 : "");
            }
            PLPViewState pLPViewState2 = (PLPViewState) mutableStateC.getF10755b();
            EmptyList emptyList = EmptyList.f71768b;
            ContactUsUiModel contactUsUiModel = (ContactUsUiModel) mutableStateA.getF10755b();
            float f3 = LVAppDesignKitTheme.l(gapComposerH).f48419i;
            SharedFlowImpl sharedFlowImplG = pLPViewModel.g();
            int i14 = i13 & 14;
            boolean z6 = i14 == 4;
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (z6 || objX == composer$Companion$Empty$1) {
                context = context2;
                appsFlyerUiTracker = appsFlyerUiTracker2;
                i6 = i14;
                f2 = f3;
                i7 = 7;
                PLPSimpleComposableKt$PLPSimpleComposable$1$1 pLPSimpleComposableKt$PLPSimpleComposable$1$1 = new PLPSimpleComposableKt$PLPSimpleComposable$1$1(0, pLPViewModel, PLPViewModel.class, "refreshWishlist", "refreshWishlist()V", 0);
                gapComposerH.q(pLPSimpleComposableKt$PLPSimpleComposable$1$1);
                objX = pLPSimpleComposableKt$PLPSimpleComposable$1$1;
            } else {
                appsFlyerUiTracker = appsFlyerUiTracker2;
                i6 = i14;
                i7 = 7;
                f2 = f3;
                context = context2;
            }
            KFunction kFunction = (KFunction) objX;
            boolean z7 = i6 == 4;
            Object objX2 = gapComposerH.x();
            if (z7 || objX2 == composer$Companion$Empty$1) {
                PLPSimpleComposableKt$PLPSimpleComposable$2$1 pLPSimpleComposableKt$PLPSimpleComposable$2$1 = new PLPSimpleComposableKt$PLPSimpleComposable$2$1(1, pLPViewModel, PLPViewModel.class, "updateCurrentGridMode", "updateCurrentGridMode(Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/GridModes;)V", 0);
                gapComposerH.q(pLPSimpleComposableKt$PLPSimpleComposable$2$1);
                objX2 = pLPSimpleComposableKt$PLPSimpleComposable$2$1;
            }
            KFunction kFunction2 = (KFunction) objX2;
            boolean z8 = i6 == 4;
            Object objX3 = gapComposerH.x();
            if (z8 || objX3 == composer$Companion$Empty$1) {
                pLPViewModel2 = pLPViewModel;
                PLPSimpleComposableKt$PLPSimpleComposable$3$1 pLPSimpleComposableKt$PLPSimpleComposable$3$1 = new PLPSimpleComposableKt$PLPSimpleComposable$3$1(1, pLPViewModel2, PLPViewModel.class, "onWishlistAnimationEnded", "onWishlistAnimationEnded(Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel;)V", 0);
                gapComposerH.q(pLPSimpleComposableKt$PLPSimpleComposable$3$1);
                objX3 = pLPSimpleComposableKt$PLPSimpleComposable$3$1;
            } else {
                pLPViewModel2 = pLPViewModel;
            }
            KFunction kFunction3 = (KFunction) objX3;
            Dp dp = new Dp(f2);
            Function0 function7 = (Function0) kFunction;
            boolean zY = (i6 == 4) | gapComposerH.y(context);
            Object objX4 = gapComposerH.x();
            int i15 = 21;
            if (zY || objX4 == composer$Companion$Empty$1) {
                objX4 = new rh0(pLPViewModel2, context, i15);
                gapComposerH.q(objX4);
            }
            Function0 function8 = (Function0) objX4;
            Object objX5 = gapComposerH.x();
            if (objX5 == composer$Companion$Empty$1) {
                objX5 = new yk0(3);
                gapComposerH.q(objX5);
            }
            Function1 function9 = (Function1) objX5;
            boolean z9 = i6 == 4;
            Object objX6 = gapComposerH.x();
            if (z9 || objX6 == composer$Companion$Empty$1) {
                final int i16 = 1;
                objX6 = new Function0() { // from class: el0
                    @Override // kotlin.jvm.functions.Function0
                    /* JADX INFO: renamed from: invoke */
                    public final Object mo47invoke() {
                        int i17 = i16;
                        PLPViewModel pLPViewModel4 = pLPViewModel2;
                        switch (i17) {
                            case 0:
                                pLPViewModel4.O0(PLPTrackingUiModel.DispatchFilterSwipedEvent.f62886a);
                                break;
                            case 1:
                                pLPViewModel4.C1(null);
                                break;
                            default:
                                pLPViewModel4.c();
                                break;
                        }
                        return Unit.f71739a;
                    }
                };
                gapComposerH.q(objX6);
            }
            Function0 function10 = (Function0) objX6;
            boolean zY2 = gapComposerH.y(context);
            Object objX7 = gapComposerH.x();
            if (zY2 || objX7 == composer$Companion$Empty$1) {
                objX7 = new je(context, 21);
                gapComposerH.q(objX7);
            }
            Function0 function11 = (Function0) objX7;
            boolean z10 = i6 == 4;
            Object objX8 = gapComposerH.x();
            if (z10 || objX8 == composer$Companion$Empty$1) {
                final int i17 = 2;
                objX8 = new Function0() { // from class: el0
                    @Override // kotlin.jvm.functions.Function0
                    /* JADX INFO: renamed from: invoke */
                    public final Object mo47invoke() {
                        int i18 = i17;
                        PLPViewModel pLPViewModel4 = pLPViewModel2;
                        switch (i18) {
                            case 0:
                                pLPViewModel4.O0(PLPTrackingUiModel.DispatchFilterSwipedEvent.f62886a);
                                break;
                            case 1:
                                pLPViewModel4.C1(null);
                                break;
                            default:
                                pLPViewModel4.c();
                                break;
                        }
                        return Unit.f71739a;
                    }
                };
                gapComposerH.q(objX8);
            }
            Function0 function12 = (Function0) objX8;
            Object objX9 = gapComposerH.x();
            if (objX9 == composer$Companion$Empty$1) {
                objX9 = new yk0(4);
                gapComposerH.q(objX9);
            }
            Function1 function13 = (Function1) objX9;
            Object objX10 = gapComposerH.x();
            if (objX10 == composer$Companion$Empty$1) {
                objX10 = new yk0(5);
                gapComposerH.q(objX10);
            }
            Function1 function14 = (Function1) objX10;
            Function1 function15 = (Function1) kFunction2;
            Object objX11 = gapComposerH.x();
            int i18 = 6;
            if (objX11 == composer$Companion$Empty$1) {
                objX11 = new yk0(i18);
                gapComposerH.q(objX11);
            }
            Function1 function16 = (Function1) objX11;
            Object objX12 = gapComposerH.x();
            if (objX12 == composer$Companion$Empty$1) {
                objX12 = new aj0(13);
                gapComposerH.q(objX12);
            }
            Function2 function17 = (Function2) objX12;
            Object objX13 = gapComposerH.x();
            if (objX13 == composer$Companion$Empty$1) {
                objX13 = new yk0(i7);
                gapComposerH.q(objX13);
            }
            Function1 function18 = (Function1) objX13;
            Object objX14 = gapComposerH.x();
            if (objX14 == composer$Companion$Empty$1) {
                objX14 = new aj0(12);
                gapComposerH.q(objX14);
            }
            Function2 function19 = (Function2) objX14;
            Function1 function20 = (Function1) kFunction3;
            boolean z11 = i6 == 4;
            Object objX15 = gapComposerH.x();
            if (z11 || objX15 == composer$Companion$Empty$1) {
                final int i19 = 1;
                objX15 = new Function2() { // from class: bl0
                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj, Object obj2) {
                        int i20 = i19;
                        PLPViewModel pLPViewModel4 = pLPViewModel2;
                        switch (i20) {
                            case 0:
                                GridModes gridModes = (GridModes) obj;
                                String str7 = (String) obj2;
                                gridModes.getClass();
                                str7.getClass();
                                pLPViewModel4.O0(new PLPTrackingUiModel.ChangeLayoutClickedEvent(gridModes, str7));
                                break;
                            case 1:
                                PlpProductUiModel plpProductUiModel = (PlpProductUiModel) obj;
                                String str8 = (String) obj2;
                                plpProductUiModel.getClass();
                                str8.getClass();
                                pLPViewModel4.u5(plpProductUiModel, new PLPAddToWishlistTrackingMode.Revamp(str8), new PLPRemoveFromWishlistTrackingMode.Revamp(str8));
                                break;
                            default:
                                PLPWishlistUpdateUiModel pLPWishlistUpdateUiModel = (PLPWishlistUpdateUiModel) obj;
                                String str9 = (String) obj2;
                                pLPWishlistUpdateUiModel.getClass();
                                str9.getClass();
                                pLPViewModel4.ka(pLPWishlistUpdateUiModel, new PLPAddToWishlistTrackingMode.Revamp(str9), new PLPRemoveFromWishlistTrackingMode.Revamp(str9));
                                break;
                        }
                        return Unit.f71739a;
                    }
                };
                gapComposerH.q(objX15);
            }
            Function2 function21 = (Function2) objX15;
            Object objX16 = gapComposerH.x();
            if (objX16 == composer$Companion$Empty$1) {
                objX16 = new yk0(8);
                gapComposerH.q(objX16);
            }
            Function1 function22 = (Function1) objX16;
            boolean z12 = i6 == 4;
            Object objX17 = gapComposerH.x();
            if (z12 || objX17 == composer$Companion$Empty$1) {
                final int i20 = 2;
                objX17 = new Function2() { // from class: bl0
                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj, Object obj2) {
                        int i21 = i20;
                        PLPViewModel pLPViewModel4 = pLPViewModel2;
                        switch (i21) {
                            case 0:
                                GridModes gridModes = (GridModes) obj;
                                String str7 = (String) obj2;
                                gridModes.getClass();
                                str7.getClass();
                                pLPViewModel4.O0(new PLPTrackingUiModel.ChangeLayoutClickedEvent(gridModes, str7));
                                break;
                            case 1:
                                PlpProductUiModel plpProductUiModel = (PlpProductUiModel) obj;
                                String str8 = (String) obj2;
                                plpProductUiModel.getClass();
                                str8.getClass();
                                pLPViewModel4.u5(plpProductUiModel, new PLPAddToWishlistTrackingMode.Revamp(str8), new PLPRemoveFromWishlistTrackingMode.Revamp(str8));
                                break;
                            default:
                                PLPWishlistUpdateUiModel pLPWishlistUpdateUiModel = (PLPWishlistUpdateUiModel) obj;
                                String str9 = (String) obj2;
                                pLPWishlistUpdateUiModel.getClass();
                                str9.getClass();
                                pLPViewModel4.ka(pLPWishlistUpdateUiModel, new PLPAddToWishlistTrackingMode.Revamp(str9), new PLPRemoveFromWishlistTrackingMode.Revamp(str9));
                                break;
                        }
                        return Unit.f71739a;
                    }
                };
                gapComposerH.q(objX17);
            }
            Function2 function23 = (Function2) objX17;
            boolean z13 = i6 == 4;
            Object objX18 = gapComposerH.x();
            if (z13 || objX18 == composer$Companion$Empty$1) {
                objX18 = new xe0(pLPViewModel2, i18);
                gapComposerH.q(objX18);
            }
            Function3 function24 = (Function3) objX18;
            boolean zY3 = ((i13 & 57344) == 16384) | gapComposerH.y(context) | gapComposerH.K(pLPListTrackingIds) | ((i13 & ImageMetadata.JPEG_GPS_COORDINATES) == 131072) | (i6 == 4);
            Object objX19 = gapComposerH.x();
            if (zY3 || objX19 == composer$Companion$Empty$1) {
                Function1 function25 = function6;
                boolean z14 = z5;
                PLPViewModel pLPViewModel4 = pLPViewModel2;
                pLPListTrackingIds2 = pLPListTrackingIds;
                odVar = new od(function25, pLPListTrackingIds2, z14, pLPViewModel4, context);
                function5 = function25;
                z4 = z14;
                pLPViewModel3 = pLPViewModel4;
                gapComposerH.q(odVar);
            } else {
                odVar = objX19;
                pLPViewModel3 = pLPViewModel2;
                pLPListTrackingIds2 = pLPListTrackingIds;
                function5 = function6;
                z4 = z5;
            }
            Function2 function26 = (Function2) odVar;
            Object objX20 = gapComposerH.x();
            if (objX20 == composer$Companion$Empty$1) {
                objX20 = new ii0(21);
                gapComposerH.q(objX20);
            }
            Function0 function27 = (Function0) objX20;
            Object objX21 = gapComposerH.x();
            if (objX21 == composer$Companion$Empty$1) {
                objX21 = new ii0(22);
                gapComposerH.q(objX21);
            }
            Function0 function28 = (Function0) objX21;
            boolean z15 = i6 == 4;
            Object objX22 = gapComposerH.x();
            if (z15 || objX22 == composer$Companion$Empty$1) {
                final int i21 = 2;
                objX22 = new Function1() { // from class: dl0
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        int i22 = i21;
                        PLPViewModel pLPViewModel5 = pLPViewModel3;
                        switch (i22) {
                            case 0:
                                pLPViewModel5.O0(new PLPTrackingUiModel.PlpScrolledEvent(((Integer) obj).intValue(), false, 2, null));
                                break;
                            case 1:
                                String str7 = (String) obj;
                                str7.getClass();
                                pLPViewModel5.O0(new PLPTrackingUiModel.DispatchFilterSelectedEvent(str7));
                                break;
                            default:
                                String str8 = (String) obj;
                                str8.getClass();
                                pLPViewModel5.O0(new PLPTrackingUiModel.ScreenshotTakenEvent(str8));
                                break;
                        }
                        return Unit.f71739a;
                    }
                };
                gapComposerH.q(objX22);
            }
            Function1 function29 = (Function1) objX22;
            boolean z16 = i6 == 4;
            Object objX23 = gapComposerH.x();
            if (z16 || objX23 == composer$Companion$Empty$1) {
                objX23 = new Function2<SkuIdUiModel, String, Unit>() { // from class: com.vuitton.android.presentation.screen.plp.components.composables.PLPSimpleComposableKt$PLPSimpleComposable$23$1
                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj, Object obj2) {
                        String str7 = ((SkuIdUiModel) obj).f61764b;
                        String str8 = (String) obj2;
                        str7.getClass();
                        str8.getClass();
                        pLPViewModel3.O0(new PLPTrackingUiModel.ShareProductEvent(str7, str8, null));
                        return Unit.f71739a;
                    }
                };
                gapComposerH.q(objX23);
            }
            Function2 function30 = (Function2) objX23;
            Object objX24 = gapComposerH.x();
            if (objX24 == composer$Companion$Empty$1) {
                objX24 = new yk0(2);
                gapComposerH.q(objX24);
            }
            Function1 function31 = (Function1) objX24;
            boolean z17 = i6 == 4;
            Object objX25 = gapComposerH.x();
            if (z17 || objX25 == composer$Companion$Empty$1) {
                final int i22 = 0;
                objX25 = new Function2() { // from class: bl0
                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj, Object obj2) {
                        int i23 = i22;
                        PLPViewModel pLPViewModel5 = pLPViewModel3;
                        switch (i23) {
                            case 0:
                                GridModes gridModes = (GridModes) obj;
                                String str7 = (String) obj2;
                                gridModes.getClass();
                                str7.getClass();
                                pLPViewModel5.O0(new PLPTrackingUiModel.ChangeLayoutClickedEvent(gridModes, str7));
                                break;
                            case 1:
                                PlpProductUiModel plpProductUiModel = (PlpProductUiModel) obj;
                                String str8 = (String) obj2;
                                plpProductUiModel.getClass();
                                str8.getClass();
                                pLPViewModel5.u5(plpProductUiModel, new PLPAddToWishlistTrackingMode.Revamp(str8), new PLPRemoveFromWishlistTrackingMode.Revamp(str8));
                                break;
                            default:
                                PLPWishlistUpdateUiModel pLPWishlistUpdateUiModel = (PLPWishlistUpdateUiModel) obj;
                                String str9 = (String) obj2;
                                pLPWishlistUpdateUiModel.getClass();
                                str9.getClass();
                                pLPViewModel5.ka(pLPWishlistUpdateUiModel, new PLPAddToWishlistTrackingMode.Revamp(str9), new PLPRemoveFromWishlistTrackingMode.Revamp(str9));
                                break;
                        }
                        return Unit.f71739a;
                    }
                };
                gapComposerH.q(objX25);
            }
            Function2 function32 = (Function2) objX25;
            Object objX26 = gapComposerH.x();
            if (objX26 == composer$Companion$Empty$1) {
                objX26 = new ii0(20);
                gapComposerH.q(objX26);
            }
            Function0 function33 = (Function0) objX26;
            boolean zY4 = (i6 == 4) | gapComposerH.y(appsFlyerUiTracker) | gapComposerH.K(pLPListTrackingIds2);
            Object objX27 = gapComposerH.x();
            if (zY4 || objX27 == composer$Companion$Empty$1) {
                objX27 = new cl0(pLPViewModel3, pLPListTrackingIds2, appsFlyerUiTracker, 0);
                gapComposerH.q(objX27);
            }
            Function1 function34 = (Function1) objX27;
            boolean z18 = i6 == 4;
            Object objX28 = gapComposerH.x();
            if (z18 || objX28 == composer$Companion$Empty$1) {
                final int i23 = 0;
                objX28 = new Function1() { // from class: dl0
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        int i24 = i23;
                        PLPViewModel pLPViewModel5 = pLPViewModel3;
                        switch (i24) {
                            case 0:
                                pLPViewModel5.O0(new PLPTrackingUiModel.PlpScrolledEvent(((Integer) obj).intValue(), false, 2, null));
                                break;
                            case 1:
                                String str7 = (String) obj;
                                str7.getClass();
                                pLPViewModel5.O0(new PLPTrackingUiModel.DispatchFilterSelectedEvent(str7));
                                break;
                            default:
                                String str8 = (String) obj;
                                str8.getClass();
                                pLPViewModel5.O0(new PLPTrackingUiModel.ScreenshotTakenEvent(str8));
                                break;
                        }
                        return Unit.f71739a;
                    }
                };
                gapComposerH.q(objX28);
            }
            Function1 function35 = (Function1) objX28;
            boolean z19 = i6 == 4;
            Object objX29 = gapComposerH.x();
            if (z19 || objX29 == composer$Companion$Empty$1) {
                i8 = 1;
                objX29 = new Function1() { // from class: dl0
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        int i24 = i8;
                        PLPViewModel pLPViewModel5 = pLPViewModel3;
                        switch (i24) {
                            case 0:
                                pLPViewModel5.O0(new PLPTrackingUiModel.PlpScrolledEvent(((Integer) obj).intValue(), false, 2, null));
                                break;
                            case 1:
                                String str7 = (String) obj;
                                str7.getClass();
                                pLPViewModel5.O0(new PLPTrackingUiModel.DispatchFilterSelectedEvent(str7));
                                break;
                            default:
                                String str8 = (String) obj;
                                str8.getClass();
                                pLPViewModel5.O0(new PLPTrackingUiModel.ScreenshotTakenEvent(str8));
                                break;
                        }
                        return Unit.f71739a;
                    }
                };
                gapComposerH.q(objX29);
            } else {
                i8 = 1;
            }
            Function1 function36 = (Function1) objX29;
            if (i6 != 4) {
                i8 = 0;
            }
            Object objX30 = gapComposerH.x();
            if (i8 != 0 || objX30 == composer$Companion$Empty$1) {
                final int i24 = 0;
                objX30 = new Function0() { // from class: el0
                    @Override // kotlin.jvm.functions.Function0
                    /* JADX INFO: renamed from: invoke */
                    public final Object mo47invoke() {
                        int i110 = i24;
                        PLPViewModel pLPViewModel5 = pLPViewModel3;
                        switch (i110) {
                            case 0:
                                pLPViewModel5.O0(PLPTrackingUiModel.DispatchFilterSwipedEvent.f62886a);
                                break;
                            case 1:
                                pLPViewModel5.C1(null);
                                break;
                            default:
                                pLPViewModel5.c();
                                break;
                        }
                        return Unit.f71739a;
                    }
                };
                gapComposerH.q(objX30);
            }
            gapComposer = gapComposerH;
            PLPScreenKt.a(null, pLPViewState2, null, str, null, null, emptyList, contactUsUiModel, true, dp, sharedFlowImplG, function0, function7, function8, null, function9, null, function1, function10, function11, function12, function13, function14, function15, function16, function17, function18, function19, function20, function21, function22, function23, function24, null, function26, null, function27, function28, function29, function30, function31, function32, function33, function34, function35, function36, (Function0) objX30, gapComposer, ((i13 << 6) & 7168) | 102457728, ((i13 >> 3) & 112) | ImageMetadata.EDGE_MODE | (29360128 & (i13 << 12)), 14377392, 14155782, 390, 81921, 20);
            function4 = function5;
            z3 = z4;
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
            z3 = z2;
            function4 = function3;
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new rp(pLPViewModel, str, function0, function1, function4, z3, i2, i3);
        }
    }
}
