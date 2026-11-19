package com.vuitton.android.presentation.compose.components;

import androidx.compose.foundation.gestures.AnchoredDraggableState;
import androidx.compose.foundation.layout.BoxWithConstraintsKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Modifier;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import defpackage.ff;
import defpackage.yv0;
import java.util.Set;
import kotlin.Metadata;
import kotlin.jvm.functions.Function3;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class SwipeToDismissVerticalKt {
    public static final void a(AnchoredDraggableState anchoredDraggableState, Modifier modifier, Set set, float f2, Function3 function3, ComposableLambdaImpl composableLambdaImpl, Composer composer, int i2) {
        Modifier modifier2;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = defpackage.a.e(modifierE, "SwipeToDismissVertical");
        }
        function3.getClass();
        GapComposer gapComposerH = composer.h(-1827561702);
        int i3 = i2 | 48 | (gapComposerH.y(composableLambdaImpl) ? 131072 : 65536);
        if (gapComposerH.p(i3 & 1, (74899 & i3) != 74898)) {
            DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier("SwipeToDismissVertical");
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            BoxWithConstraintsKt.a(dTFunctionNameModifier, null, false, ComposableLambdaKt.b(-1216773884, new yv0(set, anchoredDraggableState, f2, function3, composableLambdaImpl), gapComposerH), gapComposerH, 3078, 6);
            modifier2 = dTFunctionNameModifier;
        } else {
            gapComposerH.D();
            modifier2 = modifierE;
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new ff(anchoredDraggableState, modifier2, set, f2, function3, composableLambdaImpl, i2);
        }
    }
}
