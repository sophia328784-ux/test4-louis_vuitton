package com.vuitton.android.presentation.screen.audioguide.components.bottomsheets;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import com.vuitton.android.designkit.components.components.LVCustomBottomSheetContentKt;
import defpackage.ua;
import defpackage.va;
import kotlin.Metadata;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class AudioGuideTextBottomSheetKt {
    public static final void a(String str, String str2, Composer composer, int i2) {
        str.getClass();
        GapComposer gapComposerH = composer.h(1815882112);
        int i3 = (gapComposerH.K(str) ? 4 : 2) | i2 | (gapComposerH.K(str2) ? 32 : 16);
        if (gapComposerH.p(i3 & 1, (i3 & 19) != 18)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            LVCustomBottomSheetContentKt.a(null, Call.Parameters.DEFAULT_CAMERA_ZOOM, null, null, null, null, null, false, null, null, ComposableLambdaKt.b(-2047111083, new ua(str2, str, 0), gapComposerH), gapComposerH, 0, 48, 2047);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new va(str, str2, i2, 0);
        }
    }
}
