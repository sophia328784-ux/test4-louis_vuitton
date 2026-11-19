package com.vuitton.android.presentation.screen.authentication.welcome.components.bottomsheet;

import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.Arrangement$Start$1;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.ColumnScope;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.ColorKt;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.res.StringResources_androidKt;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.R;
import com.vuitton.android.designkit.components.components.LVCustomBottomSheetContentKt;
import com.vuitton.android.designkit.ui.common.ModifierExtKt;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.atoms.LVButtonKt;
import com.vuitton.android.designkit.ui.theme.atoms.configurations.ConfigurationButton;
import defpackage.s70;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function3;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class SignInSelectionBottomSheetContentKt {
    public static final void a(final boolean z, final boolean z2, final boolean z3, final Function0 function0, final Function0 function1, final Function0 function2, final Function0 function3, Composer composer, int i2) {
        function0.getClass();
        function1.getClass();
        function2.getClass();
        function3.getClass();
        GapComposer gapComposerH = composer.h(609713213);
        int i3 = i2 | (gapComposerH.b(z) ? 4 : 2) | (gapComposerH.b(z2) ? 32 : 16) | (gapComposerH.b(z3) ? 256 : 128) | (gapComposerH.y(function0) ? 2048 : 1024) | (gapComposerH.y(function1) ? 16384 : 8192) | (gapComposerH.y(function2) ? 131072 : 65536) | (gapComposerH.y(function3) ? 1048576 : 524288);
        if (gapComposerH.p(i3 & 1, (599187 & i3) != 599186)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            LVCustomBottomSheetContentKt.a(null, Call.Parameters.DEFAULT_CAMERA_ZOOM, null, null, null, null, null, false, null, null, ComposableLambdaKt.b(-443105400, new Function3() { // from class: iw0
                @Override // kotlin.jvm.functions.Function3
                public final Object A(Object obj, Object obj2, Object obj3) {
                    Composer composer2 = (Composer) obj2;
                    int iIntValue = ((Integer) obj3).intValue();
                    ((ColumnScope) obj).getClass();
                    if (composer2.p(iIntValue & 1, (iIntValue & 17) != 16)) {
                        OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                        Arrangement$Start$1 arrangement$Start$1 = Arrangement.f4918a;
                        Arrangement.SpacedAligned spacedAlignedF = Arrangement.f(LVAppDesignKitTheme.l(composer2).f48415c);
                        DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier("SignInSelectionBottomSheetContent$lambda$0");
                        Alignment.f8582a.getClass();
                        ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(spacedAlignedF, Alignment.Companion.n, composer2, 0);
                        int iHashCode = Long.hashCode(composer2.getT());
                        PersistentCompositionLocalMap persistentCompositionLocalMapN = composer2.n();
                        Modifier modifierC = ComposedModifierKt.c(composer2, dTFunctionNameModifier);
                        ComposeUiNode.b0.getClass();
                        Function0 function4 = ComposeUiNode.Companion.f9641b;
                        if (composer2.getF7976a() == null) {
                            ComposablesKt.b();
                            throw null;
                        }
                        composer2.B();
                        if (composer2.getS()) {
                            composer2.C(function4);
                        } else {
                            composer2.o();
                        }
                        Updater.c(composer2, columnMeasurePolicyA, ComposeUiNode.Companion.f9644f);
                        Updater.c(composer2, persistentCompositionLocalMapN, ComposeUiNode.Companion.f9643e);
                        Updater.c(composer2, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
                        Updater.b(composer2, ComposeUiNode.Companion.f9645h);
                        Updater.c(composer2, modifierC, ComposeUiNode.Companion.d);
                        if (z2) {
                            composer2.L(-1319524710);
                            LVButtonKt.b(100663296, 240, composer2, ModifierExtKt.e(SizeKt.d(new DTFunctionNameModifier("SignInSelectionBottomSheetContent$lambda$0"), 1.0f), "mylvAuthentication_google_button"), LVAppDesignKitTheme.b(composer2).f48449e, Integer.valueOf(LVAppDesignKitTheme.g(composer2).z0), null, StringResources_androidKt.c(composer2, R.string.mylv_authent_native_google_cta_continue_with_google), function0, false, false, false);
                            composer2.F();
                        } else {
                            composer2.L(-1318961564);
                            composer2.F();
                        }
                        boolean z4 = z;
                        ConfigurationButton.Border.None none = ConfigurationButton.Border.None.f48541a;
                        if (z4) {
                            composer2.L(-1318891504);
                            Modifier modifierE = ModifierExtKt.e(SizeKt.d(new DTFunctionNameModifier("SignInSelectionBottomSheetContent$lambda$0"), 1.0f), "mylvAuthentication_line_button");
                            long jC = ColorKt.c(4278634325L);
                            LVButtonKt.b(0, 496, composer2, modifierE, new ConfigurationButton(jC, Color.b(LVAppDesignKitTheme.h(composer2).f48403c, jC), jC, LVAppDesignKitTheme.c(composer2).f48361b.y, LVAppDesignKitTheme.c(composer2).f48361b.y, LVAppDesignKitTheme.n(composer2).f48428i, PaddingKt.b(LVAppDesignKitTheme.d(composer2).o, LVAppDesignKitTheme.d(composer2).f48383a), PaddingKt.a(LVAppDesignKitTheme.d(composer2).l), none, none, none, 0.95f, LVAppDesignKitTheme.d(composer2).v, null), Integer.valueOf(LVAppDesignKitTheme.g(composer2).A0), null, StringResources_androidKt.c(composer2, R.string.line_cta), function1, false, false, false);
                            composer2.F();
                        } else {
                            composer2.L(-1318458620);
                            composer2.F();
                        }
                        if (z3) {
                            composer2.L(-1318387289);
                            Modifier modifierE2 = ModifierExtKt.e(SizeKt.d(new DTFunctionNameModifier("SignInSelectionBottomSheetContent$lambda$0"), 1.0f), "mylvAuthentication_kakao_button");
                            long jC2 = ColorKt.c(4294894848L);
                            LVButtonKt.b(0, 496, composer2, modifierE2, new ConfigurationButton(jC2, Color.b(LVAppDesignKitTheme.h(composer2).f48403c, jC2), jC2, LVAppDesignKitTheme.c(composer2).f48361b.u, LVAppDesignKitTheme.c(composer2).f48361b.u, LVAppDesignKitTheme.n(composer2).f48428i, PaddingKt.b(LVAppDesignKitTheme.d(composer2).o, LVAppDesignKitTheme.d(composer2).f48383a), PaddingKt.a(LVAppDesignKitTheme.d(composer2).l), none, none, none, 0.95f, LVAppDesignKitTheme.d(composer2).v, null), Integer.valueOf(LVAppDesignKitTheme.g(composer2).y0), null, StringResources_androidKt.c(composer2, R.string.kakao_cta), function2, false, false, false);
                            composer2.F();
                        } else {
                            composer2.L(-1317945756);
                            composer2.F();
                        }
                        LVButtonKt.b(0, 504, composer2, ModifierExtKt.e(PaddingKt.m(tr.d("SignInSelectionBottomSheetContent$lambda$0", 1.0f), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer2).f48417f, 7), "mylvAuthentication_email_button"), LVAppDesignKitTheme.b(composer2).f48446a, null, null, StringResources_androidKt.c(composer2, R.string.mylv_authent_native_apple_cta_continue_email), function3, false, false, false);
                        composer2.r();
                    } else {
                        composer2.D();
                    }
                    return Unit.f71739a;
                }
            }, gapComposerH), gapComposerH, 0, 48, 2047);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new s70(z, z2, z3, function0, function1, function2, function3, i2);
        }
    }
}
