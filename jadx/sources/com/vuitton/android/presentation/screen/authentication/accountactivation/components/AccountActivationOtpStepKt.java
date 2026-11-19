package com.vuitton.android.presentation.screen.authentication.accountactivation.components;

import androidx.compose.foundation.layout.ColumnScope;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.layout.SpacerKt;
import androidx.compose.foundation.text.KeyboardActions;
import androidx.compose.foundation.text.KeyboardOptions;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
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
import com.vuitton.android.designkit.ui.theme.atoms.LVLinkKt;
import com.vuitton.android.designkit.ui.theme.atoms.textfield.LVTextFieldKt;
import defpackage.f;
import defpackage.p;
import defpackage.tr;
import defpackage.y2;
import defpackage.z2;
import kotlin.Function;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import net.rtccloud.sdk.Call;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class AccountActivationOtpStepKt {
    public static final void a(ColumnScope columnScope, String str, String str2, Function1 function1, Function0 function0, Function0 function2, Composer composer, int i2) {
        int i3;
        Function0 function3;
        boolean z;
        columnScope.getClass();
        str.getClass();
        function1.getClass();
        function0.getClass();
        function2.getClass();
        GapComposer gapComposerH = composer.h(1867693863);
        if ((i2 & 6) == 0) {
            i3 = (gapComposerH.K(columnScope) ? 4 : 2) | i2;
        } else {
            i3 = i2;
        }
        if ((i2 & 48) == 0) {
            i3 |= gapComposerH.K(str) ? 32 : 16;
        }
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i3 |= gapComposerH.K(str2) ? 256 : 128;
        }
        if ((i2 & 3072) == 0) {
            i3 |= gapComposerH.y(function1) ? 2048 : 1024;
        }
        if ((i2 & 24576) == 0) {
            i3 |= gapComposerH.y(function0) ? 16384 : 8192;
        }
        if ((196608 & i2) == 0) {
            i3 |= gapComposerH.y(function2) ? 131072 : 65536;
        }
        int i4 = i3;
        if (gapComposerH.p(i4 & 1, (i4 & 74899) != 74898)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            HapticFeedback hapticFeedback = (HapticFeedback) gapComposerH.k(CompositionLocalsKt.l);
            DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier("AccountActivationOtpStep");
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (objX == composer$Companion$Empty$1) {
                objX = new p(10);
                gapComposerH.q(objX);
            }
            Modifier modifierE = ModifierExtKt.e(SizeKt.d(SemanticsModifierKt.b(dTFunctionNameModifier, false, (Function1) objX), 1.0f), "account_activation_otp_code");
            LVColorScheme lVColorScheme = LVColorScheme.INVERT;
            boolean z2 = str2 != null;
            String strC = StringResources_androidKt.c(gapComposerH, R.string.mylv_native_register_activation_code_placeholder);
            KeyboardType.f10809b.getClass();
            int i5 = KeyboardType.f10811e;
            ImeAction.f10785b.getClass();
            KeyboardOptions keyboardOptions = new KeyboardOptions(0, (Boolean) null, i5, ImeAction.f10791j, (PlatformImeOptions) null, (Boolean) null, (LocaleList) null, 115, (DefaultConstructorMarker) null);
            boolean z3 = (i4 & ImageMetadata.JPEG_GPS_COORDINATES) == 131072;
            Object objX2 = gapComposerH.x();
            if (z3 || objX2 == composer$Companion$Empty$1) {
                z = false;
                objX2 = new y2(function2, 0);
                gapComposerH.q(objX2);
            } else {
                z = false;
            }
            boolean z4 = z;
            LVTextFieldKt.a(str, function1, modifierE, lVColorScheme, false, strC, z2, str2, null, keyboardOptions, new KeyboardActions((Function1) objX2, null, null, null, null, null, 62, null), null, null, null, false, gapComposerH, ((i4 >> 3) & 14) | 805309440 | ((i4 >> 6) & 112) | ((i4 << 15) & 29360128), 0, 30992);
            Modifier modifierM = PaddingKt.m(new DTFunctionNameModifier("AccountActivationOtpStep"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13);
            Alignment.f8582a.getClass();
            Modifier modifierE2 = ModifierExtKt.e(columnScope.b(modifierM, Alignment.Companion.p), "account_activation_resend_code");
            String strC2 = StringResources_androidKt.c(gapComposerH, R.string.mylv_native_register_resend_code);
            boolean zY = gapComposerH.y(hapticFeedback) | ((i4 & 57344) == 16384 ? true : z4);
            Object objX3 = gapComposerH.x();
            if (zY || objX3 == composer$Companion$Empty$1) {
                function3 = function0;
                objX3 = new f(hapticFeedback, function3, 2);
                gapComposerH.q(objX3);
            } else {
                function3 = function0;
            }
            LVLinkKt.a(modifierE2, strC2, false, lVColorScheme, false, (Function0) objX3, gapComposerH, 3072, 20);
            SpacerKt.a(gapComposerH, columnScope.a(new DTFunctionNameModifier("AccountActivationOtpStep"), 1.0f, true));
            LVButtonKt.b(1879048192 & (i4 << 12), 376, gapComposerH, ModifierExtKt.e(PaddingKt.k(tr.d("AccountActivationOtpStep", 1.0f), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).g, 1), "account_activation_confirm"), LVAppDesignKitTheme.b(gapComposerH).f48447b, null, null, StringResources_androidKt.c(gapComposerH, R.string.activate_cta), function2, false, (str.length() <= 0 || str2 != null) ? z4 : true, false);
            gapComposerH = gapComposerH;
        } else {
            function3 = function0;
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new z2((Object) columnScope, str, str2, (Object) function1, (Object) function3, (Function) function2, i2, 0);
        }
    }
}
