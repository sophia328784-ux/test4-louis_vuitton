package com.vuitton.android.presentation.screen.feed.components.card;

import androidx.compose.foundation.layout.BoxScope;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.ui.Alignment;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.presentation.common.editorial.models.LiveInfoUiModel;
import com.vuitton.android.presentation.compose.components.LVLiveCountdownKt;
import com.vuitton.android.presentation.extensions.ModifierExtKt;
import com.vuitton.android.presentation.screen.livevideo.models.LiveVideoStatusUiModel;
import defpackage.n00;
import defpackage.zr;
import java.time.Instant;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class FeedLiveCardContentKt {
    public static final void a(BoxScope boxScope, boolean z, LiveInfoUiModel liveInfoUiModel, Function0 function0, Composer composer, int i2) {
        int i3;
        Function0 function1;
        boxScope.getClass();
        liveInfoUiModel.getClass();
        function0.getClass();
        GapComposer gapComposerH = composer.h(-1251180073);
        if ((i2 & 6) == 0) {
            i3 = (gapComposerH.K(boxScope) ? 4 : 2) | i2;
        } else {
            i3 = i2;
        }
        if ((i2 & 48) == 0) {
            i3 |= gapComposerH.b(z) ? 32 : 16;
        }
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i3 |= gapComposerH.y(liveInfoUiModel) ? 256 : 128;
        }
        if ((i2 & 3072) == 0) {
            i3 |= gapComposerH.y(function0) ? 2048 : 1024;
        }
        if (gapComposerH.p(i3 & 1, (i3 & 1171) != 1170)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            if (liveInfoUiModel.f50863b == LiveVideoStatusUiModel.LIVE) {
                LiveTagKt.a(ModifierExtKt.a(PaddingKt.i(n00.i(gapComposerH, 206799792, "FeedLiveCardContent"), LVAppDesignKitTheme.l(gapComposerH).f48416e), null, null, 7), gapComposerH, 0);
                gapComposerH.Z(false);
                function1 = function0;
            } else if (z) {
                gapComposerH.L(2116079497);
                Instant instant = liveInfoUiModel.f50864c;
                if (instant == null) {
                    gapComposerH.L(2116079496);
                    gapComposerH.Z(false);
                    function1 = function0;
                } else {
                    DTFunctionNameModifier dTFunctionNameModifierI = n00.i(gapComposerH, 2116079497, "FeedLiveCardContent");
                    Alignment.f8582a.getClass();
                    LVLiveCountdownKt.a(boxScope.g(dTFunctionNameModifierI, Alignment.Companion.f8587f), 0L, instant, function0, gapComposerH, i3 & 7168, 2);
                    function1 = function0;
                    gapComposerH.Z(false);
                }
                gapComposerH.Z(false);
            } else {
                function1 = function0;
                gapComposerH.L(2116345353);
                gapComposerH.Z(false);
            }
        } else {
            function1 = function0;
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new zr(boxScope, z, liveInfoUiModel, function1, i2);
        }
    }
}
