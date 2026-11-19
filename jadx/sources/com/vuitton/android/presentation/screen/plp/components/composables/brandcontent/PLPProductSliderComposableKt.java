package com.vuitton.android.presentation.screen.plp.components.composables.brandcontent;

import android.content.Context;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.Arrangement$Start$1;
import androidx.compose.foundation.layout.Arrangement$Top$1;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowMeasurePolicy;
import androidx.compose.foundation.layout.RowScopeInstance;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.layout.SpacerKt;
import androidx.compose.material3.TextKt;
import androidx.compose.runtime.Applier;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.BiasAlignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.compose.ui.text.style.TextOverflow;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.R;
import com.vuitton.android.designkit.components.components.LVFreeCarouselWithHintKt;
import com.vuitton.android.designkit.ui.common.ModifierExtKt;
import com.vuitton.android.designkit.ui.theme.IconSize;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.presentation.extensions.ContextExtKt;
import com.vuitton.android.presentation.helper.PluralStringResourceHelperKt;
import com.vuitton.android.presentation.model.common.AssetImageUiModel;
import com.vuitton.android.presentation.model.common.AssetUiModel;
import com.vuitton.android.presentation.screen.plp.components.subcomponents.WishlistAnimationKt;
import com.vuitton.android.presentation.screen.plp.models.plp.PlpSectionUiModel;
import com.vuitton.android.presentation.screen.plp.models.productshortlist.PlpProductUiModel;
import com.vuitton.android.presentation.screen.plp.models.productshortlist.ProductShortPriceUiModel;
import com.vuitton.android.presentation.utils.UrlFactory;
import defpackage.a;
import defpackage.cj;
import defpackage.e1;
import defpackage.kj0;
import defpackage.n00;
import defpackage.o60;
import defpackage.ok0;
import defpackage.rh0;
import defpackage.tr;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class PLPProductSliderComposableKt {
    public static final void a(Modifier modifier, PlpSectionUiModel.ProductSlider productSlider, Function1 function1, Function1 function2, Function1 function3, Composer composer, int i2) {
        Modifier modifier2;
        boolean z;
        boolean z2;
        int i3;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = a.e(modifierE, "PLPProductSliderComposable");
        }
        function1.getClass();
        function2.getClass();
        function3.getClass();
        GapComposer gapComposerH = composer.h(900264585);
        Applier applier = gapComposerH.f7976a;
        int i4 = i2 | 6 | (gapComposerH.y(productSlider) ? 32 : 16) | (gapComposerH.y(function1) ? 256 : 128) | (gapComposerH.y(function2) ? 2048 : 1024) | (gapComposerH.y(function3) ? 16384 : 8192);
        if (gapComposerH.p(i4 & 1, (i4 & 9363) != 9362)) {
            DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier("PLPProductSliderComposable");
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            PlpProductUiModel plpProductUiModel = productSlider.f62931b;
            MutableState mutableState = plpProductUiModel.f62934a;
            ProductShortPriceUiModel productShortPriceUiModel = plpProductUiModel.d;
            List list = plpProductUiModel.f62936c;
            PlpProductUiModel.SkuDataUiModel skuDataUiModel = (PlpProductUiModel.SkuDataUiModel) mutableState.getF10755b();
            MutableState mutableState2 = skuDataUiModel.f62948h;
            PlpProductUiModel.SkuDataUiModel.PLPWishlistStateUiModel pLPWishlistStateUiModel = mutableState2 != null ? (PlpProductUiModel.SkuDataUiModel.PLPWishlistStateUiModel) mutableState2.getF10755b() : null;
            boolean zK = gapComposerH.K(skuDataUiModel);
            List listX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (zK || listX == composer$Companion$Empty$1) {
                List list2 = skuDataUiModel.f62947f;
                ArrayList arrayList = new ArrayList();
                Iterator it = list2.iterator();
                while (it.hasNext()) {
                    AssetImageUiModel assetImageUiModel = ((AssetUiModel) it.next()).f51780b;
                    if (assetImageUiModel != null) {
                        arrayList.add(assetImageUiModel);
                    }
                }
                boolean zIsEmpty = arrayList.isEmpty();
                List listQ = arrayList;
                if (zIsEmpty) {
                    listQ = CollectionsKt.Q(skuDataUiModel.f62946e.f51780b);
                }
                listX = listQ;
                gapComposerH.q(listX);
            }
            List list3 = (List) listX;
            Context context = (Context) gapComposerH.k(AndroidCompositionLocals_androidKt.f9936b);
            boolean zK2 = gapComposerH.K(context);
            Object objX = gapComposerH.x();
            if (zK2 || objX == composer$Companion$Empty$1) {
                objX = new UrlFactory(ContextExtKt.f(context));
                gapComposerH.q(objX);
            }
            UrlFactory urlFactory = (UrlFactory) objX;
            Modifier modifierK = PaddingKt.k(dTFunctionNameModifier, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48417f, 1);
            boolean zY = ((i4 & 896) == 256) | gapComposerH.y(productSlider);
            Object objX2 = gapComposerH.x();
            if (zY || objX2 == composer$Companion$Empty$1) {
                objX2 = new rh0(function1, productSlider, 19);
                gapComposerH.q(objX2);
            }
            Modifier modifierE2 = ModifierExtKt.e(ModifierExtKt.c(modifierK, false, null, null, (Function0) objX2, 31), "productCarousel_container_view");
            Arrangement$Top$1 arrangement$Top$1 = Arrangement.f4920c;
            Alignment.f8582a.getClass();
            ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(arrangement$Top$1, Alignment.Companion.n, gapComposerH, 0);
            OpaqueKey opaqueKey2 = ComposerKt.f7940a;
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierE2);
            ComposeUiNode.b0.getClass();
            Function0 function0 = ComposeUiNode.Companion.f9641b;
            if (applier == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function0);
            } else {
                gapComposerH.o();
            }
            Function2 function4 = ComposeUiNode.Companion.f9644f;
            Updater.c(gapComposerH, columnMeasurePolicyA, function4);
            Function2 function5 = ComposeUiNode.Companion.f9643e;
            Updater.c(gapComposerH, persistentCompositionLocalMapU, function5);
            Integer numValueOf = Integer.valueOf(iHashCode);
            Function2 function6 = ComposeUiNode.Companion.g;
            Updater.c(gapComposerH, numValueOf, function6);
            Function1 function7 = ComposeUiNode.Companion.f9645h;
            Updater.b(gapComposerH, function7);
            Function2 function8 = ComposeUiNode.Companion.d;
            Updater.c(gapComposerH, modifierC, function8);
            LVFreeCarouselWithHintKt.a(null, null, list3, 1, 0.4f, LVAppDesignKitTheme.d(gapComposerH).d, LVAppDesignKitTheme.l(gapComposerH).f48415c, ComposableLambdaKt.b(1529008031, new e1(urlFactory, 3), gapComposerH), gapComposerH, 12610560, 3);
            Modifier modifierM = PaddingKt.m(tr.d("PLPProductSliderComposable", 1.0f), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).d, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13);
            BiasAlignment.Vertical vertical = Alignment.Companion.l;
            Arrangement$Start$1 arrangement$Start$1 = Arrangement.f4918a;
            RowMeasurePolicy rowMeasurePolicyA = RowKt.a(arrangement$Start$1, vertical, gapComposerH, 48);
            int iHashCode2 = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU2 = gapComposerH.U();
            Modifier modifierC2 = ComposedModifierKt.c(gapComposerH, modifierM);
            if (applier == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function0);
            } else {
                gapComposerH.o();
            }
            Updater.c(gapComposerH, rowMeasurePolicyA, function4);
            Updater.c(gapComposerH, persistentCompositionLocalMapU2, function5);
            cj.t(iHashCode2, gapComposerH, function6, gapComposerH, function7);
            Updater.c(gapComposerH, modifierC2, function8);
            RowScopeInstance rowScopeInstance = RowScopeInstance.f5040a;
            Modifier modifierE3 = ModifierExtKt.e(PaddingKt.m(cj.b("PLPProductSliderComposable", rowScopeInstance, 1.0f, true), LVAppDesignKitTheme.l(gapComposerH).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).d, Call.Parameters.DEFAULT_CAMERA_ZOOM, 10), "productCarousel_productName_text");
            String str = skuDataUiModel.d;
            TextOverflow.f10989a.getClass();
            TextKt.c(str, modifierE3, LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k, 0L, null, 0L, null, null, 0L, TextOverflow.f10991c, false, 1, 0, null, LVAppDesignKitTheme.n(gapComposerH).l, gapComposerH, 0, 24960, 110584);
            gapComposerH = gapComposerH;
            if (pLPWishlistStateUiModel != null) {
                Modifier modifierO = SizeKt.o(PaddingKt.m(n00.i(gapComposerH, 69670285, "PLPProductSliderComposable"), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, 11), IconSize.f48348b);
                boolean zY2 = gapComposerH.y(plpProductUiModel) | ((i4 & 7168) == 2048);
                Object objX3 = gapComposerH.x();
                if (zY2 || objX3 == composer$Companion$Empty$1) {
                    objX3 = new ok0(function2, plpProductUiModel, 1);
                    gapComposerH.q(objX3);
                }
                WishlistAnimationKt.b(modifierO, plpProductUiModel, pLPWishlistStateUiModel, 0, 0, (Function0) objX3, function3, gapComposerH, (i4 << 6) & 3670016, 24);
                z = false;
                gapComposerH.Z(false);
            } else {
                z = false;
                gapComposerH.L(70118111);
                gapComposerH.Z(false);
            }
            Modifier modifierM2 = PaddingKt.m(o60.d(gapComposerH, true, "PLPProductSliderComposable", 1.0f), LVAppDesignKitTheme.l(gapComposerH).f48416e, LVAppDesignKitTheme.l(gapComposerH).f48415c, LVAppDesignKitTheme.l(gapComposerH).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, 8);
            RowMeasurePolicy rowMeasurePolicyA2 = RowKt.a(arrangement$Start$1, vertical, gapComposerH, 48);
            int iHashCode3 = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU3 = gapComposerH.U();
            Modifier modifierC3 = ComposedModifierKt.c(gapComposerH, modifierM2);
            if (applier == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function0);
            } else {
                gapComposerH.o();
            }
            Updater.c(gapComposerH, rowMeasurePolicyA2, function4);
            Updater.c(gapComposerH, persistentCompositionLocalMapU3, function5);
            cj.t(iHashCode3, gapComposerH, function6, gapComposerH, function7);
            Updater.c(gapComposerH, modifierC3, function8);
            if (productShortPriceUiModel != null) {
                z2 = z;
                TextKt.c(productShortPriceUiModel.f62982b, ModifierExtKt.e(rowScopeInstance.a(n00.i(gapComposerH, 655075483, "PLPProductSliderComposable"), 1.0f, true), "productCarousel_productPrice_text"), LVAppDesignKitTheme.c(gapComposerH).f48361b.l, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).l, gapComposerH, 0, 0, 131064);
                gapComposerH = gapComposerH;
                gapComposerH.Z(z2);
                i3 = 1;
            } else {
                z2 = z;
                i3 = 1;
                SpacerKt.a(gapComposerH, rowScopeInstance.a(n00.i(gapComposerH, 655479010, "PLPProductSliderComposable"), 1.0f, true));
                gapComposerH.Z(z2);
            }
            if (list.size() > i3) {
                gapComposerH.L(655622323);
                GapComposer gapComposer = gapComposerH;
                TextKt.c(PluralStringResourceHelperKt.a(R.plurals.colors_number, list.size(), new Object[]{Integer.valueOf(list.size())}, gapComposerH), null, LVAppDesignKitTheme.c(gapComposerH).f48361b.l, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).l, gapComposer, 0, 0, 131066);
                gapComposerH = gapComposer;
                gapComposerH.Z(z2);
            } else {
                gapComposerH.L(656025416);
                gapComposerH.Z(z2);
            }
            gapComposerH.Z(true);
            gapComposerH.Z(true);
            modifier2 = dTFunctionNameModifier;
        } else {
            gapComposerH.D();
            modifier2 = modifierE;
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new kj0(modifier2, (PlpSectionUiModel) productSlider, function1, function2, function3, i2, 4);
        }
    }
}
