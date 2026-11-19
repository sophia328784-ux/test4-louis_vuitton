package com.vuitton.android.presentation.screen.authentication.register.components;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.ui.res.StringResources_androidKt;
import com.vuitton.android.R;
import com.vuitton.android.designkit.ui.theme.templates.LVModalBottomSheetKt;
import com.vuitton.android.presentation.screen.options.settings.components.SettingsComposableKt;
import defpackage.a9;
import defpackage.d21;
import defpackage.dd0;
import defpackage.kf;
import defpackage.n50;
import defpackage.w;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class NativeRegisterBottomSheetScreenKt {
    public static final void a(Function0 function0, Function0 function1, Composer composer, int i2) {
        int i3;
        GapComposer gapComposer;
        GapComposer gapComposerH = composer.h(1550983261);
        if ((i2 & 6) == 0) {
            i3 = i2 | (gapComposerH.y(function0) ? 4 : 2);
        } else {
            i3 = i2;
        }
        if ((i2 & 48) == 0) {
            i3 |= gapComposerH.y(function1) ? 32 : 16;
        }
        if (gapComposerH.p(i3 & 1, (i3 & 19) != 18)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            gapComposer = gapComposerH;
            LVModalBottomSheetKt.a(null, null, StringResources_androidKt.c(gapComposerH, R.string.mylv_native_register_bottom_existing_account_subtitle), null, null, StringResources_androidKt.c(gapComposerH, R.string.mylv_native_register_bottom_existing_account_description), null, StringResources_androidKt.c(gapComposerH, R.string.onboarding_connexion_login_cta), null, false, null, function0, StringResources_androidKt.c(gapComposerH, R.string.mylv_authent_native_forgot_password), false, null, function1, null, false, null, gapComposer, 0, ((i3 << 3) & 112) | ((i3 << 15) & 3670016), 976731);
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new a9(function0, function1, i2, 4);
        }
    }

    public static final void b(String str, Function0 function0, Composer composer, int i2) {
        int i3;
        GapComposer gapComposer;
        GapComposer gapComposerH = composer.h(256406084);
        if ((i2 & 6) == 0) {
            i3 = i2 | (gapComposerH.K(str) ? 4 : 2);
        } else {
            i3 = i2;
        }
        if ((i2 & 48) == 0) {
            i3 |= gapComposerH.y(function0) ? 32 : 16;
        }
        if (gapComposerH.p(i3 & 1, (i3 & 19) != 18)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            gapComposer = gapComposerH;
            LVModalBottomSheetKt.a(null, null, StringResources_androidKt.b(R.string.mylv_native_register_date_of_birth_bottom_subtitle, new Object[]{str}, gapComposerH), null, null, StringResources_androidKt.c(gapComposerH, R.string.mylv_native_register_date_of_birth_bottom_description), null, StringResources_androidKt.c(gapComposerH, R.string.confirm), null, false, null, function0, StringResources_androidKt.c(gapComposerH, R.string.modify_cta), false, null, function0, null, false, null, gapComposer, 0, (i3 & 112) | ((i3 << 15) & 3670016), 976731);
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new kf(str, function0, i2, 1);
        }
    }

    public static final void c(NativeRegisterBottomSheetScreen nativeRegisterBottomSheetScreen, String str, Function0 function0, Function0 function1, Function0 function2, Composer composer, int i2) {
        nativeRegisterBottomSheetScreen.getClass();
        function0.getClass();
        function1.getClass();
        function2.getClass();
        GapComposer gapComposerH = composer.h(-1831722579);
        int i3 = (gapComposerH.K(nativeRegisterBottomSheetScreen) ? 4 : 2) | i2 | (gapComposerH.K(str) ? 32 : 16) | (gapComposerH.y(function0) ? 256 : 128) | (gapComposerH.y(function1) ? 2048 : 1024) | (gapComposerH.y(function2) ? 16384 : 8192);
        if (gapComposerH.p(i3 & 1, (i3 & 9363) != 9362)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            if (nativeRegisterBottomSheetScreen.equals(NativeRegisterBottomSheetScreen.BottomSheetAccount.f53804a)) {
                gapComposerH.L(651203636);
                a(function0, function1, gapComposerH, (i3 >> 6) & 126);
                gapComposerH.Z(false);
            } else if (nativeRegisterBottomSheetScreen.equals(NativeRegisterBottomSheetScreen.BottomSheetPartners.f53806a)) {
                gapComposerH.L(651210928);
                d(gapComposerH, 0);
                gapComposerH.Z(false);
            } else {
                if (!nativeRegisterBottomSheetScreen.equals(NativeRegisterBottomSheetScreen.BottomSheetBirthdate.f53805a)) {
                    throw d21.u(gapComposerH, 651200936, false);
                }
                gapComposerH.L(651214260);
                b(str, function2, gapComposerH, ((i3 >> 9) & 112) | ((i3 >> 3) & 14));
                gapComposerH.Z(false);
            }
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new w(nativeRegisterBottomSheetScreen, str, function0, function1, function2, i2, 25);
        }
    }

    public static final void d(Composer composer, int i2) {
        GapComposer gapComposerH = composer.h(-836741647);
        if (gapComposerH.p(i2 & 1, i2 != 0)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Object objX = gapComposerH.x();
            if (objX == Composer.Companion.f7939a) {
                objX = new dd0(18);
                gapComposerH.q(objX);
            }
            SettingsComposableKt.a((Function0) objX, gapComposerH, 6);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new n50(i2, 21);
        }
    }
}
