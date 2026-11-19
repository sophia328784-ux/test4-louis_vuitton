package com.vuitton.android.presentation.screen.aicompanion.components.history;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import com.vuitton.android.presentation.compose.components.compositionlocalprovider.LVAICompanionCompositionLocalProviderKt;
import com.vuitton.android.presentation.screen.aicompanion.AICompanionViewModel;
import defpackage.m0;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\b\n\u0002\u0018\u0002\n\u0002\b\u0002¨\u0006\u0002²\u0006\f\u0010\u0001\u001a\u00020\u00008\nX\u008a\u0084\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/aicompanion/models/AICompanionViewState;", "viewState", "presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class AICompanionHistoryComposableKt {
    public static final void a(AICompanionViewModel aICompanionViewModel, Function0 function0, Composer composer, int i2) {
        aICompanionViewModel.getClass();
        function0.getClass();
        GapComposer gapComposerH = composer.h(1599779175);
        int i3 = (gapComposerH.K(aICompanionViewModel) ? 4 : 2) | i2 | (gapComposerH.y(function0) ? 32 : 16);
        if (gapComposerH.p(i3 & 1, (i3 & 19) != 18)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            LVAICompanionCompositionLocalProviderKt.a(ComposableLambdaKt.b(1580230406, new m0(aICompanionViewModel, function0), gapComposerH), gapComposerH, 6);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new m0(aICompanionViewModel, function0, i2);
        }
    }
}
