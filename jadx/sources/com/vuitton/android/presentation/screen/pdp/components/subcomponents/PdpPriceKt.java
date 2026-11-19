package com.vuitton.android.presentation.screen.pdp.components.subcomponents;

import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.Arrangement$Top$1;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowMeasurePolicy;
import androidx.compose.material3.DividerKt;
import androidx.compose.material3.TextKt;
import androidx.compose.runtime.Applier;
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
import androidx.compose.ui.semantics.SemanticsModifierKt;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.style.TextAlign;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.R;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.presentation.extensions.ModifierExtKt;
import defpackage.cj;
import defpackage.n00;
import defpackage.qm0;
import defpackage.s0;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class PdpPriceKt {
    public static final void a(Modifier modifier, String str, boolean z, boolean z2, boolean z3, Composer composer, int i2) {
        Object s0Var;
        Function1 function1;
        boolean z4;
        boolean z5;
        int i3;
        boolean z6;
        Function1 function2;
        GapComposer gapComposer;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = defpackage.a.e(modifierE, "PdpPrice");
        }
        str.getClass();
        GapComposer gapComposerH = composer.h(177939209);
        Applier applier = gapComposerH.f7976a;
        int i4 = i2 | (gapComposerH.K(modifierE) ? 4 : 2) | (gapComposerH.K(str) ? 32 : 16) | (gapComposerH.b(z2) ? 2048 : 1024) | (gapComposerH.b(z3) ? 16384 : 8192);
        if (gapComposerH.p(i4 & 1, (i4 & 9363) != 9362)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            String strC = StringResources_androidKt.c(gapComposerH, R.string.plp_price_from);
            String strC2 = StringResources_androidKt.c(gapComposerH, R.string.pdp_price);
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
            Function2 function3 = ComposeUiNode.Companion.f9644f;
            Updater.c(gapComposerH, columnMeasurePolicyA, function3);
            Function2 function4 = ComposeUiNode.Companion.f9643e;
            Updater.c(gapComposerH, persistentCompositionLocalMapU, function4);
            Integer numValueOf = Integer.valueOf(iHashCode);
            Function2 function5 = ComposeUiNode.Companion.g;
            Updater.c(gapComposerH, numValueOf, function5);
            Function1 function6 = ComposeUiNode.Companion.f9645h;
            Updater.b(gapComposerH, function6);
            Function2 function7 = ComposeUiNode.Companion.d;
            Modifier modifierE2 = n00.e(gapComposerH, modifierC, function7, "PdpPrice", 1.0f);
            boolean zK = ((i4 & 112) == 32) | gapComposerH.K(strC) | gapComposerH.K(strC2);
            Object objX = gapComposerH.x();
            if (zK || objX == Composer.Companion.f7939a) {
                function1 = function6;
                z4 = false;
                s0Var = new s0(z, strC, str, strC2, 10);
                gapComposerH.q(s0Var);
            } else {
                s0Var = objX;
                function1 = function6;
                z4 = false;
            }
            Modifier modifierB = SemanticsModifierKt.b(modifierE2, true, (Function1) s0Var);
            RowMeasurePolicy rowMeasurePolicyA = RowKt.a(Arrangement.g, Alignment.Companion.f8591k, gapComposerH, 6);
            int iHashCode2 = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU2 = gapComposerH.U();
            Modifier modifierC2 = ComposedModifierKt.c(gapComposerH, modifierB);
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
            Updater.c(gapComposerH, rowMeasurePolicyA, function3);
            Updater.c(gapComposerH, persistentCompositionLocalMapU2, function4);
            cj.t(iHashCode2, gapComposerH, function5, gapComposerH, function1);
            Updater.c(gapComposerH, modifierC2, function7);
            if (z) {
                function2 = null;
                i3 = 6;
                z6 = true;
                z5 = z4;
                TextKt.c(StringResources_androidKt.c(gapComposerH, R.string.plp_price_from), ModifierExtKt.a(n00.i(gapComposerH, -107577536, "PdpPrice"), null, null, 7), LVAppDesignKitTheme.c(gapComposerH).f48361b.l, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).f48430k, gapComposerH, 0, 0, 131064);
                gapComposer = gapComposerH;
                gapComposer.Z(z5);
            } else {
                z5 = z4;
                i3 = 6;
                z6 = true;
                function2 = null;
                TextKt.c(StringResources_androidKt.c(gapComposerH, R.string.pdp_price), ModifierExtKt.a(n00.i(gapComposerH, -107222493, "PdpPrice"), "pdp_price_text", null, 6), LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).f48430k, gapComposerH, 0, 0, 131064);
                gapComposer = gapComposerH;
                gapComposer.Z(z5);
            }
            Modifier modifierA = ModifierExtKt.a(new DTFunctionNameModifier("PdpPrice"), "pdp_priceValue_text", function2, i3);
            TextStyle textStyle = LVAppDesignKitTheme.n(gapComposer).f48429j;
            long j2 = LVAppDesignKitTheme.c(gapComposer).f48361b.f48382k;
            TextAlign.f10959b.getClass();
            GapComposer gapComposer2 = gapComposer;
            TextKt.c(str, modifierA, j2, 0L, null, 0L, null, new TextAlign(TextAlign.f10963h), 0L, 0, false, 0, 0, null, textStyle, gapComposer2, (i4 >> 3) & 14, 0, 130040);
            gapComposerH = gapComposer2;
            gapComposerH.Z(z6);
            if (z2) {
                gapComposerH.L(-901718584);
                TextKt.c(StringResources_androidKt.c(gapComposerH, R.string.global_vat_included), null, 0L, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).m, gapComposerH, 0, 0, 131070);
                gapComposerH.Z(z5);
            } else {
                gapComposerH.L(-901538877);
                gapComposerH.Z(z5);
            }
            if (z3) {
                gapComposerH = gapComposerH;
                DividerKt.a(PaddingKt.m(n00.i(gapComposerH, -901494547, "PdpPrice"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), LVAppDesignKitTheme.d(gapComposerH).f48385c, LVAppDesignKitTheme.c(gapComposerH).f48361b.q, gapComposerH, 0, 0);
                gapComposerH.Z(z5);
            } else {
                gapComposerH = gapComposerH;
                gapComposerH.L(-901227389);
                gapComposerH.Z(z5);
            }
            gapComposerH.Z(z6);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new qm0(modifierE, str, z, z2, z3, i2);
        }
    }
}
