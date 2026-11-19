package com.vuitton.android.presentation.screen.account.addresseditor.components;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.ui.res.StringResources_androidKt;
import com.vuitton.android.R;
import com.vuitton.android.designkit.ui.theme.templates.LVModalBottomSheetKt;
import defpackage.a;
import defpackage.x2;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class DeleteAddressBottomSheetKt {
    public static final void a(Function0 function0, Function0 function1, Composer composer, int i2) {
        GapComposer gapComposer;
        GapComposer gapComposerC = a.c(function0, function1, composer, -274982161);
        int i3 = i2 | (gapComposerC.y(function0) ? 4 : 2) | (gapComposerC.y(function1) ? 32 : 16);
        if (gapComposerC.p(i3 & 1, (i3 & 19) != 18)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            gapComposer = gapComposerC;
            LVModalBottomSheetKt.a(null, null, StringResources_androidKt.c(gapComposerC, R.string.mylv_myprofile_deleteaddress_areyousure), null, null, StringResources_androidKt.c(gapComposerC, R.string.mylv_myprofile_deleteaddress_areyousure), null, StringResources_androidKt.c(gapComposerC, R.string.mylv_myprofile_addressbookbrick_deleteaddress), null, false, null, function0, StringResources_androidKt.c(gapComposerC, R.string.cancel), false, null, function1, null, false, null, gapComposer, 0, ((i3 << 3) & 112) | ((i3 << 15) & 3670016), 976731);
        } else {
            gapComposer = gapComposerC;
            gapComposer.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new x2(function0, function1, i2, 6);
        }
    }
}
