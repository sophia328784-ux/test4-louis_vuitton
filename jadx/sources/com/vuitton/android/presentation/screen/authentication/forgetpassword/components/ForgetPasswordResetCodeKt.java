package com.vuitton.android.presentation.screen.authentication.forgetpassword.components;

import androidx.compose.foundation.layout.ColumnScope;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.layout.SpacerKt;
import androidx.compose.foundation.text.KeyboardActions;
import androidx.compose.foundation.text.KeyboardOptions;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.hapticfeedback.HapticFeedback;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.res.StringResources_androidKt;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import androidx.compose.ui.text.input.ImeAction;
import androidx.compose.ui.text.input.PlatformImeOptions;
import androidx.compose.ui.text.intl.LocaleList;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.R;
import com.vuitton.android.designkit.ui.common.ModifierExtKt;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.LVColorScheme;
import com.vuitton.android.designkit.ui.theme.atoms.LVButtonKt;
import com.vuitton.android.designkit.ui.theme.atoms.LVLinkKt;
import com.vuitton.android.designkit.ui.theme.atoms.configurations.ConfigurationButton;
import com.vuitton.android.designkit.ui.theme.atoms.textfield.LVTextFieldKt;
import com.vuitton.foundation.model.domain.extensions.StringKtExtKt;
import defpackage.cj;
import defpackage.dy;
import defpackage.f;
import defpackage.kc;
import defpackage.tr;
import defpackage.y2;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import net.rtccloud.sdk.Call;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class ForgetPasswordResetCodeKt {
    public static final void a(ColumnScope columnScope, String str, boolean z, String str2, Function0 function0, Function1 function1, Function0 function2, Function1 function3, Composer composer, int i2) {
        int i3;
        boolean z2;
        String strF;
        Integer numValueOf;
        columnScope.getClass();
        str.getClass();
        function0.getClass();
        function1.getClass();
        function2.getClass();
        function3.getClass();
        GapComposer gapComposerH = composer.h(531805277);
        if ((i2 & 6) == 0) {
            i3 = (gapComposerH.K(columnScope) ? 4 : 2) | i2;
        } else {
            i3 = i2;
        }
        if ((i2 & 48) == 0) {
            i3 |= gapComposerH.K(str) ? 32 : 16;
        }
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i3 |= gapComposerH.b(z) ? 256 : 128;
        }
        if ((i2 & 3072) == 0) {
            i3 |= gapComposerH.K(str2) ? 2048 : 1024;
        }
        if ((i2 & 24576) == 0) {
            i3 |= gapComposerH.y(function0) ? 16384 : 8192;
        }
        if ((196608 & i2) == 0) {
            i3 |= gapComposerH.y(function1) ? 131072 : 65536;
        }
        if ((1572864 & i2) == 0) {
            i3 |= gapComposerH.y(function2) ? 1048576 : 524288;
        }
        if ((12582912 & i2) == 0) {
            i3 |= gapComposerH.y(function3) ? 8388608 : 4194304;
        }
        int i4 = i3;
        if (gapComposerH.p(i4 & 1, (i4 & 4793491) != 4793490)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            HapticFeedback hapticFeedback = (HapticFeedback) gapComposerH.k(CompositionLocalsKt.l);
            Unit unit = Unit.f71739a;
            boolean z3 = (i4 & 29360128) == 8388608;
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (z3 || objX == composer$Companion$Empty$1) {
                objX = new ForgetPasswordResetCodeKt$ForgetPasswordResetCode$1$1(null, function3);
                gapComposerH.q(objX);
            }
            EffectsKt.e(gapComposerH, unit, (Function2) objX);
            Modifier modifierD = SizeKt.d(new DTFunctionNameModifier("ForgetPasswordResetCode"), 1.0f);
            Object objX2 = gapComposerH.x();
            if (objX2 == composer$Companion$Empty$1) {
                objX2 = new dy(11);
                gapComposerH.q(objX2);
            }
            Modifier modifierE = ModifierExtKt.e(SemanticsModifierKt.b(modifierD, false, (Function1) objX2), "nativeForgetPassword_resetCode_textField");
            LVColorScheme lVColorScheme = LVColorScheme.INVERT;
            String strC = StringResources_androidKt.c(gapComposerH, R.string.mylv_authent_native_forgot_password_reset_code_placeholder);
            ImeAction.f10785b.getClass();
            KeyboardOptions keyboardOptions = new KeyboardOptions(0, (Boolean) null, 0, ImeAction.f10791j, (PlatformImeOptions) null, (Boolean) null, (LocaleList) null, 119, (DefaultConstructorMarker) null);
            boolean z4 = (i4 & 3670016) == 1048576;
            Object objX3 = gapComposerH.x();
            if (z4 || objX3 == composer$Companion$Empty$1) {
                objX3 = new y2(function2, 11);
                gapComposerH.q(objX3);
            }
            LVTextFieldKt.a(str, function1, modifierE, lVColorScheme, false, strC, str2 != null, str2, null, keyboardOptions, new KeyboardActions((Function1) objX3, null, null, null, null, null, 62, null), null, null, null, false, gapComposerH, ((i4 >> 3) & 14) | 805309440 | ((i4 >> 12) & 112) | ((i4 << 12) & 29360128), 0, 30992);
            gapComposerH = gapComposerH;
            DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier("ForgetPasswordResetCode");
            Alignment.f8582a.getClass();
            Modifier modifierE2 = ModifierExtKt.e(PaddingKt.m(columnScope.b(dTFunctionNameModifier, Alignment.Companion.p), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), "nativeForgetPassword_sendCodeAgain_link");
            String strC2 = StringResources_androidKt.c(gapComposerH, R.string.mylv_native_register_resend_code);
            boolean zY = gapComposerH.y(hapticFeedback) | ((i4 & 57344) == 16384);
            Object objX4 = gapComposerH.x();
            if (zY || objX4 == composer$Companion$Empty$1) {
                objX4 = new f(hapticFeedback, function0, 3);
                gapComposerH.q(objX4);
            }
            LVLinkKt.a(modifierE2, strC2, false, lVColorScheme, false, (Function0) objX4, gapComposerH, 3072, 20);
            SpacerKt.a(gapComposerH, columnScope.a(new DTFunctionNameModifier("ForgetPasswordResetCode"), 1.0f, true));
            ConfigurationButton configurationButton = LVAppDesignKitTheme.b(gapComposerH).f48447b;
            Modifier modifierE3 = ModifierExtKt.e(PaddingKt.k(tr.d("ForgetPasswordResetCode", 1.0f), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).g, 1), "nativeForgetPassword_confirm_button");
            if (z) {
                gapComposerH.L(-1121269781);
                z2 = false;
                gapComposerH.Z(false);
                strF = "";
            } else {
                z2 = false;
                strF = cj.f(gapComposerH, -1121236828, R.string.confirm, gapComposerH, false);
            }
            String str3 = strF;
            if (z) {
                gapComposerH.L(-1121134559);
                int i5 = LVAppDesignKitTheme.a(gapComposerH).y;
                gapComposerH.Z(z2);
                numValueOf = Integer.valueOf(i5);
            } else {
                gapComposerH.L(-1121062391);
                gapComposerH.Z(z2);
                numValueOf = null;
            }
            LVButtonKt.b((i4 << 9) & 1879048192, 360, gapComposerH, modifierE3, configurationButton, null, numValueOf, str3, function2, false, StringKtExtKt.g(str), false);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new kc(columnScope, str, z, str2, function0, function1, function2, function3, i2);
        }
    }
}
