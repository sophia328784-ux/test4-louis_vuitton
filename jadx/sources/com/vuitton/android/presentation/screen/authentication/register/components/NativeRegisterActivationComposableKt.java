package com.vuitton.android.presentation.screen.authentication.register.components;

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
import androidx.compose.runtime.SnapshotMutableStateImpl;
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
import com.vuitton.android.designkit.ui.theme.atoms.textfield.LVTextFieldKt;
import com.vuitton.android.presentation.screen.authentication.register.models.NativeRegisterActivationUiModel;
import com.vuitton.android.presentation.screen.authentication.register.models.NativeRegisterViewState;
import defpackage.be0;
import defpackage.f;
import defpackage.nm;
import defpackage.tr;
import defpackage.y2;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import net.rtccloud.sdk.Call;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class NativeRegisterActivationComposableKt {
    public static final void a(ColumnScope columnScope, NativeRegisterViewState nativeRegisterViewState, Function1 function1, Function0 function0, Function0 function2, Function1 function3, boolean z, Composer composer, int i2) {
        int i3;
        columnScope.getClass();
        nativeRegisterViewState.getClass();
        function1.getClass();
        function0.getClass();
        function2.getClass();
        function3.getClass();
        GapComposer gapComposerH = composer.h(-1727580168);
        if ((i2 & 6) == 0) {
            i3 = (gapComposerH.K(columnScope) ? 4 : 2) | i2;
        } else {
            i3 = i2;
        }
        if ((i2 & 48) == 0) {
            i3 |= gapComposerH.y(nativeRegisterViewState) ? 32 : 16;
        }
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i3 |= gapComposerH.y(function1) ? 256 : 128;
        }
        if ((i2 & 3072) == 0) {
            i3 |= gapComposerH.y(function0) ? 2048 : 1024;
        }
        if ((i2 & 24576) == 0) {
            i3 |= gapComposerH.y(function2) ? 16384 : 8192;
        }
        if ((196608 & i2) == 0) {
            i3 |= gapComposerH.y(function3) ? 131072 : 65536;
        }
        if ((1572864 & i2) == 0) {
            i3 |= gapComposerH.b(z) ? 1048576 : 524288;
        }
        if (gapComposerH.p(i3 & 1, (599187 & i3) != 599186)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            HapticFeedback hapticFeedback = (HapticFeedback) gapComposerH.k(CompositionLocalsKt.l);
            Boolean boolValueOf = Boolean.valueOf(z);
            boolean z2 = ((i3 & 3670016) == 1048576) | ((458752 & i3) == 131072);
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (z2 || objX == composer$Companion$Empty$1) {
                objX = new NativeRegisterActivationComposableKt$NativeRegisterActivationComposable$1$1(z, function3, null);
                gapComposerH.q(objX);
            }
            EffectsKt.e(gapComposerH, boolValueOf, (Function2) objX);
            DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier("NativeRegisterActivationComposable");
            Object objX2 = gapComposerH.x();
            if (objX2 == composer$Companion$Empty$1) {
                objX2 = new be0(16);
                gapComposerH.q(objX2);
            }
            Modifier modifierB = SemanticsModifierKt.b(dTFunctionNameModifier, false, (Function1) objX2);
            Object objX3 = gapComposerH.x();
            if (objX3 == composer$Companion$Empty$1) {
                objX3 = new be0(17);
                gapComposerH.q(objX3);
            }
            Modifier modifierE = ModifierExtKt.e(SizeKt.d(SemanticsModifierKt.b(modifierB, false, (Function1) objX3), 1.0f), "nativeRegister_activationCode_textField");
            LVColorScheme lVColorScheme = LVColorScheme.INVERT;
            NativeRegisterActivationUiModel nativeRegisterActivationUiModel = nativeRegisterViewState.g;
            String str = nativeRegisterActivationUiModel.f53921a;
            boolean zB = nativeRegisterActivationUiModel.f53922b.b();
            String str2 = (String) ((SnapshotMutableStateImpl) nativeRegisterActivationUiModel.f53922b.f53489a).getF10755b();
            String strC = StringResources_androidKt.c(gapComposerH, R.string.mylv_native_register_activation_code_placeholder);
            ImeAction.f10785b.getClass();
            KeyboardOptions keyboardOptions = new KeyboardOptions(0, (Boolean) null, 0, ImeAction.f10791j, (PlatformImeOptions) null, (Boolean) null, (LocaleList) null, 119, (DefaultConstructorMarker) null);
            boolean z3 = (57344 & i3) == 16384;
            Object objX4 = gapComposerH.x();
            if (z3 || objX4 == composer$Companion$Empty$1) {
                objX4 = new y2(function2, 24);
                gapComposerH.q(objX4);
            }
            LVTextFieldKt.a(str, function1, modifierE, lVColorScheme, false, strC, zB, str2, null, keyboardOptions, new KeyboardActions((Function1) objX4, null, null, null, null, null, 62, null), null, null, null, false, gapComposerH, ((i3 >> 3) & 112) | 805309440, 0, 30992);
            Modifier modifierM = PaddingKt.m(new DTFunctionNameModifier("NativeRegisterActivationComposable"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13);
            Alignment.f8582a.getClass();
            Modifier modifierE2 = ModifierExtKt.e(columnScope.b(modifierM, Alignment.Companion.p), "nativeRegister_resendCode_button");
            String strC2 = StringResources_androidKt.c(gapComposerH, R.string.mylv_native_register_resend_code);
            boolean zY = gapComposerH.y(hapticFeedback) | ((i3 & 7168) == 2048);
            Object objX5 = gapComposerH.x();
            if (zY || objX5 == composer$Companion$Empty$1) {
                objX5 = new f(hapticFeedback, function0, 6);
                gapComposerH.q(objX5);
            }
            LVLinkKt.a(modifierE2, strC2, false, lVColorScheme, false, (Function0) objX5, gapComposerH, 3072, 20);
            SpacerKt.a(gapComposerH, columnScope.a(new DTFunctionNameModifier("NativeRegisterActivationComposable"), 1.0f, true));
            LVButtonKt.b((i3 << 15) & 1879048192, 376, gapComposerH, ModifierExtKt.e(PaddingKt.k(tr.d("NativeRegisterActivationComposable", 1.0f), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).g, 1), "nativeRegister_activate_button"), LVAppDesignKitTheme.b(gapComposerH).f48447b, null, null, StringResources_androidKt.c(gapComposerH, R.string.confirm), function2, false, nativeRegisterActivationUiModel.f53921a.length() > 0 && !nativeRegisterActivationUiModel.f53922b.b(), false);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new nm(columnScope, nativeRegisterViewState, function1, function0, function2, function3, z, i2);
        }
    }
}
