package com.vuitton.android.presentation.compose;

import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.shape.RoundedCornerShapeKt;
import androidx.compose.material3.IconButtonDefaults;
import androidx.compose.material3.IconButtonKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Color;
import com.vuitton.android.designkit.ui.theme.IconSize;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import defpackage.a;
import defpackage.e6;
import defpackage.p4;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class LVPlayPauseButtonKt {
    public static final void a(int i2, Composer composer, Modifier modifier, Function0 function0, boolean z) {
        Function0 function1;
        if (modifier != null) {
            modifier = a.e(modifier, "LVPlayPauseButton");
        }
        function0.getClass();
        GapComposer gapComposerH = composer.h(197768748);
        int i3 = (gapComposerH.K(modifier) ? 4 : 2) | i2 | (gapComposerH.b(z) ? 32 : 16);
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i3 |= gapComposerH.y(function0) ? 256 : 128;
        }
        if (gapComposerH.p(i3 & 1, (i3 & 147) != 146)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            function1 = function0;
            IconButtonKt.a(function1, SizeKt.o(modifier, IconSize.f48349c), false, IconButtonDefaults.b(Color.b(0.75f, LVAppDesignKitTheme.c(gapComposerH).f48361b.m), LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k, gapComposerH), RoundedCornerShapeKt.f5846a, ComposableLambdaKt.b(900964686, new p4(z, 5, (byte) 0), gapComposerH), gapComposerH, ((i3 >> 6) & 14) | 1572864, 20);
        } else {
            function1 = function0;
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new e6(modifier, z, function1, i2);
        }
    }
}
