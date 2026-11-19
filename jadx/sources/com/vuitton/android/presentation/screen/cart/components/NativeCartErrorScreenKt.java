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
import defpackage.ve0;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class NativeCartErrorScreenKt {
    public static final void a(SnackbarHostState snackbarHostState, Function2 function2, Function0 function0, Composer composer, int i2) {
        SnackbarHostState snackbarHostState2;
        GapComposer gapComposer;
        snackbarHostState.getClass();
        function2.getClass();
        function0.getClass();
        GapComposer gapComposerH = composer.h(-774528216);
        int i3 = i2 | (gapComposerH.y(function0) ? 256 : 128);
        if (gapComposerH.p(i3 & 1, (i3 & 147) != 146)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            snackbarHostState2 = snackbarHostState;
            gapComposer = gapComposerH;
            ScaffoldKt.a(null, function2, null, null, null, 0, 0L, 0L, WindowInsetsExtKt.a(), ComposableLambdaKt.b(1563860153, new ue0(snackbarHostState2, function0, 1), gapComposerH), gapComposer, 805306416, NSType.MAILB);
        } else {
            snackbarHostState2 = snackbarHostState;
            gapComposer = gapComposerH;
            gapComposer.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new ve0(snackbarHostState2, function2, function0, i2, 0);
        }
    }
}
