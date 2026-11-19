package com.vuitton.android.presentation.screen.dynamicform.components.fields;

import android.content.Context;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.StaticProvidableCompositionLocal;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.designkit.ui.common.ModifierExtKt;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.LVColorScheme;
import com.vuitton.android.designkit.ui.theme.atoms.textfield.LVReadOnlyTextFieldKt;
import com.vuitton.android.presentation.model.stringhandling.StringResourceUiModelKt;
import com.vuitton.android.presentation.screen.account.profile.ProfileHelper;
import com.vuitton.android.presentation.screen.dynamicform.model.field.FormFieldUiModel;
import com.vuitton.android.presentation.screen.dynamicform.model.field.section.FormSectionTypeUiModel;
import com.vuitton.android.presentation.screen.dynamicform.model.field.type.FormFieldReadOnlyUiModel;
import defpackage.a;
import defpackage.dt;
import defpackage.zv;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class FormFieldReadOnlyKt {
    public static final void a(Modifier modifier, FormFieldUiModel formFieldUiModel, FormFieldReadOnlyUiModel formFieldReadOnlyUiModel, boolean z, Function1 function1, LVColorScheme lVColorScheme, boolean z2, Composer composer, int i2) {
        GapComposer gapComposer;
        Integer numValueOf;
        Modifier dTFunctionNameModifier = modifier;
        if (dTFunctionNameModifier != null) {
            dTFunctionNameModifier = a.e(dTFunctionNameModifier, "FormFieldReadOnly");
        }
        formFieldUiModel.getClass();
        formFieldReadOnlyUiModel.getClass();
        String strA = formFieldReadOnlyUiModel.f57519a;
        GapComposer gapComposerH = composer.h(1050501211);
        int i3 = i2 | 6;
        if ((i2 & 48) == 0) {
            i3 |= gapComposerH.y(formFieldUiModel) ? 32 : 16;
        }
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i3 |= gapComposerH.K(formFieldReadOnlyUiModel) ? 256 : 128;
        }
        if ((i2 & 3072) == 0) {
            i3 |= gapComposerH.b(z) ? 2048 : 1024;
        }
        if ((i2 & 24576) == 0) {
            i3 |= gapComposerH.y(function1) ? 16384 : 8192;
        }
        if ((196608 & i2) == 0) {
            i3 |= gapComposerH.d(lVColorScheme == null ? -1 : lVColorScheme.ordinal()) ? 131072 : 65536;
        }
        if ((1572864 & i2) == 0) {
            i3 |= gapComposerH.b(z2) ? 1048576 : 524288;
        }
        if (gapComposerH.p(i3 & 1, (599187 & i3) != 599186)) {
            dTFunctionNameModifier = new DTFunctionNameModifier("FormFieldReadOnly");
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            if (formFieldUiModel.d == FormSectionTypeUiModel.CIVILITY) {
                gapComposerH.L(-1944692595);
                List list = ProfileHelper.f52681a;
                strA = StringResourceUiModelKt.a(ProfileHelper.a(strA), (Context) gapComposerH.k(AndroidCompositionLocals_androidKt.f9936b));
                gapComposerH.Z(false);
            } else {
                gapComposerH.L(-1944568099);
                gapComposerH.Z(false);
            }
            String str = formFieldUiModel.f57501k;
            if (str == null) {
                str = "";
            }
            Modifier modifierE = ModifierExtKt.e(dTFunctionNameModifier, str);
            boolean z3 = z && formFieldReadOnlyUiModel.f57520b;
            StaticProvidableCompositionLocal staticProvidableCompositionLocal = AndroidCompositionLocals_androidKt.f9936b;
            String strD = formFieldUiModel.d((Context) gapComposerH.k(staticProvidableCompositionLocal));
            if (z2) {
                gapComposerH.L(214380383);
                int i4 = LVAppDesignKitTheme.g(gapComposerH).J0;
                gapComposerH.Z(false);
                numValueOf = Integer.valueOf(i4);
            } else {
                gapComposerH.L(-1944132798);
                gapComposerH.Z(false);
                numValueOf = null;
            }
            Integer num = numValueOf;
            boolean z4 = formFieldUiModel.l;
            String strF = formFieldUiModel.f((Context) gapComposerH.k(staticProvidableCompositionLocal));
            boolean zY = gapComposerH.y(formFieldUiModel) | ((57344 & i3) == 16384);
            Object objX = gapComposerH.x();
            if (zY || objX == Composer.Companion.f7939a) {
                objX = new dt(function1, formFieldUiModel, 18);
                gapComposerH.q(objX);
            }
            int i5 = (i3 >> 6) & 7168;
            gapComposer = gapComposerH;
            LVReadOnlyTextFieldKt.a(strA, modifierE, null, lVColorScheme, z3, strD, z4, strF, null, null, null, (Function0) objX, num, gapComposer, i5, 0, 9988);
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
        }
        Modifier modifier2 = dTFunctionNameModifier;
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new zv(modifier2, formFieldUiModel, formFieldReadOnlyUiModel, z, function1, lVColorScheme, z2, i2);
        }
    }
}
