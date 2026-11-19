package com.vuitton.android.presentation.screen.authentication.base;

import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.Arrangement$Top$1;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.material3.AppBarKt;
import androidx.compose.material3.DividerKt;
import androidx.compose.material3.MaterialTheme;
import androidx.compose.material3.TopAppBarColors;
import androidx.compose.material3.TopAppBarDefaults;
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
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.node.ComposeUiNode;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import defpackage.a;
import defpackage.o5;
import defpackage.s;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class WebViewTopBarKt {
    public static final void a(int i2, Composer composer, Modifier modifier, Function0 function0) {
        Modifier dTFunctionNameModifier = modifier;
        if (dTFunctionNameModifier != null) {
            dTFunctionNameModifier = a.e(dTFunctionNameModifier, "WebViewTopBar");
        }
        function0.getClass();
        GapComposer gapComposerH = composer.h(1830724861);
        int i3 = (gapComposerH.y(function0) ? 4 : 2) | i2 | 48;
        if (gapComposerH.p(i3 & 1, (i3 & 19) != 18)) {
            dTFunctionNameModifier = new DTFunctionNameModifier("WebViewTopBar");
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            long j2 = LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k;
            Arrangement$Top$1 arrangement$Top$1 = Arrangement.f4920c;
            Alignment.f8582a.getClass();
            ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(arrangement$Top$1, Alignment.Companion.n, gapComposerH, 0);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, dTFunctionNameModifier);
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
            Updater.c(gapComposerH, columnMeasurePolicyA, ComposeUiNode.Companion.f9644f);
            Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
            Updater.c(gapComposerH, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
            Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
            Updater.c(gapComposerH, modifierC, ComposeUiNode.Companion.d);
            float f2 = TopAppBarDefaults.f7433a;
            long j3 = LVAppDesignKitTheme.c(gapComposerH).f48361b.f48374a;
            Color.f8866b.getClass();
            long j4 = Color.f8871i;
            TopAppBarColors topAppBarColorsB = TopAppBarDefaults.b(MaterialTheme.a(gapComposerH));
            TopAppBarColors topAppBarColorsA = topAppBarColorsB.a(j3, j4, j4, j4, j4, topAppBarColorsB.f7432f);
            ComposableSingletons$WebViewTopBarKt.f53448a.getClass();
            AppBarKt.a(ComposableSingletons$WebViewTopBarKt.f53449b, null, ComposableLambdaKt.b(106899546, new o5(j2, function0), gapComposerH), null, Call.Parameters.DEFAULT_CAMERA_ZOOM, null, topAppBarColorsA, gapComposerH, 390, 186);
            DividerKt.a(null, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.c(gapComposerH).f48361b.q, gapComposerH, 0, 3);
            gapComposerH.Z(true);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new s(function0, dTFunctionNameModifier, i2);
        }
    }
}
