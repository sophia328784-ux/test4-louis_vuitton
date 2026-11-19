package com.vuitton.android.presentation.screen.pdp.vto.beauty.components.shadefinder;

import android.content.Context;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowMeasurePolicy;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.material3.IconKt;
import androidx.compose.material3.ScaffoldKt;
import androidx.compose.material3.SnackbarHostState;
import androidx.compose.material3.TextKt;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.compose.ui.res.PainterResources_androidKt;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.presentation.extensions.ModifierExtKt;
import com.vuitton.android.presentation.extensions.WindowInsetsExtKt;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.models.ShadeFinderViewState;
import defpackage.ag;
import defpackage.fs0;
import defpackage.gi0;
import defpackage.kn0;
import defpackage.n00;
import defpackage.ni0;
import defpackage.vl0;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class ShadeFinderScanScreenKt {
    public static final void a(int i2, Composer composer, String str, String str2, boolean z) {
        String str3;
        int i3;
        String str4;
        String str5 = str2;
        GapComposer gapComposerH = composer.h(1123281506);
        int i4 = i2 | (gapComposerH.b(z) ? 4 : 2) | (gapComposerH.K(str) ? 32 : 16) | (gapComposerH.K(str5) ? 256 : 128);
        if (gapComposerH.p(i4 & 1, (i4 & 147) != 146)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Context context = (Context) gapComposerH.k(AndroidCompositionLocals_androidKt.f9936b);
            Modifier modifierM = PaddingKt.m(new DTFunctionNameModifier("ShadeFinderCheckRow"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48415c, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48415c, 5);
            boolean zY = ((i4 & 14) == 4) | ((i4 & 896) == 256) | gapComposerH.y(context);
            Object objX = gapComposerH.x();
            if (zY || objX == Composer.Companion.f7939a) {
                objX = new ag(context, str5, z);
                gapComposerH.q(objX);
            }
            Modifier modifierB = SemanticsModifierKt.b(modifierM, true, (Function1) objX);
            Alignment.f8582a.getClass();
            RowMeasurePolicy rowMeasurePolicyA = RowKt.a(Arrangement.f4918a, Alignment.Companion.l, gapComposerH, 48);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierB);
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
            if (z) {
                IconKt.a(PainterResources_androidKt.a(LVAppDesignKitTheme.g(gapComposerH).q0, gapComposerH, 0), null, SizeKt.o(n00.i(gapComposerH, -1682929761, "ShadeFinderCheckRow"), LVAppDesignKitTheme.d(gapComposerH).f48390j), LVAppDesignKitTheme.c(gapComposerH).f48361b.m, gapComposerH, 56, 0);
                gapComposerH.Z(false);
                i3 = i4;
                str4 = "ShadeFinderCheckRow";
            } else {
                i3 = i4;
                str4 = "ShadeFinderCheckRow";
                TextKt.c(str, ModifierExtKt.a(n00.i(gapComposerH, -1682610337, "ShadeFinderCheckRow"), null, null, 7), LVAppDesignKitTheme.c(gapComposerH).f48361b.m, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).f48427h, gapComposerH, (i4 >> 3) & 14, 0, 131064);
                gapComposerH = gapComposerH;
                gapComposerH.Z(false);
            }
            GapComposer gapComposer = gapComposerH;
            str3 = str;
            TextKt.c(str2, ModifierExtKt.a(PaddingKt.m(new DTFunctionNameModifier(str4), LVAppDesignKitTheme.l(gapComposerH).f48414b, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 14), null, null, 7), LVAppDesignKitTheme.c(gapComposerH).f48361b.m, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).f48427h, gapComposer, (i3 >> 6) & 14, 0, 131064);
            str5 = str2;
            gapComposerH = gapComposer;
            gapComposerH.Z(true);
        } else {
            str3 = str;
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new vl0(z, str3, str5, i2);
        }
    }

    public static final void b(ShadeFinderViewState shadeFinderViewState, SnackbarHostState snackbarHostState, Function0 function0, Composer composer, int i2) {
        GapComposer gapComposer;
        shadeFinderViewState.getClass();
        snackbarHostState.getClass();
        function0.getClass();
        GapComposer gapComposerH = composer.h(964263906);
        int i3 = i2 | (gapComposerH.y(shadeFinderViewState) ? 4 : 2) | (gapComposerH.y(function0) ? 256 : 128);
        if (gapComposerH.p(i3 & 1, (i3 & 147) != 146)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Context context = (Context) gapComposerH.k(AndroidCompositionLocals_androidKt.f9936b);
            ComposableLambdaImpl composableLambdaImplB = ComposableLambdaKt.b(1013585318, new kn0(function0, 24), gapComposerH);
            ComposableLambdaImpl composableLambdaImplB2 = ComposableLambdaKt.b(292665896, new fs0(snackbarHostState, 6), gapComposerH);
            Color.f8866b.getClass();
            gapComposer = gapComposerH;
            ScaffoldKt.a(null, composableLambdaImplB, null, composableLambdaImplB2, null, 0, Color.f8870h, 0L, WindowInsetsExtKt.a(), ComposableLambdaKt.b(586306353, new ni0(shadeFinderViewState, context, 22), gapComposerH), gapComposer, 806882352, 181);
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new gi0(i2, 25, shadeFinderViewState, snackbarHostState, function0);
        }
    }
}
