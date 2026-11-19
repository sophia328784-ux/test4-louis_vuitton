package com.vuitton.android.presentation.screen.audioguide.components.bottomsheets;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import com.vuitton.android.designkit.components.components.LVCustomBottomSheetContentKt;
import defpackage.la;
import defpackage.ma;
import kotlin.Metadata;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class AudioGuideCreditsBottomSheetKt {
    public static final void a(int i2, Composer composer, String str) {
        str.getClass();
        GapComposer gapComposerH = composer.h(36769561);
        int i3 = (gapComposerH.K(str) ? 4 : 2) | i2;
        if (gapComposerH.p(i3 & 1, (i3 & 3) != 2)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            LVCustomBottomSheetContentKt.a(null, Call.Parameters.DEFAULT_CAMERA_ZOOM, null, null, null, null, null, false, null, null, ComposableLambdaKt.b(-1473316444, new la(str, 0), gapComposerH), gapComposerH, 0, 48, 2047);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new ma(str, i2, 0);
        }
    }
}
