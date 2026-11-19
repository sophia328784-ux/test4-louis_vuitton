package com.vuitton.android.presentation.screen.orders.components.list;

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
import defpackage.li0;
import defpackage.ue0;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class OrderListEmptyScreenKt {
    public static final void a(SnackbarHostState snackbarHostState, ComposableLambdaImpl composableLambdaImpl, Function0 function0, Composer composer, int i2) {
        int i3;
        ComposableLambdaImpl composableLambdaImpl2;
        GapComposer gapComposer;
        snackbarHostState.getClass();
        function0.getClass();
        GapComposer gapComposerH = composer.h(-545632393);
        if ((i2 & 6) == 0) {
            i3 = (gapComposerH.K(snackbarHostState) ? 4 : 2) | i2;
        } else {
            i3 = i2;
        }
        if ((i2 & 48) == 0) {
            composableLambdaImpl2 = composableLambdaImpl;
            i3 |= gapComposerH.y(composableLambdaImpl2) ? 32 : 16;
        } else {
            composableLambdaImpl2 = composableLambdaImpl;
        }
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i3 |= gapComposerH.y(function0) ? 256 : 128;
        }
        if (gapComposerH.p(i3 & 1, (i3 & 147) != 146)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            gapComposer = gapComposerH;
            ScaffoldKt.a(null, composableLambdaImpl2, null, ComposableLambdaKt.b(1910812477, new ae0(snackbarHostState, 9), gapComposerH), null, 0, 0L, 0L, WindowInsetsExtKt.a(), ComposableLambdaKt.b(1312532614, new ue0(snackbarHostState, function0, 2), gapComposerH), gapComposer, (i3 & 112) | 805309440, 245);
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new li0(snackbarHostState, composableLambdaImpl, function0, i2, 0);
        }
    }
}
