package com.vuitton.android.presentation.screen.pdp.components.subcomponents;

import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.Arrangement$Start$1;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.PaddingValuesImpl;
import androidx.compose.foundation.lazy.LazyDslKt;
import androidx.compose.material3.TextKt;
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
import androidx.compose.ui.res.StringResources_androidKt;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.google.ar.core.ImageMetadata;
import com.vuitton.android.R;
import com.vuitton.android.designkit.components.ModifierExtKt;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.atoms.LVButtonGroupKt;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.SkuAvailabilityUiModel;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.SkuIdUiModel;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.VariationUiModel;
import defpackage.ee0;
import defpackage.ly;
import defpackage.n00;
import defpackage.p6;
import defpackage.rp;
import defpackage.wc0;
import defpackage.yk0;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class PdpVariationTextListKt {
    public static final void a(Modifier modifier, VariationUiModel variationUiModel, boolean z, boolean z2, Function0 function0, Composer composer, int i2) {
        boolean z3;
        if (modifier != null) {
            modifier = defpackage.a.e(modifier, "PdpVarianceTextItem");
        }
        Modifier modifier2 = modifier;
        GapComposer gapComposerH = composer.h(1459523887);
        int i3 = (gapComposerH.K(modifier2) ? 4 : 2) | i2 | (gapComposerH.K(variationUiModel) ? 32 : 16) | (gapComposerH.b(z) ? 256 : 128) | (gapComposerH.b(z2) ? 2048 : 1024) | (gapComposerH.y(function0) ? 16384 : 8192);
        if (gapComposerH.p(i3 & 1, (i3 & 9363) != 9362)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            SkuAvailabilityUiModel skuAvailabilityUiModel = variationUiModel.f61769e;
            PdpVariationTextListKt$PdpVarianceTextItem$startIndicator$1 pdpVariationTextListKt$PdpVarianceTextItem$startIndicator$1 = (skuAvailabilityUiModel == null || skuAvailabilityUiModel.f61761e || !z2 || z) ? null : new PdpVariationTextListKt$PdpVarianceTextItem$startIndicator$1();
            String str = variationUiModel.f61768c;
            boolean z4 = (57344 & i3) == 16384;
            Object objX = gapComposerH.x();
            if (z4 || objX == Composer.Companion.f7939a) {
                objX = new ee0(function0, 20);
                gapComposerH.q(objX);
            }
            z3 = z;
            LVButtonGroupKt.a(modifier2, str, z3, false, pdpVariationTextListKt$PdpVarianceTextItem$startIndicator$1, (Function0) objX, gapComposerH, i3 & 910, 8);
        } else {
            z3 = z;
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new ly(modifier2, variationUiModel, z3, z2, function0, i2);
        }
    }

    public static final void b(Modifier modifier, String str, String str2, boolean z, List list, Function1 function1, Composer composer, int i2, int i3) {
        int i4;
        String str3;
        GapComposer gapComposer;
        Modifier modifier2;
        Object next;
        boolean z2;
        String str4;
        Modifier dTFunctionNameModifier = modifier;
        if (dTFunctionNameModifier != null) {
            dTFunctionNameModifier = defpackage.a.e(dTFunctionNameModifier, "PdpVariationTextList--1EQgoA");
        }
        str.getClass();
        str2.getClass();
        list.getClass();
        function1.getClass();
        GapComposer gapComposerH = composer.h(-29882367);
        int i5 = i3 & 1;
        if (i5 != 0) {
            i4 = i2 | 6;
        } else if ((i2 & 6) == 0) {
            i4 = (gapComposerH.K(dTFunctionNameModifier) ? 4 : 2) | i2;
        } else {
            i4 = i2;
        }
        if ((i2 & 48) == 0) {
            str3 = str;
            i4 |= gapComposerH.K(str3) ? 32 : 16;
        } else {
            str3 = str;
        }
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i4 |= gapComposerH.K(str2) ? 256 : 128;
        }
        if ((i2 & 3072) == 0) {
            i4 |= gapComposerH.b(z) ? 2048 : 1024;
        }
        if ((i2 & 24576) == 0) {
            i4 |= gapComposerH.y(list) ? 16384 : 8192;
        }
        if ((196608 & i2) == 0) {
            i4 |= gapComposerH.y(function1) ? 131072 : 65536;
        }
        if (gapComposerH.p(i4 & 1, (i4 & 74899) != 74898)) {
            if (i5 != 0) {
                dTFunctionNameModifier = new DTFunctionNameModifier("PdpVariationTextList--1EQgoA");
            }
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            String strC = StringResources_androidKt.c(gapComposerH, R.string.alt_selected);
            ArrayList arrayList = new ArrayList(list);
            Iterator it = arrayList.iterator();
            do {
                if (!it.hasNext()) {
                    next = null;
                    break;
                } else {
                    next = it.next();
                    str4 = ((VariationUiModel) next).f61767b;
                    SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
                }
            } while (!Intrinsics.c(str4, str2));
            VariationUiModel variationUiModel = (VariationUiModel) next;
            if (variationUiModel != null) {
                arrayList.remove(variationUiModel);
                arrayList.add(0, variationUiModel);
            }
            Arrangement$Start$1 arrangement$Start$1 = Arrangement.f4918a;
            Arrangement.SpacedAligned spacedAlignedF = Arrangement.f(LVAppDesignKitTheme.l(gapComposerH).f48415c);
            Alignment.f8582a.getClass();
            ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(spacedAlignedF, Alignment.Companion.n, gapComposerH, 0);
            OpaqueKey opaqueKey2 = ComposerKt.f7940a;
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, dTFunctionNameModifier);
            ComposeUiNode.b0.getClass();
            Function0 function0 = ComposeUiNode.Companion.f9641b;
            Modifier modifier3 = dTFunctionNameModifier;
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
            Modifier modifierF = n00.f(gapComposerH, modifierC, ComposeUiNode.Companion.d, "PdpVariationTextList--1EQgoA", "pdp_variationLabel_text");
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (objX == composer$Companion$Empty$1) {
                objX = new yk0(22);
                gapComposerH.q(objX);
            }
            int i6 = i4;
            TextKt.c(str3, SemanticsModifierKt.b(modifierF, false, (Function1) objX), LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).f48430k, gapComposerH, (i4 >> 3) & 14, 0, 131064);
            Modifier modifierD = ModifierExtKt.d(new DTFunctionNameModifier("PdpVariationTextList--1EQgoA"), LVAppDesignKitTheme.l(gapComposerH).f48416e);
            boolean zY = gapComposerH.y(arrayList);
            Object objX2 = gapComposerH.x();
            if (zY || objX2 == composer$Companion$Empty$1) {
                objX2 = new p6(4, arrayList);
                gapComposerH.q(objX2);
            }
            Modifier modifierB = SemanticsModifierKt.b(modifierD, false, (Function1) objX2);
            PaddingValuesImpl paddingValuesImplC = PaddingKt.c(LVAppDesignKitTheme.l(gapComposerH).f48416e, 2);
            Arrangement.SpacedAligned spacedAlignedF2 = Arrangement.f(LVAppDesignKitTheme.l(gapComposerH).f48415c);
            boolean zY2 = gapComposerH.y(arrayList) | ((i6 & 7168) == 2048) | ((i6 & 896) == 256) | gapComposerH.K(strC) | ((i6 & ImageMetadata.JPEG_GPS_COORDINATES) == 131072);
            Object objX3 = gapComposerH.x();
            if (zY2 || objX3 == composer$Companion$Empty$1) {
                z2 = true;
                wc0 wc0Var = new wc0(arrayList, z, str2, strC, function1);
                gapComposerH.q(wc0Var);
                objX3 = wc0Var;
            } else {
                z2 = true;
            }
            LazyDslKt.b(modifierB, null, paddingValuesImplC, spacedAlignedF2, null, null, false, null, (Function1) objX3, gapComposerH, 0, 490);
            gapComposer = gapComposerH;
            gapComposer.Z(z2);
            modifier2 = modifier3;
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
            modifier2 = dTFunctionNameModifier;
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new rp(modifier2, str, str2, z, list, function1, i2, i3);
        }
    }
}
