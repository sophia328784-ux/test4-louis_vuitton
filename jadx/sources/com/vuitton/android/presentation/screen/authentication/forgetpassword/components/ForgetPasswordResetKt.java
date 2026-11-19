package com.vuitton.android.presentation.screen.authentication.forgetpassword.components;

import androidx.compose.foundation.layout.ColumnScope;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.SpacerKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Modifier;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.google.ar.core.ImageMetadata;
import com.vuitton.android.R;
import com.vuitton.android.designkit.ui.common.ModifierExtKt;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.LVColorScheme;
import com.vuitton.android.designkit.ui.theme.atoms.LVButtonKt;
import com.vuitton.android.designkit.ui.theme.atoms.configurations.ConfigurationButton;
import com.vuitton.android.presentation.screen.authentication.forgetpassword.models.ForgetPasswordViewState;
import com.vuitton.android.presentation.screen.dynamicform.components.DynamicFormComposableKt;
import defpackage.cj;
import defpackage.f1;
import defpackage.tr;
import defpackage.zv;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import net.rtccloud.sdk.Call;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class ForgetPasswordResetKt {
    public static final void a(ColumnScope columnScope, ForgetPasswordViewState forgetPasswordViewState, boolean z, boolean z2, Function2 function2, Function0 function0, Function1 function1, Composer composer, int i2) {
        int i3;
        boolean z3;
        String strF;
        Integer numValueOf;
        columnScope.getClass();
        forgetPasswordViewState.getClass();
        function2.getClass();
        function0.getClass();
        function1.getClass();
        GapComposer gapComposerH = composer.h(-837138242);
        if ((i2 & 6) == 0) {
            i3 = (gapComposerH.K(columnScope) ? 4 : 2) | i2;
        } else {
            i3 = i2;
        }
        if ((i2 & 48) == 0) {
            i3 |= gapComposerH.y(forgetPasswordViewState) ? 32 : 16;
        }
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            z3 = z;
            i3 |= gapComposerH.b(z3) ? 256 : 128;
        } else {
            z3 = z;
        }
        if ((i2 & 3072) == 0) {
            i3 |= gapComposerH.b(z2) ? 2048 : 1024;
        }
        if ((i2 & 24576) == 0) {
            i3 |= gapComposerH.y(function2) ? 16384 : 8192;
        }
        if ((196608 & i2) == 0) {
            i3 |= gapComposerH.y(function0) ? 131072 : 65536;
        }
        if ((1572864 & i2) == 0) {
            i3 |= gapComposerH.y(function1) ? 1048576 : 524288;
        }
        if (gapComposerH.p(i3 & 1, (599187 & i3) != 599186)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Unit unit = Unit.f71739a;
            boolean z4 = (3670016 & i3) == 1048576;
            Object objX = gapComposerH.x();
            if (z4 || objX == Composer.Companion.f7939a) {
                objX = new ForgetPasswordResetKt$ForgetPasswordReset$1$1(null, function1);
                gapComposerH.q(objX);
            }
            EffectsKt.e(gapComposerH, unit, (Function2) objX);
            DynamicFormComposableKt.a(null, LVColorScheme.INVERT, forgetPasswordViewState.g, false, LVAppDesignKitTheme.l(gapComposerH).f48416e, function2, null, function0, null, null, false, false, false, null, null, null, ComposableLambdaKt.b(-1292674616, new f1(columnScope, forgetPasswordViewState, 23), gapComposerH), null, false, gapComposerH, ((i3 << 3) & ImageMetadata.JPEG_GPS_COORDINATES) | 48 | ((i3 << 6) & 29360128), 1572864, 458569);
            gapComposerH = gapComposerH;
            SpacerKt.a(gapComposerH, columnScope.a(new DTFunctionNameModifier("ForgetPasswordReset"), 1.0f, true));
            ConfigurationButton configurationButton = LVAppDesignKitTheme.b(gapComposerH).f48447b;
            Modifier modifierE = ModifierExtKt.e(PaddingKt.k(tr.d("ForgetPasswordReset", 1.0f), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).g, 1), "nativeForgetPassword_confirm_button");
            if (z2) {
                gapComposerH.L(1691409642);
                gapComposerH.Z(false);
                strF = "";
            } else {
                strF = cj.f(gapComposerH, 1691442595, R.string.confirm, gapComposerH, false);
            }
            String str = strF;
            if (z2) {
                gapComposerH.L(1691544864);
                int i4 = LVAppDesignKitTheme.a(gapComposerH).y;
                gapComposerH.Z(false);
                numValueOf = Integer.valueOf(i4);
            } else {
                gapComposerH.L(1691617032);
                gapComposerH.Z(false);
                numValueOf = null;
            }
            LVButtonKt.b(((i3 << 15) & 29360128) | ((i3 << 12) & 1879048192), 360, gapComposerH, modifierE, configurationButton, null, numValueOf, str, function0, false, z3, false);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new zv(columnScope, forgetPasswordViewState, z, z2, function2, function0, function1, i2);
        }
    }
}
