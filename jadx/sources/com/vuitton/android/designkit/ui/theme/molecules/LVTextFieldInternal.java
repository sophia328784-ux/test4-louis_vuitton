package com.vuitton.android.designkit.ui.theme.molecules;

import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.Arrangement$Start$1;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowMeasurePolicy;
import androidx.compose.foundation.layout.RowScopeInstance;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.shape.RoundedCornerShapeKt;
import androidx.compose.material3.IconKt;
import androidx.compose.material3.TextKt;
import androidx.compose.runtime.Applier;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.BiasAlignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.ClipKt;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.res.PainterResources_androidKt;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.unit.Dp;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.designkit.ui.common.ModifierExtKt;
import com.vuitton.android.designkit.ui.theme.IconSize;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.atoms.configurations.ConfigurationSearchBar;
import defpackage.cj;
import defpackage.i1;
import defpackage.rv;
import defpackage.w3;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import net.rtccloud.sdk.Call;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bÇ\u0002\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/designkit/ui/theme/molecules/LVTextFieldInternal;", "", "system"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class LVTextFieldInternal {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final LVTextFieldInternal f48685a = new LVTextFieldInternal();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final float f48686b;

    static {
        Dp.Companion companion = Dp.f11004c;
        f48686b = 48.0f;
    }

    public final void a(String str, String str2, ComposableLambdaImpl composableLambdaImpl, ComposableLambdaImpl composableLambdaImpl2, Function2 function2, ConfigurationSearchBar configurationSearchBar, Composer composer, int i2) {
        int i3;
        GapComposer gapComposer;
        Function2 function3;
        Function0 function0;
        BiasAlignment biasAlignment;
        String str3;
        Function1 function1;
        Function2 function4;
        Function2 function5;
        boolean z;
        GapComposer gapComposer2;
        Function2 function6 = composableLambdaImpl2;
        str.getClass();
        str2.getClass();
        function2.getClass();
        configurationSearchBar.getClass();
        GapComposer gapComposerH = composer.h(994517223);
        Applier applier = gapComposerH.f7976a;
        if ((i2 & 6) == 0) {
            i3 = (gapComposerH.K(str) ? 4 : 2) | i2;
        } else {
            i3 = i2;
        }
        if ((i2 & 48) == 0) {
            i3 |= gapComposerH.K(str2) ? 32 : 16;
        }
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i3 |= gapComposerH.y(composableLambdaImpl) ? 256 : 128;
        }
        if ((i2 & 3072) == 0) {
            i3 |= gapComposerH.y(function6) ? 2048 : 1024;
        }
        if ((i2 & 24576) == 0) {
            i3 |= gapComposerH.y(function2) ? 16384 : 8192;
        }
        if ((196608 & i2) == 0) {
            i3 |= gapComposerH.K(configurationSearchBar) ? 131072 : 65536;
        }
        if ((1572864 & i2) == 0) {
            i3 |= gapComposerH.K(this) ? 1048576 : 524288;
        }
        int i4 = i3;
        if (gapComposerH.p(i4 & 1, (i4 & 599187) != 599186)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier("DecorationBox$system");
            float f2 = f48686b;
            Modifier modifierF = SizeKt.f(dTFunctionNameModifier, f2);
            long j2 = configurationSearchBar.d;
            Dp.Companion companion = Dp.f11004c;
            Modifier modifierB = BackgroundKt.b(modifierF, j2, RoundedCornerShapeKt.a(f2 / 2.0f));
            Arrangement$Start$1 arrangement$Start$1 = Arrangement.f4918a;
            Alignment.f8582a.getClass();
            RowMeasurePolicy rowMeasurePolicyA = RowKt.a(arrangement$Start$1, Alignment.Companion.f8591k, gapComposerH, 0);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierB);
            ComposeUiNode.b0.getClass();
            Function0 function7 = ComposeUiNode.Companion.f9641b;
            if (applier == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function7);
            } else {
                gapComposerH.o();
            }
            Function2 function8 = ComposeUiNode.Companion.f9644f;
            Updater.c(gapComposerH, rowMeasurePolicyA, function8);
            Function2 function9 = ComposeUiNode.Companion.f9643e;
            Updater.c(gapComposerH, persistentCompositionLocalMapU, function9);
            Integer numValueOf = Integer.valueOf(iHashCode);
            Function2 function10 = ComposeUiNode.Companion.g;
            Updater.c(gapComposerH, numValueOf, function10);
            Function1 function11 = ComposeUiNode.Companion.f9645h;
            Updater.b(gapComposerH, function11);
            Function2 function12 = ComposeUiNode.Companion.d;
            Updater.c(gapComposerH, modifierC, function12);
            DTFunctionNameModifier dTFunctionNameModifier2 = new DTFunctionNameModifier("DecorationBox$system");
            BiasAlignment.Vertical vertical = Alignment.Companion.l;
            RowScopeInstance rowScopeInstance = RowScopeInstance.f5040a;
            Modifier modifierK = PaddingKt.k(rowScopeInstance.b(dTFunctionNameModifier2, vertical), 4.0f, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2);
            BiasAlignment biasAlignment2 = Alignment.Companion.f8584b;
            MeasurePolicy measurePolicyD = BoxKt.d(biasAlignment2, false);
            int iHashCode2 = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU2 = gapComposerH.U();
            Modifier modifierC2 = ComposedModifierKt.c(gapComposerH, modifierK);
            if (applier == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function7);
            } else {
                gapComposerH.o();
            }
            Updater.c(gapComposerH, measurePolicyD, function8);
            Updater.c(gapComposerH, persistentCompositionLocalMapU2, function9);
            cj.t(iHashCode2, gapComposerH, function10, gapComposerH, function11);
            Updater.c(gapComposerH, modifierC2, function12);
            composableLambdaImpl.invoke(gapComposerH, Integer.valueOf((i4 >> 6) & 14));
            gapComposerH.Z(true);
            Modifier modifierA = rowScopeInstance.a(PaddingKt.m(rowScopeInstance.b(new DTFunctionNameModifier("DecorationBox$system"), vertical), 4.0f, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 14), 1.0f, true);
            MeasurePolicy measurePolicyD2 = BoxKt.d(biasAlignment2, false);
            int iHashCode3 = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU3 = gapComposerH.U();
            Modifier modifierC3 = ComposedModifierKt.c(gapComposerH, modifierA);
            if (applier == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function7);
            } else {
                gapComposerH.o();
            }
            Updater.c(gapComposerH, measurePolicyD2, function8);
            Updater.c(gapComposerH, persistentCompositionLocalMapU3, function9);
            cj.t(iHashCode3, gapComposerH, function10, gapComposerH, function11);
            Updater.c(gapComposerH, modifierC3, function12);
            function2.invoke(gapComposerH, Integer.valueOf((i4 >> 12) & 14));
            if (str.length() == 0) {
                gapComposerH.L(734825425);
                TextStyle textStyle = LVAppDesignKitTheme.n(gapComposerH).f48429j;
                biasAlignment = biasAlignment2;
                str3 = "DecorationBox$system";
                function0 = function7;
                z = false;
                function1 = function11;
                function5 = function12;
                function4 = function10;
                TextKt.c(str2, null, configurationSearchBar.f48577b, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, textStyle, gapComposerH, (i4 >> 3) & 14, 0, 131066);
                GapComposer gapComposer3 = gapComposerH;
                gapComposer3.Z(false);
                gapComposer2 = gapComposer3;
            } else {
                GapComposer gapComposer4 = gapComposerH;
                function0 = function7;
                biasAlignment = biasAlignment2;
                str3 = "DecorationBox$system";
                function1 = function11;
                function4 = function10;
                function5 = function12;
                z = false;
                gapComposer4.L(735038364);
                gapComposer4.Z(false);
                gapComposer2 = gapComposer4;
            }
            gapComposer2.Z(true);
            Modifier modifierK2 = PaddingKt.k(rowScopeInstance.b(new DTFunctionNameModifier(str3), vertical), 4.0f, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2);
            MeasurePolicy measurePolicyD3 = BoxKt.d(biasAlignment, z);
            int iHashCode4 = Long.hashCode(gapComposer2.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU4 = gapComposer2.U();
            Modifier modifierC4 = ComposedModifierKt.c(gapComposer2, modifierK2);
            if (applier == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposer2.B();
            if (gapComposer2.S) {
                gapComposer2.C(function0);
            } else {
                gapComposer2.o();
            }
            Updater.c(gapComposer2, measurePolicyD3, function8);
            Updater.c(gapComposer2, persistentCompositionLocalMapU4, function9);
            cj.t(iHashCode4, gapComposer2, function4, gapComposer2, function1);
            Updater.c(gapComposer2, modifierC4, function5);
            Function2 function13 = composableLambdaImpl2;
            function13.invoke(gapComposer2, Integer.valueOf((i4 >> 9) & 14));
            gapComposer2.Z(true);
            gapComposer2.Z(true);
            function3 = function13;
            gapComposer = gapComposer2;
        } else {
            GapComposer gapComposer5 = gapComposerH;
            gapComposer5.D();
            function3 = function6;
            gapComposer = gapComposer5;
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new w3(this, str, str2, composableLambdaImpl, function3, function2, configurationSearchBar, i2, 4);
        }
    }

    public final void b(Modifier modifier, int i2, ConfigurationSearchBar configurationSearchBar, Function0 function0, Composer composer, int i3) {
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = defpackage.a.e(modifierE, "LeadingIcon$system");
        }
        Modifier modifier2 = modifierE;
        configurationSearchBar.getClass();
        function0.getClass();
        GapComposer gapComposerH = composer.h(1952533776);
        int i4 = i3 | (gapComposerH.K(modifier2) ? 4 : 2) | (gapComposerH.d(i2) ? 32 : 16) | (gapComposerH.K(configurationSearchBar) ? 256 : 128) | (gapComposerH.y(function0) ? 2048 : 1024);
        if (gapComposerH.p(i4 & 1, (i4 & 1171) != 1170)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Modifier modifierC = ModifierExtKt.c(ClipKt.a(modifier2, RoundedCornerShapeKt.f5846a), false, null, null, function0, 31);
            Dp.Companion companion = Dp.f11004c;
            IconKt.a(PainterResources_androidKt.a(i2, gapComposerH, (i4 >> 3) & 14), "Back", SizeKt.o(PaddingKt.i(modifierC, 8.0f), IconSize.f48349c), configurationSearchBar.f48578c, gapComposerH, 56, 0);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new i1(this, modifier2, i2, configurationSearchBar, function0, i3);
        }
    }

    public final void c(int i2, Composer composer, Modifier modifier, Function0 function0) {
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = defpackage.a.e(modifierE, "TrailingIcon$system");
        }
        Modifier modifier2 = modifierE;
        function0.getClass();
        GapComposer gapComposerH = composer.h(-1484472004);
        int i3 = i2 | (gapComposerH.K(modifier2) ? 4 : 2) | (gapComposerH.y(function0) ? 32 : 16);
        if (gapComposerH.p(i3 & 1, (i3 & 19) != 18)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Modifier modifierC = ModifierExtKt.c(ClipKt.a(modifier2, RoundedCornerShapeKt.f5846a), false, null, null, function0, 31);
            Dp.Companion companion = Dp.f11004c;
            IconKt.a(PainterResources_androidKt.a(LVAppDesignKitTheme.g(gapComposerH).A, gapComposerH, 0), "Clear", SizeKt.o(PaddingKt.i(modifierC, 12.0f), IconSize.f48349c), LVAppDesignKitTheme.c(gapComposerH).f48361b.l, gapComposerH, 56, 0);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new rv(i2, 17, this, modifier2, function0);
        }
    }
}
