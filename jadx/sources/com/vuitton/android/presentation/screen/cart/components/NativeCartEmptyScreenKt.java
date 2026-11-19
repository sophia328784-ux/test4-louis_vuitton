package com.vuitton.android.presentation.screen.cart.components;

import androidx.compose.material3.ScaffoldKt;
import androidx.compose.material3.SnackbarHostState;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import com.github.druk.dnssd.NSType;
import com.vuitton.android.presentation.extensions.WindowInsetsExtKt;
import defpackage.ue0;
import defpackage.v1;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class NativeCartEmptyScreenKt {
    public static final void a(SnackbarHostState snackbarHostState, Function2 function2, Function0 function0, Composer composer, int i2) {
        int i3;
        GapComposer gapComposer;
        snackbarHostState.getClass();
        function2.getClass();
        function0.getClass();
        GapComposer gapComposerH = composer.h(-1479567522);
        if ((i2 & 6) == 0) {
            i3 = (gapComposerH.K(snackbarHostState) ? 4 : 2) | i2;
        } else {
            i3 = i2;
        }
        if ((i2 & 48) == 0) {
            i3 |= gapComposerH.y(function2) ? 32 : 16;
        }
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i3 |= gapComposerH.y(function0) ? 256 : 128;
        }
        if (gapComposerH.p(i3 & 1, (i3 & 147) != 146)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            gapComposer = gapComposerH;
            ScaffoldKt.a(null, function2, null, null, null, 0, 0L, 0L, WindowInsetsExtKt.a(), ComposableLambdaKt.b(858820847, new ue0(snackbarHostState, function0, 0), gapComposerH), gapComposer, (i3 & 112) | 805306368, NSType.MAILB);
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new v1(snackbarHostState, function2, function0, i2, 28);
        }
    }
}
