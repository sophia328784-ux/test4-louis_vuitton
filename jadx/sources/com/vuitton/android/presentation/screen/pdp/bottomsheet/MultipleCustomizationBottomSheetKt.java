package com.vuitton.android.presentation.screen.pdp.bottomsheet;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.res.StringResources_androidKt;
import com.vuitton.android.R;
import com.vuitton.android.designkit.components.components.LVCustomBottomSheetContentKt;
import defpackage.a;
import defpackage.gl;
import defpackage.x2;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class MultipleCustomizationBottomSheetKt {
    public static final void a(Function0 function0, Function0 function1, Composer composer, int i2) {
        GapComposer gapComposerC = a.c(function0, function1, composer, -1573699073);
        int i3 = (gapComposerC.y(function0) ? 4 : 2) | i2 | (gapComposerC.y(function1) ? 32 : 16);
        if (gapComposerC.p(i3 & 1, (i3 & 19) != 18)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            LVCustomBottomSheetContentKt.a(null, Call.Parameters.DEFAULT_CAMERA_ZOOM, StringResources_androidKt.c(gapComposerC, R.string.multiple_perso_bottomsheet_pdp_title), null, null, null, null, false, null, null, ComposableLambdaKt.b(-1067403830, new gl(function0, function1, 1), gapComposerC), gapComposerC, 0, 48, 2043);
        } else {
            gapComposerC.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerC.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new x2(function0, function1, i2, 12);
        }
    }
}
