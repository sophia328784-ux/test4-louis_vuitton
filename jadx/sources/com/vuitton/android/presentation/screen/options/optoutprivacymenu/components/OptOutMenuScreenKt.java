package com.vuitton.android.presentation.screen.options.optoutprivacymenu.components;

import android.content.Context;
import androidx.compose.foundation.ClickableKt;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowMeasurePolicy;
import androidx.compose.foundation.layout.RowScopeInstance;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.material3.IconKt;
import androidx.compose.material3.ScaffoldKt;
import androidx.compose.material3.TextKt;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
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
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.compose.ui.res.PainterResources_androidKt;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.style.TextOverflow;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import defpackage.cj;
import defpackage.ee0;
import defpackage.gl;
import defpackage.qd;
import defpackage.sj;
import defpackage.x2;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class OptOutMenuScreenKt {
    public static final void a(String str, Function0 function0, Composer composer, int i2) {
        GapComposer gapComposerH = composer.h(-1591298240);
        int i3 = i2 | (gapComposerH.K(str) ? 4 : 2) | (gapComposerH.y(function0) ? 32 : 16);
        if (gapComposerH.p(i3 & 1, (i3 & 19) != 18)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier("MenuItem");
            boolean z = (i3 & 112) == 32;
            Object objX = gapComposerH.x();
            if (z || objX == Composer.Companion.f7939a) {
                objX = new ee0(function0, 9);
                gapComposerH.q(objX);
            }
            Modifier modifierD = ClickableKt.d(dTFunctionNameModifier, false, null, null, (Function0) objX, 15);
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
            Modifier modifierM = PaddingKt.m(cj.b("MenuItem", RowScopeInstance.f5040a, 1.0f, true), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).g, Call.Parameters.DEFAULT_CAMERA_ZOOM, 11);
            TextStyle textStyle = LVAppDesignKitTheme.n(gapComposerH).f48428i;
            TextOverflow.f10989a.getClass();
            TextKt.c(str, modifierM, LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k, 0L, null, 0L, null, null, 0L, TextOverflow.f10990b, false, 2, 0, null, textStyle, gapComposerH, i3 & 14, 24960, 110584);
            gapComposerH = gapComposerH;
            IconKt.a(PainterResources_androidKt.a(LVAppDesignKitTheme.g(gapComposerH).I, gapComposerH, 0), null, SizeKt.o(new DTFunctionNameModifier("MenuItem"), LVAppDesignKitTheme.d(gapComposerH).o), 0L, gapComposerH, 56, 8);
            gapComposerH.Z(true);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new qd(str, function0, i2, 13);
        }
    }

    public static final void b(Function0 function0, Function0 function1, Composer composer, int i2) {
        GapComposer gapComposer;
        GapComposer gapComposerC = defpackage.a.c(function0, function1, composer, -2061270059);
        int i3 = (gapComposerC.y(function0) ? 4 : 2) | i2 | (gapComposerC.y(function1) ? 32 : 16);
        if (gapComposerC.p(i3 & 1, (i3 & 19) != 18)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            gapComposer = gapComposerC;
            ScaffoldKt.a(null, ComposableLambdaKt.b(2098212249, new sj((Context) gapComposerC.k(AndroidCompositionLocals_androidKt.f9936b), 2, (byte) 0), gapComposerC), null, null, null, 0, 0L, 0L, null, ComposableLambdaKt.b(-162196956, new gl(function0, function1, 2), gapComposerC), gapComposer, 805306416, 509);
        } else {
            gapComposer = gapComposerC;
            gapComposer.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new x2(function0, function1, i2, 13);
        }
    }
}
