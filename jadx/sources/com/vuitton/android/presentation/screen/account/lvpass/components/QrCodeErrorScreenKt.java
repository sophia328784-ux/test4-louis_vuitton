package com.vuitton.android.presentation.screen.account.lvpass.components;

import androidx.compose.foundation.layout.WindowInsets;
import androidx.compose.material3.ScaffoldKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import com.github.druk.dnssd.NSType;
import com.vuitton.android.presentation.extensions.WindowInsetsExtKt;
import defpackage.a;
import defpackage.a3;
import defpackage.a9;
import defpackage.kn0;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class QrCodeErrorScreenKt {
    public static final void a(Function0 function0, Function0 function1, Composer composer, int i2) {
        int i3;
        GapComposer gapComposer;
        int i4;
        GapComposer gapComposerC = a.c(function0, function1, composer, 1654624005);
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
            ComposableLambdaImpl composableLambdaImplB = ComposableLambdaKt.b(-1951655743, new kn0(function0, 8), gapComposerC);
            WindowInsets windowInsetsA = WindowInsetsExtKt.a();
            ComposableLambdaImpl composableLambdaImplB2 = ComposableLambdaKt.b(655940566, new a3(function1, 27), gapComposerC);
            gapComposer = gapComposerC;
            i4 = 8;
            ScaffoldKt.a(null, composableLambdaImplB, null, null, null, 0, 0L, 0L, windowInsetsA, composableLambdaImplB2, gapComposer, 805306416, NSType.MAILB);
        } else {
            gapComposer = gapComposerC;
            i4 = 8;
            gapComposer.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new a9(function0, function1, i2, i4);
        }
    }
}
