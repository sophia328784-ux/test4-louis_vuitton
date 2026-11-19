package com.vuitton.android.presentation.screen.dynamicform.components.fields;

import android.content.Context;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.StaticProvidableCompositionLocal;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.focus.FocusChangedModifierKt;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.compose.ui.res.StringResources_androidKt;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.google.ar.core.ImageMetadata;
import com.vuitton.android.R;
import com.vuitton.android.designkit.ui.common.ModifierExtKt;
import com.vuitton.android.designkit.ui.theme.LVColorScheme;
import com.vuitton.android.designkit.ui.theme.atoms.LVDropdownKt;
import com.vuitton.android.presentation.screen.dynamicform.model.field.FormFieldUiModel;
import com.vuitton.android.presentation.screen.dynamicform.model.field.type.FormFieldTypeUiModel;
import defpackage.a;
import defpackage.bg;
import defpackage.gv;
import defpackage.iv;
import defpackage.k0;
import defpackage.lt;
import defpackage.tr;
import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.text.Regex;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class EnumBasedFormFieldKt {
    /* JADX WARN: Code duplicated, block: B:100:0x0157  */
    /* JADX WARN: Code duplicated, block: B:104:0x016c  */
    /* JADX WARN: Code duplicated, block: B:111:0x0195  */
    /* JADX WARN: Code duplicated, block: B:114:0x01b0  */
    /* JADX WARN: Code duplicated, block: B:115:0x01b3  */
    /* JADX WARN: Code duplicated, block: B:127:0x01d4  */
    /* JADX WARN: Code duplicated, block: B:129:0x01fe  */
    /* JADX WARN: Code duplicated, block: B:132:0x020b  */
    /* JADX WARN: Code duplicated, block: B:134:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:60:0x00aa A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:61:0x00ac  */
    /* JADX WARN: Code duplicated, block: B:63:0x00b1  */
    /* JADX WARN: Code duplicated, block: B:66:0x00bc  */
    /* JADX WARN: Code duplicated, block: B:67:0x00bf  */
    /* JADX WARN: Code duplicated, block: B:71:0x00cd  */
    /* JADX WARN: Code duplicated, block: B:72:0x00d0  */
    /* JADX WARN: Code duplicated, block: B:75:0x00d9 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:76:0x00db  */
    /* JADX WARN: Code duplicated, block: B:79:0x00e4  */
    /* JADX WARN: Code duplicated, block: B:81:0x00ea  */
    /* JADX WARN: Code duplicated, block: B:83:0x00f7  */
    /* JADX WARN: Code duplicated, block: B:86:0x0120  */
    /* JADX WARN: Code duplicated, block: B:88:0x0124  */
    /* JADX WARN: Code duplicated, block: B:92:0x0135  */
    /* JADX WARN: Code duplicated, block: B:93:0x0138  */
    /* JADX WARN: Code duplicated, block: B:97:0x0141  */
    public static final void a(Modifier modifier, FormFieldUiModel formFieldUiModel, FormFieldTypeUiModel.EnumBasedFormField enumBasedFormField, boolean z, Function1 function1, Function1 function2, LVColorScheme lVColorScheme, Composer composer, int i2, int i3) {
        int i4;
        Function1 function3;
        boolean z2;
        boolean z3;
        GapComposer gapComposer;
        Modifier modifier2;
        Function1 function4;
        RecomposeScopeImpl recomposeScopeImplB0;
        Composer$Companion$Empty$1 composer$Companion$Empty$1;
        Function1 function5;
        String strReplace;
        String strC;
        Object objX;
        String str;
        boolean z4;
        Object objX2;
        Object objX3;
        boolean z5;
        boolean z6;
        boolean z7;
        Object objX4;
        Object objX5;
        int iOrdinal;
        int i5;
        Modifier dTFunctionNameModifier = modifier;
        if (dTFunctionNameModifier != null) {
            dTFunctionNameModifier = a.e(dTFunctionNameModifier, "EnumBasedFormField");
        }
        formFieldUiModel.getClass();
        enumBasedFormField.getClass();
        function1.getClass();
        GapComposer gapComposerH = composer.h(-1403492185);
        int i6 = i3 & 1;
        if (i6 != 0) {
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
            i4 |= (i2 & 512) == 0 ? gapComposerH.K(enumBasedFormField) : gapComposerH.y(enumBasedFormField) ? 256 : 128;
        }
        if ((i2 & 3072) == 0) {
            i4 |= gapComposerH.b(z) ? 2048 : 1024;
        }
        if ((i2 & 24576) == 0) {
            i4 |= gapComposerH.y(function1) ? 16384 : 8192;
        }
        int i7 = i3 & 32;
        if (i7 == 0) {
            if ((196608 & i2) == 0) {
                function3 = function2;
                i4 |= gapComposerH.y(function3) ? 131072 : 65536;
            }
            if ((i2 & 1572864) == 0) {
                if (lVColorScheme == null) {
                    iOrdinal = -1;
                } else {
                    iOrdinal = lVColorScheme.ordinal();
                }
                if (gapComposerH.d(iOrdinal)) {
                    i5 = 1048576;
                } else {
                    i5 = 524288;
                }
                i4 |= i5;
            }
            z2 = true;
            if ((599187 & i4) != 599186) {
                z3 = true;
            } else {
                z3 = false;
            }
            if (gapComposerH.p(i4 & 1, z3)) {
                if (i6 != 0) {
                    dTFunctionNameModifier = new DTFunctionNameModifier("EnumBasedFormField");
                }
                composer$Companion$Empty$1 = Composer.Companion.f7939a;
                if (i7 != 0) {
                    objX5 = gapComposerH.x();
                    if (objX5 == composer$Companion$Empty$1) {
                        objX5 = new iv(13);
                        gapComposerH.q(objX5);
                    }
                    function5 = (Function1) objX5;
                } else {
                    function5 = function3;
                }
                OpaqueKey opaqueKey = ComposerKt.f7940a;
                StaticProvidableCompositionLocal staticProvidableCompositionLocal = AndroidCompositionLocals_androidKt.f9936b;
                strReplace = new Regex("\\s+\\*$").replace(formFieldUiModel.d((Context) gapComposerH.k(staticProvidableCompositionLocal)), "");
                strC = StringResources_androidKt.c(gapComposerH, R.string.required_field);
                objX = gapComposerH.x();
                if (objX == composer$Companion$Empty$1) {
                    if (formFieldUiModel.f57495c) {
                        strReplace = tr.h(strReplace, ", ", strC);
                    }
                    gapComposerH.q(strReplace);
                    objX = strReplace;
                }
                str = (String) objX;
                if ((458752 & i4) == 131072) {
                    z4 = true;
                } else {
                    z4 = false;
                }
                objX2 = gapComposerH.x();
                if (z4 || objX2 == composer$Companion$Empty$1) {
                    objX2 = new k0(function5, 10);
                    gapComposerH.q(objX2);
                }
                Modifier modifierA = FocusChangedModifierKt.a(dTFunctionNameModifier, (Function1) objX2);
                objX3 = gapComposerH.x();
                if (objX3 == composer$Companion$Empty$1) {
                    objX3 = new lt(str, 2);
                    gapComposerH.q(objX3);
                }
                Modifier modifierB = SemanticsModifierKt.b(modifierA, false, (Function1) objX3);
                String str2 = formFieldUiModel.f57501k;
                Modifier modifierE = ModifierExtKt.e(modifierB, str2 != null ? str2 : "");
                String strD = formFieldUiModel.d((Context) gapComposerH.k(staticProvidableCompositionLocal));
                ArrayList arrayListD = enumBasedFormField.d();
                Integer numC = enumBasedFormField.c();
                if (z || !enumBasedFormField.isEnabled()) {
                    z5 = false;
                } else {
                    z5 = true;
                }
                Modifier modifier3 = dTFunctionNameModifier;
                boolean z8 = formFieldUiModel.l;
                String strF = formFieldUiModel.f((Context) gapComposerH.k(staticProvidableCompositionLocal));
                if ((i4 & 57344) == 16384) {
                    z6 = true;
                } else {
                    z6 = false;
                }
                boolean z9 = z6;
                if ((i4 & 896) != 256 && ((i4 & 512) == 0 || !gapComposerH.y(enumBasedFormField))) {
                    z2 = false;
                }
                z7 = z9 | z2;
                objX4 = gapComposerH.x();
                if (z7 || objX4 == composer$Companion$Empty$1) {
                    objX4 = new gv(function1, enumBasedFormField, 2);
                    gapComposerH.q(objX4);
                }
                gapComposer = gapComposerH;
                LVDropdownKt.a(modifierE, lVColorScheme, strD, arrayListD, numC, z5, z8, strF, (Function1) objX4, true, gapComposer, ((i4 >> 15) & 112) | 805306368, 0);
                function4 = function5;
                modifier2 = modifier3;
            } else {
                gapComposer = gapComposerH;
                gapComposer.D();
                modifier2 = dTFunctionNameModifier;
                function4 = function3;
            }
            recomposeScopeImplB0 = gapComposer.b0();
            if (recomposeScopeImplB0 != null) {
                recomposeScopeImplB0.d = new bg(modifier2, formFieldUiModel, enumBasedFormField, z, function1, function4, lVColorScheme, i2, i3);
            }
        }
        i4 |= ImageMetadata.EDGE_MODE;
        function3 = function2;
        if ((i2 & 1572864) == 0) {
            if (lVColorScheme == null) {
                iOrdinal = -1;
            } else {
                iOrdinal = lVColorScheme.ordinal();
            }
            if (gapComposerH.d(iOrdinal)) {
                i5 = 1048576;
            } else {
                i5 = 524288;
            }
            i4 |= i5;
        }
        z2 = true;
        if ((599187 & i4) != 599186) {
            z3 = true;
        } else {
            z3 = false;
        }
        if (gapComposerH.p(i4 & 1, z3)) {
            if (i6 != 0) {
                dTFunctionNameModifier = new DTFunctionNameModifier("EnumBasedFormField");
            }
            composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (i7 != 0) {
                objX5 = gapComposerH.x();
                if (objX5 == composer$Companion$Empty$1) {
                    objX5 = new iv(13);
                    gapComposerH.q(objX5);
                }
                function5 = (Function1) objX5;
            } else {
                function5 = function3;
            }
            OpaqueKey opaqueKey2 = ComposerKt.f7940a;
            StaticProvidableCompositionLocal staticProvidableCompositionLocal2 = AndroidCompositionLocals_androidKt.f9936b;
            strReplace = new Regex("\\s+\\*$").replace(formFieldUiModel.d((Context) gapComposerH.k(staticProvidableCompositionLocal2)), "");
            strC = StringResources_androidKt.c(gapComposerH, R.string.required_field);
            objX = gapComposerH.x();
            if (objX == composer$Companion$Empty$1) {
                if (formFieldUiModel.f57495c) {
                    strReplace = tr.h(strReplace, ", ", strC);
                }
                gapComposerH.q(strReplace);
                objX = strReplace;
            }
            str = (String) objX;
            if ((458752 & i4) == 131072) {
                z4 = true;
            } else {
                z4 = false;
            }
            objX2 = gapComposerH.x();
            if (z4) {
                objX2 = new k0(function5, 10);
                gapComposerH.q(objX2);
            } else {
                objX2 = new k0(function5, 10);
                gapComposerH.q(objX2);
            }
            Modifier modifierA2 = FocusChangedModifierKt.a(dTFunctionNameModifier, (Function1) objX2);
            objX3 = gapComposerH.x();
            if (objX3 == composer$Companion$Empty$1) {
                objX3 = new lt(str, 2);
                gapComposerH.q(objX3);
            }
            Modifier modifierB2 = SemanticsModifierKt.b(modifierA2, false, (Function1) objX3);
            String str3 = formFieldUiModel.f57501k;
            Modifier modifierE2 = ModifierExtKt.e(modifierB2, str3 != null ? str3 : "");
            String strD2 = formFieldUiModel.d((Context) gapComposerH.k(staticProvidableCompositionLocal2));
            ArrayList arrayListD2 = enumBasedFormField.d();
            Integer numC2 = enumBasedFormField.c();
            if (z) {
                z5 = false;
            } else {
                z5 = false;
            }
            Modifier modifier4 = dTFunctionNameModifier;
            boolean z10 = formFieldUiModel.l;
            String strF2 = formFieldUiModel.f((Context) gapComposerH.k(staticProvidableCompositionLocal2));
            if ((i4 & 57344) == 16384) {
                z6 = true;
            } else {
                z6 = false;
            }
            boolean z11 = z6;
            if ((i4 & 896) != 256) {
                z2 = false;
            }
            z7 = z11 | z2;
            objX4 = gapComposerH.x();
            if (z7) {
                objX4 = new gv(function1, enumBasedFormField, 2);
                gapComposerH.q(objX4);
            } else {
                objX4 = new gv(function1, enumBasedFormField, 2);
                gapComposerH.q(objX4);
            }
            gapComposer = gapComposerH;
            LVDropdownKt.a(modifierE2, lVColorScheme, strD2, arrayListD2, numC2, z5, z10, strF2, (Function1) objX4, true, gapComposer, ((i4 >> 15) & 112) | 805306368, 0);
            function4 = function5;
            modifier2 = modifier4;
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
            modifier2 = dTFunctionNameModifier;
            function4 = function3;
        }
        recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new bg(modifier2, formFieldUiModel, enumBasedFormField, z, function1, function4, lVColorScheme, i2, i3);
        }
    }
}
