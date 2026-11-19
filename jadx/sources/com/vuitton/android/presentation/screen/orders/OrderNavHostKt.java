package com.vuitton.android.presentation.screen.orders;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.navigation.NavController;
import androidx.navigation.NavHostController;
import androidx.navigation.compose.NavHostKt;
import androidx.navigation.internal.NavControllerImpl;
import com.vuitton.android.presentation.screen.orders.viewmodels.OrderViewModel;
import defpackage.ch0;
import defpackage.g4;
import defpackage.o;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class OrderNavHostKt {
    public static final void a(NavHostController navHostController, OrderViewModel orderViewModel, String str, Function0 function0, Function1 function1, Function1 function2, Function1 function3, Composer composer, int i2) {
        navHostController.getClass();
        orderViewModel.getClass();
        function0.getClass();
        function1.getClass();
        function2.getClass();
        function3.getClass();
        GapComposer gapComposerH = composer.h(1920399769);
        int i3 = (gapComposerH.y(function3) ? 1048576 : 524288) | i2 | (gapComposerH.y(navHostController) ? 4 : 2) | (gapComposerH.K(orderViewModel) ? 32 : 16) | (gapComposerH.K(str) ? 256 : 128) | (gapComposerH.y(function0) ? 2048 : 1024) | (gapComposerH.y(function1) ? 16384 : 8192) | (gapComposerH.y(function2) ? 131072 : 65536);
        if (gapComposerH.p(i3 & 1, (599187 & i3) != 599186)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            String str2 = str == null ? "list" : str;
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (objX == composer$Companion$Empty$1) {
                objX = new ch0(18);
                gapComposerH.q(objX);
            }
            Function1 function4 = (Function1) objX;
            Object objX2 = gapComposerH.x();
            if (objX2 == composer$Companion$Empty$1) {
                objX2 = new ch0(19);
                gapComposerH.q(objX2);
            }
            Function1 function5 = (Function1) objX2;
            Object objX3 = gapComposerH.x();
            if (objX3 == composer$Companion$Empty$1) {
                objX3 = new ch0(20);
                gapComposerH.q(objX3);
            }
            Function1 function6 = (Function1) objX3;
            Object objX4 = gapComposerH.x();
            if (objX4 == composer$Companion$Empty$1) {
                objX4 = new ch0(21);
                gapComposerH.q(objX4);
            }
            Function1 function7 = (Function1) objX4;
            boolean zY = ((i3 & 112) == 32) | ((i3 & 7168) == 2048) | gapComposerH.y(navHostController) | ((458752 & i3) == 131072) | ((57344 & i3) == 16384) | ((3670016 & i3) == 1048576);
            Object objX5 = gapComposerH.x();
            if (zY || objX5 == composer$Companion$Empty$1) {
                g4 g4Var = new g4(orderViewModel, function0, navHostController, function2, function1, function3);
                gapComposerH.q(g4Var);
                objX5 = g4Var;
            }
            NavHostKt.c(navHostController, str2, null, null, function4, function5, function6, function7, (Function1) objX5, gapComposerH, (i3 & 14) | 115015680);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new o(navHostController, orderViewModel, str, function0, function1, function2, function3, i2, 10);
        }
    }

    public static final void b(NavHostController navHostController, OrderViewModel orderViewModel, Function1 function1) {
        boolean z = NavController.f18120i;
        navHostController.getClass();
        NavControllerImpl navControllerImpl = navHostController.f18122b;
        navControllerImpl.getClass();
        if (navControllerImpl.q("list", false, false) && navControllerImpl.b()) {
            orderViewModel.u4();
        } else {
            function1.invoke(Boolean.TRUE);
        }
    }
}
