package com.vuitton.android.presentation.screen.audioguide.components.bottomsheets.trackdetail;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import com.vuitton.android.designkit.ui.theme.LVColorScheme;
import com.vuitton.android.presentation.common.editorial.models.EditorialModuleUiModel;
import com.vuitton.android.presentation.compose.components.compositionlocalprovider.LVAudioGuideCompositionLocalProviderKt;
import com.vuitton.android.presentation.model.common.A11ySettings;
import defpackage.oi0;
import defpackage.ys0;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class TrackDetailSectionKt {
    public static final void a(EditorialModuleUiModel editorialModuleUiModel, LVColorScheme lVColorScheme, A11ySettings a11ySettings, Function1 function1, Composer composer, int i2) {
        editorialModuleUiModel.getClass();
        lVColorScheme.getClass();
        a11ySettings.getClass();
        function1.getClass();
        GapComposer gapComposerH = composer.h(2122097214);
        int i3 = (gapComposerH.K(editorialModuleUiModel) ? 4 : 2) | i2 | (gapComposerH.d(lVColorScheme.ordinal()) ? 32 : 16) | (gapComposerH.K(a11ySettings) ? 256 : 128);
        if ((i2 & 3072) == 0) {
            i3 |= gapComposerH.y(function1) ? 2048 : 1024;
        }
        if (gapComposerH.p(i3 & 1, (i3 & 1171) != 1170)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            LVAudioGuideCompositionLocalProviderKt.a(ComposableLambdaKt.b(-933895059, new ys0(editorialModuleUiModel, lVColorScheme, a11ySettings, function1), gapComposerH), gapComposerH, 6);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new oi0(editorialModuleUiModel, lVColorScheme, a11ySettings, function1, i2, 13);
        }
    }
}
