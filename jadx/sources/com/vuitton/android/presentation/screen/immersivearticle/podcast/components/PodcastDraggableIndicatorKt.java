package com.vuitton.android.presentation.screen.immersivearticle.podcast.components;

import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.ClipKt;
import androidx.compose.ui.graphics.RectangleShapeKt;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import defpackage.a;
import defpackage.qe;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class PodcastDraggableIndicatorKt {
    public static final void a(Modifier modifier, Composer composer, int i2) {
        if (modifier != null) {
            modifier = a.e(modifier, "PodcastDraggableIndicator");
        }
        GapComposer gapComposerH = composer.h(1207165);
        int i3 = (gapComposerH.K(modifier) ? 4 : 2) | i2;
        if (gapComposerH.p(i3 & 1, (i3 & 3) != 2)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            BoxKt.a(BackgroundKt.b(ClipKt.a(SizeKt.s(SizeKt.f(modifier, LVAppDesignKitTheme.d(gapComposerH).f48386e), LVAppDesignKitTheme.d(gapComposerH).q), LVAppDesignKitTheme.j(gapComposerH).d), LVAppDesignKitTheme.c(gapComposerH).f48361b.n, RectangleShapeKt.f8913a), gapComposerH, 0);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new qe(modifier, i2, 16);
        }
    }
}
