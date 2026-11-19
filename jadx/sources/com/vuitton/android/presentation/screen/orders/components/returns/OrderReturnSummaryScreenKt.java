package com.vuitton.android.presentation.screen.orders.components.returns;

import androidx.compose.material3.ScaffoldKt;
import androidx.compose.material3.SnackbarHostState;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import com.vuitton.android.presentation.screen.orders.models.OrderReturnOrExchangeViewState;
import defpackage.ae0;
import defpackage.ki0;
import defpackage.kw;
import defpackage.oi0;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class OrderReturnSummaryScreenKt {
    public static final void a(OrderReturnOrExchangeViewState orderReturnOrExchangeViewState, SnackbarHostState snackbarHostState, Function0 function0, Function0 function1, Composer composer, int i2) {
        int i3;
        GapComposer gapComposer;
        orderReturnOrExchangeViewState.getClass();
        snackbarHostState.getClass();
        function0.getClass();
        function1.getClass();
        GapComposer gapComposerH = composer.h(580499789);
        if ((i2 & 6) == 0) {
            i3 = (gapComposerH.y(orderReturnOrExchangeViewState) ? 4 : 2) | i2;
        } else {
            i3 = i2;
        }
        if ((i2 & 48) == 0) {
            i3 |= gapComposerH.K(snackbarHostState) ? 32 : 16;
        }
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i3 |= gapComposerH.y(function0) ? 256 : 128;
        }
        if ((i2 & 3072) == 0) {
            i3 |= gapComposerH.y(function1) ? 2048 : 1024;
        }
        if (gapComposerH.p(i3 & 1, (i3 & 1171) != 1170)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            gapComposer = gapComposerH;
            ScaffoldKt.a(null, ComposableLambdaKt.b(-1033967599, new kw(function0, 21), gapComposerH), ComposableLambdaKt.b(1501639826, new kw(function1, 22), gapComposerH), ComposableLambdaKt.b(-257720045, new ae0(snackbarHostState, 14), gapComposerH), null, 0, 0L, 0L, null, ComposableLambdaKt.b(-1386539428, new ki0(orderReturnOrExchangeViewState, 1), gapComposerH), gapComposer, 805309872, 497);
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new oi0(orderReturnOrExchangeViewState, snackbarHostState, function0, function1, i2, 2);
        }
    }
}
