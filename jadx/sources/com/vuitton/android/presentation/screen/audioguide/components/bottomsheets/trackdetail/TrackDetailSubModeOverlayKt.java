package com.vuitton.android.presentation.screen.audioguide.components.bottomsheets.trackdetail;

import androidx.compose.animation.CrossfadeKt;
import androidx.compose.animation.core.AnimationSpecKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import defpackage.m41;
import defpackage.pa;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class TrackDetailSubModeOverlayKt {
    public static final void a(String str, long j2, boolean z, Composer composer, int i2) {
        GapComposer gapComposerH = composer.h(-1551715677);
        int i3 = (gapComposerH.K(str) ? 4 : 2) | i2 | (gapComposerH.e(j2) ? 32 : 16) | (gapComposerH.b(z) ? 256 : 128);
        if (gapComposerH.p(i3 & 1, (i3 & 1171) != 1170)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            CrossfadeKt.b(Boolean.valueOf(z), null, AnimationSpecKt.c(1000, 0, null, 6), "subModeOverlayCrossfade", ComposableLambdaKt.b(1590381956, new m41(j2, str), gapComposerH), gapComposerH, ((i3 >> 6) & 14) | 27648, 2);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new pa(i2, str, j2, z);
        }
    }
}
