package com.vuitton.android.presentation.screen.imageviewer.components;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import com.vuitton.android.designkit.components.components.LVZoomableContentComponentKt;
import com.vuitton.foundation.model.domain.model.product.universal.ProductBackground;
import defpackage.av0;
import defpackage.es0;
import defpackage.ni0;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class SingleImageViewerKt {
    public static final void a(String str, ProductBackground productBackground, Composer composer, int i2) {
        GapComposer gapComposerH = composer.h(-92619936);
        int i3 = (gapComposerH.K(str) ? 4 : 2) | i2 | (gapComposerH.d(productBackground == null ? -1 : productBackground.ordinal()) ? 32 : 16);
        if (gapComposerH.p(i3 & 1, (i3 & 19) != 18)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Object objX = gapComposerH.x();
            if (objX == Composer.Companion.f7939a) {
                objX = new av0(19);
                gapComposerH.q(objX);
            }
            LVZoomableContentComponentKt.a(null, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, (Function1) objX, false, ComposableLambdaKt.b(-1440038499, new ni0(productBackground, str, 24), gapComposerH), gapComposerH, 199680, 23);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new es0(str, productBackground, i2, 8);
        }
    }
}
