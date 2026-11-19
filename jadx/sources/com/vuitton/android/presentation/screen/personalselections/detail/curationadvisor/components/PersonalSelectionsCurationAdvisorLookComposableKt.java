package com.vuitton.android.presentation.screen.personalselections.detail.curationadvisor.components;

import androidx.compose.material3.ScaffoldKt;
import androidx.compose.material3.SnackbarHostState;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import com.vuitton.android.presentation.screen.personalselections.detail.curationadvisor.models.PersonalSelectionsCurationAdvisorLookViewState;
import com.vuitton.android.presentation.screen.personalselections.detail.curationadvisor.models.PersonalSelectionsCurationAdvisorViewState;
import defpackage.ae0;
import defpackage.kn0;
import defpackage.n4;
import defpackage.o;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class PersonalSelectionsCurationAdvisorLookComposableKt {
    public static final void a(PersonalSelectionsCurationAdvisorLookViewState personalSelectionsCurationAdvisorLookViewState, PersonalSelectionsCurationAdvisorViewState personalSelectionsCurationAdvisorViewState, SnackbarHostState snackbarHostState, Function0 function0, Function1 function1, Function1 function2, Function1 function3, Composer composer, int i2) {
        GapComposer gapComposer;
        personalSelectionsCurationAdvisorLookViewState.getClass();
        personalSelectionsCurationAdvisorViewState.getClass();
        snackbarHostState.getClass();
        function0.getClass();
        function1.getClass();
        function2.getClass();
        function3.getClass();
        GapComposer gapComposerH = composer.h(-198963222);
        int i3 = i2 | (gapComposerH.K(personalSelectionsCurationAdvisorLookViewState) ? 4 : 2) | (gapComposerH.K(personalSelectionsCurationAdvisorViewState) ? 32 : 16) | (gapComposerH.y(function0) ? 2048 : 1024) | (gapComposerH.y(function1) ? 16384 : 8192) | (gapComposerH.y(function2) ? 131072 : 65536) | (gapComposerH.y(function3) ? 1048576 : 524288);
        if (gapComposerH.p(i3 & 1, (599187 & i3) != 599186)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            gapComposer = gapComposerH;
            ScaffoldKt.a(null, ComposableLambdaKt.b(298447534, new kn0(function0, 2), gapComposerH), null, ComposableLambdaKt.b(-876477008, new ae0(snackbarHostState, 23), gapComposerH), null, 0, 0L, 0L, null, ComposableLambdaKt.b(1625489401, new n4(personalSelectionsCurationAdvisorLookViewState, personalSelectionsCurationAdvisorViewState, function1, function2, function3, 20), gapComposerH), gapComposer, 805309488, 501);
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new o(personalSelectionsCurationAdvisorLookViewState, personalSelectionsCurationAdvisorViewState, snackbarHostState, function0, function1, function2, function3, i2, 14);
        }
    }
}
