package com.vuitton.android.presentation.screen.options.settings;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.navigation.NavHostController;
import androidx.navigation.compose.NavHostKt;
import com.vuitton.android.designkit.ui.theme.templates.LVModalBottomSheetKt;
import com.vuitton.android.designkit.ui.theme.templates.LVModalBottomSheetState;
import com.vuitton.android.presentation.screen.account.myinformation.MyInformationViewModel;
import com.vuitton.android.presentation.screen.privacy.PrivacyViewModel;
import defpackage.av0;
import defpackage.nk;
import defpackage.zs0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class SettingsNavHostKt {
    public static final void a(NavHostController navHostController, SettingsViewModel settingsViewModel, PrivacyViewModel privacyViewModel, MyInformationViewModel myInformationViewModel, Function0 function0, Function0 function1, Composer composer, int i2) {
        navHostController.getClass();
        settingsViewModel.getClass();
        privacyViewModel.getClass();
        myInformationViewModel.getClass();
        function0.getClass();
        function1.getClass();
        GapComposer gapComposerH = composer.h(923455412);
        int i3 = (gapComposerH.y(function1) ? 131072 : 65536) | i2 | (gapComposerH.y(navHostController) ? 4 : 2) | (gapComposerH.K(settingsViewModel) ? 32 : 16) | (gapComposerH.K(privacyViewModel) ? 256 : 128) | (gapComposerH.K(myInformationViewModel) ? 2048 : 1024) | (gapComposerH.y(function0) ? 16384 : 8192);
        if (gapComposerH.p(i3 & 1, (74899 & i3) != 74898)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Unit unit = Unit.f71739a;
            int i4 = i3 & 112;
            boolean zY = (i4 == 32) | gapComposerH.y(navHostController);
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (zY || objX == composer$Companion$Empty$1) {
                objX = new SettingsNavHostKt$SettingsNavHost$1$1(settingsViewModel, navHostController, null);
                gapComposerH.q(objX);
            }
            EffectsKt.e(gapComposerH, unit, (Function2) objX);
            LVModalBottomSheetState lVModalBottomSheetStateF = LVModalBottomSheetKt.f(0, 7, gapComposerH, null);
            SettingsRoutes.Home home = SettingsRoutes.Home.INSTANCE;
            Object objX2 = gapComposerH.x();
            if (objX2 == composer$Companion$Empty$1) {
                objX2 = new av0(8);
                gapComposerH.q(objX2);
            }
            Function1 function2 = (Function1) objX2;
            Object objX3 = gapComposerH.x();
            if (objX3 == composer$Companion$Empty$1) {
                objX3 = new av0(9);
                gapComposerH.q(objX3);
            }
            Function1 function3 = (Function1) objX3;
            Object objX4 = gapComposerH.x();
            if (objX4 == composer$Companion$Empty$1) {
                objX4 = new av0(10);
                gapComposerH.q(objX4);
            }
            Function1 function4 = (Function1) objX4;
            Object objX5 = gapComposerH.x();
            if (objX5 == composer$Companion$Empty$1) {
                objX5 = new av0(11);
                gapComposerH.q(objX5);
            }
            Function1 function5 = (Function1) objX5;
            boolean zY2 = (i4 == 32) | ((i3 & 896) == 256) | ((57344 & i3) == 16384) | gapComposerH.y(navHostController) | ((458752 & i3) == 131072) | gapComposerH.y(lVModalBottomSheetStateF) | ((i3 & 7168) == 2048);
            Object objX6 = gapComposerH.x();
            if (zY2 || objX6 == composer$Companion$Empty$1) {
                nk nkVar = new nk(settingsViewModel, privacyViewModel, function0, navHostController, function1, lVModalBottomSheetStateF, myInformationViewModel, 7);
                gapComposerH.q(nkVar);
                objX6 = nkVar;
            }
            NavHostKt.b(navHostController, home, null, null, null, function2, function3, function4, function5, (Function1) objX6, gapComposerH, (i3 & 14) | 920125488, 1084);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new zs0(navHostController, settingsViewModel, privacyViewModel, myInformationViewModel, function0, function1, i2);
        }
    }
}
