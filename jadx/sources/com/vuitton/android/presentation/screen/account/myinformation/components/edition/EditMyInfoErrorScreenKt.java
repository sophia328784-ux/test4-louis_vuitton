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
import defpackage.a3;
import defpackage.g0;
import defpackage.qv;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class EditMyInfoErrorScreenKt {
    public static final void a(SnackbarHostState snackbarHostState, ComposableLambdaImpl composableLambdaImpl, Function0 function0, Composer composer, int i2) {
        GapComposer gapComposer;
        snackbarHostState.getClass();
        function0.getClass();
        GapComposer gapComposerH = composer.h(-936808823);
        int i3 = i2 | (gapComposerH.y(function0) ? 256 : 128);
        if (gapComposerH.p(i3 & 1, (i3 & 147) != 146)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            gapComposer = gapComposerH;
            ScaffoldKt.a(null, composableLambdaImpl, null, ComposableLambdaKt.b(-2097402033, new g0(snackbarHostState, 21), gapComposerH), null, 0, 0L, 0L, WindowInsetsExtKt.a(), ComposableLambdaKt.b(918202904, new a3(function0, 12), gapComposerH), gapComposer, 805309488, 245);
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new qv(snackbarHostState, composableLambdaImpl, function0, i2, 0);
        }
    }
}
