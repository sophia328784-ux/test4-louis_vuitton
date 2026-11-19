package com.vuitton.android.presentation.screen.onboarding.components;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.ui.res.StringResources_androidKt;
import com.vuitton.android.R;
import com.vuitton.android.designkit.ui.theme.templates.LVModalBottomSheetKt;
import defpackage.o0;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class ConfirmPreferenceIconsBottomKt {
    public static final void a(Function0 function0, Composer composer, int i2) {
        GapComposer gapComposer;
        function0.getClass();
        GapComposer gapComposerH = composer.h(-1627361204);
        int i3 = i2 | (gapComposerH.y(function0) ? 4 : 2);
        if (gapComposerH.p(i3 & 1, (i3 & 3) != 2)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            gapComposer = gapComposerH;
            LVModalBottomSheetKt.a(null, null, null, null, null, StringResources_androidKt.c(gapComposerH, R.string.onboarding_modale_description), null, StringResources_androidKt.c(gapComposerH, R.string.onboarding_modale_cta), null, false, null, function0, null, false, null, null, null, false, null, gapComposer, 0, (i3 << 3) & 112, 1046367);
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new o0(i2, 24, function0);
        }
    }
}
