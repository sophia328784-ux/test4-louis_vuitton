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
import androidx.compose.ui.Modifier;
import androidx.compose.ui.res.StringResources_androidKt;
import androidx.compose.ui.text.input.ImeAction;
import androidx.compose.ui.text.input.KeyboardType;
import androidx.compose.ui.text.input.PlatformImeOptions;
import androidx.compose.ui.text.intl.LocaleList;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.google.ar.core.ImageMetadata;
import com.vuitton.android.R;
import com.vuitton.android.designkit.ui.common.ModifierExtKt;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.LVColorScheme;
import com.vuitton.android.designkit.ui.theme.atoms.LVButtonKt;
import com.vuitton.android.designkit.ui.theme.atoms.configurations.ConfigurationButton;
import com.vuitton.android.designkit.ui.theme.atoms.textfield.LVTextFieldKt;
import defpackage.cj;
import defpackage.y2;
import defpackage.zv;
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
public abstract class ForgetPasswordEmailKt {
    public static final void a(ColumnScope columnScope, String str, boolean z, boolean z2, Function1 function1, Function0 function0, Function1 function2, Composer composer, int i2) {
        int i3;
        Function1 function3;
        GapComposer gapComposer;
        boolean z3;
        String strF;
        boolean z4;
        String strF2;
        Integer numValueOf;
        columnScope.getClass();
        str.getClass();
        function1.getClass();
        function0.getClass();
        function2.getClass();
        GapComposer gapComposerH = composer.h(331619758);
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
            i3 |= gapComposerH.b(z2) ? 2048 : 1024;
        }
        if ((i2 & 24576) == 0) {
            function3 = function1;
            i3 |= gapComposerH.y(function3) ? 16384 : 8192;
        } else {
            function3 = function1;
        }
        if ((196608 & i2) == 0) {
            i3 |= gapComposerH.y(function0) ? 131072 : 65536;
        }
        if ((1572864 & i2) == 0) {
            i3 |= gapComposerH.y(function2) ? 1048576 : 524288;
        }
        if (gapComposerH.p(i3 & 1, (599187 & i3) != 599186)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Unit unit = Unit.f71739a;
            boolean z5 = (i3 & 3670016) == 1048576;
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            int i4 = i3;
            if (z5 || objX == composer$Companion$Empty$1) {
                objX = new ForgetPasswordEmailKt$ForgetPasswordEmail$1$1(null, function2);
                gapComposerH.q(objX);
            }
            EffectsKt.e(gapComposerH, unit, (Function2) objX);
            Modifier modifierE = ModifierExtKt.e(SizeKt.d(new DTFunctionNameModifier("ForgetPasswordEmail"), 1.0f), "nativeForgetPassword_email_textField");
            LVColorScheme lVColorScheme = LVColorScheme.INVERT;
            String strC = StringResources_androidKt.c(gapComposerH, R.string.mylv_authent_native_email_placeholder);
            ImeAction.f10785b.getClass();
            int i5 = ImeAction.f10791j;
            KeyboardType.f10809b.getClass();
            KeyboardOptions keyboardOptions = new KeyboardOptions(0, (Boolean) null, KeyboardType.f10813h, i5, (PlatformImeOptions) null, (Boolean) null, (LocaleList) null, 115, (DefaultConstructorMarker) null);
            boolean z6 = (i4 & ImageMetadata.JPEG_GPS_COORDINATES) == 131072;
            Object objX2 = gapComposerH.x();
            if (z6 || objX2 == composer$Companion$Empty$1) {
                objX2 = new y2(function0, 10);
                gapComposerH.q(objX2);
            }
            KeyboardActions keyboardActions = new KeyboardActions((Function1) objX2, null, null, null, null, null, 62, null);
            if (z) {
                z3 = false;
                strF = cj.f(gapComposerH, 860477673, R.string.mylv_accountcreation_pleaseenteravalidemailaddress, gapComposerH, false);
            } else {
                z3 = false;
                gapComposerH.L(860618072);
                gapComposerH.Z(false);
                strF = null;
            }
            int i6 = i4 << 12;
            LVTextFieldKt.a(str, function3, modifierE, lVColorScheme, false, strC, z, strF, null, keyboardOptions, keyboardActions, null, null, null, false, gapComposerH, ((i4 >> 3) & 14) | 3072 | ((i4 >> 9) & 112) | (i6 & 3670016), 0, 30992);
            SpacerKt.a(gapComposerH, columnScope.a(new DTFunctionNameModifier("ForgetPasswordEmail"), 1.0f, true));
            ConfigurationButton configurationButton = LVAppDesignKitTheme.b(gapComposerH).f48447b;
            Modifier modifierK = PaddingKt.k(SizeKt.d(ModifierExtKt.e(new DTFunctionNameModifier("ForgetPasswordEmail"), "nativeForgetPassword_confirm_button"), 1.0f), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).g, 1);
            if (z2) {
                gapComposerH.L(861023738);
                z4 = false;
                gapComposerH.Z(false);
                strF2 = "";
            } else {
                z4 = false;
                strF2 = cj.f(gapComposerH, 861056877, R.string.send_code_cta, gapComposerH, false);
            }
            String str2 = strF2;
            if (z2) {
                gapComposerH.L(861164912);
                int i7 = LVAppDesignKitTheme.a(gapComposerH).y;
                gapComposerH.Z(z4);
                numValueOf = Integer.valueOf(i7);
            } else {
                gapComposerH.L(861237080);
                gapComposerH.Z(z4);
                numValueOf = null;
            }
            LVButtonKt.b(i6 & 1879048192, 360, gapComposerH, modifierK, configurationButton, null, numValueOf, str2, function0, false, str.length() > 0 ? true : z4, false);
            gapComposer = gapComposerH;
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new zv(columnScope, str, z, z2, function1, function0, function2, i2);
        }
    }
}
