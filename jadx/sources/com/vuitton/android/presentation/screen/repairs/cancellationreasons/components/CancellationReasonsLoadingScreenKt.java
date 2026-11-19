package com.vuitton.android.presentation.screen.repairs.cancellationreasons.components;

import androidx.compose.material3.ScaffoldKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImpl;
import defpackage.z4;
import kotlin.Metadata;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class CancellationReasonsLoadingScreenKt {
    public static final void a(Function2 function2, Composer composer, int i2) {
        function2.getClass();
        GapComposer gapComposerH = composer.h(-134247542);
        char c2 = 2;
        if (gapComposerH.p(i2 & 1, (i2 & 3) != 2)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            ComposableSingletons$CancellationReasonsLoadingScreenKt.f63625a.getClass();
            ScaffoldKt.a(null, function2, null, null, null, 0, 0L, 0L, null, ComposableSingletons$CancellationReasonsLoadingScreenKt.f63626b, gapComposerH, 805306416, 509);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new z4(function2, i2, c2);
        }
    }
}
