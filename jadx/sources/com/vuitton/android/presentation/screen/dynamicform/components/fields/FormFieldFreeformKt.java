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
import com.vuitton.android.designkit.ui.theme.atoms.textfield.LVTextFieldKt;
import com.vuitton.android.presentation.screen.dynamicform.model.field.FormFieldUiModel;
import com.vuitton.android.presentation.screen.dynamicform.model.field.type.FormFieldFreeformUiModel;
import defpackage.a;
import defpackage.b0;
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
public abstract class FormFieldFreeformKt {
    public static final void a(Modifier modifier, FormFieldUiModel formFieldUiModel, FormFieldFreeformUiModel formFieldFreeformUiModel, boolean z, KeyboardOptions keyboardOptions, Function1 function1, Function1 function2, Function0 function0, LVColorScheme lVColorScheme, Composer composer, int i2, int i3) {
        int i4;
        GapComposer gapComposer;
        Modifier dTFunctionNameModifier = modifier;
        if (dTFunctionNameModifier != null) {
            dTFunctionNameModifier = a.e(dTFunctionNameModifier, "FormFieldFreeform");
        }
        formFieldUiModel.getClass();
        formFieldFreeformUiModel.getClass();
        function1.getClass();
        GapComposer gapComposerH = composer.h(-2016913599);
        int i5 = i3 & 1;
        if (i5 != 0) {
            i4 = i2 | 6;
        } else if ((i2 & 6) == 0) {
            i4 = (gapComposerH.K(dTFunctionNameModifier) ? 4 : 2) | i2;
        } else {
            i4 = i2;
        }
        if ((i2 & 48) == 0) {
            i4 |= gapComposerH.y(formFieldUiModel) ? 32 : 16;
        }
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i4 |= gapComposerH.y(formFieldFreeformUiModel) ? 256 : 128;
        }
        if ((i2 & 3072) == 0) {
            i4 |= gapComposerH.b(z) ? 2048 : 1024;
        }
        if ((i2 & 24576) == 0) {
            i4 |= gapComposerH.K(keyboardOptions) ? 16384 : 8192;
        }
        if ((196608 & i2) == 0) {
            i4 |= gapComposerH.y(function1) ? 131072 : 65536;
        }
        if ((1572864 & i2) == 0) {
            i4 |= gapComposerH.y(function2) ? 1048576 : 524288;
        }
        if ((12582912 & i2) == 0) {
            i4 |= gapComposerH.y(function0) ? 8388608 : 4194304;
        }
        if ((100663296 & i2) == 0) {
            i4 |= gapComposerH.d(lVColorScheme == null ? -1 : lVColorScheme.ordinal()) ? 67108864 : 33554432;
        }
        if (gapComposerH.p(i4 & 1, (38347923 & i4) != 38347922)) {
            if (i5 != 0) {
                dTFunctionNameModifier = new DTFunctionNameModifier("FormFieldFreeform");
            }
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Context context = (Context) gapComposerH.k(AndroidCompositionLocals_androidKt.f9936b);
            String strD = formFieldUiModel.d(context);
            String strReplace = new Regex("\\s+\\*$").replace(strD, "");
            String strC = StringResources_androidKt.c(gapComposerH, R.string.required_field);
            Object objX = gapComposerH.x();
            int i6 = i4;
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (objX == composer$Companion$Empty$1) {
                if (formFieldUiModel.f57495c) {
                    strReplace = tr.h(strReplace, ", ", strC);
                }
                gapComposerH.q(strReplace);
                objX = strReplace;
            }
            String str = (String) objX;
            Modifier modifierB = ModifierExtKt.b(dTFunctionNameModifier, formFieldFreeformUiModel.d != null, new yz(formFieldFreeformUiModel, 0), gapComposerH, i6 & 14);
            Object objX2 = gapComposerH.x();
            if (objX2 == composer$Companion$Empty$1) {
                objX2 = new lt(str, 3);
                gapComposerH.q(objX2);
            }
            Modifier modifierB2 = SemanticsModifierKt.b(modifierB, false, (Function1) objX2);
            boolean z2 = (i6 & 3670016) == 1048576;
            Object objX3 = gapComposerH.x();
            if (z2 || objX3 == composer$Companion$Empty$1) {
                objX3 = new k0(function2, 13);
                gapComposerH.q(objX3);
            }
            Modifier modifierA = FocusChangedModifierKt.a(modifierB2, (Function1) objX3);
            String str2 = formFieldUiModel.f57501k;
            Modifier modifierE = com.vuitton.android.designkit.ui.common.ModifierExtKt.e(modifierA, str2 != null ? str2 : "");
            String str3 = formFieldFreeformUiModel.f57515b;
            boolean z3 = formFieldUiModel.l;
            String strF = formFieldUiModel.f(context);
            boolean z4 = (i6 & 29360128) == 8388608;
            Object objX4 = gapComposerH.x();
            if (z4 || objX4 == composer$Companion$Empty$1) {
                objX4 = new y2(function0, 12);
                gapComposerH.q(objX4);
            }
            gapComposer = gapComposerH;
            LVTextFieldKt.a(str3, function1, modifierE, lVColorScheme, z, strD, z3, strF, null, keyboardOptions, new KeyboardActions((Function1) objX4, null, null, null, null, null, 62, null), null, null, null, true, gapComposer, ((i6 >> 12) & 112) | ((i6 >> 15) & 7168) | ((i6 << 3) & 57344) | (1879048192 & (i6 << 15)), 24576, 14592);
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
        }
        Modifier modifier2 = dTFunctionNameModifier;
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new b0(modifier2, formFieldUiModel, formFieldFreeformUiModel, z, keyboardOptions, function1, function2, function0, lVColorScheme, i2, i3);
        }
    }
}
