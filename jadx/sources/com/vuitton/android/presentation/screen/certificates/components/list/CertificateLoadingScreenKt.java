package com.vuitton.android.presentation.screen.certificates.components.list;

import androidx.compose.material3.ScaffoldKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import defpackage.ql;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class CertificateLoadingScreenKt {
    public static final void a(ComposableLambdaImpl composableLambdaImpl, Composer composer, int i2) {
        GapComposer gapComposerH = composer.h(-1065538756);
        if (gapComposerH.p(i2 & 1, (i2 & 3) != 2)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            ComposableSingletons$CertificateLoadingScreenKt.f55714a.getClass();
            ScaffoldKt.a(null, composableLambdaImpl, null, null, null, 0, 0L, 0L, null, ComposableSingletons$CertificateLoadingScreenKt.f55715b, gapComposerH, 805306416, 509);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new ql(composableLambdaImpl, i2, 0);
        }
    }
}
