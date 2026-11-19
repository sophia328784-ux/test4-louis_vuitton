package com.vuitton.android.presentation.screen.pdp.components.sizeguide;

import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowMeasurePolicy;
import androidx.compose.foundation.layout.RowScopeInstance;
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
import androidx.compose.ui.text.style.TextOverflow;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.R;
import com.vuitton.android.designkit.ui.common.ModifierExtKt;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.atoms.LVSwitchKt;
import defpackage.bo0;
import defpackage.i4;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class SizeUnitSwitchKt {
    public static final void a(String str, String str2, boolean z, Function0 function0, Composer composer, int i2) {
        str.getClass();
        str2.getClass();
        function0.getClass();
        GapComposer gapComposerH = composer.h(-2089769806);
        int i3 = i2 | (gapComposerH.K(str) ? 4 : 2) | (gapComposerH.K(str2) ? 32 : 16) | (gapComposerH.b(z) ? 256 : 128) | (gapComposerH.y(function0) ? 2048 : 1024);
        if (gapComposerH.p(i3 & 1, (i3 & 1171) != 1170)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Modifier modifierD = SizeKt.d(PaddingKt.m(new DTFunctionNameModifier("SizeUnitSwitch"), LVAppDesignKitTheme.l(gapComposerH).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, 10), 1.0f);
            Alignment.f8582a.getClass();
            RowMeasurePolicy rowMeasurePolicyA = RowKt.a(Arrangement.f4918a, Alignment.Companion.l, gapComposerH, 48);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierD);
            ComposeUiNode.b0.getClass();
            Function0 function1 = ComposeUiNode.Companion.f9641b;
            if (gapComposerH.f7976a == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function1);
            } else {
                gapComposerH.o();
            }
            Updater.c(gapComposerH, rowMeasurePolicyA, ComposeUiNode.Companion.f9644f);
            Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
            Updater.c(gapComposerH, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
            Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
            Updater.c(gapComposerH, modifierC, ComposeUiNode.Companion.d);
            String strC = StringResources_androidKt.c(gapComposerH, R.string.unit_measure);
            Modifier modifierE = ModifierExtKt.e(RowScopeInstance.f5040a.a(new DTFunctionNameModifier("SizeUnitSwitch"), 1.0f, true), "pdp_sizeGuideUnit_text");
            TextStyle textStyle = LVAppDesignKitTheme.n(gapComposerH).m;
            long j2 = LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k;
            TextOverflow.f10989a.getClass();
            TextKt.c(strC, modifierE, j2, 0L, null, 0L, null, null, 0L, TextOverflow.f10991c, false, 1, 0, null, textStyle, gapComposerH, 0, 24960, 110584);
            SpacerKt.a(gapComposerH, SizeKt.s(new DTFunctionNameModifier("SizeUnitSwitch"), LVAppDesignKitTheme.l(gapComposerH).f48416e));
            TextKt.c(str, ModifierExtKt.e(SizeKt.x(new DTFunctionNameModifier("SizeUnitSwitch"), null, 3), "pdp_sizeGuideUnitCm_text"), LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).m, gapComposerH, i3 & 14, 0, 131064);
            SpacerKt.a(gapComposerH, SizeKt.s(new DTFunctionNameModifier("SizeUnitSwitch"), LVAppDesignKitTheme.l(gapComposerH).f48416e));
            Modifier modifierE2 = ModifierExtKt.e(SizeKt.x(new DTFunctionNameModifier("SizeUnitSwitch"), null, 3), "pdp_sizeGuideUnit_switch");
            boolean z2 = (i3 & 7168) == 2048;
            Object objX = gapComposerH.x();
            if (z2 || objX == Composer.Companion.f7939a) {
                objX = new bo0(function0, 9);
                gapComposerH.q(objX);
            }
            LVSwitchKt.a(modifierE2, false, z, null, (Function1) objX, gapComposerH, i3 & 896, 10);
            SpacerKt.a(gapComposerH, SizeKt.s(new DTFunctionNameModifier("SizeUnitSwitch"), LVAppDesignKitTheme.l(gapComposerH).f48416e));
            TextKt.c(str2, ModifierExtKt.e(SizeKt.x(new DTFunctionNameModifier("SizeUnitSwitch"), null, 3), "pdp_sizeGuideUnitInches_text"), LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).m, gapComposerH, (i3 >> 3) & 14, 0, 131064);
            gapComposerH = gapComposerH;
            gapComposerH.Z(true);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new i4(str, str2, z, function0, i2, 19);
        }
    }
}
