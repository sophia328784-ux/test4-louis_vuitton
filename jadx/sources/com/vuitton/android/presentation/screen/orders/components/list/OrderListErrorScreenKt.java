package com.vuitton.android.presentation.screen.orders.components.list;

import androidx.compose.foundation.layout.WindowInsets;
import androidx.compose.material3.ScaffoldKt;
import androidx.compose.material3.SnackbarHostState;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import com.vuitton.android.presentation.extensions.WindowInsetsExtKt;
import defpackage.ae0;
import defpackage.v4;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class OrderListErrorScreenKt {
    public static final void a(SnackbarHostState snackbarHostState, ComposableLambdaImpl composableLambdaImpl, Composer composer, int i2) {
        snackbarHostState.getClass();
        GapComposer gapComposerH = composer.h(-1874926771);
        if (gapComposerH.p(i2 & 1, (i2 & 19) != 18)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            WindowInsets windowInsetsA = WindowInsetsExtKt.a();
            ComposableLambdaImpl composableLambdaImplB = ComposableLambdaKt.b(-249355629, new ae0(snackbarHostState, 10), gapComposerH);
            ComposableSingletons$OrderListErrorScreenKt.f60190a.getClass();
            ScaffoldKt.a(null, composableLambdaImpl, null, composableLambdaImplB, null, 0, 0L, 0L, windowInsetsA, ComposableSingletons$OrderListErrorScreenKt.f60191b, gapComposerH, 805309488, 245);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new v4(snackbarHostState, composableLambdaImpl, i2, 1);
        }
    }
}
