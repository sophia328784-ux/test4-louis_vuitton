package com.vuitton.android.presentation.screen.catalog.thematicplp.components;

import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.ImageKt;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.Arrangement$Center$1;
import androidx.compose.foundation.layout.AspectRatioKt;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScopeInstance;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.runtime.Applier;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.BiasAlignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.ClipKt;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.RectangleShapeKt;
import androidx.compose.ui.graphics.RectangleShapeKt$RectangleShape$1;
import androidx.compose.ui.hapticfeedback.HapticFeedback;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.res.PainterResources_androidKt;
import androidx.compose.ui.res.StringResources_androidKt;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import com.airbnb.lottie.compose.AnimateLottieCompositionAsStateKt;
import com.airbnb.lottie.compose.LottieAnimationKt;
import com.airbnb.lottie.compose.LottieCompositionResultImpl;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.google.ar.core.ImageMetadata;
import com.vuitton.android.R;
import com.vuitton.android.designkit.components.ModifierExtKt;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.presentation.imageloading.compose.ImageLoaderKt;
import com.vuitton.android.presentation.model.common.AssetImageUiModel;
import com.vuitton.android.presentation.screen.catalog.thematicplp.models.ThemeItemUiModel;
import com.vuitton.android.presentation.screen.plp.models.productshortlist.ProductShortPriceUiModel;
import com.vuitton.android.presentation.screen.plp.models.productshortlist.ProductShortUiModel;
import defpackage.cj;
import defpackage.hg;
import defpackage.kr0;
import defpackage.n00;
import defpackage.tr;
import defpackage.u3;
import defpackage.yn0;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0002¨\u0006\u0004²\u0006\u000e\u0010\u0001\u001a\u0004\u0018\u00010\u00008\nX\u008a\u0084\u0002²\u0006\f\u0010\u0003\u001a\u00020\u00028\nX\u008a\u0084\u0002"}, d2 = {"Lcom/airbnb/lottie/LottieComposition;", "composition", "", "progress", "presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class RegularGridItemKt {
    public static final void a(Modifier modifier, ThemeItemUiModel themeItemUiModel, boolean z, Function2 function2, Function2 function3, Function2 function4, Composer composer, int i2) {
        Modifier modifierE = modifier;
        Function2 function5 = function3;
        if (modifierE != null) {
            modifierE = defpackage.a.e(modifierE, "RegularGridItem");
        }
        themeItemUiModel.getClass();
        ProductShortUiModel productShortUiModel = themeItemUiModel.f55432a;
        function2.getClass();
        function5.getClass();
        function4.getClass();
        GapComposer gapComposerH = composer.h(-1585123897);
        Applier applier = gapComposerH.f7976a;
        int i3 = i2 | (gapComposerH.K(modifierE) ? 4 : 2) | (gapComposerH.y(themeItemUiModel) ? 32 : 16) | (gapComposerH.b(z) ? 256 : 128) | (gapComposerH.y(function2) ? 2048 : 1024) | (gapComposerH.y(function5) ? 16384 : 8192) | (gapComposerH.y(function4) ? 131072 : 65536);
        if (gapComposerH.p(i3 & 1, (i3 & 74899) != 74898)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            HapticFeedback hapticFeedback = (HapticFeedback) gapComposerH.k(CompositionLocalsKt.l);
            String str = productShortUiModel.f62985b;
            ProductShortPriceUiModel productShortPriceUiModel = productShortUiModel.o;
            String str2 = productShortPriceUiModel != null ? productShortPriceUiModel.f62982b : null;
            if (str2 == null) {
                str2 = "";
            }
            boolean zK = gapComposerH.K(str) | gapComposerH.K(str2);
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (zK || objX == composer$Companion$Empty$1) {
                objX = new u3(str, str2, 3);
                gapComposerH.q(objX);
            }
            Modifier modifierA = ClipKt.a(SemanticsModifierKt.b(modifierE, true, (Function1) objX), LVAppDesignKitTheme.j(gapComposerH).f48411c);
            Color.f8866b.getClass();
            long j2 = Color.f8868e;
            RectangleShapeKt$RectangleShape$1 rectangleShapeKt$RectangleShape$1 = RectangleShapeKt.f8913a;
            Modifier modifierB = ModifierExtKt.b(PaddingKt.i(BackgroundKt.b(modifierA, j2, rectangleShapeKt$RectangleShape$1), LVAppDesignKitTheme.l(gapComposerH).f48416e), !z, new a(z, function4, themeItemUiModel, function2), gapComposerH, 0);
            Alignment.f8582a.getClass();
            MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierB);
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
            Function2 function6 = ComposeUiNode.Companion.f9644f;
            Updater.c(gapComposerH, measurePolicyD, function6);
            Function2 function7 = ComposeUiNode.Companion.f9643e;
            Updater.c(gapComposerH, persistentCompositionLocalMapU, function7);
            Integer numValueOf = Integer.valueOf(iHashCode);
            Function2 function8 = ComposeUiNode.Companion.g;
            Updater.c(gapComposerH, numValueOf, function8);
            Function1 function1 = ComposeUiNode.Companion.f9645h;
            Updater.b(gapComposerH, function1);
            Function2 function9 = ComposeUiNode.Companion.d;
            Updater.c(gapComposerH, modifierC, function9);
            Arrangement$Center$1 arrangement$Center$1 = Arrangement.f4921e;
            BiasAlignment.Horizontal horizontal = Alignment.Companion.o;
            DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier("RegularGridItem");
            ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(arrangement$Center$1, horizontal, gapComposerH, 54);
            int iHashCode2 = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU2 = gapComposerH.U();
            Modifier modifierC2 = ComposedModifierKt.c(gapComposerH, dTFunctionNameModifier);
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
            Updater.c(gapComposerH, columnMeasurePolicyA, function6);
            Updater.c(gapComposerH, persistentCompositionLocalMapU2, function7);
            cj.t(iHashCode2, gapComposerH, function8, gapComposerH, function1);
            Modifier modifierB2 = BackgroundKt.b(AspectRatioKt.a(n00.e(gapComposerH, modifierC2, function9, "RegularGridItem", 1.0f), 1.0f, false), LVAppDesignKitTheme.c(gapComposerH).f48361b.f48374a, rectangleShapeKt$RectangleShape$1);
            MeasurePolicy measurePolicyD2 = BoxKt.d(Alignment.Companion.f8587f, false);
            int iHashCode3 = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU3 = gapComposerH.U();
            Modifier modifierC3 = ComposedModifierKt.c(gapComposerH, modifierB2);
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
            Updater.c(gapComposerH, measurePolicyD2, function6);
            Updater.c(gapComposerH, persistentCompositionLocalMapU3, function7);
            cj.t(iHashCode3, gapComposerH, function8, gapComposerH, function1);
            Modifier modifierE2 = com.vuitton.android.designkit.ui.common.ModifierExtKt.e(n00.e(gapComposerH, modifierC3, function9, "RegularGridItem", 1.0f), "thematicPlp_product_image");
            AssetImageUiModel assetImageUiModel = productShortUiModel.f62986c.f51780b;
            String str3 = assetImageUiModel != null ? assetImageUiModel.f51778b : null;
            ImageLoaderKt.b(modifierE2, str3 == null ? "" : str3, null, null, null, 0, false, null, null, null, gapComposerH, 24576, 2028);
            gapComposerH = gapComposerH;
            gapComposerH.Z(true);
            gapComposerH.Z(true);
            if (themeItemUiModel.d) {
                Modifier modifierO = SizeKt.o(BoxScopeInstance.f4938a.g(n00.i(gapComposerH, -1231523170, "RegularGridItem"), Alignment.Companion.d), LVAppDesignKitTheme.d(gapComposerH).m);
                Object objX2 = gapComposerH.x();
                if (objX2 == composer$Companion$Empty$1) {
                    objX2 = new yn0(26);
                    gapComposerH.q(objX2);
                }
                Modifier modifierB3 = SemanticsModifierKt.b(modifierO, false, (Function1) objX2);
                boolean zY = gapComposerH.y(hapticFeedback) | ((i3 & ImageMetadata.JPEG_GPS_COORDINATES) == 131072) | gapComposerH.y(themeItemUiModel);
                Object objX3 = gapComposerH.x();
                if (zY || objX3 == composer$Companion$Empty$1) {
                    objX3 = new kr0(hapticFeedback, function4, themeItemUiModel, 0);
                    gapComposerH.q(objX3);
                }
                ImageKt.a(PainterResources_androidKt.a(LVAppDesignKitTheme.g(gapComposerH).V, gapComposerH, 0), tr.h(str, " ", StringResources_androidKt.c(gapComposerH, R.string.alt_button_wishlist)), com.vuitton.android.designkit.ui.common.ModifierExtKt.e(com.vuitton.android.designkit.ui.common.ModifierExtKt.c(modifierB3, false, null, null, (Function0) objX3, 31), "thematicPlp_productWishlist_image"), null, null, Call.Parameters.DEFAULT_CAMERA_ZOOM, null, gapComposerH, 8, 120);
                gapComposerH = gapComposerH;
                gapComposerH.Z(false);
            } else {
                gapComposerH.L(-1230722347);
                gapComposerH.Z(false);
            }
            if (themeItemUiModel.f55434c) {
                gapComposerH.L(-1230664718);
                LottieCompositionResultImpl lottieCompositionResultImplH = n00.h(LVAppDesignKitTheme.a(gapComposerH).E, gapComposerH, 0);
                if (((Number) AnimateLottieCompositionAsStateKt.a(lottieCompositionResultImplH.getF10755b(), false, null, 0, gapComposerH, 1022).getF10755b()).floatValue() == 1.0f) {
                    function5 = function3;
                    function5.invoke(themeItemUiModel, Boolean.FALSE);
                } else {
                    function5 = function3;
                }
                GapComposer gapComposer = gapComposerH;
                LottieAnimationKt.a(lottieCompositionResultImplH.getF10755b(), null, false, 0, null, gapComposer, 0, 0, 4194302);
                gapComposerH = gapComposer;
                gapComposerH.Z(false);
            } else {
                function5 = function3;
                gapComposerH.L(-1230262059);
                gapComposerH.Z(false);
            }
            gapComposerH.Z(true);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new hg(modifierE, themeItemUiModel, z, function2, function5, function4, i2, 12);
        }
    }
}
