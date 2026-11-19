package com.vuitton.android.presentation.screen.storemode;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.navigation.NavHostController;
import androidx.navigation.compose.NavHostKt;
import defpackage.g4;
import defpackage.l01;
import defpackage.o;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class StoreModeNavHostKt {
    public static final void a(NavHostController navHostController, StoreModeRoute storeModeRoute, StoreModeViewModel storeModeViewModel, PSPStoreModeViewModel pSPStoreModeViewModel, Function0 function0, Function0 function1, Function1 function2, Composer composer, int i2) {
        navHostController.getClass();
        storeModeRoute.getClass();
        storeModeViewModel.getClass();
        pSPStoreModeViewModel.getClass();
        function0.getClass();
        function1.getClass();
        function2.getClass();
        GapComposer gapComposerH = composer.h(1007029697);
        int i3 = (gapComposerH.y(function2) ? 1048576 : 524288) | i2 | (gapComposerH.y(navHostController) ? 4 : 2) | (gapComposerH.K(storeModeRoute) ? 32 : 16) | (gapComposerH.K(storeModeViewModel) ? 256 : 128) | (gapComposerH.K(pSPStoreModeViewModel) ? 2048 : 1024) | (gapComposerH.y(function0) ? 16384 : 8192) | (gapComposerH.y(function1) ? 131072 : 65536);
        if (gapComposerH.p(i3 & 1, (599187 & i3) != 599186)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (objX == composer$Companion$Empty$1) {
                objX = new l01(9);
                gapComposerH.q(objX);
            }
            Function1 function3 = (Function1) objX;
            Object objX2 = gapComposerH.x();
            if (objX2 == composer$Companion$Empty$1) {
                objX2 = new l01(10);
                gapComposerH.q(objX2);
            }
            Function1 function4 = (Function1) objX2;
            Object objX3 = gapComposerH.x();
            if (objX3 == composer$Companion$Empty$1) {
                objX3 = new l01(11);
                gapComposerH.q(objX3);
            }
            Function1 function5 = (Function1) objX3;
            Object objX4 = gapComposerH.x();
            if (objX4 == composer$Companion$Empty$1) {
                objX4 = new l01(12);
                gapComposerH.q(objX4);
            }
            Function1 function6 = (Function1) objX4;
            boolean zY = ((i3 & 896) == 256) | ((458752 & i3) == 131072) | gapComposerH.y(navHostController) | ((i3 & 7168) == 2048) | ((57344 & i3) == 16384) | ((3670016 & i3) == 1048576);
            Object objX5 = gapComposerH.x();
            if (zY || objX5 == composer$Companion$Empty$1) {
                g4 g4Var = new g4(storeModeViewModel, function1, navHostController, pSPStoreModeViewModel, function0, function2);
                gapComposerH.q(g4Var);
                objX5 = g4Var;
            }
            NavHostKt.b(navHostController, storeModeRoute, null, null, null, function3, function4, function5, function6, (Function1) objX5, gapComposerH, (i3 & 14) | 920125440 | (i3 & 112), 1084);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new o(navHostController, storeModeRoute, storeModeViewModel, pSPStoreModeViewModel, function0, function1, function2, i2, 22);
        }
    }
}
