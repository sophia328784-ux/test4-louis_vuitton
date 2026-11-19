package com.vuitton.android.presentation.screen.plp.components.composables.brandcontent;

import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.Arrangement$Top$1;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.shape.RoundedCornerShape;
import androidx.compose.foundation.shape.RoundedCornerShapeKt;
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
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.unit.Dp;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.designkit.ui.common.ModifierExtKt;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.presentation.common.editorial.components.CarouselAssetKt;
import com.vuitton.android.presentation.model.common.AssetUiModel;
import com.vuitton.android.presentation.screen.plp.components.subcomponents.ProductCellFullKt;
import com.vuitton.android.presentation.screen.plp.models.plp.PlpSectionUiModel;
import com.vuitton.android.presentation.screen.plp.models.productshortlist.PlpProductUiModel;
import defpackage.a;
import defpackage.kj0;
import defpackage.n00;
import defpackage.tr;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import net.rtccloud.sdk.Call;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class PLPProductHighlightComposableKt {
    public static final void a(Modifier modifier, final PlpSectionUiModel.ProductHighlight productHighlight, final Function1 function1, Function1 function2, Function1 function3, Composer composer, int i2) {
        Modifier modifier2;
        final int i3;
        final int i4;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = a.e(modifierE, "PLPProductHighlightComposable");
        }
        function1.getClass();
        function2.getClass();
        function3.getClass();
        GapComposer gapComposerH = composer.h(-1473107524);
        int i5 = i2 | 6 | (gapComposerH.y(productHighlight) ? 32 : 16) | KyberEngine.KyberPolyBytes | (gapComposerH.y(function1) ? 2048 : 1024) | (gapComposerH.y(function2) ? 16384 : 8192) | (gapComposerH.y(function3) ? 131072 : 65536);
        if (gapComposerH.p(i5 & 1, (74899 & i5) != 74898)) {
            DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier("PLPProductHighlightComposable");
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Modifier modifierK = PaddingKt.k(SizeKt.d(dTFunctionNameModifier, 1.0f), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48417f, 1);
            Arrangement$Top$1 arrangement$Top$1 = Arrangement.f4920c;
            Alignment.f8582a.getClass();
            ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(arrangement$Top$1, Alignment.Companion.n, gapComposerH, 0);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierK);
            ComposeUiNode.b0.getClass();
            Function0 function0 = ComposeUiNode.Companion.f9641b;
            if (gapComposerH.f7976a == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function0);
            } else {
                gapComposerH.o();
            }
            Updater.c(gapComposerH, columnMeasurePolicyA, ComposeUiNode.Companion.f9644f);
            Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
            Updater.c(gapComposerH, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
            Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
            Modifier modifierE2 = n00.e(gapComposerH, modifierC, ComposeUiNode.Companion.d, "PLPProductHighlightComposable", 1.0f);
            int i6 = i5 & 7168;
            boolean zY = (i6 == 2048) | gapComposerH.y(productHighlight);
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (zY || objX == composer$Companion$Empty$1) {
                i3 = 0;
                objX = new Function0() { // from class: pk0
                    @Override // kotlin.jvm.functions.Function0
                    /* JADX INFO: renamed from: invoke */
                    public final Object mo47invoke() {
                        int i7 = i3;
                        PlpSectionUiModel.ProductHighlight productHighlight2 = productHighlight;
                        Function1 function4 = function1;
                        switch (i7) {
                            case 0:
                                function4.invoke(productHighlight2);
                                break;
                            case 1:
                                function4.invoke(productHighlight2);
                                break;
                            default:
                                function4.invoke(productHighlight2);
                                break;
                        }
                        return Unit.f71739a;
                    }
                };
                gapComposerH.q(objX);
            } else {
                i3 = 0;
            }
            Modifier modifierC2 = ModifierExtKt.c(modifierE2, false, null, null, (Function0) objX, 31);
            AssetUiModel assetUiModel = productHighlight.f62929c;
            Dp.Companion companion = Dp.f11004c;
            RoundedCornerShape roundedCornerShapeA = RoundedCornerShapeKt.a(Call.Parameters.DEFAULT_CAMERA_ZOOM);
            int i7 = (i6 == 2048 ? 1 : i3) | (gapComposerH.y(productHighlight) ? 1 : 0);
            Object objX2 = gapComposerH.x();
            if (i7 != 0 || objX2 == composer$Companion$Empty$1) {
                i4 = 1;
                objX2 = new Function0() { // from class: pk0
                    @Override // kotlin.jvm.functions.Function0
                    /* JADX INFO: renamed from: invoke */
                    public final Object mo47invoke() {
                        int i8 = i4;
                        PlpSectionUiModel.ProductHighlight productHighlight2 = productHighlight;
                        Function1 function4 = function1;
                        switch (i8) {
                            case 0:
                                function4.invoke(productHighlight2);
                                break;
                            case 1:
                                function4.invoke(productHighlight2);
                                break;
                            default:
                                function4.invoke(productHighlight2);
                                break;
                        }
                        return Unit.f71739a;
                    }
                };
                gapComposerH.q(objX2);
            } else {
                i4 = 1;
            }
            CarouselAssetKt.a(modifierC2, assetUiModel, 0.8f, roundedCornerShapeA, false, (Function0) objX2, gapComposerH, 24960, 0);
            Modifier modifierD = tr.d("PLPProductHighlightComposable", 1.0f);
            PlpProductUiModel plpProductUiModel = productHighlight.f62928b;
            boolean zY2 = gapComposerH.y(productHighlight) | (i6 == 2048);
            Object objX3 = gapComposerH.x();
            if (zY2 || objX3 == composer$Companion$Empty$1) {
                final int i8 = 2;
                objX3 = new Function0() { // from class: pk0
                    @Override // kotlin.jvm.functions.Function0
                    /* JADX INFO: renamed from: invoke */
                    public final Object mo47invoke() {
                        int i9 = i8;
                        PlpSectionUiModel.ProductHighlight productHighlight2 = productHighlight;
                        Function1 function4 = function1;
                        switch (i9) {
                            case 0:
                                function4.invoke(productHighlight2);
                                break;
                            case 1:
                                function4.invoke(productHighlight2);
                                break;
                            default:
                                function4.invoke(productHighlight2);
                                break;
                        }
                        return Unit.f71739a;
                    }
                };
                gapComposerH.q(objX3);
            }
            int i9 = i5 << 3;
            ProductCellFullKt.e(modifierD, plpProductUiModel, 0, 0, (Function0) objX3, function2, function3, null, gapComposerH, (458752 & i9) | 6 | (i9 & 3670016), 140);
            gapComposerH = gapComposerH;
            gapComposerH.Z(true);
            modifier2 = dTFunctionNameModifier;
        } else {
            gapComposerH.D();
            modifier2 = modifierE;
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new kj0(modifier2, (PlpSectionUiModel) productHighlight, function1, function2, function3, i2, 3);
        }
    }
}
