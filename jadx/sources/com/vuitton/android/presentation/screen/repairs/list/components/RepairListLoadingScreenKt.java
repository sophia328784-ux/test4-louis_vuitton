package com.vuitton.android.presentation.screen.repairs.list.components;

import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.layout.WindowInsets;
import androidx.compose.material3.ScaffoldKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.RectangleShapeKt;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.github.druk.dnssd.NSType;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.presentation.extensions.WindowInsetsExtKt;
import defpackage.z4;
import kotlin.Metadata;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class RepairListLoadingScreenKt {
    public static final void a(Function2 function2, Composer composer, int i2) {
        function2.getClass();
        GapComposer gapComposerH = composer.h(-392952378);
        if (gapComposerH.p(i2 & 1, (i2 & 3) != 2)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Modifier modifierB = BackgroundKt.b(new DTFunctionNameModifier("RepairListLoadingScreen"), LVAppDesignKitTheme.c(gapComposerH).f48361b.f48374a, RectangleShapeKt.f8913a);
            WindowInsets windowInsetsA = WindowInsetsExtKt.a();
            ComposableSingletons$RepairListLoadingScreenKt.f63918a.getClass();
            ScaffoldKt.a(modifierB, function2, null, null, null, 0, 0L, 0L, windowInsetsA, ComposableSingletons$RepairListLoadingScreenKt.f63919b, gapComposerH, 805306416, NSType.AXFR);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new z4(function2, i2, 8);
        }
    }
}
