package com.vuitton.android.presentation.screen.pdp.components.variations;

import androidx.compose.foundation.FocusableKt;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.Arrangement$Start$1;
import androidx.compose.foundation.layout.Arrangement$Top$1;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.PaddingValuesImpl;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowMeasurePolicy;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.lazy.grid.GridCells;
import androidx.compose.foundation.lazy.grid.LazyGridDslKt;
import androidx.compose.material3.TextKt;
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
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.input.nestedscroll.NestedScrollModifierKt;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.platform.NestedScrollInteropConnectionKt;
import androidx.compose.ui.res.StringResources_androidKt;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import androidx.compose.ui.text.TextMeasurer;
import androidx.compose.ui.text.TextMeasurerHelperKt;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.style.TextOverflow;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.Dp;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.R;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.atoms.LVColorDotIconKt;
import com.vuitton.android.designkit.ui.theme.atoms.LVImageChipKt;
import com.vuitton.android.designkit.ui.theme.atoms.configurations.ConfigurationColorDot;
import com.vuitton.android.presentation.extensions.ModifierExtKt;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.SkuAvailabilityUiModel;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.VariationUiModel;
import defpackage.a;
import defpackage.c10;
import defpackage.cj;
import defpackage.e10;
import defpackage.f10;
import defpackage.gv;
import defpackage.oy;
import defpackage.ud;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import net.rtccloud.sdk.Call;
import org.bouncycastle.asn1.cmc.BodyPartID;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class GridVariationKt {
    /* JADX WARN: Code duplicated, block: B:71:0x022a  */
    public static final void a(Modifier modifier, VariationUiModel variationUiModel, Function1 function1, boolean z, boolean z2, int i2, Composer composer, int i3) {
        ConfigurationColorDot configurationColorDot;
        Modifier modifierE = modifier;
        VariationUiModel variationUiModel2 = variationUiModel;
        if (modifierE != null) {
            modifierE = a.e(modifierE, "GridItem");
        }
        GapComposer gapComposerH = composer.h(-263479086);
        Applier applier = gapComposerH.f7976a;
        int i4 = i3 | (gapComposerH.K(modifierE) ? 4 : 2) | (gapComposerH.K(variationUiModel2) ? 32 : 16) | (gapComposerH.y(function1) ? 256 : 128) | (gapComposerH.b(z) ? 2048 : 1024) | (gapComposerH.b(z2) ? 16384 : 8192) | (gapComposerH.d(i2) ? 131072 : 65536);
        if (gapComposerH.p(i4 & 1, (74899 & i4) != 74898)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Arrangement$Top$1 arrangement$Top$1 = Arrangement.f4920c;
            Alignment.f8582a.getClass();
            ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(arrangement$Top$1, Alignment.Companion.n, gapComposerH, 0);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierE);
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
            Function2 function2 = ComposeUiNode.Companion.f9644f;
            Updater.c(gapComposerH, columnMeasurePolicyA, function2);
            Function2 function3 = ComposeUiNode.Companion.f9643e;
            Updater.c(gapComposerH, persistentCompositionLocalMapU, function3);
            Integer numValueOf = Integer.valueOf(iHashCode);
            Function2 function4 = ComposeUiNode.Companion.g;
            Updater.c(gapComposerH, numValueOf, function4);
            Function1 function5 = ComposeUiNode.Companion.f9645h;
            Updater.b(gapComposerH, function5);
            Function2 function6 = ComposeUiNode.Companion.d;
            Updater.c(gapComposerH, modifierC, function6);
            Modifier modifierC2 = FocusableKt.c(ModifierExtKt.a(new DTFunctionNameModifier("GridItem"), "pdp_variationImageItem_view", null, 6), null, 2);
            boolean z3 = ((i4 & 896) == 256) | ((i4 & 112) == 32);
            Object objX = gapComposerH.x();
            if (z3 || objX == Composer.Companion.f7939a) {
                objX = new gv(function1, variationUiModel2, 20);
                gapComposerH.q(objX);
            }
            LVImageChipKt.b(modifierC2, z2, false, null, null, null, (Function1) objX, ComposableLambdaKt.b(1121149147, new e10(i2, variationUiModel2), gapComposerH), gapComposerH, ((i4 >> 9) & 112) | 100663296, 124);
            Modifier modifierM = PaddingKt.m(new DTFunctionNameModifier("GridItem"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48415c, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13);
            RowMeasurePolicy rowMeasurePolicyA = RowKt.a(Arrangement.f4918a, Alignment.Companion.f8591k, gapComposerH, 48);
            int iHashCode2 = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU2 = gapComposerH.U();
            Modifier modifierC3 = ComposedModifierKt.c(gapComposerH, modifierM);
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
            Updater.c(gapComposerH, rowMeasurePolicyA, function2);
            Updater.c(gapComposerH, persistentCompositionLocalMapU2, function3);
            cj.t(iHashCode2, gapComposerH, function4, gapComposerH, function5);
            Updater.c(gapComposerH, modifierC3, function6);
            TextMeasurer textMeasurerA = TextMeasurerHelperKt.a(gapComposerH);
            gapComposerH.L(-1499458897);
            Density density = (Density) gapComposerH.k(CompositionLocalsKt.f10031h);
            variationUiModel2 = variationUiModel;
            String str = variationUiModel2.f61768c;
            SkuAvailabilityUiModel skuAvailabilityUiModel = variationUiModel2.f61769e;
            float fK1 = density.k1((int) (TextMeasurer.a(textMeasurerA, str, LVAppDesignKitTheme.n(gapComposerH).l, 0L, 1020).f10554c & BodyPartID.bodyIdMax));
            gapComposerH.Z(false);
            float f2 = LVAppDesignKitTheme.d(gapComposerH).f48388h;
            if (z) {
                if ((skuAvailabilityUiModel != null ? Boolean.valueOf(skuAvailabilityUiModel.f61761e) : null) != null) {
                    gapComposerH.L(761745779);
                    if (skuAvailabilityUiModel.f61761e) {
                        gapComposerH.L(761835400);
                        configurationColorDot = LVAppDesignKitTheme.e(gapComposerH).f48464a;
                        gapComposerH.Z(false);
                    } else {
                        gapComposerH.L(761918666);
                        configurationColorDot = LVAppDesignKitTheme.e(gapComposerH).f48465b;
                        gapComposerH.Z(false);
                    }
                    float f3 = LVAppDesignKitTheme.l(gapComposerH).f48414b;
                    float f4 = fK1 - f2;
                    Dp.Companion companion = Dp.f11004c;
                    LVColorDotIconKt.a(configurationColorDot, PaddingKt.m(Modifier.Companion.f8607b, Call.Parameters.DEFAULT_CAMERA_ZOOM, f4 / 2.0f, f3, Call.Parameters.DEFAULT_CAMERA_ZOOM, 9), Call.Parameters.DEFAULT_CAMERA_ZOOM, gapComposerH, 0);
                    gapComposerH.Z(false);
                } else {
                    gapComposerH.L(762240694);
                    gapComposerH.Z(false);
                }
            } else {
                gapComposerH.L(762240694);
                gapComposerH.Z(false);
            }
            String str2 = variationUiModel2.f61768c;
            Modifier modifierA = ModifierExtKt.a(new DTFunctionNameModifier("GridItem"), "pdp_variationBottomSheetItem_text", null, 6);
            TextStyle textStyle = LVAppDesignKitTheme.n(gapComposerH).l;
            TextOverflow.f10989a.getClass();
            TextKt.c(str2, modifierA, 0L, 0L, null, 0L, null, null, 0L, TextOverflow.f10991c, false, 2, 0, null, textStyle, gapComposerH, 0, 24960, 110588);
            gapComposerH = gapComposerH;
            gapComposerH.Z(true);
            gapComposerH.Z(true);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new f10(modifierE, variationUiModel2, function1, z, z2, i2, i3);
        }
    }

    public static final void b(Modifier modifier, List list, String str, boolean z, Function1 function1, boolean z2, int i2, Composer composer, int i3) {
        int i4;
        Function1 function2;
        boolean z3;
        int i5;
        GapComposer gapComposer;
        float f2;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = a.e(modifierE, "GridVariation-MXasgaU");
        }
        Modifier modifier2 = modifierE;
        list.getClass();
        str.getClass();
        function1.getClass();
        GapComposer gapComposerH = composer.h(-340698455);
        if ((i3 & 6) == 0) {
            i4 = (gapComposerH.K(modifier2) ? 4 : 2) | i3;
        } else {
            i4 = i3;
        }
        if ((i3 & 48) == 0) {
            i4 |= gapComposerH.y(list) ? 32 : 16;
        }
        if ((i3 & KyberEngine.KyberPolyBytes) == 0) {
            i4 |= gapComposerH.K(str) ? 256 : 128;
        }
        if ((i3 & 3072) == 0) {
            i4 |= gapComposerH.b(z) ? 2048 : 1024;
        }
        if ((i3 & 24576) == 0) {
            function2 = function1;
            i4 |= gapComposerH.y(function2) ? 16384 : 8192;
        } else {
            function2 = function1;
        }
        if ((196608 & i3) == 0) {
            z3 = z2;
            i4 |= gapComposerH.b(z3) ? 131072 : 65536;
        } else {
            z3 = z2;
        }
        if ((1572864 & i3) == 0) {
            i5 = i2;
            i4 |= gapComposerH.d(i5) ? 1048576 : 524288;
        } else {
            i5 = i2;
        }
        if (gapComposerH.p(i4 & 1, (599187 & i4) != 599186)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            String strC = StringResources_androidKt.c(gapComposerH, R.string.alt_selected);
            Modifier modifierA = NestedScrollModifierKt.a(SizeKt.d(modifier2, 1.0f), NestedScrollInteropConnectionKt.e(gapComposerH), null);
            boolean zY = gapComposerH.y(list);
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (zY || objX == composer$Companion$Empty$1) {
                objX = new ud(list, 6);
                gapComposerH.q(objX);
            }
            Modifier modifierB = SemanticsModifierKt.b(modifierA, false, (Function1) objX);
            float f3 = LVAppDesignKitTheme.l(gapComposerH).f48416e;
            if (z) {
                Dp.Companion companion = Dp.f11004c;
                f2 = 168.0f;
            } else {
                Dp.Companion companion2 = Dp.f11004c;
                f2 = 0.0f;
            }
            PaddingValuesImpl paddingValuesImplE = PaddingKt.e(Call.Parameters.DEFAULT_CAMERA_ZOOM, f3, Call.Parameters.DEFAULT_CAMERA_ZOOM, f2, 5);
            GridCells.Fixed fixed = new GridCells.Fixed(3);
            Arrangement$Start$1 arrangement$Start$1 = Arrangement.f4918a;
            Arrangement.SpacedAligned spacedAlignedF = Arrangement.f(LVAppDesignKitTheme.l(gapComposerH).f48416e);
            Arrangement.SpacedAligned spacedAlignedF2 = Arrangement.f(LVAppDesignKitTheme.l(gapComposerH).f48416e);
            boolean zY2 = ((458752 & i4) == 131072) | gapComposerH.y(list) | ((i4 & 896) == 256) | gapComposerH.K(strC) | ((57344 & i4) == 16384) | ((i4 & 3670016) == 1048576);
            Object objX2 = gapComposerH.x();
            if (zY2 || objX2 == composer$Companion$Empty$1) {
                oy oyVar = new oy(list, z3, str, strC, function2, i5);
                gapComposerH.q(oyVar);
                objX2 = oyVar;
            }
            gapComposer = gapComposerH;
            LazyGridDslKt.b(fixed, modifierB, null, paddingValuesImplE, spacedAlignedF2, spacedAlignedF, null, false, null, (Function1) objX2, gapComposer, 0, 916);
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new c10(modifier2, list, str, z, function1, z2, i2, i3);
        }
    }
}
