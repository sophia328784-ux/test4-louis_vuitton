package com.vuitton.android.designkit.ui.theme.atoms;

import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.CanvasKt;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.RectangleShapeKt;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.atoms.LVBottomRoundOverlayKt;
import defpackage.av;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"system"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class LVBottomRoundOverlayKt {
    public static final void a(final int i2, final int i3, long j2, Composer composer, Modifier modifier) {
        int i4;
        Modifier dTFunctionNameModifier = modifier;
        if (dTFunctionNameModifier != null) {
            dTFunctionNameModifier = defpackage.a.e(dTFunctionNameModifier, "LVBottomRoundOverlay-iJQMabo");
        }
        GapComposer gapComposerH = composer.h(-2026131520);
        int i5 = i3 & 1;
        if (i5 != 0) {
            i4 = i2 | 6;
        } else {
            i4 = i2 | (gapComposerH.K(dTFunctionNameModifier) ? 4 : 2);
        }
        long j3 = j2;
        int i6 = i4 | (((i3 & 2) == 0 && gapComposerH.e(j3)) ? 32 : 16);
        if (gapComposerH.p(i6 & 1, (i6 & 19) != 18)) {
            gapComposerH.y0();
            if ((i2 & 1) == 0 || gapComposerH.h0()) {
                if (i5 != 0) {
                    dTFunctionNameModifier = new DTFunctionNameModifier("LVBottomRoundOverlay-iJQMabo");
                }
                if ((i3 & 2) != 0) {
                    j3 = LVAppDesignKitTheme.c(gapComposerH).f48361b.u;
                    i6 &= -113;
                }
            } else {
                gapComposerH.D();
                if ((i3 & 2) != 0) {
                    i6 &= -113;
                }
            }
            gapComposerH.a0();
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            float f2 = LVAppDesignKitTheme.d(gapComposerH).f48388h;
            Modifier modifierF = SizeKt.f(SizeKt.d(dTFunctionNameModifier, 1.0f), f2);
            Color.f8866b.getClass();
            Modifier modifierB = BackgroundKt.b(modifierF, Color.f8870h, RectangleShapeKt.f8913a);
            boolean zC = ((((i6 & 112) ^ 48) > 32 && gapComposerH.e(j3)) || (i6 & 48) == 32) | gapComposerH.c(f2);
            Object objX = gapComposerH.x();
            if (zC || objX == Composer.Companion.f7939a) {
                objX = new av(j3, 1, f2);
                gapComposerH.q(objX);
            }
            CanvasKt.a(modifierB, (Function1) objX, gapComposerH, 0);
        } else {
            gapComposerH.D();
        }
        final Modifier modifier2 = dTFunctionNameModifier;
        final long j4 = j3;
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new Function2(j4, i2, i3) { // from class: g50

                /* JADX INFO: renamed from: c, reason: collision with root package name */
                public final /* synthetic */ long f69299c;
                public final /* synthetic */ int d;

                {
                    this.d = i3;
                }

                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    ((Integer) obj2).getClass();
                    LVBottomRoundOverlayKt.a(RecomposeScopeImplKt.a(1), this.d, this.f69299c, (Composer) obj, this.f69298b);
                    return Unit.f71739a;
                }
            };
        }
    }
}
