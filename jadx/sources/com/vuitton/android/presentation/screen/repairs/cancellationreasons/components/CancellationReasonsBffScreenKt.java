package com.vuitton.android.presentation.screen.repairs.cancellationreasons.components;

import androidx.compose.material3.ScaffoldKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import com.vuitton.android.presentation.screen.repairs.cancellationreasons.bff.CancellationReasonsBffViewState;
import defpackage.f0;
import defpackage.f1;
import defpackage.i1;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class CancellationReasonsBffScreenKt {
    public static final void a(Function2 function2, CancellationReasonsBffViewState cancellationReasonsBffViewState, Function1 function1, Function0 function0, Composer composer, int i2) {
        GapComposer gapComposer;
        function2.getClass();
        cancellationReasonsBffViewState.getClass();
        function1.getClass();
        function0.getClass();
        GapComposer gapComposerH = composer.h(-937222949);
        int i3 = (gapComposerH.y(cancellationReasonsBffViewState) ? 32 : 16) | i2;
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i3 |= gapComposerH.y(function1) ? 256 : 128;
        }
        int i4 = i3 | (gapComposerH.y(function0) ? 2048 : 1024);
        if (gapComposerH.p(i4 & 1, (i4 & 1171) != 1170)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            gapComposer = gapComposerH;
            ScaffoldKt.a(null, function2, ComposableLambdaKt.b(1343117600, new f0(cancellationReasonsBffViewState, function0, 22), gapComposerH), null, null, 0, 0L, 0L, null, ComposableLambdaKt.b(-1431175958, new f1(cancellationReasonsBffViewState, function1, 14), gapComposerH), gapComposer, 805306800, 505);
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new i1(function2, cancellationReasonsBffViewState, function1, function0, i2, 9);
        }
    }
}
