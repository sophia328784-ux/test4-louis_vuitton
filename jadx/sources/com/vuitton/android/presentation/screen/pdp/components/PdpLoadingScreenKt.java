package com.vuitton.android.presentation.screen.pdp.components;

import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.material3.ScaffoldKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Modifier;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import defpackage.kw;
import defpackage.pu;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class PdpLoadingScreenKt {
    public static final void a(Function0 function0, Composer composer, int i2) {
        int i3;
        function0.getClass();
        GapComposer gapComposerH = composer.h(-1723480619);
        if ((i2 & 6) == 0) {
            i3 = (gapComposerH.y(function0) ? 4 : 2) | i2;
        } else {
            i3 = i2;
        }
        if (gapComposerH.p(i3 & 1, (i3 & 3) != 2)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Modifier modifierO = new DTFunctionNameModifier("PdpLoadingScreen").o(SizeKt.f5052c);
            ComposableLambdaImpl composableLambdaImplB = ComposableLambdaKt.b(-517308519, new kw(function0, 29), gapComposerH);
            ComposableSingletons$PdpLoadingScreenKt.f61366a.getClass();
            ScaffoldKt.a(modifierO, composableLambdaImplB, null, null, null, 0, 0L, 0L, null, ComposableSingletons$PdpLoadingScreenKt.f61367b, gapComposerH, 805306422, 508);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new pu(i2, 3, function0);
        }
    }
}
