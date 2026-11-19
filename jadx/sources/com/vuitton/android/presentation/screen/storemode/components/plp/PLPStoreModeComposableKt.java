package com.vuitton.android.presentation.screen.storemode.components.plp;

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
import com.vuitton.android.presentation.screen.plp.models.viewstates.PLPViewState;
import com.vuitton.android.presentation.screen.storemode.PLPStoreModeViewModel;
import com.vuitton.android.presentation.screen.storemode.filters.ProductFilterViewModel;
import com.vuitton.android.presentation.screen.storemode.filters.model.ProductFilterViewState;
import com.vuitton.android.presentation.screen.storemode.filters.model.StoreModePLPFiltersViewState;
import com.vuitton.android.presentation.screen.storemode.models.PLPStoreModeViewState;
import defpackage.gl0;
import defpackage.hl0;
import defpackage.il0;
import defpackage.je;
import defpackage.kj0;
import defpackage.oi0;
import defpackage.r0;
import defpackage.rh0;
import defpackage.tb0;
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
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002¨\u0006\b²\u0006\f\u0010\u0001\u001a\u00020\u00008\nX\u008a\u0084\u0002²\u0006\f\u0010\u0003\u001a\u00020\u00028\nX\u008a\u0084\u0002²\u0006\f\u0010\u0005\u001a\u00020\u00048\nX\u008a\u0084\u0002²\u0006\f\u0010\u0007\u001a\u00020\u00068\nX\u008a\u0084\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/plp/models/viewstates/PLPViewState;", "plpViewState", "Lcom/vuitton/android/presentation/screen/storemode/models/PLPStoreModeViewState;", "storeModeViewState", "Lcom/vuitton/android/presentation/screen/storemode/filters/model/StoreModePLPFiltersViewState;", "filtersViewState", "Lcom/vuitton/android/presentation/screen/storemode/filters/model/ProductFilterViewState;", "productFiltersViewState", "presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class PLPStoreModeComposableKt {
    public static final void a(PLPStoreModeViewModel pLPStoreModeViewModel, LinkedHashMap linkedHashMap, String str, Function0 function0, Composer composer, int i2) {
        int i3;
        GapComposer gapComposer;
        Object r0Var;
        String str2;
        Composer$Companion$Empty$1 composer$Companion$Empty$1;
        Function0 function1;
        ProductFilterViewModel productFilterViewModel;
        String str3;
        String str4;
        ProductFilterViewModel productFilterViewModel2;
        MutableState mutableState;
        boolean z;
        String str5;
        Context context;
        int i4;
        PLPStoreModeViewModel pLPStoreModeViewModel2 = pLPStoreModeViewModel;
        pLPStoreModeViewModel2.getClass();
        GapComposer gapComposerH = composer.h(1321577358);
        if ((i2 & 6) == 0) {
            i3 = ((i2 & 8) == 0 ? gapComposerH.K(pLPStoreModeViewModel2) : gapComposerH.y(pLPStoreModeViewModel2) ? 4 : 2) | i2;
        } else {
            i3 = i2;
        }
        if ((i2 & 48) == 0) {
            i3 |= gapComposerH.y(linkedHashMap) ? 32 : 16;
        }
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i3 |= gapComposerH.K(str) ? 256 : 128;
        }
        if ((i2 & 3072) == 0) {
            i3 |= gapComposerH.y(function0) ? 2048 : 1024;
        }
        int i5 = i3;
        if (gapComposerH.p(i5 & 1, (i5 & 1171) != 1170)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Context context2 = (Context) gapComposerH.k(AndroidCompositionLocals_androidKt.f9936b);
            MutableState mutableStateB = SnapshotStateKt.b(pLPStoreModeViewModel2.getS(), gapComposerH);
            MutableState mutableStateB2 = SnapshotStateKt.b(pLPStoreModeViewModel2.getO(), gapComposerH);
            MutableState mutableStateB3 = SnapshotStateKt.b(pLPStoreModeViewModel2.getT(), gapComposerH);
            ProductFilterViewModel productFilterViewModel3 = (ProductFilterViewModel) linkedHashMap.get(((PLPStoreModeViewState) mutableStateB2.getF10755b()).f65037a);
            if (productFilterViewModel3 == null) {
                v7.i(((PLPStoreModeViewState) mutableStateB2.getF10755b()).f65037a, "No filter view model found for ");
                return;
            }
            MutableState mutableStateB4 = SnapshotStateKt.b(productFilterViewModel3.o, gapComposerH);
            String str6 = ((PLPViewState) mutableStateB.getF10755b()).f63006b;
            if (str6 == null) {
                str6 = "";
            }
            Unit unit = Unit.f71739a;
            boolean zY = gapComposerH.y(productFilterViewModel3) | gapComposerH.K(mutableStateB3);
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$2 = Composer.Companion.f7939a;
            if (zY || objX == composer$Companion$Empty$2) {
                objX = new PLPStoreModeComposableKt$PLPStoreModeComposable$1$1(productFilterViewModel3, mutableStateB3, null);
                gapComposerH.q(objX);
            }
            EffectsKt.e(gapComposerH, unit, (Function2) objX);
            String str7 = ((PLPViewState) mutableStateB.getF10755b()).f63006b;
            int i6 = i5 & 14;
            boolean z2 = i6 == 4 || ((i5 & 8) != 0 && gapComposerH.y(pLPStoreModeViewModel2));
            Object objX2 = gapComposerH.x();
            if (z2 || objX2 == composer$Companion$Empty$2) {
                objX2 = new PLPStoreModeComposableKt$PLPStoreModeComposable$2$1(pLPStoreModeViewModel2, null);
                gapComposerH.q(objX2);
            }
            EffectsKt.e(gapComposerH, str7, (Function2) objX2);
            PLPViewState pLPViewState = (PLPViewState) mutableStateB.getF10755b();
            PLPStoreModeViewState pLPStoreModeViewState = (PLPStoreModeViewState) mutableStateB2.getF10755b();
            StoreModePLPFiltersViewState storeModePLPFiltersViewState = (StoreModePLPFiltersViewState) mutableStateB3.getF10755b();
            ProductFilterViewState productFilterViewState = (ProductFilterViewState) mutableStateB4.getF10755b();
            SharedFlowImpl sharedFlowImplG = pLPStoreModeViewModel2.g();
            boolean zY2 = gapComposerH.y(productFilterViewModel3) | gapComposerH.K(str6) | (i6 == 4 || ((i5 & 8) != 0 && gapComposerH.y(pLPStoreModeViewModel2))) | gapComposerH.K(mutableStateB4);
            Object objX3 = gapComposerH.x();
            if (zY2 || objX3 == composer$Companion$Empty$2) {
                String str8 = str6;
                r0Var = new r0(productFilterViewModel3, str8, pLPStoreModeViewModel2, mutableStateB4, 20);
                str2 = str8;
                pLPStoreModeViewModel2 = pLPStoreModeViewModel2;
                gapComposerH.q(r0Var);
            } else {
                r0Var = objX3;
                str2 = str6;
            }
            Function0 function2 = (Function0) r0Var;
            boolean z3 = i6 == 4 || ((i5 & 8) != 0 && gapComposerH.y(pLPStoreModeViewModel2));
            Object objX4 = gapComposerH.x();
            if (z3 || objX4 == composer$Companion$Empty$2) {
                composer$Companion$Empty$1 = composer$Companion$Empty$2;
                function1 = null;
                productFilterViewModel = productFilterViewModel3;
                str3 = str2;
                PLPStoreModeComposableKt$PLPStoreModeComposable$4$1 pLPStoreModeComposableKt$PLPStoreModeComposable$4$1 = new PLPStoreModeComposableKt$PLPStoreModeComposable$4$1(0, pLPStoreModeViewModel2, PLPStoreModeViewModel.class, "refreshWishlist", "refreshWishlist()V", 0);
                gapComposerH.q(pLPStoreModeComposableKt$PLPStoreModeComposable$4$1);
                objX4 = pLPStoreModeComposableKt$PLPStoreModeComposable$4$1;
            } else {
                composer$Companion$Empty$1 = composer$Companion$Empty$2;
                function1 = null;
                productFilterViewModel = productFilterViewModel3;
                str3 = str2;
            }
            Function0 function3 = (Function0) ((KFunction) objX4);
            boolean zY3 = gapComposerH.y(productFilterViewModel);
            Object objX5 = gapComposerH.x();
            if (zY3 || objX5 == composer$Companion$Empty$1) {
                objX5 = new hl0(productFilterViewModel, 0);
                gapComposerH.q(objX5);
            }
            Function0 function4 = (Function0) objX5;
            boolean zY4 = gapComposerH.y(r19);
            Object objX6 = gapComposerH.x();
            if (zY4 || objX6 == composer$Companion$Empty$1) {
                objX6 = new je(r19, 23);
                gapComposerH.q(objX6);
            }
            Function0 function5 = (Function0) objX6;
            boolean zK = (i6 == 4 || ((i5 & 8) != 0 && gapComposerH.y(pLPStoreModeViewModel2))) | gapComposerH.K(mutableStateB2) | gapComposerH.y(productFilterViewModel) | gapComposerH.K(str3) | gapComposerH.K(mutableStateB3);
            Object objX7 = gapComposerH.x();
            if (zK || objX7 == composer$Companion$Empty$1) {
                PLPStoreModeViewModel pLPStoreModeViewModel3 = pLPStoreModeViewModel2;
                ProductFilterViewModel productFilterViewModel4 = productFilterViewModel;
                str4 = str3;
                yh yhVar = new yh(pLPStoreModeViewModel3, productFilterViewModel4, str4, mutableStateB2, mutableStateB3, 9);
                productFilterViewModel2 = productFilterViewModel4;
                mutableState = mutableStateB2;
                pLPStoreModeViewModel2 = pLPStoreModeViewModel3;
                gapComposerH.q(yhVar);
                objX7 = yhVar;
            } else {
                str4 = str3;
                productFilterViewModel2 = productFilterViewModel;
                mutableState = mutableStateB2;
            }
            Function0 function6 = (Function0) objX7;
            if (function0 == null) {
                gapComposerH.L(-851379499);
                gapComposerH.Z(false);
            } else {
                gapComposerH.L(-851379498);
                boolean zK2 = (i6 == 4 || ((i5 & 8) != 0 && gapComposerH.y(pLPStoreModeViewModel2))) | gapComposerH.K(function0);
                Object objX8 = gapComposerH.x();
                if (zK2 || objX8 == composer$Companion$Empty$1) {
                    objX8 = new rh0(pLPStoreModeViewModel2, function0, 22);
                    gapComposerH.q(objX8);
                }
                gapComposerH.Z(false);
                function1 = (Function0) objX8;
            }
            boolean zY5 = gapComposerH.y(productFilterViewModel2);
            Object objX9 = gapComposerH.x();
            if (zY5 || objX9 == composer$Companion$Empty$1) {
                z = true;
                objX9 = new hl0(productFilterViewModel2, 1);
                gapComposerH.q(objX9);
            } else {
                z = true;
            }
            Function0 function7 = (Function0) objX9;
            boolean z4 = (i6 == 4 || ((i5 & 8) != 0 && gapComposerH.y(pLPStoreModeViewModel2))) ? z : false;
            Object objX10 = gapComposerH.x();
            if (z4 || objX10 == composer$Companion$Empty$1) {
                str5 = str4;
                PLPStoreModeComposableKt$PLPStoreModeComposable$10$1 pLPStoreModeComposableKt$PLPStoreModeComposable$10$1 = new PLPStoreModeComposableKt$PLPStoreModeComposable$10$1(1, pLPStoreModeViewModel2, PLPStoreModeViewModel.class, "onWishlistToggled", "onWishlistToggled(Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel;)V", 0);
                gapComposerH.q(pLPStoreModeComposableKt$PLPStoreModeComposable$10$1);
                objX10 = pLPStoreModeComposableKt$PLPStoreModeComposable$10$1;
            } else {
                str5 = str4;
            }
            Function1 function8 = (Function1) ((KFunction) objX10);
            boolean zY6 = gapComposerH.y(productFilterViewModel2);
            Object objX11 = gapComposerH.x();
            if (zY6 || objX11 == composer$Companion$Empty$1) {
                objX11 = new il0(productFilterViewModel2, 0);
                gapComposerH.q(objX11);
            }
            Function2 function9 = (Function2) objX11;
            boolean z5 = (i6 == 4 || ((i5 & 8) != 0 && gapComposerH.y(pLPStoreModeViewModel2))) ? z : false;
            Object objX12 = gapComposerH.x();
            if (z5 || objX12 == composer$Companion$Empty$1) {
                objX12 = new tb0(pLPStoreModeViewModel2, 23);
                gapComposerH.q(objX12);
            }
            Function1 function10 = (Function1) objX12;
            boolean z6 = (i6 == 4 || ((i5 & 8) != 0 && gapComposerH.y(pLPStoreModeViewModel2))) ? z : false;
            Object objX13 = gapComposerH.x();
            if (z6 || objX13 == composer$Companion$Empty$1) {
                PLPStoreModeComposableKt$PLPStoreModeComposable$13$1 pLPStoreModeComposableKt$PLPStoreModeComposable$13$1 = new PLPStoreModeComposableKt$PLPStoreModeComposable$13$1(1, pLPStoreModeViewModel2, PLPStoreModeViewModel.class, "onWishlistAnimationEnd", "onWishlistAnimationEnd(Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel;)V", 0);
                gapComposerH.q(pLPStoreModeComposableKt$PLPStoreModeComposable$13$1);
                objX13 = pLPStoreModeComposableKt$PLPStoreModeComposable$13$1;
            }
            Function1 function11 = (Function1) ((KFunction) objX13);
            boolean z7 = (i6 == 4 || ((i5 & 8) != 0 && gapComposerH.y(pLPStoreModeViewModel2))) ? z : false;
            Object objX14 = gapComposerH.x();
            if (z7 || objX14 == composer$Companion$Empty$1) {
                PLPStoreModeComposableKt$PLPStoreModeComposable$14$1 pLPStoreModeComposableKt$PLPStoreModeComposable$14$1 = new PLPStoreModeComposableKt$PLPStoreModeComposable$14$1(1, pLPStoreModeViewModel2, PLPStoreModeViewModel.class, "updateWishlist", "updateWishlist(Lcom/vuitton/android/presentation/screen/plp/models/PLPWishlistUpdateUiModel;)V", 0);
                gapComposerH.q(pLPStoreModeComposableKt$PLPStoreModeComposable$14$1);
                objX14 = pLPStoreModeComposableKt$PLPStoreModeComposable$14$1;
            }
            Function1 function12 = (Function1) ((KFunction) objX14);
            if (i6 != 4 && ((i5 & 8) == 0 || !gapComposerH.y(pLPStoreModeViewModel2))) {
                z = false;
            }
            String str9 = str5;
            boolean zK3 = z | gapComposerH.K(mutableState) | gapComposerH.y(r19) | gapComposerH.K(r20) | gapComposerH.K(str9);
            Object objX15 = gapComposerH.x();
            if (zK3 || objX15 == composer$Companion$Empty$1) {
                PLPStoreModeViewModel pLPStoreModeViewModel4 = pLPStoreModeViewModel2;
                context = r19;
                kj0 kj0Var = new kj0(pLPStoreModeViewModel4, context, str9, mutableState, mutableStateB, 5);
                gapComposerH.q(kj0Var);
                objX15 = kj0Var;
            } else {
                context = context2;
            }
            Function2 function13 = (Function2) objX15;
            boolean zY7 = gapComposerH.y(productFilterViewModel2);
            Object objX16 = gapComposerH.x();
            if (zY7 || objX16 == composer$Companion$Empty$1) {
                i4 = 0;
                objX16 = new gl0(productFilterViewModel2, 0);
                gapComposerH.q(objX16);
            } else {
                i4 = 0;
            }
            Composer$Companion$Empty$1 composer$Companion$Empty$3 = composer$Companion$Empty$1;
            PLPStoreModeScreenKt.a(pLPViewState, pLPStoreModeViewState, storeModePLPFiltersViewState, productFilterViewState, str, sharedFlowImplG, function2, function3, function4, function5, function6, function1, function7, function8, function9, function10, function11, function12, function13, (Function5) objX16, gapComposerH, (i5 << 6) & 57344);
            gapComposer = gapComposerH;
            SharedFlowImpl f64694k = pLPStoreModeViewModel.getF64694k();
            boolean zY8 = gapComposer.y(context);
            Object objX17 = gapComposer.x();
            if (zY8 || objX17 == composer$Companion$Empty$3) {
                objX17 = new je(context, 22);
                gapComposer.q(objX17);
            }
            PLPStoreModeLeaveScreenKt.a(f64694k, (Function0) objX17, gapComposer, i4);
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new oi0(pLPStoreModeViewModel, linkedHashMap, str, function0, i2, 4);
        }
    }
}
