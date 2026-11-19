package com.vuitton.android.presentation.screen.options.optoutprivacymenu.components;

import androidx.compose.material3.ScaffoldKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import defpackage.gl;
import defpackage.hl;
import defpackage.kw;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class OptOutOthersScreenKt {
    public static final void a(Function0 function0, Function0 function1, Function0 function2, Composer composer, int i2) {
        GapComposer gapComposer;
        function0.getClass();
        function1.getClass();
        function2.getClass();
        GapComposer gapComposerH = composer.h(-618527807);
        int i3 = i2 | (gapComposerH.y(function0) ? 4 : 2) | (gapComposerH.y(function1) ? 32 : 16) | (gapComposerH.y(function2) ? 256 : 128);
        if (gapComposerH.p(i3 & 1, (i3 & 147) != 146)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            gapComposer = gapComposerH;
            ScaffoldKt.a(null, ComposableLambdaKt.b(724584069, new kw(function0, 14), gapComposerH), null, null, null, 0, 0L, 0L, null, ComposableLambdaKt.b(1379458000, new gl(function1, function2, 3), gapComposerH), gapComposer, 805306416, 509);
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new hl(function0, function1, function2, i2, 1);
        }
    }
}
