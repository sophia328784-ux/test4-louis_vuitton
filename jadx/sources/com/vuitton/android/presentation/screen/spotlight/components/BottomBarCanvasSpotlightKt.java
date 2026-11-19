package com.vuitton.android.presentation.screen.spotlight.components;

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
import com.vuitton.android.presentation.screen.spotlight.components.BottomBarCanvasSpotlightKt;
import defpackage.zg;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class BottomBarCanvasSpotlightKt {
    public static final void a(Modifier modifier, final float f2, final float f3, long j2, float f4, Composer composer, final int i2) {
        final long j3;
        final float f5;
        float f6;
        long j4;
        if (modifier != null) {
            modifier = defpackage.a.e(modifier, "BottomBarCanvas-2D0uZ-s");
        }
        GapComposer gapComposerH = composer.h(-268046117);
        int i3 = i2 | 9222;
        if (gapComposerH.p(i3 & 1, (i3 & 9363) != 9362)) {
            gapComposerH.y0();
            if ((i2 & 1) == 0 || gapComposerH.h0()) {
                modifier = new DTFunctionNameModifier("BottomBarCanvas-2D0uZ-s");
                long j5 = LVAppDesignKitTheme.c(gapComposerH).f48361b.u;
                f6 = LVAppDesignKitTheme.d(gapComposerH).m;
                j4 = j5;
            } else {
                gapComposerH.D();
                j4 = j2;
                f6 = f4;
            }
            gapComposerH.a0();
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Modifier modifierF = SizeKt.f(SizeKt.d(modifier, 1.0f), f2);
            Color.f8866b.getClass();
            Modifier modifierB = BackgroundKt.b(modifierF, Color.f8870h, RectangleShapeKt.f8913a);
            boolean zC = gapComposerH.c(f6) | gapComposerH.e(j4);
            Object objX = gapComposerH.x();
            if (zC || objX == Composer.Companion.f7939a) {
                zg zgVar = new zg(f6, f3, j4, 0);
                gapComposerH.q(zgVar);
                objX = zgVar;
            }
            CanvasKt.a(modifierB, (Function1) objX, gapComposerH, 0);
            f5 = f6;
            j3 = j4;
        } else {
            gapComposerH.D();
            j3 = j2;
            f5 = f4;
        }
        final Modifier modifier2 = modifier;
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new Function2(f2, f3, f5, i2, j3, modifier2) { // from class: ah

                /* JADX INFO: renamed from: b, reason: collision with root package name */
                public final /* synthetic */ Modifier f509b;

                /* JADX INFO: renamed from: c, reason: collision with root package name */
                public final /* synthetic */ float f510c;
                public final /* synthetic */ float d;

                /* JADX INFO: renamed from: e, reason: collision with root package name */
                public final /* synthetic */ long f511e;

                /* JADX INFO: renamed from: f, reason: collision with root package name */
                public final /* synthetic */ float f512f;

                {
                    this.f509b = modifier2;
                    this.f511e = j3;
                }

                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    ((Integer) obj2).getClass();
                    int iA = RecomposeScopeImplKt.a(433);
                    BottomBarCanvasSpotlightKt.a(this.f509b, this.f510c, this.d, this.f511e, this.f512f, (Composer) obj, iA);
                    return Unit.f71739a;
                }
            };
        }
    }
}
