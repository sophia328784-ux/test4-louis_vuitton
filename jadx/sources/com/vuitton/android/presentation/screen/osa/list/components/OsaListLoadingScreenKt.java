package com.vuitton.android.presentation.screen.osa.list.components;

import androidx.compose.material3.ScaffoldKt;
import androidx.compose.material3.SnackbarHostState;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import defpackage.ae0;
import defpackage.ff0;
import kotlin.Metadata;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class OsaListLoadingScreenKt {
    public static final void a(SnackbarHostState snackbarHostState, Function2 function2, Composer composer, int i2) {
        snackbarHostState.getClass();
        function2.getClass();
        GapComposer gapComposerH = composer.h(-1309832725);
        if (gapComposerH.p(i2 & 1, (i2 & 19) != 18)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            ComposableLambdaImpl composableLambdaImplB = ComposableLambdaKt.b(-1954217883, new ae0(snackbarHostState, 16), gapComposerH);
            ComposableSingletons$OsaListLoadingScreenKt.f60880a.getClass();
            ScaffoldKt.a(null, function2, null, composableLambdaImplB, null, 0, 0L, 0L, null, ComposableSingletons$OsaListLoadingScreenKt.f60881b, gapComposerH, 805309488, 501);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new ff0(snackbarHostState, function2, i2, 1);
        }
    }
}
