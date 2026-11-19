package com.vuitton.android.designkit.ui.theme.atoms;

import androidx.compose.foundation.CanvasKt;
import androidx.compose.foundation.FocusableKt;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.shape.RoundedCornerShapeKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.ClipKt;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.unit.Dp;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.designkit.ui.common.ModifierExtKt;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import defpackage.r5;
import defpackage.t50;
import defpackage.v1;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"system"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class LVDragHandleKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final float f48470a;

    static {
        Dp.Companion companion = Dp.f11004c;
        f48470a = 4.0f;
    }

    public static final void a(Color color, String str, Function0 function0, Composer composer, int i2, int i3) {
        Color color2;
        int i4;
        String str2;
        int i5;
        Function0 function1;
        int i6;
        long j2;
        GapComposer gapComposerH = composer.h(-523305688);
        int i7 = i3 & 1;
        if (i7 != 0) {
            i4 = i2 | 6;
            color2 = color;
        } else {
            color2 = color;
            i4 = i2 | (gapComposerH.K(color2) ? 4 : 2);
        }
        int i8 = i3 & 2;
        if (i8 != 0) {
            i5 = i4 | 48;
            str2 = str;
        } else {
            str2 = str;
            i5 = i4 | (gapComposerH.K(str2) ? 32 : 16);
        }
        int i9 = i3 & 4;
        if (i9 != 0) {
            i6 = i5 | KyberEngine.KyberPolyBytes;
            function1 = function0;
        } else {
            function1 = function0;
            i6 = i5 | (gapComposerH.y(function1) ? 256 : 128);
        }
        int i10 = 0;
        if (gapComposerH.p(i6 & 1, (i6 & 147) != 146)) {
            if (i7 != 0) {
                color2 = null;
            }
            if (i8 != 0) {
                str2 = null;
            }
            if (i9 != 0) {
                function1 = null;
            }
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            if (color2 == null) {
                gapComposerH.L(-385585742);
                j2 = LVAppDesignKitTheme.c(gapComposerH).f48361b.q;
                gapComposerH.Z(false);
            } else {
                gapComposerH.L(-385587292);
                gapComposerH.Z(false);
                j2 = color2.f8872a;
            }
            DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier("LVDragHandle-YCSmB94");
            Dp.Companion companion = Dp.f11004c;
            Modifier modifierC = FocusableKt.c(ClipKt.a(SizeKt.f(SizeKt.s(PaddingKt.i(dTFunctionNameModifier, 16.0f), 40.0f), f48470a), RoundedCornerShapeKt.a(10.0f)), null, 2);
            boolean z = ((i6 & 112) == 32) | ((i6 & 896) == 256);
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (z || objX == composer$Companion$Empty$1) {
                objX = new t50(i10, str2, function1);
                gapComposerH.q(objX);
            }
            Modifier modifierB = ModifierExtKt.b(modifierC, null, (Function1) objX, 3);
            boolean zE = gapComposerH.e(j2);
            Object objX2 = gapComposerH.x();
            if (zE || objX2 == composer$Companion$Empty$1) {
                objX2 = new r5(j2, 5);
                gapComposerH.q(objX2);
            }
            CanvasKt.a(modifierB, (Function1) objX2, gapComposerH, 0);
        } else {
            gapComposerH.D();
        }
        Color color3 = color2;
        String str3 = str2;
        Function0 function2 = function1;
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new v1(color3, str3, function2, i2, i3);
        }
    }
}
