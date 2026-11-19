package com.vuitton.android.presentation.screen.options.optoutprivacymenu.components;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.navigation.NavHostController;
import androidx.navigation.compose.NavHostKt;
import defpackage.nk;
import defpackage.o;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class OptOutPrivacyMenuNavHostKt {
    public static final void a(NavHostController navHostController, Function0 function0, Function0 function1, Function0 function2, Function0 function3, Function0 function4, Function0 function5, Composer composer, int i2) {
        navHostController.getClass();
        function0.getClass();
        function1.getClass();
        function2.getClass();
        function3.getClass();
        GapComposer gapComposerC = defpackage.a.c(function4, function5, composer, 1215102136);
        int i3 = (gapComposerC.y(function5) ? 1048576 : 524288) | i2 | (gapComposerC.y(navHostController) ? 4 : 2) | (gapComposerC.y(function0) ? 32 : 16) | (gapComposerC.y(function1) ? 256 : 128) | (gapComposerC.y(function2) ? 2048 : 1024) | (gapComposerC.y(function3) ? 16384 : 8192) | (gapComposerC.y(function4) ? 131072 : 65536);
        if (gapComposerC.p(i3 & 1, (599187 & i3) != 599186)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            OpOutMenu opOutMenu = OpOutMenu.INSTANCE;
            boolean zY = ((i3 & 112) == 32) | ((i3 & 7168) == 2048) | ((57344 & i3) == 16384) | ((i3 & 896) == 256) | gapComposerC.y(navHostController) | ((3670016 & i3) == 1048576) | ((458752 & i3) == 131072);
            Object objX = gapComposerC.x();
            if (zY || objX == Composer.Companion.f7939a) {
                nk nkVar = new nk(function0, function2, function3, function1, navHostController, function5, function4);
                gapComposerC.q(nkVar);
                objX = nkVar;
            }
            NavHostKt.b(navHostController, opOutMenu, null, null, null, null, null, null, null, (Function1) objX, gapComposerC, (i3 & 14) | 48, 2044);
        } else {
            gapComposerC.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerC.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new o(navHostController, function0, function1, function2, function3, function4, function5, i2, 9);
        }
    }
}
