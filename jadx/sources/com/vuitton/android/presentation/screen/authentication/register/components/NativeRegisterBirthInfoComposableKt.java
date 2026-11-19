package com.vuitton.android.presentation.screen.authentication.register.components;

import android.content.Context;
import androidx.compose.animation.AnimatedVisibilityKt;
import androidx.compose.animation.EnterExitTransitionKt;
import androidx.compose.animation.EnterTransition;
import androidx.compose.animation.core.AnimationSpecKt;
import androidx.compose.animation.core.TweenSpec;
import androidx.compose.foundation.layout.ColumnScope;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.SpacerKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.focus.FocusManager;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.res.StringResources_androidKt;
import androidx.compose.ui.unit.Dp;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.R;
import com.vuitton.android.designkit.ui.common.ModifierExtKt;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.LVColorScheme;
import com.vuitton.android.designkit.ui.theme.atoms.LVButtonKt;
import com.vuitton.android.presentation.compose.components.LVDatePickerKt;
import com.vuitton.android.presentation.screen.authentication.register.models.NativeRegisterBirthInfoUiModel;
import com.vuitton.android.presentation.screen.authentication.register.models.NativeRegisterViewState;
import com.vuitton.android.presentation.screen.dynamicform.components.DynamicFormComposableKt;
import com.vuitton.android.presentation.screen.dynamicform.model.FormUiModel;
import com.vuitton.android.presentation.screen.dynamicform.model.field.FormFieldGenericUiModel;
import com.vuitton.android.presentation.screen.dynamicform.model.field.FormFieldPhoneUiModel;
import defpackage.a3;
import defpackage.be0;
import defpackage.f40;
import defpackage.g1;
import defpackage.k0;
import defpackage.tr;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import net.rtccloud.sdk.Call;
import org.bouncycastle.asn1.cmp.PKIFailureInfo;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class NativeRegisterBirthInfoComposableKt {
    public static final void a(ColumnScope columnScope, NativeRegisterViewState nativeRegisterViewState, Function1 function1, Function0 function0, Function0 function2, Function2 function3, Function1 function4, Function0 function5, Function0 function6, Function1 function7, boolean z, Composer composer, int i2, int i3) {
        Function1 function8;
        boolean z2;
        float f2;
        FormUiModel formUiModel;
        columnScope.getClass();
        nativeRegisterViewState.getClass();
        function1.getClass();
        function0.getClass();
        function2.getClass();
        function3.getClass();
        function4.getClass();
        function5.getClass();
        function6.getClass();
        function7.getClass();
        GapComposer gapComposerH = composer.h(-489629997);
        int i4 = (i2 & 6) == 0 ? (gapComposerH.K(columnScope) ? 4 : 2) | i2 : i2;
        if ((i2 & 48) == 0) {
            i4 |= gapComposerH.y(nativeRegisterViewState) ? 32 : 16;
        }
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i4 |= gapComposerH.y(function1) ? 256 : 128;
        }
        if ((i2 & 3072) == 0) {
            i4 |= gapComposerH.y(function0) ? 2048 : 1024;
        }
        if ((i2 & 24576) == 0) {
            i4 |= gapComposerH.y(function2) ? 16384 : 8192;
        }
        if ((196608 & i2) == 0) {
            i4 |= gapComposerH.y(function3) ? 131072 : 65536;
        }
        if ((1572864 & i2) == 0) {
            function8 = function4;
            i4 |= gapComposerH.y(function8) ? 1048576 : 524288;
        } else {
            function8 = function4;
        }
        if ((12582912 & i2) == 0) {
            i4 |= gapComposerH.y(function5) ? 8388608 : 4194304;
        }
        if ((100663296 & i2) == 0) {
            i4 |= gapComposerH.y(function6) ? 67108864 : 33554432;
        }
        if ((i2 & 805306368) == 0) {
            i4 |= gapComposerH.y(function7) ? PKIFailureInfo.duplicateCertReq : 268435456;
        }
        int i5 = i3 & 512;
        char c2 = i5 != 0 ? (char) 6 : gapComposerH.b(z) ? (char) 4 : (char) 2;
        if (gapComposerH.p(i4 & 1, ((i4 & 306783379) == 306783378 && (c2 & 3) == 2) ? false : true)) {
            boolean z3 = i5 != 0 ? true : z;
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Boolean boolValueOf = Boolean.valueOf(z3);
            boolean z4 = ((i4 & 1879048192) == 536870912) | ((c2 & 14) == 4);
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (z4 || objX == composer$Companion$Empty$1) {
                objX = new NativeRegisterBirthInfoComposableKt$NativeRegisterBirthInfoComposable$1$1(z3, function7, null);
                gapComposerH.q(objX);
            }
            EffectsKt.e(gapComposerH, boolValueOf, (Function2) objX);
            FocusManager focusManager = (FocusManager) gapComposerH.k(CompositionLocalsKt.f10032i);
            Context context = (Context) gapComposerH.k(AndroidCompositionLocals_androidKt.f9936b);
            NativeRegisterBirthInfoUiModel nativeRegisterBirthInfoUiModel = nativeRegisterViewState.f54032e;
            boolean z5 = z3;
            if (nativeRegisterBirthInfoUiModel.f53940a) {
                gapComposerH.L(-857487675);
                focusManager.z(false);
                Modifier modifierE = ModifierExtKt.e(new DTFunctionNameModifier("NativeRegisterBirthInfoComposable"), "nativeRegister_birthdayDate_textField");
                Long l = nativeRegisterBirthInfoUiModel.f53943e;
                boolean z6 = (i4 & 896) == 256;
                Object objX2 = gapComposerH.x();
                if (z6 || objX2 == composer$Companion$Empty$1) {
                    objX2 = new k0(function1, 19);
                    gapComposerH.q(objX2);
                }
                LVDatePickerKt.a(modifierE, l, true, (Function1) objX2, function5, gapComposerH, ((i4 >> 9) & 57344) | KyberEngine.KyberPolyBytes);
                gapComposerH.Z(false);
            } else {
                gapComposerH.L(-857047537);
                gapComposerH.Z(false);
            }
            LVColorScheme lVColorScheme = LVColorScheme.INVERT;
            float f3 = LVAppDesignKitTheme.l(gapComposerH).f48416e;
            boolean z7 = nativeRegisterBirthInfoUiModel.f53945h;
            FormUiModel formUiModel2 = nativeRegisterViewState.f54033f;
            if (z7) {
                List list = formUiModel2.f57486a;
                ArrayList arrayList = new ArrayList();
                for (Object obj : list) {
                    float f4 = f3;
                    if (!(((FormFieldGenericUiModel) obj) instanceof FormFieldPhoneUiModel)) {
                        arrayList.add(obj);
                    }
                    f3 = f4;
                }
                f2 = f3;
                formUiModel = new FormUiModel(arrayList);
            } else {
                f2 = f3;
                formUiModel = formUiModel2;
            }
            int i6 = 458752 & i4;
            DynamicFormComposableKt.a(null, lVColorScheme, formUiModel, false, f2, function3, function8, function6, null, null, true, true, false, null, null, null, null, null, false, gapComposerH, i6 | 48 | (3670016 & i4) | ((i4 >> 3) & 29360128), 100663350, 258825);
            LVColorScheme lVColorScheme2 = LVColorScheme.INVERT;
            FormUiModel formUiModel3 = nativeRegisterViewState.f54034h;
            Dp.Companion companion = Dp.f11004c;
            DynamicFormComposableKt.a(null, lVColorScheme2, formUiModel3, false, Call.Parameters.DEFAULT_CAMERA_ZOOM, function3, null, null, null, null, false, false, false, new a3(function0, 19), new a3(function0, 17), null, null, null, false, gapComposerH, i6 | 24624, 0, 499657);
            FormUiModel formUiModel4 = nativeRegisterViewState.f54035i;
            FormUiModel.f57485b.getClass();
            boolean z8 = !Intrinsics.c(formUiModel4, FormUiModel.Companion.a()) && nativeRegisterBirthInfoUiModel.f53944f;
            TweenSpec tweenSpecC = AnimationSpecKt.c(500, 0, null, 6);
            Object objX3 = gapComposerH.x();
            if (objX3 == composer$Companion$Empty$1) {
                objX3 = new be0(18);
                gapComposerH.q(objX3);
            }
            EnterTransition enterTransitionD = EnterExitTransitionKt.d(tweenSpecC, null, (Function1) objX3, 6);
            TweenSpec tweenSpecC2 = AnimationSpecKt.c(500, 0, null, 6);
            Object objX4 = gapComposerH.x();
            if (objX4 == composer$Companion$Empty$1) {
                objX4 = new be0(19);
                gapComposerH.q(objX4);
            }
            int i7 = i4;
            AnimatedVisibilityKt.c(columnScope, z8, null, enterTransitionD, EnterExitTransitionKt.n(tweenSpecC2, null, (Function1) objX4, 6), null, ComposableLambdaKt.b(1956278699, new g1(nativeRegisterViewState, function3, function2, 26), gapComposerH), gapComposerH, (i4 & 14) | 1600512, 18);
            if (nativeRegisterViewState.n.f53986b) {
                gapComposerH.L(-847635751);
                LegalNoticeKt.a(context, gapComposerH, 0);
                gapComposerH.Z(false);
            } else {
                gapComposerH.L(-847583857);
                gapComposerH.Z(false);
            }
            SpacerKt.a(gapComposerH, columnScope.a(new DTFunctionNameModifier("NativeRegisterBirthInfoComposable"), 1.0f, true));
            LVButtonKt.b((i7 << 3) & 1879048192, 376, gapComposerH, ModifierExtKt.e(PaddingKt.m(PaddingKt.m(tr.d("NativeRegisterBirthInfoComposable", 1.0f), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).g, 7), "nativeRegister_confirm_button"), LVAppDesignKitTheme.b(gapComposerH).f48447b, null, null, StringResources_androidKt.c(gapComposerH, R.string.confirm), function6, false, nativeRegisterBirthInfoUiModel.f53942c, false);
            OpaqueKey opaqueKey2 = ComposerKt.f7940a;
            z2 = z5;
        } else {
            gapComposerH.D();
            z2 = z;
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new f40(columnScope, nativeRegisterViewState, function1, function0, function2, function3, function4, function5, function6, function7, z2, i2, i3);
        }
    }
}
