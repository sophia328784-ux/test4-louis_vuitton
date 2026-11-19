package com.vuitton.android.presentation.screen.options;

import android.content.Context;
import androidx.activity.compose.ActivityResultRegistryKt;
import androidx.activity.compose.ManagedActivityResultLauncher;
import androidx.activity.result.contract.ActivityResultContracts$StartActivityForResult;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.navigation.NavHostController;
import androidx.navigation.compose.NavHostKt;
import com.vuitton.android.presentation.PreprodRouter;
import com.vuitton.android.presentation.screen.options.appinfo.AppInfoViewModel;
import com.vuitton.android.presentation.screen.options.dispatch.DispatchCountryViewModel;
import com.vuitton.android.presentation.screen.options.notifications.NotificationsPreferencesViewModel;
import defpackage.ch0;
import defpackage.le;
import defpackage.s9;
import defpackage.tb0;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import org.bouncycastle.asn1.cmp.PKIFailureInfo;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class OptionsNavHostKt {
    public static final void a(NavHostController navHostController, OptionsViewModel optionsViewModel, DispatchCountryViewModel dispatchCountryViewModel, AppInfoViewModel appInfoViewModel, NotificationsPreferencesViewModel notificationsPreferencesViewModel, PreprodRouter preprodRouter, Function0 function0, Function0 function1, Function1 function2, Function1 function3, Function0 function4, Function0 function5, Composer composer, int i2) {
        GapComposer gapComposer;
        int i3;
        navHostController.getClass();
        preprodRouter.getClass();
        function0.getClass();
        function1.getClass();
        function2.getClass();
        function3.getClass();
        function4.getClass();
        function5.getClass();
        GapComposer gapComposerH = composer.h(-1769602278);
        int i4 = i2 | (gapComposerH.y(navHostController) ? 4 : 2) | (gapComposerH.K(optionsViewModel) ? 32 : 16) | (gapComposerH.K(dispatchCountryViewModel) ? 256 : 128) | (gapComposerH.K(appInfoViewModel) ? 2048 : 1024) | (gapComposerH.K(notificationsPreferencesViewModel) ? 16384 : 8192) | (gapComposerH.K(preprodRouter) ? 131072 : 65536) | (gapComposerH.y(function0) ? 1048576 : 524288) | (gapComposerH.y(function1) ? 8388608 : 4194304) | (gapComposerH.y(function2) ? 67108864 : 33554432) | (gapComposerH.y(function3) ? PKIFailureInfo.duplicateCertReq : 268435456);
        int i5 = (gapComposerH.y(function4) ? (char) 4 : (char) 2) | (gapComposerH.y(function5) ? ' ' : (char) 16);
        if (gapComposerH.p(i4 & 1, ((i4 & 306783379) == 306783378 && (i5 & 19) == 18) ? false : true)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Context context = (Context) gapComposerH.k(AndroidCompositionLocals_androidKt.f9936b);
            ActivityResultContracts$StartActivityForResult activityResultContracts$StartActivityForResult = new ActivityResultContracts$StartActivityForResult();
            int i6 = i4 & 57344;
            boolean z = i6 == 16384;
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (z || objX == composer$Companion$Empty$1) {
                objX = new tb0(notificationsPreferencesViewModel, 17);
                gapComposerH.q(objX);
            }
            ManagedActivityResultLauncher managedActivityResultLauncherA = ActivityResultRegistryKt.a(activityResultContracts$StartActivityForResult, (Function1) objX, gapComposerH, 0);
            OptionsRoutes.Menu menu = OptionsRoutes.Menu.INSTANCE;
            Object objX2 = gapComposerH.x();
            if (objX2 == composer$Companion$Empty$1) {
                objX2 = new ch0(6);
                gapComposerH.q(objX2);
            }
            Function1 function6 = (Function1) objX2;
            Object objX3 = gapComposerH.x();
            if (objX3 == composer$Companion$Empty$1) {
                objX3 = new ch0(7);
                gapComposerH.q(objX3);
            }
            Function1 function7 = (Function1) objX3;
            Object objX4 = gapComposerH.x();
            if (objX4 == composer$Companion$Empty$1) {
                objX4 = new ch0(8);
                gapComposerH.q(objX4);
            }
            Function1 function8 = (Function1) objX4;
            Object objX5 = gapComposerH.x();
            if (objX5 == composer$Companion$Empty$1) {
                objX5 = new ch0(9);
                gapComposerH.q(objX5);
            }
            Function1 function9 = (Function1) objX5;
            boolean zY = ((i4 & 112) == 32) | gapComposerH.y(navHostController) | ((3670016 & i4) == 1048576) | gapComposerH.y(context) | gapComposerH.y(managedActivityResultLauncherA) | ((29360128 & i4) == 8388608) | (i6 == 16384) | ((458752 & i4) == 131072) | ((234881024 & i4) == 67108864) | ((i4 & 896) == 256) | ((i4 & 7168) == 2048) | ((1879048192 & i4) == 536870912) | ((i5 & 14) == 4) | ((i5 & 112) == 32);
            Object objX6 = gapComposerH.x();
            if (zY || objX6 == composer$Companion$Empty$1) {
                i3 = i4;
                s9 s9Var = new s9(navHostController, context, optionsViewModel, function0, managedActivityResultLauncherA, function1, notificationsPreferencesViewModel, preprodRouter, function2, dispatchCountryViewModel, appInfoViewModel, function3, function4, function5);
                gapComposerH.q(s9Var);
                objX6 = s9Var;
            } else {
                i3 = i4;
            }
            gapComposer = gapComposerH;
            NavHostKt.b(navHostController, menu, null, null, null, function6, function7, function8, function9, (Function1) objX6, gapComposer, (i3 & 14) | 920125488, 1084);
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new le(navHostController, optionsViewModel, dispatchCountryViewModel, appInfoViewModel, notificationsPreferencesViewModel, preprodRouter, function0, function1, function2, function3, function4, function5, i2);
        }
    }
}
