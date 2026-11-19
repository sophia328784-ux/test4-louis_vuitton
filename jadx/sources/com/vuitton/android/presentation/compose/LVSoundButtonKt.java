package com.vuitton.android.presentation.compose;

import androidx.compose.material3.IconButtonKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Modifier;
import defpackage.a;
import defpackage.p4;
import defpackage.v70;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class LVSoundButtonKt {
    public static final void a(int i2, Composer composer, Modifier modifier, Function0 function0, boolean z) {
        Function0 function1;
        if (modifier != null) {
            modifier = a.e(modifier, "LVSoundButton");
        }
        Modifier modifier2 = modifier;
        function0.getClass();
        GapComposer gapComposerH = composer.h(257659922);
        int i3 = (gapComposerH.K(modifier2) ? 4 : 2) | i2 | (gapComposerH.b(z) ? 32 : 16) | (gapComposerH.y(function0) ? 256 : 128);
        if (gapComposerH.p(i3 & 1, (i3 & 147) != 146)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            function1 = function0;
            IconButtonKt.a(function1, modifier2, false, null, null, ComposableLambdaKt.b(-794050252, new p4(z, 6, (byte) 0), gapComposerH), gapComposerH, ((i3 >> 6) & 14) | 1572864 | ((i3 << 3) & 112), 60);
        } else {
            function1 = function0;
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new v70(modifier2, i2, z, function1, 0);
        }
    }
}
