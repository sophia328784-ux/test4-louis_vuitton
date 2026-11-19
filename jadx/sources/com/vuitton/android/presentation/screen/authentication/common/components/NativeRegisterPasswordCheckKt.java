package com.vuitton.android.presentation.screen.authentication.common.components;

import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.Arrangement$Start$1;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowMeasurePolicy;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.material3.IconKt;
import androidx.compose.material3.TextKt;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.painter.Painter;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.res.PainterResources_androidKt;
import androidx.compose.ui.res.StringResources_androidKt;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.style.TextAlign;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.R;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.presentation.extensions.ModifierExtKt;
import com.vuitton.android.presentation.screen.authentication.common.validation.PasswordValidationState;
import defpackage.be0;
import defpackage.g2;
import defpackage.rf0;
import defpackage.rg;
import defpackage.tr;
import java.util.List;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class NativeRegisterPasswordCheckKt {
    public static final void a(Modifier modifier, String str, boolean z, Composer composer, int i2) {
        Painter painterA;
        long j2;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = defpackage.a.e(modifierE, "NativeRegisterPasswordCheck");
        }
        GapComposer gapComposerH = composer.h(288892906);
        int i3 = i2 | (gapComposerH.K(modifierE) ? 4 : 2) | (gapComposerH.K(str) ? 32 : 16) | (gapComposerH.b(z) ? 256 : 128);
        if (gapComposerH.p(i3 & 1, (i3 & 147) != 146)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Modifier modifierD = SizeKt.d(modifierE, 1.0f);
            Arrangement$Start$1 arrangement$Start$1 = Arrangement.f4918a;
            Arrangement.SpacedAligned spacedAlignedF = Arrangement.f(LVAppDesignKitTheme.l(gapComposerH).f48416e);
            Alignment.f8582a.getClass();
            RowMeasurePolicy rowMeasurePolicyA = RowKt.a(spacedAlignedF, Alignment.Companion.l, gapComposerH, 48);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierD);
            ComposeUiNode.b0.getClass();
            Function0 function0 = ComposeUiNode.Companion.f9641b;
            if (gapComposerH.f7976a == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function0);
            } else {
                gapComposerH.o();
            }
            Updater.c(gapComposerH, rowMeasurePolicyA, ComposeUiNode.Companion.f9644f);
            Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
            Updater.c(gapComposerH, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
            Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
            Modifier modifierO = SizeKt.o(tr.e(gapComposerH, modifierC, ComposeUiNode.Companion.d, "NativeRegisterPasswordCheck"), LVAppDesignKitTheme.d(gapComposerH).m);
            if (z) {
                gapComposerH.L(-979324545);
                painterA = PainterResources_androidKt.a(LVAppDesignKitTheme.g(gapComposerH).q0, gapComposerH, 0);
                gapComposerH.Z(false);
            } else {
                gapComposerH.L(-979234273);
                painterA = PainterResources_androidKt.a(LVAppDesignKitTheme.g(gapComposerH).q, gapComposerH, 0);
                gapComposerH.Z(false);
            }
            if (z) {
                gapComposerH.L(-979116504);
                j2 = LVAppDesignKitTheme.c(gapComposerH).f48361b.A;
                gapComposerH.Z(false);
            } else {
                gapComposerH.L(-979035222);
                j2 = LVAppDesignKitTheme.c(gapComposerH).f48361b.B;
                gapComposerH.Z(false);
            }
            IconKt.a(painterA, null, modifierO, j2, gapComposerH, 56, 0);
            TextStyle textStyle = LVAppDesignKitTheme.n(gapComposerH).f48427h;
            long j3 = LVAppDesignKitTheme.c(gapComposerH).f48361b.m;
            TextAlign.f10959b.getClass();
            TextKt.c(str, null, j3, 0L, null, 0L, null, new TextAlign(TextAlign.f10961e), 0L, 0, false, 0, 0, null, textStyle, gapComposerH, (i3 >> 3) & 14, 0, 130042);
            gapComposerH = gapComposerH;
            gapComposerH.Z(true);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new rg(modifierE, str, z, i2, 6);
        }
    }

    public static final void b(Modifier modifier, PasswordValidationState passwordValidationState, Composer composer, int i2, int i3) {
        String strB;
        Modifier dTFunctionNameModifier = modifier;
        if (dTFunctionNameModifier != null) {
            dTFunctionNameModifier = defpackage.a.e(dTFunctionNameModifier, "NativeRegisterPasswordChecks");
        }
        passwordValidationState.getClass();
        GapComposer gapComposerH = composer.h(1959512941);
        int i4 = i3 & 1;
        int i5 = (i4 != 0 ? i2 | 6 : (gapComposerH.K(dTFunctionNameModifier) ? 4 : 2) | i2) | (gapComposerH.K(passwordValidationState) ? 32 : 16);
        if (gapComposerH.p(i5 & 1, (i5 & 19) != 18)) {
            if (i4 != 0) {
                dTFunctionNameModifier = new DTFunctionNameModifier("NativeRegisterPasswordChecks");
            }
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            List listP = CollectionsKt.P(new Pair(StringResources_androidKt.c(gapComposerH, R.string.mylv_native_register_password_check1), Boolean.valueOf(passwordValidationState.f53496b)), new Pair(StringResources_androidKt.c(gapComposerH, R.string.mylv_native_register_password_check2), Boolean.valueOf(passwordValidationState.f53497c)), new Pair(StringResources_androidKt.c(gapComposerH, R.string.mylv_native_register_password_check6), Boolean.valueOf(passwordValidationState.f53499f)), new Pair(StringResources_androidKt.c(gapComposerH, R.string.mylv_native_register_password_check3), Boolean.valueOf(passwordValidationState.d)), new Pair(StringResources_androidKt.c(gapComposerH, R.string.mylv_native_register_password_check4), Boolean.valueOf(passwordValidationState.f53498e)));
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (objX == composer$Companion$Empty$1) {
                objX = new be0(24);
                gapComposerH.q(objX);
            }
            Modifier modifierB = SemanticsModifierKt.b(dTFunctionNameModifier, false, (Function1) objX);
            Arrangement$Start$1 arrangement$Start$1 = Arrangement.f4918a;
            Arrangement.SpacedAligned spacedAlignedF = Arrangement.f(LVAppDesignKitTheme.l(gapComposerH).f48414b);
            Alignment.f8582a.getClass();
            ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(spacedAlignedF, Alignment.Companion.n, gapComposerH, 0);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierB);
            ComposeUiNode.b0.getClass();
            Function0 function0 = ComposeUiNode.Companion.f9641b;
            if (gapComposerH.f7976a == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function0);
            } else {
                gapComposerH.o();
            }
            Updater.c(gapComposerH, columnMeasurePolicyA, ComposeUiNode.Companion.f9644f);
            Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
            Updater.c(gapComposerH, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
            Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
            Updater.c(gapComposerH, modifierC, ComposeUiNode.Companion.d);
            gapComposerH.L(-449172704);
            int i6 = 0;
            for (Object obj : listP) {
                int i7 = i6 + 1;
                if (i6 < 0) {
                    CollectionsKt.t0();
                    throw null;
                }
                Pair pair = (Pair) obj;
                String str = (String) pair.f71705b;
                boolean zBooleanValue = ((Boolean) pair.f71706c).booleanValue();
                if (zBooleanValue) {
                    gapComposerH.L(1737040178);
                    strB = StringResources_androidKt.b(R.string.alt_mylv_native_register_password_check_valid, new Object[]{str}, gapComposerH);
                    gapComposerH.Z(false);
                } else {
                    gapComposerH.L(1737157296);
                    strB = StringResources_androidKt.b(R.string.alt_mylv_native_register_password_check_invalid, new Object[]{str}, gapComposerH);
                    gapComposerH.Z(false);
                }
                DTFunctionNameModifier dTFunctionNameModifier2 = new DTFunctionNameModifier("NativeRegisterPasswordChecks");
                boolean zD = gapComposerH.d(i6) | gapComposerH.K(strB);
                Object objX2 = gapComposerH.x();
                if (zD || objX2 == composer$Companion$Empty$1) {
                    objX2 = new rf0(i6, strB, 0);
                    gapComposerH.q(objX2);
                }
                a(ModifierExtKt.a(dTFunctionNameModifier2, null, (Function1) objX2, 3), str, zBooleanValue, gapComposerH, 0);
                i6 = i7;
            }
            gapComposerH.Z(false);
            gapComposerH.Z(true);
            OpaqueKey opaqueKey2 = ComposerKt.f7940a;
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new g2(dTFunctionNameModifier, passwordValidationState, i2, i3);
        }
    }
}
