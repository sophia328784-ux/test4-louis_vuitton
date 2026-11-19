package com.vuitton.android.presentation.compose.components;

import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.shape.RoundedCornerShapeKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.ClipKt;
import androidx.compose.ui.graphics.Brush;
import androidx.compose.ui.graphics.Color;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import defpackage.qe;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class LVTopShadowKt {
    public static final void a(Modifier modifier, Composer composer, int i2) {
        if (modifier != null) {
            modifier = defpackage.a.e(modifier, "LVTopShadow");
        }
        GapComposer gapComposerH = composer.h(-709133218);
        int i3 = (gapComposerH.K(modifier) ? 4 : 2) | i2;
        if (gapComposerH.p(i3 & 1, (i3 & 3) != 2)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Modifier modifierF = SizeKt.f(ClipKt.a(SizeKt.d(modifier, 1.0f), RoundedCornerShapeKt.c(LVAppDesignKitTheme.d(gapComposerH).o, LVAppDesignKitTheme.d(gapComposerH).o, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 12)), LVAppDesignKitTheme.d(gapComposerH).m);
            Brush.Companion companion = Brush.f8862a;
            Color.f8866b.getClass();
            BoxKt.a(BackgroundKt.a(modifierF, Brush.Companion.b(companion, CollectionsKt.P(new Color(Color.f8870h), new Color(Color.b(0.3f, LVAppDesignKitTheme.c(gapComposerH).f48361b.f48375b))), Call.Parameters.DEFAULT_CAMERA_ZOOM, 100.0f, 8)), gapComposerH, 0);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new qe(modifier, i2, 7);
        }
    }
}
