package com.vuitton.android.presentation.screen.thelookimmersivearticle.components;

import android.content.Context;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.navigation.NavHostController;
import androidx.navigation.Navigator;
import androidx.navigation.compose.NavHostControllerKt;
import androidx.navigation.compose.NavHostKt;
import com.vuitton.android.presentation.screen.thelookimmersivearticle.TheLookImmersiveArticleViewModel;
import defpackage.g4;
import defpackage.ys0;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class TheLookImmersiveArticleNavHostKt {
    public static final void a(TheLookImmersiveArticleViewModel theLookImmersiveArticleViewModel, Function2 function2, Function2 function3, Function3 function4, Composer composer, int i2) {
        NavHostController navHostController;
        theLookImmersiveArticleViewModel.getClass();
        function2.getClass();
        function3.getClass();
        function4.getClass();
        GapComposer gapComposerH = composer.h(-1010771300);
        int i3 = i2 | (gapComposerH.K(theLookImmersiveArticleViewModel) ? 4 : 2) | (gapComposerH.y(function2) ? 32 : 16) | (gapComposerH.y(function3) ? 256 : 128) | (gapComposerH.y(function4) ? 2048 : 1024);
        if (gapComposerH.p(i3 & 1, (i3 & 1171) != 1170)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            NavHostController navHostControllerA = NavHostControllerKt.a(new Navigator[0], gapComposerH);
            Context context = (Context) gapComposerH.k(AndroidCompositionLocals_androidKt.f9936b);
            TheLookImmersiveArticleRoutes.LookList lookList = TheLookImmersiveArticleRoutes.LookList.INSTANCE;
            boolean zY = ((i3 & 14) == 4) | gapComposerH.y(context) | gapComposerH.y(navHostControllerA) | ((i3 & 112) == 32) | ((i3 & 896) == 256) | ((i3 & 7168) == 2048);
            Object objX = gapComposerH.x();
            if (zY || objX == Composer.Companion.f7939a) {
                g4 g4Var = new g4(theLookImmersiveArticleViewModel, context, navHostControllerA, function2, function3, function4, 9);
                navHostController = navHostControllerA;
                gapComposerH.q(g4Var);
                objX = g4Var;
            } else {
                navHostController = navHostControllerA;
            }
            NavHostKt.b(navHostController, lookList, null, null, null, null, null, null, null, (Function1) objX, gapComposerH, 48, 2044);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new ys0(theLookImmersiveArticleViewModel, function2, function3, function4, i2, 7);
        }
    }
}
