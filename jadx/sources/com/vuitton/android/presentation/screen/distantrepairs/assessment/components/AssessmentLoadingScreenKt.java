package com.vuitton.android.presentation.screen.distantrepairs.assessment.components;

import androidx.compose.material3.ScaffoldKt;
import androidx.compose.material3.SnackbarHostState;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import defpackage.g0;
import defpackage.l9;
import defpackage.o0;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class AssessmentLoadingScreenKt {
    public static final void a(SnackbarHostState snackbarHostState, Function0 function0, Composer composer, int i2) {
        GapComposer gapComposer;
        int i3;
        snackbarHostState.getClass();
        function0.getClass();
        GapComposer gapComposerH = composer.h(-1680132594);
        int i4 = (gapComposerH.y(function0) ? 32 : 16) | i2;
        if (gapComposerH.p(i4 & 1, (i4 & 19) != 18)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            ComposableLambdaImpl composableLambdaImplB = ComposableLambdaKt.b(653030610, new o0(function0, 8), gapComposerH);
            ComposableLambdaImpl composableLambdaImplB2 = ComposableLambdaKt.b(776312276, new g0(snackbarHostState, 6), gapComposerH);
            ComposableSingletons$AssessmentLoadingScreenKt.f57074a.getClass();
            gapComposer = gapComposerH;
            i3 = 0;
            ScaffoldKt.a(null, composableLambdaImplB, null, composableLambdaImplB2, null, 0, 0L, 0L, null, ComposableSingletons$AssessmentLoadingScreenKt.f57075b, gapComposer, 805309488, 501);
        } else {
            gapComposer = gapComposerH;
            i3 = 0;
            gapComposer.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new l9(snackbarHostState, function0, i2, i3);
        }
    }
}
