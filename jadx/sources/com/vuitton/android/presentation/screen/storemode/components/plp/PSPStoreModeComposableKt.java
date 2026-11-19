package com.vuitton.android.presentation.screen.storemode.components.plp;

import android.content.Context;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import com.google.ar.core.ImageMetadata;
import com.vuitton.android.presentation.screen.plp.components.screens.PSPStyle;
import com.vuitton.android.presentation.screen.plp.models.viewstates.PLPViewState;
import com.vuitton.android.presentation.screen.plp.models.viewstates.PSPViewState;
import com.vuitton.android.presentation.screen.storemode.PSPStoreModeViewModel;
import com.vuitton.android.presentation.screen.storemode.filters.ProductFilterViewModel;
import com.vuitton.android.presentation.screen.storemode.filters.model.ProductFilterViewState;
import com.vuitton.android.presentation.screen.storemode.filters.model.StoreModePLPFiltersViewState;
import com.vuitton.android.presentation.screen.storemode.models.PLPStoreModeViewState;
import com.vuitton.android.presentation.screen.storemode.models.StoreModeContentUiModel;
import defpackage.gi0;
import defpackage.gl0;
import defpackage.hl0;
import defpackage.il0;
import defpackage.je;
import defpackage.of0;
import defpackage.ol0;
import defpackage.rh0;
import defpackage.uv;
import defpackage.v7;
import defpackage.yh;
import java.util.LinkedHashMap;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function5;
import kotlin.reflect.KFunction;
import kotlinx.coroutines.flow.SharedFlowImpl;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002¨\u0006\n²\u0006\f\u0010\u0001\u001a\u00020\u00008\nX\u008a\u0084\u0002²\u0006\f\u0010\u0003\u001a\u00020\u00028\nX\u008a\u0084\u0002²\u0006\f\u0010\u0005\u001a\u00020\u00048\nX\u008a\u0084\u0002²\u0006\f\u0010\u0007\u001a\u00020\u00068\nX\u008a\u0084\u0002²\u0006\f\u0010\t\u001a\u00020\b8\nX\u008a\u0084\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/plp/models/viewstates/PLPViewState;", "viewState", "Lcom/vuitton/android/presentation/screen/storemode/models/PLPStoreModeViewState;", "storeModeViewState", "Lcom/vuitton/android/presentation/screen/plp/models/viewstates/PSPViewState;", "pspViewState", "Lcom/vuitton/android/presentation/screen/storemode/filters/model/StoreModePLPFiltersViewState;", "filtersViewState", "Lcom/vuitton/android/presentation/screen/storemode/filters/model/ProductFilterViewState;", "productFiltersViewState", "presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class PSPStoreModeComposableKt {
    /* JADX WARN: Multi-variable type inference failed */
    public static final void a(PSPStoreModeViewModel pSPStoreModeViewModel, LinkedHashMap linkedHashMap, PSPStyle pSPStyle, Function0 function0, Composer composer, int i2) {
        Object pSPStoreModeComposableKt$PSPStoreModeComposable$2$1;
        MutableState mutableState;
        ProductFilterViewModel productFilterViewModel;
        Context context;
        MutableState mutableState2;
        MutableState mutableState3;
        Object yhVar;
        ProductFilterViewModel productFilterViewModel2;
        int i3;
        MutableState mutableState4;
        final int i4;
        int i5;
        int i6;
        final PSPStoreModeViewModel pSPStoreModeViewModel2 = pSPStoreModeViewModel;
        function0.getClass();
        GapComposer gapComposerH = composer.h(-647482604);
        int i7 = i2 | (gapComposerH.K(pSPStoreModeViewModel2) ? 4 : 2) | (gapComposerH.y(linkedHashMap) ? 32 : 16) | (gapComposerH.y(function0) ? 2048 : 1024);
        if (gapComposerH.p(i7 & 1, (i7 & 1171) != 1170)) {
            gapComposerH.y0();
            if ((i2 & 1) != 0 && !gapComposerH.h0()) {
                gapComposerH.D();
            }
            gapComposerH.a0();
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Context context2 = (Context) gapComposerH.k(AndroidCompositionLocals_androidKt.f9936b);
            MutableState mutableStateB = SnapshotStateKt.b(pSPStoreModeViewModel2.getO(), gapComposerH);
            MutableState mutableStateB2 = SnapshotStateKt.b(pSPStoreModeViewModel2.getF64730k(), gapComposerH);
            MutableState mutableStateB3 = SnapshotStateKt.b(pSPStoreModeViewModel2.M0(), gapComposerH);
            MutableState mutableStateB4 = SnapshotStateKt.b(pSPStoreModeViewModel2.getP(), gapComposerH);
            ProductFilterViewModel productFilterViewModel3 = (ProductFilterViewModel) linkedHashMap.get(((PLPStoreModeViewState) mutableStateB2.getF10755b()).f65037a);
            if (productFilterViewModel3 == null) {
                v7.i(((PLPStoreModeViewState) mutableStateB2.getF10755b()).f65037a, "No filter view model found for ");
                return;
            }
            MutableState mutableStateB5 = SnapshotStateKt.b(productFilterViewModel3.o, gapComposerH);
            PLPViewState pLPViewState = (PLPViewState) mutableStateB.getF10755b();
            PSPViewState pSPViewState = (PSPViewState) mutableStateB3.getF10755b();
            PLPStoreModeViewState pLPStoreModeViewState = (PLPStoreModeViewState) mutableStateB2.getF10755b();
            StoreModePLPFiltersViewState storeModePLPFiltersViewState = (StoreModePLPFiltersViewState) mutableStateB4.getF10755b();
            ProductFilterViewState productFilterViewState = (ProductFilterViewState) mutableStateB5.getF10755b();
            SharedFlowImpl sharedFlowImplG = pSPStoreModeViewModel2.g();
            int i8 = (i7 & 14) ^ 6;
            boolean zY = gapComposerH.y(productFilterViewModel3) | ((i8 > 4 && gapComposerH.y(pSPStoreModeViewModel2)) || (i7 & 6) == 4) | gapComposerH.K(mutableStateB5);
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (zY || objX == composer$Companion$Empty$1) {
                objX = new of0(productFilterViewModel3, pSPStoreModeViewModel2, mutableStateB5, 20);
                gapComposerH.q(objX);
            }
            Function0 function1 = (Function0) objX;
            boolean z = (i8 > 4 && gapComposerH.y(pSPStoreModeViewModel2)) || (i7 & 6) == 4;
            Object objX2 = gapComposerH.x();
            if (z || objX2 == composer$Companion$Empty$1) {
                mutableState = mutableStateB4;
                productFilterViewModel = productFilterViewModel3;
                context = context2;
                mutableState2 = mutableStateB2;
                mutableState3 = mutableStateB3;
                pSPStoreModeComposableKt$PSPStoreModeComposable$2$1 = new PSPStoreModeComposableKt$PSPStoreModeComposable$2$1(0, pSPStoreModeViewModel2, PSPStoreModeViewModel.class, "refreshWishlist", "refreshWishlist()V", 0);
                gapComposerH.q(pSPStoreModeComposableKt$PSPStoreModeComposable$2$1);
            } else {
                context = context2;
                pSPStoreModeComposableKt$PSPStoreModeComposable$2$1 = objX2;
                mutableState2 = mutableStateB2;
                mutableState3 = mutableStateB3;
                mutableState = mutableStateB4;
                productFilterViewModel = productFilterViewModel3;
            }
            Function0 function2 = (Function0) ((KFunction) pSPStoreModeComposableKt$PSPStoreModeComposable$2$1);
            int i9 = i7 & 7168;
            boolean z2 = ((i8 > 4 && gapComposerH.y(pSPStoreModeViewModel2)) || (i7 & 6) == 4) | (i9 == 2048);
            Object objX3 = gapComposerH.x();
            if (z2 || objX3 == composer$Companion$Empty$1) {
                objX3 = new rh0(pSPStoreModeViewModel2, function0, 25);
                gapComposerH.q(objX3);
            }
            Function0 function3 = (Function0) objX3;
            ProductFilterViewModel productFilterViewModel4 = productFilterViewModel;
            boolean zY2 = gapComposerH.y(productFilterViewModel4);
            Object objX4 = gapComposerH.x();
            if (zY2 || objX4 == composer$Companion$Empty$1) {
                objX4 = new hl0(productFilterViewModel4, 2);
                gapComposerH.q(objX4);
            }
            Function0 function4 = (Function0) objX4;
            boolean zY3 = gapComposerH.y(context);
            Object objX5 = gapComposerH.x();
            if (zY3 || objX5 == composer$Companion$Empty$1) {
                objX5 = new je(context, 25);
                gapComposerH.q(objX5);
            }
            Function0 function5 = (Function0) objX5;
            MutableState mutableState5 = mutableState2;
            MutableState mutableState6 = mutableState3;
            MutableState mutableState7 = mutableState;
            boolean zK = ((i8 > 4 && gapComposerH.y(pSPStoreModeViewModel2)) || (i7 & 6) == 4) | gapComposerH.K(mutableState5) | gapComposerH.y(productFilterViewModel4) | gapComposerH.K(mutableState6) | gapComposerH.K(mutableState7);
            Object objX6 = gapComposerH.x();
            if (zK || objX6 == composer$Companion$Empty$1) {
                productFilterViewModel2 = productFilterViewModel4;
                i3 = 2048;
                yhVar = new yh(pSPStoreModeViewModel2, productFilterViewModel2, mutableState5, mutableState6, mutableState7, 10);
                pSPStoreModeViewModel2 = pSPStoreModeViewModel2;
                gapComposerH.q(yhVar);
            } else {
                productFilterViewModel2 = productFilterViewModel4;
                yhVar = objX6;
                i3 = 2048;
            }
            Function0 function6 = (Function0) yhVar;
            boolean z3 = (i8 > 4 && gapComposerH.y(pSPStoreModeViewModel2)) || (i7 & 6) == 4;
            Object objX7 = gapComposerH.x();
            if (z3 || objX7 == composer$Companion$Empty$1) {
                mutableState4 = mutableState5;
                PSPStoreModeComposableKt$PSPStoreModeComposable$7$1 pSPStoreModeComposableKt$PSPStoreModeComposable$7$1 = new PSPStoreModeComposableKt$PSPStoreModeComposable$7$1(1, pSPStoreModeViewModel2, PSPStoreModeViewModel.class, "setFilterBottomSheetVisible", "setFilterBottomSheetVisible(Z)V", 0);
                gapComposerH.q(pSPStoreModeComposableKt$PSPStoreModeComposable$7$1);
                objX7 = pSPStoreModeComposableKt$PSPStoreModeComposable$7$1;
            } else {
                mutableState4 = mutableState5;
            }
            Function1 function7 = (Function1) ((KFunction) objX7);
            boolean zY4 = gapComposerH.y(productFilterViewModel2);
            Object objX8 = gapComposerH.x();
            if (zY4 || objX8 == composer$Companion$Empty$1) {
                objX8 = new hl0(productFilterViewModel2, 3);
                gapComposerH.q(objX8);
            }
            Function0 function8 = (Function0) objX8;
            boolean z4 = (i8 > 4 && gapComposerH.y(pSPStoreModeViewModel2)) || (i7 & 6) == 4;
            Object objX9 = gapComposerH.x();
            if (z4 || objX9 == composer$Companion$Empty$1) {
                final int i10 = 1;
                objX9 = new Function1() { // from class: nl0
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        int i11 = i10;
                        PSPStoreModeViewModel pSPStoreModeViewModel3 = pSPStoreModeViewModel2;
                        switch (i11) {
                            case 0:
                                StoreModeContentUiModel storeModeContentUiModel = (StoreModeContentUiModel) obj;
                                storeModeContentUiModel.getClass();
                                if (pSPStoreModeViewModel3.q0()) {
                                    pSPStoreModeViewModel3.Z(storeModeContentUiModel);
                                }
                                break;
                            default:
                                String str = (String) obj;
                                str.getClass();
                                if (pSPStoreModeViewModel3.q0()) {
                                    pSPStoreModeViewModel3.X0(str);
                                }
                                break;
                        }
                        return Unit.f71739a;
                    }
                };
                gapComposerH.q(objX9);
            }
            Function1 function9 = (Function1) objX9;
            boolean zY5 = gapComposerH.y(productFilterViewModel2);
            Object objX10 = gapComposerH.x();
            if (zY5 || objX10 == composer$Companion$Empty$1) {
                objX10 = new il0(productFilterViewModel2, 1);
                gapComposerH.q(objX10);
            }
            Function2 function10 = (Function2) objX10;
            boolean z5 = (i8 > 4 && gapComposerH.y(pSPStoreModeViewModel2)) || (i7 & 6) == 4;
            Object objX11 = gapComposerH.x();
            if (z5 || objX11 == composer$Companion$Empty$1) {
                i4 = 0;
                objX11 = new Function1() { // from class: nl0
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        int i11 = i4;
                        PSPStoreModeViewModel pSPStoreModeViewModel3 = pSPStoreModeViewModel2;
                        switch (i11) {
                            case 0:
                                StoreModeContentUiModel storeModeContentUiModel = (StoreModeContentUiModel) obj;
                                storeModeContentUiModel.getClass();
                                if (pSPStoreModeViewModel3.q0()) {
                                    pSPStoreModeViewModel3.Z(storeModeContentUiModel);
                                }
                                break;
                            default:
                                String str = (String) obj;
                                str.getClass();
                                if (pSPStoreModeViewModel3.q0()) {
                                    pSPStoreModeViewModel3.X0(str);
                                }
                                break;
                        }
                        return Unit.f71739a;
                    }
                };
                gapComposerH.q(objX11);
            } else {
                i4 = 0;
            }
            Function1 function11 = (Function1) objX11;
            int i11 = ((i8 <= 4 || !gapComposerH.y(pSPStoreModeViewModel2)) && (i7 & 6) != 4) ? i4 : 1;
            Object objX12 = gapComposerH.x();
            if (i11 != 0 || objX12 == composer$Companion$Empty$1) {
                i5 = i4;
                PSPStoreModeComposableKt$PSPStoreModeComposable$12$1 pSPStoreModeComposableKt$PSPStoreModeComposable$12$1 = new PSPStoreModeComposableKt$PSPStoreModeComposable$12$1(1, pSPStoreModeViewModel2, PSPStoreModeViewModel.class, "updateWishlist", "updateWishlist(Lcom/vuitton/android/presentation/screen/plp/models/PLPWishlistUpdateUiModel;)V", 0);
                gapComposerH.q(pSPStoreModeComposableKt$PSPStoreModeComposable$12$1);
                objX12 = pSPStoreModeComposableKt$PSPStoreModeComposable$12$1;
            } else {
                i5 = i4;
            }
            Function1 function12 = (Function1) ((KFunction) objX12);
            int i12 = ((i8 <= 4 || !gapComposerH.y(pSPStoreModeViewModel2)) && (i7 & 6) != 4) ? i5 : 1;
            Object objX13 = gapComposerH.x();
            if (i12 != 0 || objX13 == composer$Companion$Empty$1) {
                PSPStoreModeComposableKt$PSPStoreModeComposable$13$1 pSPStoreModeComposableKt$PSPStoreModeComposable$13$1 = new PSPStoreModeComposableKt$PSPStoreModeComposable$13$1(1, pSPStoreModeViewModel2, PSPStoreModeViewModel.class, "onWishlistToggled", "onWishlistToggled(Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel;)V", 0);
                gapComposerH.q(pSPStoreModeComposableKt$PSPStoreModeComposable$13$1);
                objX13 = pSPStoreModeComposableKt$PSPStoreModeComposable$13$1;
            }
            Function1 function13 = (Function1) ((KFunction) objX13);
            int i13 = ((i8 <= 4 || !gapComposerH.y(pSPStoreModeViewModel2)) && (i7 & 6) != 4) ? i5 : 1;
            Object objX14 = gapComposerH.x();
            if (i13 != 0 || objX14 == composer$Companion$Empty$1) {
                PSPStoreModeComposableKt$PSPStoreModeComposable$14$1 pSPStoreModeComposableKt$PSPStoreModeComposable$14$1 = new PSPStoreModeComposableKt$PSPStoreModeComposable$14$1(1, pSPStoreModeViewModel2, PSPStoreModeViewModel.class, "onWishlistAnimationEnd", "onWishlistAnimationEnd(Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel;)V", 0);
                gapComposerH.q(pSPStoreModeComposableKt$PSPStoreModeComposable$14$1);
                objX14 = pSPStoreModeComposableKt$PSPStoreModeComposable$14$1;
            }
            Function1 function14 = (Function1) ((KFunction) objX14);
            boolean z6 = (((((i8 <= 4 || !gapComposerH.y(pSPStoreModeViewModel2)) && (i7 & 6) != 4) ? i5 : 1) | (gapComposerH.K(mutableState4) ? 1 : 0)) == true ? 1 : 0) | (gapComposerH.y(context) ? 1 : 0);
            Object objX15 = gapComposerH.x();
            if (z6 != 0 || objX15 == composer$Companion$Empty$1) {
                objX15 = new gi0(pSPStoreModeViewModel2, context, mutableState4, 7);
                gapComposerH.q(objX15);
            }
            Function2 function15 = (Function2) objX15;
            boolean zY6 = gapComposerH.y(productFilterViewModel2);
            Object objX16 = gapComposerH.x();
            if (zY6 || objX16 == composer$Companion$Empty$1) {
                i6 = 1;
                objX16 = new gl0(productFilterViewModel2, 1);
                gapComposerH.q(objX16);
            } else {
                i6 = 1;
            }
            int i14 = i6;
            int i15 = i5;
            Context context3 = context;
            int i16 = i3;
            PSPStoreModeScreenKt.a(pLPViewState, pSPViewState, pLPStoreModeViewState, storeModePLPFiltersViewState, productFilterViewState, pSPStyle, sharedFlowImplG, function1, function2, function3, function4, function5, function6, function7, function8, function9, function10, function11, function12, function13, function14, function15, (Function5) objX16, gapComposerH, ImageMetadata.EDGE_MODE);
            gapComposerH = gapComposerH;
            SharedFlowImpl f64729j = pSPStoreModeViewModel2.getF64729j();
            int i17 = (gapComposerH.y(context3) ? 1 : 0) | (i9 == i16 ? i14 : i15);
            Object objX17 = gapComposerH.x();
            if (i17 != 0 || objX17 == composer$Companion$Empty$1) {
                objX17 = new ol0(function0, context3);
                gapComposerH.q(objX17);
            }
            PLPStoreModeLeaveScreenKt.a(f64729j, (Function0) objX17, gapComposerH, i15);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new uv((Object) pSPStoreModeViewModel2, (Object) linkedHashMap, (Object) pSPStyle, function0, i2, 24);
        }
    }
}
