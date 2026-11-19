package com.vuitton.android.presentation.screen.repairs.detail.components;

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
import defpackage.fs0;
import defpackage.kn0;
import defpackage.rx;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class RepairDetailErrorScreenKt {
    public static final void a(SnackbarHostState snackbarHostState, Function0 function0, Composer composer, int i2) {
        int i3;
        GapComposer gapComposer;
        int i4;
        snackbarHostState.getClass();
        function0.getClass();
        GapComposer gapComposerH = composer.h(-135313444);
        if ((i2 & 6) == 0) {
            i3 = (gapComposerH.K(snackbarHostState) ? 4 : 2) | i2;
        } else {
            i3 = i2;
        }
        if ((i2 & 48) == 0) {
            i3 |= gapComposerH.y(function0) ? 32 : 16;
        }
        if (gapComposerH.p(i3 & 1, (i3 & 19) != 18)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            ComposableLambdaImpl composableLambdaImplB = ComposableLambdaKt.b(1051827096, new kn0(function0, 11), gapComposerH);
            ComposableLambdaImpl composableLambdaImplB2 = ComposableLambdaKt.b(-914159658, new fs0(snackbarHostState, 1), gapComposerH);
            WindowInsets windowInsetsA = WindowInsetsExtKt.a();
            ComposableSingletons$RepairDetailErrorScreenKt.f63788a.getClass();
            gapComposer = gapComposerH;
            i4 = 1;
            ScaffoldKt.a(null, composableLambdaImplB, null, composableLambdaImplB2, null, 0, 0L, 0L, windowInsetsA, ComposableSingletons$RepairDetailErrorScreenKt.f63789b, gapComposer, 805309488, 245);
        } else {
            gapComposer = gapComposerH;
            i4 = 1;
            gapComposer.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new rx(snackbarHostState, function0, i2, i4);
        }
    }
}
