package com.sightcall.graphik.composent;

import androidx.compose.material3.DividerKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.res.ColorResources_androidKt;
import androidx.compose.ui.unit.Dp;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.sightcall.graphik.R;
import defpackage.a;
import defpackage.wf;
import kotlin.Metadata;
import kotlin.Unit;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a\u0017\u0010\u0000\u001a\u00020\u00012\b\b\u0002\u0010\u0002\u001a\u00020\u0003H\u0007¢\u0006\u0002\u0010\u0004¨\u0006\u0005"}, d2 = {"VisionDivider", "", "modifier", "Landroidx/compose/ui/Modifier;", "(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;II)V", "graphik_release"}, k = 2, mv = {2, 3, 0}, xi = 48)
public final class DividersKt {
    public static final void VisionDivider(Modifier modifier, Composer composer, int i2, int i3) {
        int i4;
        Modifier modifier2;
        if (modifier != null) {
            modifier = a.e(modifier, "VisionDivider");
        }
        GapComposer gapComposerH = composer.h(-1161725952);
        int i5 = i3 & 1;
        if (i5 != 0) {
            i4 = i2 | 6;
        } else if ((i2 & 6) == 0) {
            i4 = (gapComposerH.K(modifier) ? 4 : 2) | i2;
        } else {
            i4 = i2;
        }
        if ((i4 & 3) == 2 && gapComposerH.i()) {
            gapComposerH.D();
            modifier2 = modifier;
        } else {
            if (i5 != 0) {
                modifier = new DTFunctionNameModifier("VisionDivider");
            }
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            long jB = Color.b(0.3f, ColorResources_androidKt.a(gapComposerH, R.color.universal_consentDividerColor));
            Dp.Companion companion = Dp.f11004c;
            int i6 = (i4 & 14) | 48;
            Modifier modifier3 = modifier;
            DividerKt.a(modifier3, 1.0f, jB, gapComposerH, i6, 0);
            modifier2 = modifier3;
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new wf(modifier2, i2, i3, 1, (byte) 0);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit VisionDivider$lambda$0(Modifier modifier, int i2, int i3, Composer composer, int i4) {
        VisionDivider(modifier, composer, RecomposeScopeImplKt.a(i2 | 1), i3);
        return Unit.f71739a;
    }
}
