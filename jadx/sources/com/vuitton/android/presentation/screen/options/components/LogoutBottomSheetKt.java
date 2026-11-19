package com.vuitton.android.presentation.screen.options.components;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.ui.res.StringResources_androidKt;
import com.vuitton.android.R;
import com.vuitton.android.designkit.ui.theme.templates.LVModalBottomSheetKt;
import defpackage.x2;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class LogoutBottomSheetKt {
    public static final void a(Function0 function0, Function0 function1, Composer composer, int i2) {
        GapComposer gapComposer;
        GapComposer gapComposerC = defpackage.a.c(function0, function1, composer, 1145410063);
        int i3 = i2 | (gapComposerC.y(function0) ? 4 : 2) | (gapComposerC.y(function1) ? 32 : 16);
        if (gapComposerC.p(i3 & 1, (i3 & 19) != 18)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            gapComposer = gapComposerC;
            LVModalBottomSheetKt.a(null, null, null, null, null, StringResources_androidKt.c(gapComposerC, R.string.mylv_lvpass_menu_disconnectfrommylv_popup_areyousure), null, StringResources_androidKt.c(gapComposerC, R.string.mylv_lvpass_menu_disconnectfrommylv_popup_areyousure_yes), null, false, null, function0, StringResources_androidKt.c(gapComposerC, R.string.mylv_lvpass_menu_disconnectfrommylv_popup_areyousure_stayloggedin), false, null, function1, null, false, null, gapComposer, 0, ((i3 << 3) & 112) | ((i3 << 15) & 3670016), 976735);
        } else {
            gapComposer = gapComposerC;
            gapComposer.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new x2(function0, function1, i2, 10);
        }
    }
}
