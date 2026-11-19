package com.vuitton.android.presentation.screen.pdp.components.subcomponents;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Modifier;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.designkit.ui.common.ModifierExtKt;
import com.vuitton.android.presentation.compose.components.CollapsingDetailListKt;
import defpackage.h;
import defpackage.u9;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class PdpCareAndSustainabilityKt {
    public static final void a(Modifier modifier, List list, Function1 function1, Composer composer, int i2, int i3) {
        int i4;
        if (modifier != null) {
            modifier = defpackage.a.e(modifier, "PdpCareAndSustainability");
        }
        list.getClass();
        function1.getClass();
        GapComposer gapComposerH = composer.h(-1620799557);
        int i5 = i3 & 1;
        if (i5 != 0) {
            i4 = i2 | 6;
        } else {
            i4 = (gapComposerH.K(modifier) ? 4 : 2) | i2;
        }
        int i6 = i4 | (gapComposerH.y(list) ? 32 : 16);
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i6 |= gapComposerH.y(function1) ? 256 : 128;
        }
        if (gapComposerH.p(i6 & 1, (i6 & 147) != 146)) {
            if (i5 != 0) {
                modifier = new DTFunctionNameModifier("PdpCareAndSustainability");
            }
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Modifier modifierE = ModifierExtKt.e(modifier, "pdp_careAndSustainability_list");
            ComposableLambdaImpl composableLambdaImplB = ComposableLambdaKt.b(-27952822, new u9(function1, 5), gapComposerH);
            ComposableSingletons$PdpCareAndSustainabilityKt.f61435a.getClass();
            CollapsingDetailListKt.c(modifierE, list, 0L, composableLambdaImplB, ComposableSingletons$PdpCareAndSustainabilityKt.f61436b, ComposableSingletons$PdpCareAndSustainabilityKt.f61437c, gapComposerH, (i6 & 112) | 224256, 4);
        } else {
            gapComposerH.D();
        }
        Modifier modifier2 = modifier;
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new h(modifier2, list, function1, i2, i3, 9);
        }
    }
}
