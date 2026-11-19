package com.vuitton.android.presentation.screen.pdp.components;

import androidx.compose.material3.ScaffoldKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import com.github.druk.dnssd.NSType;
import com.vuitton.android.presentation.extensions.WindowInsetsExtKt;
import defpackage.a3;
import defpackage.a9;
import defpackage.kw;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class PdpErrorScreenKt {
    public static final void a(Function0 function0, Function0 function1, Composer composer, int i2) {
        int i3;
        GapComposer gapComposer;
        GapComposer gapComposerC = defpackage.a.c(function0, function1, composer, -795427151);
        if ((i2 & 6) == 0) {
            i3 = (gapComposerC.y(function0) ? 4 : 2) | i2;
        } else {
            i3 = i2;
        }
        if ((i2 & 48) == 0) {
            i3 |= gapComposerC.y(function1) ? 32 : 16;
        }
        if (gapComposerC.p(i3 & 1, (i3 & 19) != 18)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            gapComposer = gapComposerC;
            ScaffoldKt.a(null, ComposableLambdaKt.b(2123502965, new kw(function0, 28), gapComposerC), null, null, null, 0, 0L, 0L, WindowInsetsExtKt.a(), ComposableLambdaKt.b(1532629440, new a3(function1, 22), gapComposerC), gapComposer, 805306416, NSType.MAILB);
        } else {
            gapComposer = gapComposerC;
            gapComposer.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new a9(function0, function1, i2, 7);
        }
    }
}
