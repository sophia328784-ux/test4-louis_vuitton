package com.vuitton.android.presentation.screen.storemode.components;

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
import defpackage.kn0;
import defpackage.pu;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class StoreModeExpiredComposableKt {
    public static final void a(Function0 function0, Composer composer, int i2) {
        int i3;
        function0.getClass();
        GapComposer gapComposerH = composer.h(1896818201);
        if ((i2 & 6) == 0) {
            i3 = (gapComposerH.y(function0) ? 4 : 2) | i2;
        } else {
            i3 = i2;
        }
        if (gapComposerH.p(i3 & 1, (i3 & 3) != 2)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            ComposableLambdaImpl composableLambdaImplB = ComposableLambdaKt.b(1528787677, new kn0(function0, 25), gapComposerH);
            WindowInsets windowInsetsA = WindowInsetsExtKt.a();
            ComposableSingletons$StoreModeExpiredComposableKt.f64833a.getClass();
            ScaffoldKt.a(null, composableLambdaImplB, null, null, null, 0, 0L, 0L, windowInsetsA, ComposableSingletons$StoreModeExpiredComposableKt.f64834b, gapComposerH, 805306416, NSType.MAILB);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new pu(i2, 9, function0);
        }
    }
}
