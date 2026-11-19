package com.vuitton.android.presentation.screen.pdp.vto.beauty.components.shadefinder;

import androidx.compose.material3.ScaffoldKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import com.github.druk.dnssd.NSType;
import com.vuitton.android.presentation.compose.components.compositionlocalprovider.LVShadeFinderLocalProviderKt;
import com.vuitton.android.presentation.extensions.WindowInsetsExtKt;
import defpackage.gl;
import defpackage.kn0;
import defpackage.x2;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class ShadeFinderEmptyComposableKt {
    public static final void a(Function0 function0, Composer composer, int i2) {
        function0.getClass();
        GapComposer gapComposerH = composer.h(1513496919);
        int i3 = (gapComposerH.y(function0) ? 4 : 2) | i2;
        if (gapComposerH.p(i3 & 1, (i3 & 3) != 2)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            LVShadeFinderLocalProviderKt.a(ComposableLambdaKt.b(323993783, new kn0(function0, 20), gapComposerH), gapComposerH, 6);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new kn0(i2, 21, function0);
        }
    }

    public static final void b(Function0 function0, Function0 function1, Composer composer, int i2) {
        GapComposer gapComposer;
        GapComposer gapComposerH = composer.h(-151651902);
        int i3 = 4;
        int i4 = (gapComposerH.y(function0) ? 4 : 2) | i2 | (gapComposerH.y(function1) ? 32 : 16);
        if (gapComposerH.p(i4 & 1, (i4 & 19) != 18)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            gapComposer = gapComposerH;
            ScaffoldKt.a(null, ComposableLambdaKt.b(578916478, new kn0(function0, 22), gapComposerH), null, null, null, 0, 0L, 0L, WindowInsetsExtKt.a(), ComposableLambdaKt.b(-2108230829, new gl(function1, function0, i3), gapComposerH), gapComposer, 805306416, NSType.MAILB);
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new x2(function0, function1, i2, 15);
        }
    }
}
