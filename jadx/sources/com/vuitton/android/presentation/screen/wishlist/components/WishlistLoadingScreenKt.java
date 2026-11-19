package com.vuitton.android.presentation.screen.wishlist.components;

import androidx.compose.foundation.layout.WindowInsets;
import androidx.compose.material3.ScaffoldKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImpl;
import com.github.druk.dnssd.NSType;
import defpackage.es0;
import kotlin.Metadata;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class WishlistLoadingScreenKt {
    public static final void a(Function2 function2, WindowInsets windowInsets, Composer composer, int i2) {
        function2.getClass();
        GapComposer gapComposerH = composer.h(926674425);
        int i3 = (gapComposerH.K(windowInsets) ? 32 : 16) | i2;
        if (gapComposerH.p(i3 & 1, (i3 & 19) != 18)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            ComposableSingletons$WishlistLoadingScreenKt.f65681a.getClass();
            ScaffoldKt.a(null, function2, null, null, null, 0, 0L, 0L, windowInsets, ComposableSingletons$WishlistLoadingScreenKt.f65682b, gapComposerH, 805306416 | ((i3 << 21) & 234881024), NSType.MAILB);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new es0(function2, windowInsets, i2, 24);
        }
    }
}
