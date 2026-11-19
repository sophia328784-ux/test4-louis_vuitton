package com.vuitton.android.presentation.screen.booking.details.components;

import androidx.compose.animation.CrossfadeKt;
import androidx.compose.animation.core.AnimationSpecKt;
import androidx.compose.foundation.layout.BoxScopeInstance;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Modifier;
import defpackage.a;
import defpackage.l2;
import defpackage.ye;
import kotlin.Metadata;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class BookingCarouselBackgroundKt {
    public static final void a(int i2, Composer composer, Modifier modifier, String str) {
        int i3;
        String str2;
        if (modifier != null) {
            modifier = a.e(modifier, "BookingCarouselBackground");
        }
        Modifier modifier2 = modifier;
        GapComposer gapComposerH = composer.h(1494668825);
        if ((i2 & 6) == 0) {
            i3 = (gapComposerH.K(BoxScopeInstance.f4938a) ? 4 : 2) | i2;
        } else {
            i3 = i2;
        }
        if ((i2 & 48) == 0) {
            i3 |= gapComposerH.K(modifier2) ? 32 : 16;
        }
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i3 |= gapComposerH.K(str) ? 256 : 128;
        }
        if (gapComposerH.p(i3 & 1, (i3 & 147) != 146)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            str2 = str;
            CrossfadeKt.b(str2, modifier2, AnimationSpecKt.c(400, 0, null, 6), "BookingCarouselBackgroundCrossfade", ComposableLambdaKt.b(-1307375077, new l2(2), gapComposerH), gapComposerH, ((i3 >> 6) & 14) | 28032 | (i3 & 112), 0);
        } else {
            str2 = str;
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new ye(modifier2, str2, i2);
        }
    }
}
