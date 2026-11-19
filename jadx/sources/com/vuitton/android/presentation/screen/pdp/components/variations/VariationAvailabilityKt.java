package com.vuitton.android.presentation.screen.pdp.components.variations;

import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowMeasurePolicy;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.layout.SpacerKt;
import androidx.compose.material3.TextKt;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
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
import androidx.compose.ui.text.TextStyle;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.R;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.atoms.LVColorDotIconKt;
import com.vuitton.android.designkit.ui.theme.atoms.configurations.ConfigurationColorDot;
import defpackage.a;
import defpackage.n00;
import defpackage.rg;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class VariationAvailabilityKt {
    public static final void a(Modifier modifier, VariationAvailabilityIconOrientation variationAvailabilityIconOrientation, boolean z, Composer composer, int i2) {
        GapComposer gapComposer;
        VariationAvailabilityIconOrientation variationAvailabilityIconOrientation2;
        ConfigurationColorDot configurationColorDot;
        ConfigurationColorDot configurationColorDot2;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = a.e(modifierE, "VariationAvailability");
        }
        GapComposer gapComposerH = composer.h(134316445);
        int i3 = i2 | (gapComposerH.K(modifierE) ? 4 : 2) | 48 | (gapComposerH.b(z) ? 256 : 128);
        if (gapComposerH.p(i3 & 1, (i3 & 147) != 146)) {
            VariationAvailabilityIconOrientation variationAvailabilityIconOrientation3 = VariationAvailabilityIconOrientation.START;
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Alignment.f8582a.getClass();
            RowMeasurePolicy rowMeasurePolicyA = RowKt.a(Arrangement.f4918a, Alignment.Companion.l, gapComposerH, 48);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierE);
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
            Updater.c(gapComposerH, rowMeasurePolicyA, ComposeUiNode.Companion.f9644f);
            Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
            Updater.c(gapComposerH, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
            Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
            Updater.c(gapComposerH, modifierC, ComposeUiNode.Companion.d);
            gapComposerH.L(-761164727);
            Modifier modifierM = PaddingKt.m(new DTFunctionNameModifier("VariationAvailability"), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48415c, Call.Parameters.DEFAULT_CAMERA_ZOOM, 11);
            if (z) {
                gapComposerH.L(2053662494);
                configurationColorDot = LVAppDesignKitTheme.e(gapComposerH).f48464a;
            } else {
                gapComposerH.L(2053663644);
                configurationColorDot = LVAppDesignKitTheme.e(gapComposerH).f48465b;
            }
            gapComposerH.Z(false);
            LVColorDotIconKt.a(configurationColorDot, modifierM, Call.Parameters.DEFAULT_CAMERA_ZOOM, gapComposerH, 0);
            gapComposerH.Z(false);
            String strC = StringResources_androidKt.c(gapComposerH, z ? R.string.product_page_in_stock : R.string.product_page_out_of_stock);
            TextStyle textStyle = LVAppDesignKitTheme.n(gapComposerH).m;
            long j2 = LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k;
            variationAvailabilityIconOrientation2 = variationAvailabilityIconOrientation3;
            TextKt.c(strC, null, j2, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, textStyle, gapComposerH, 0, 0, 131066);
            gapComposer = gapComposerH;
            SpacerKt.a(gapComposer, SizeKt.s(new DTFunctionNameModifier("VariationAvailability"), LVAppDesignKitTheme.l(gapComposer).f48416e));
            if (variationAvailabilityIconOrientation2 == VariationAvailabilityIconOrientation.END) {
                Modifier modifierM2 = PaddingKt.m(n00.i(gapComposer, -760412791, "VariationAvailability"), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposer).f48415c, Call.Parameters.DEFAULT_CAMERA_ZOOM, 11);
                if (z) {
                    gapComposer.L(2053686750);
                    configurationColorDot2 = LVAppDesignKitTheme.e(gapComposer).f48464a;
                } else {
                    gapComposer.L(2053687900);
                    configurationColorDot2 = LVAppDesignKitTheme.e(gapComposer).f48465b;
                }
                gapComposer.Z(false);
                LVColorDotIconKt.a(configurationColorDot2, modifierM2, Call.Parameters.DEFAULT_CAMERA_ZOOM, gapComposer, 0);
                gapComposer.Z(false);
            } else {
                gapComposer.L(-760156855);
                gapComposer.Z(false);
            }
            gapComposer.Z(true);
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
            variationAvailabilityIconOrientation2 = variationAvailabilityIconOrientation;
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new rg(modifierE, variationAvailabilityIconOrientation2, z, i2, 12);
        }
    }
}
