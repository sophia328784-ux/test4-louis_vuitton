package com.vuitton.android.presentation.screen.privacy.components;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.navigation.NavHostController;
import androidx.navigation.compose.NavHostKt;
import com.vuitton.android.designkit.ui.theme.templates.LVModalBottomSheetState;
import com.vuitton.android.presentation.screen.privacy.PrivacyViewModelImpl;
import defpackage.a0;
import defpackage.d4;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class PrivacyNavHostKt {
    public static final void a(NavHostController navHostController, LVModalBottomSheetState lVModalBottomSheetState, PrivacyRoutes privacyRoutes, boolean z, PrivacyViewModelImpl privacyViewModelImpl, Function0 function0, Function0 function1, Function0 function2, Function1 function3, Composer composer, int i2) {
        int i3;
        boolean z2;
        Function0 function4;
        Function0 function5;
        Function0 function6;
        int i4;
        navHostController.getClass();
        lVModalBottomSheetState.getClass();
        privacyRoutes.getClass();
        privacyViewModelImpl.getClass();
        function0.getClass();
        function1.getClass();
        function2.getClass();
        function3.getClass();
        GapComposer gapComposerH = composer.h(-1455813535);
        if ((i2 & 6) == 0) {
            i3 = (gapComposerH.y(navHostController) ? 4 : 2) | i2;
        } else {
            i3 = i2;
        }
        if ((i2 & 48) == 0) {
            i3 |= (i2 & 64) == 0 ? gapComposerH.K(lVModalBottomSheetState) : gapComposerH.y(lVModalBottomSheetState) ? 32 : 16;
        }
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i3 |= gapComposerH.K(privacyRoutes) ? 256 : 128;
        }
        if ((i2 & 3072) == 0) {
            z2 = z;
            i3 |= gapComposerH.b(z2) ? 2048 : 1024;
        } else {
            z2 = z;
        }
        if ((i2 & 24576) == 0) {
            i3 |= gapComposerH.y(privacyViewModelImpl) ? 16384 : 8192;
        }
        if ((196608 & i2) == 0) {
            function4 = function0;
            i3 |= gapComposerH.y(function4) ? 131072 : 65536;
        } else {
            function4 = function0;
        }
        if ((1572864 & i2) == 0) {
            function5 = function1;
            i3 |= gapComposerH.y(function5) ? 1048576 : 524288;
        } else {
            function5 = function1;
        }
        if ((12582912 & i2) == 0) {
            function6 = function2;
            i3 |= gapComposerH.y(function6) ? 8388608 : 4194304;
        } else {
            function6 = function2;
        }
        if ((i2 & 100663296) == 0) {
            i3 |= gapComposerH.y(function3) ? 67108864 : 33554432;
        }
        if (gapComposerH.p(i3 & 1, (i3 & 38347923) != 38347922)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            boolean zY = ((i3 & 112) == 32 || ((i3 & 64) != 0 && gapComposerH.y(lVModalBottomSheetState))) | ((i3 & 7168) == 2048) | gapComposerH.y(privacyViewModelImpl) | ((458752 & i3) == 131072) | gapComposerH.y(navHostController) | ((3670016 & i3) == 1048576) | ((29360128 & i3) == 8388608) | ((234881024 & i3) == 67108864);
            Object objX = gapComposerH.x();
            if (zY || objX == Composer.Companion.f7939a) {
                Function0 function7 = function5;
                i4 = i3;
                a0 a0Var = new a0(privacyViewModelImpl, z2, lVModalBottomSheetState, function4, navHostController, function7, function6, function3);
                gapComposerH.q(a0Var);
                objX = a0Var;
            } else {
                i4 = i3;
            }
            NavHostKt.b(navHostController, privacyRoutes, null, null, null, null, null, null, null, (Function1) objX, gapComposerH, (i4 & 14) | ((i4 >> 3) & 112), 2044);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new d4(navHostController, lVModalBottomSheetState, privacyRoutes, z, privacyViewModelImpl, function0, function1, function2, function3, i2);
        }
    }
}
