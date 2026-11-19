package com.vuitton.android.designkit.ui.theme.molecules.topbar;

import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.Arrangement$Top$1;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
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
import androidx.compose.ui.graphics.GraphicsLayerModifierKt;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.style.TextOverflow;
import androidx.compose.ui.unit.Dp;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.google.ar.core.ImageMetadata;
import com.vuitton.android.designkit.ui.common.ModifierExtKt;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import defpackage.fs;
import defpackage.n00;
import defpackage.n60;
import defpackage.tr;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"system"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class LVTopBarCommonKt {
    public static final void a(String str, String str2, long j2, long j3, float f2, String str3, Composer composer, int i2, int i3) {
        float f3;
        int i4;
        String str4;
        int i5;
        GapComposer gapComposer;
        float f4;
        String str5;
        str.getClass();
        GapComposer gapComposerH = composer.h(-1804824651);
        int i6 = i2 | (gapComposerH.K(str) ? 4 : 2) | (gapComposerH.K(str2) ? 32 : 16) | (gapComposerH.e(j2) ? 256 : 128) | (gapComposerH.e(j3) ? 2048 : 1024);
        int i7 = i3 & 16;
        if (i7 != 0) {
            i4 = i6 | 24576;
            f3 = f2;
        } else {
            f3 = f2;
            i4 = i6 | (gapComposerH.c(f3) ? 16384 : 8192);
        }
        int i8 = i3 & 32;
        if (i8 != 0) {
            i5 = i4 | ImageMetadata.EDGE_MODE;
            str4 = str3;
        } else {
            str4 = str3;
            i5 = i4 | (gapComposerH.K(str4) ? 131072 : 65536);
        }
        if (gapComposerH.p(i5 & 1, (74899 & i5) != 74898)) {
            float f5 = i7 != 0 ? 1.0f : f3;
            String str6 = i8 != 0 ? null : str4;
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Modifier modifierC = GraphicsLayerModifierKt.c(new DTFunctionNameModifier("TopBarPinnedTitle-Y0xEhic"), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, f5, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 0L, null, 0, 524283);
            float f6 = f5;
            Arrangement$Top$1 arrangement$Top$1 = Arrangement.f4920c;
            Alignment.f8582a.getClass();
            ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(arrangement$Top$1, Alignment.Companion.n, gapComposerH, 0);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC2 = ComposedModifierKt.c(gapComposerH, modifierC);
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
            Modifier modifierE = ModifierExtKt.e(tr.e(gapComposerH, modifierC2, ComposeUiNode.Companion.d, "TopBarPinnedTitle-Y0xEhic"), str6 == null ? "header_title_text" : str6);
            Object objX = gapComposerH.x();
            if (objX == Composer.Companion.f7939a) {
                objX = new n60(15);
                gapComposerH.q(objX);
            }
            Modifier modifierB = SemanticsModifierKt.b(modifierE, false, (Function1) objX);
            TextStyle textStyle = LVAppDesignKitTheme.n(gapComposerH).f48426f;
            TextOverflow.f10989a.getClass();
            int i9 = TextOverflow.f10991c;
            int i10 = i5;
            TextKt.c(str, modifierB, j2, 0L, null, 0L, null, null, 0L, i9, false, 1, 0, null, textStyle, gapComposerH, i5 & 910, 24960, 110584);
            gapComposer = gapComposerH;
            if (str2 == null) {
                gapComposer.L(-1920465374);
                gapComposer.Z(false);
            } else {
                DTFunctionNameModifier dTFunctionNameModifierI = n00.i(gapComposer, -1920465373, "TopBarPinnedTitle-Y0xEhic");
                Dp.Companion companion = Dp.f11004c;
                SpacerKt.a(gapComposer, SizeKt.o(dTFunctionNameModifierI, 2.0f));
                TextKt.c(str2, ModifierExtKt.e(new DTFunctionNameModifier("TopBarPinnedTitle-Y0xEhic"), "header_subtitle_text"), j3, 0L, null, 0L, null, null, 0L, i9, false, 1, 0, null, LVAppDesignKitTheme.n(gapComposer).l, gapComposer, (i10 >> 3) & 896, 24960, 110584);
                gapComposer = gapComposer;
                gapComposer.Z(false);
            }
            gapComposer.Z(true);
            f4 = f6;
            str5 = str6;
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
            f4 = f3;
            str5 = str4;
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new fs(str, str2, j2, j3, f4, str5, i2, i3);
        }
    }
}
