package com.vuitton.android.presentation.screen.account.myinformation.components.edition;

import androidx.compose.material3.ScaffoldKt;
import androidx.compose.material3.SnackbarHostState;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import com.vuitton.android.presentation.extensions.WindowInsetsExtKt;
import com.vuitton.android.presentation.screen.account.myinformation.models.MyInformationViewState;
import defpackage.d3;
import defpackage.g0;
import defpackage.rv;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class EditMyInfoLoadingScreenKt {
    public static final void a(MyInformationViewState myInformationViewState, ComposableLambdaImpl composableLambdaImpl, SnackbarHostState snackbarHostState, Composer composer, int i2) {
        GapComposer gapComposer;
        myInformationViewState.getClass();
        snackbarHostState.getClass();
        GapComposer gapComposerH = composer.h(-1344112447);
        int i3 = i2 | (gapComposerH.K(myInformationViewState) ? 4 : 2);
        if (gapComposerH.p(i3 & 1, (i3 & 147) != 146)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            gapComposer = gapComposerH;
            ScaffoldKt.a(null, composableLambdaImpl, null, ComposableLambdaKt.b(633117883, new g0(snackbarHostState, 22), gapComposerH), null, 0, 0L, 0L, WindowInsetsExtKt.a(), ComposableLambdaKt.b(-2113147630, new d3(myInformationViewState, 18), gapComposerH), gapComposer, 805309488, 245);
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new rv(i2, 0, myInformationViewState, composableLambdaImpl, snackbarHostState);
        }
    }
}
