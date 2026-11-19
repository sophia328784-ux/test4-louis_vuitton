package com.vuitton.android.presentation.screen.pdp.components.subcomponents;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Modifier;
import com.vuitton.android.designkit.ui.common.ModifierExtKt;
import com.vuitton.android.designkit.ui.theme.molecules.LVPushCardKt;
import defpackage.k1;
import defpackage.la;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class VirtualStudioCardKt {
    public static final void a(Modifier modifier, String str, Function0 function0, Composer composer, int i2) {
        Function0 function1;
        if (modifier != null) {
            modifier = defpackage.a.e(modifier, "VirtualStudioCard");
        }
        Modifier modifier2 = modifier;
        str.getClass();
        function0.getClass();
        GapComposer gapComposerH = composer.h(1412281735);
        int i3 = (gapComposerH.K(modifier2) ? 4 : 2) | i2 | (gapComposerH.K(str) ? 32 : 16) | (gapComposerH.y(function0) ? 256 : 128);
        if (gapComposerH.p(i3 & 1, (i3 & 147) != 146)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            LVPushCardKt.a(ModifierExtKt.e(modifier2, "pdp_virtualStudioCard_view"), false, function0, ComposableLambdaKt.b(1193084051, new la(str, 10), gapComposerH), gapComposerH, (i3 & 896) | 3072, 2);
            function1 = function0;
        } else {
            function1 = function0;
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new k1(i2, 3, modifier2, str, function1);
        }
    }
}
