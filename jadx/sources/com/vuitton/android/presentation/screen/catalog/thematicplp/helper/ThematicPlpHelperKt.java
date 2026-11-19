package com.vuitton.android.presentation.screen.catalog.thematicplp.helper;

import androidx.compose.foundation.gestures.ScrollableState;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImpl;
import defpackage.es0;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class ThematicPlpHelperKt {
    public static final void a(ScrollableState scrollableState, Function1 function1, Composer composer, int i2) {
        scrollableState.getClass();
        function1.getClass();
        GapComposer gapComposerH = composer.h(1673853921);
        int i3 = (gapComposerH.y(scrollableState) ? 4 : 2) | i2;
        if (gapComposerH.p(i3 & 1, (i3 & 19) != 18)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            boolean zY = gapComposerH.y(scrollableState);
            Object objX = gapComposerH.x();
            if (zY || objX == Composer.Companion.f7939a) {
                objX = new ThematicPlpHelperKt$ObserveEndOfGrid$1$1(function1, scrollableState, null);
                gapComposerH.q(objX);
            }
            EffectsKt.e(gapComposerH, scrollableState, (Function2) objX);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new es0(scrollableState, function1, i2, 18);
        }
    }
}
