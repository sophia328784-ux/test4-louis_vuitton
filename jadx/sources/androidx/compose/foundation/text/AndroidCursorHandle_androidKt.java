package androidx.compose.foundation.text;

import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.layout.SpacerKt;
import androidx.compose.foundation.text.selection.AndroidSelectionHandles_androidKt;
import androidx.compose.foundation.text.selection.OffsetProvider;
import androidx.compose.foundation.text.selection.TextSelectionColors;
import androidx.compose.foundation.text.selection.TextSelectionColorsKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.DrawModifierKt;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.unit.DpSize;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import defpackage.c1;
import defpackage.o5;
import defpackage.p5;
import defpackage.q5;
import defpackage.r5;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"foundation"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class AndroidCursorHandle_androidKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final float f5847a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final float f5848b;

    static {
        Dp.Companion companion = Dp.f11004c;
        f5847a = 25.0f;
        f5848b = (25.0f * 2.0f) / 2.4142137f;
    }

    public static final void a(OffsetProvider offsetProvider, Modifier modifier, long j2, Composer composer, int i2) {
        if (modifier != null) {
            modifier = defpackage.a.e(modifier, "CursorHandle-USBMPiE");
        }
        Modifier modifier2 = modifier;
        GapComposer gapComposerH = composer.h(1776202187);
        int i3 = (gapComposerH.K(offsetProvider) ? 4 : 2) | i2 | (gapComposerH.K(modifier2) ? 32 : 16) | 128;
        if (gapComposerH.p(i3 & 1, (i3 & 147) != 146)) {
            gapComposerH.y0();
            if ((i2 & 1) == 0 || gapComposerH.h0()) {
                DpSize.f11009b.getClass();
                j2 = DpSize.f11010c;
            } else {
                gapComposerH.D();
            }
            int i4 = i3 & (-897);
            gapComposerH.a0();
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            int i5 = i4 & 14;
            boolean z = i5 == 4;
            Object objX = gapComposerH.x();
            if (z || objX == Composer.Companion.f7939a) {
                objX = new c1(offsetProvider, 10);
                gapComposerH.q(objX);
            }
            Modifier modifierB = SemanticsModifierKt.b(modifier2, false, (Function1) objX);
            Alignment.f8582a.getClass();
            AndroidSelectionHandles_androidKt.a(offsetProvider, Alignment.Companion.f8585c, ComposableLambdaKt.b(-1653527038, new o5(j2, modifierB), gapComposerH), gapComposerH, i5 | 432);
        } else {
            gapComposerH.D();
        }
        long j3 = j2;
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new p5(offsetProvider, modifier2, j3, i2, 0);
        }
    }

    public static final void b(Modifier modifier, Composer composer, int i2, int i3) {
        int i4;
        if (modifier != null) {
            modifier = defpackage.a.e(modifier, "DefaultCursorHandle");
        }
        GapComposer gapComposerH = composer.h(694251107);
        int i5 = i3 & 1;
        if (i5 != 0) {
            i4 = i2 | 6;
        } else {
            i4 = (gapComposerH.K(modifier) ? 4 : 2) | i2;
        }
        int i6 = 0;
        if (gapComposerH.p(i4 & 1, (i4 & 3) != 2)) {
            if (i5 != 0) {
                modifier = new DTFunctionNameModifier("DefaultCursorHandle");
            }
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            SpacerKt.a(gapComposerH, DrawModifierKt.c(SizeKt.p(modifier, f5848b, f5847a), new r5(((TextSelectionColors) gapComposerH.k(TextSelectionColorsKt.f6503a)).f6501a, i6)));
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new q5(modifier, i2, i3);
        }
    }
}
