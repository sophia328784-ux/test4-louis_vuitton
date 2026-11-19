package com.vuitton.android.presentation.screen.authentication.landing.components;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImpl;
import defpackage.a;
import defpackage.x2;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class AccountActivationLandingComposableKt {
    public static final void a(Function0 function0, Function0 function1, Composer composer, int i2) {
        GapComposer gapComposerC = a.c(function0, function1, composer, 762799102);
        int i3 = (gapComposerC.y(function0) ? 4 : 2) | i2 | (gapComposerC.y(function1) ? 32 : 16);
        int i4 = 0;
        if (gapComposerC.p(i3 & 1, (i3 & 19) != 18)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            AccountActivationLandingScreenKt.a(function0, function1, gapComposerC, i3 & 126);
        } else {
            gapComposerC.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerC.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new x2(function0, function1, i2, i4);
        }
    }
}
