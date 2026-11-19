package com.vuitton.android.presentation.screen.certificates.components.capucine;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImpl;
import com.vuitton.android.presentation.screen.certificates.model.CertificateCapucineUiModel;
import defpackage.xk;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class CertificateCapucineComposableKt {
    public static final void a(CertificateCapucineUiModel certificateCapucineUiModel, Function0 function0, Composer composer, int i2) {
        function0.getClass();
        GapComposer gapComposerH = composer.h(-596457767);
        int i3 = (gapComposerH.y(certificateCapucineUiModel) ? 4 : 2) | i2 | (gapComposerH.y(function0) ? 32 : 16);
        if (gapComposerH.p(i3 & 1, (i3 & 19) != 18)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            CertificateCapucineScreenKt.d(certificateCapucineUiModel, function0, gapComposerH, i3 & 126);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new xk(certificateCapucineUiModel, function0, i2, 0);
        }
    }
}
