package com.vuitton.android.presentation.compose.components;

import androidx.compose.foundation.shape.RoundedCornerShape;
import androidx.compose.foundation.shape.RoundedCornerShapeKt;
import androidx.compose.material3.FloatingActionButtonDefaults;
import androidx.compose.material3.FloatingActionButtonKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.unit.Dp;
import defpackage.ql;
import defpackage.sw;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class FabNoElevationKt {
    public static final void a(Modifier modifier, FabStyle fabStyle, Function0 function0, ComposableLambdaImpl composableLambdaImpl, Composer composer, int i2, int i3) {
        int i4;
        Function0 function1;
        FabStyle fabStyle2;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = defpackage.a.e(modifierE, "FabNoElevation");
        }
        Modifier modifier2 = modifierE;
        function0.getClass();
        GapComposer gapComposerH = composer.h(1390079059);
        if ((i2 & 6) == 0) {
            i4 = (gapComposerH.K(modifier2) ? 4 : 2) | i2;
        } else {
            i4 = i2;
        }
        int i5 = i3 & 2;
        if (i5 != 0) {
            i4 |= 48;
        } else if ((i2 & 48) == 0) {
            i4 |= gapComposerH.d(fabStyle == null ? -1 : fabStyle.ordinal()) ? 32 : 16;
        }
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            function1 = function0;
            i4 |= gapComposerH.y(function1) ? 256 : 128;
        } else {
            function1 = function0;
        }
        if ((i2 & 3072) == 0) {
            i4 |= gapComposerH.y(composableLambdaImpl) ? 2048 : 1024;
        }
        if (gapComposerH.p(i4 & 1, (i4 & 1171) != 1170)) {
            FabStyle fabStyle3 = i5 != 0 ? FabStyle.INVERTED : fabStyle;
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            long j2 = ((Color) fabStyle3.getContainerColor().invoke(gapComposerH, 0)).f8872a;
            long j3 = ((Color) fabStyle3.getContentColor().invoke(gapComposerH, 0)).f8872a;
            RoundedCornerShape roundedCornerShape = RoundedCornerShapeKt.f5846a;
            int i6 = FloatingActionButtonDefaults.f6965a;
            Dp.Companion companion = Dp.f11004c;
            FloatingActionButtonKt.b(function1, modifier2, roundedCornerShape, j2, j3, FloatingActionButtonDefaults.a(0), ComposableLambdaKt.b(1610206993, new ql(composableLambdaImpl, 1), gapComposerH), gapComposerH, ((i4 >> 6) & 14) | 12582912 | ((i4 << 3) & 112), 64);
            fabStyle2 = fabStyle3;
        } else {
            gapComposerH.D();
            fabStyle2 = fabStyle;
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new sw(modifier2, fabStyle2, function0, composableLambdaImpl, i2, i3, 0);
        }
    }
}
