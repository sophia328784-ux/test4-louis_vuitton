package com.vuitton.android.presentation.screen.dynamicform.components.fields;

import android.content.Context;
import androidx.compose.foundation.text.KeyboardActions;
import androidx.compose.foundation.text.KeyboardOptions;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.focus.FocusChangedModifierKt;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.compose.ui.res.StringResources_androidKt;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.R;
import com.vuitton.android.designkit.components.ModifierExtKt;
import com.vuitton.android.designkit.ui.theme.LVColorScheme;
import com.vuitton.android.designkit.ui.theme.atoms.textfield.LVPasswordTextFieldKt;
import com.vuitton.android.presentation.screen.dynamicform.model.field.FormFieldUiModel;
import com.vuitton.android.presentation.screen.dynamicform.model.field.section.FormSectionTypeUiModel;
import com.vuitton.android.presentation.screen.dynamicform.model.field.type.FormFieldFreeformUiModel;
import defpackage.a;
import defpackage.d4;
import defpackage.k0;
import defpackage.lt;
import defpackage.tr;
import defpackage.y2;
import defpackage.yz;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.text.Regex;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class FormFieldPasswordKt {
    public static final void a(Modifier modifier, FormFieldUiModel formFieldUiModel, FormFieldFreeformUiModel formFieldFreeformUiModel, boolean z, KeyboardOptions keyboardOptions, Function1 function1, Function1 function2, Function0 function0, LVColorScheme lVColorScheme, Composer composer, int i2) {
        GapComposer gapComposer;
        Modifier dTFunctionNameModifier = modifier;
        if (dTFunctionNameModifier != null) {
            dTFunctionNameModifier = a.e(dTFunctionNameModifier, "FormFieldPassword");
        }
        formFieldUiModel.getClass();
        formFieldFreeformUiModel.getClass();
        function1.getClass();
        GapComposer gapComposerH = composer.h(-363665567);
        int i3 = i2 | 6;
        if ((i2 & 48) == 0) {
            i3 |= gapComposerH.y(formFieldUiModel) ? 32 : 16;
        }
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i3 |= gapComposerH.y(formFieldFreeformUiModel) ? 256 : 128;
        }
        if ((i2 & 3072) == 0) {
            i3 |= gapComposerH.b(z) ? 2048 : 1024;
        }
        if ((i2 & 24576) == 0) {
            i3 |= gapComposerH.K(keyboardOptions) ? 16384 : 8192;
        }
        if ((196608 & i2) == 0) {
            i3 |= gapComposerH.y(function1) ? 131072 : 65536;
        }
        if ((1572864 & i2) == 0) {
            i3 |= gapComposerH.y(function2) ? 1048576 : 524288;
        }
        if ((12582912 & i2) == 0) {
            i3 |= gapComposerH.y(function0) ? 8388608 : 4194304;
        }
        if ((100663296 & i2) == 0) {
            i3 |= gapComposerH.d(lVColorScheme == null ? -1 : lVColorScheme.ordinal()) ? 67108864 : 33554432;
        }
        if (gapComposerH.p(i3 & 1, (38347923 & i3) != 38347922)) {
            dTFunctionNameModifier = new DTFunctionNameModifier("FormFieldPassword");
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Context context = (Context) gapComposerH.k(AndroidCompositionLocals_androidKt.f9936b);
            String strD = formFieldUiModel.d(context);
            FormSectionTypeUiModel formSectionTypeUiModel = formFieldUiModel.d;
            int i4 = i3;
            String strReplace = new Regex("\\s+\\*$").replace(strD, "");
            String strC = StringResources_androidKt.c(gapComposerH, R.string.required_field);
            String strC2 = StringResources_androidKt.c(gapComposerH, R.string.alt_mylv_native_register_password_hint_below);
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (objX == composer$Companion$Empty$1) {
                boolean z2 = formFieldUiModel.f57495c;
                if (z2 && formSectionTypeUiModel == FormSectionTypeUiModel.NEW_PASSWORD) {
                    strReplace = strReplace + ", " + strC + ". " + strC2;
                } else if (formSectionTypeUiModel == FormSectionTypeUiModel.NEW_PASSWORD) {
                    strReplace = tr.h(strReplace, ". ", strC2);
                } else if (z2) {
                    strReplace = tr.h(strReplace, ", ", strC);
                }
                gapComposerH.q(strReplace);
                objX = strReplace;
            }
            String str = (String) objX;
            Modifier modifierB = ModifierExtKt.b(dTFunctionNameModifier, formFieldFreeformUiModel.d != null, new yz(formFieldFreeformUiModel, 1), gapComposerH, i4 & 14);
            Object objX2 = gapComposerH.x();
            if (objX2 == composer$Companion$Empty$1) {
                objX2 = new lt(str, 4);
                gapComposerH.q(objX2);
            }
            Modifier modifierB2 = SemanticsModifierKt.b(modifierB, false, (Function1) objX2);
            boolean z3 = (i4 & 3670016) == 1048576;
            Object objX3 = gapComposerH.x();
            if (z3 || objX3 == composer$Companion$Empty$1) {
                objX3 = new k0(function2, 14);
                gapComposerH.q(objX3);
            }
            Modifier modifierA = FocusChangedModifierKt.a(modifierB2, (Function1) objX3);
            String str2 = formFieldUiModel.f57501k;
            if (str2 == null) {
                str2 = "";
            }
            Modifier modifierE = com.vuitton.android.designkit.ui.common.ModifierExtKt.e(modifierA, str2);
            Modifier modifierE2 = com.vuitton.android.designkit.ui.common.ModifierExtKt.e(new DTFunctionNameModifier("FormFieldPassword"), formSectionTypeUiModel + "_TogglePassword_button");
            String str3 = formFieldFreeformUiModel.f57515b;
            String strF = formFieldUiModel.f(context);
            boolean z4 = formFieldUiModel.l;
            int i5 = keyboardOptions.d;
            boolean z5 = (i4 & 29360128) == 8388608;
            Object objX4 = gapComposerH.x();
            if (z5 || objX4 == composer$Companion$Empty$1) {
                objX4 = new y2(function0, 13);
                gapComposerH.q(objX4);
            }
            gapComposer = gapComposerH;
            LVPasswordTextFieldKt.a(str3, function1, modifierE, lVColorScheme, z, strD, z4, strF, i5, new KeyboardActions((Function1) objX4, null, null, null, null, null, 62, null), null, null, modifierE2, true, gapComposer, ((i4 >> 12) & 112) | ((i4 >> 15) & 7168) | ((i4 << 3) & 57344), 24576, 6176);
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
        }
        Modifier modifier2 = dTFunctionNameModifier;
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new d4(modifier2, formFieldUiModel, formFieldFreeformUiModel, z, keyboardOptions, function1, function2, function0, lVColorScheme, i2);
        }
    }
}
