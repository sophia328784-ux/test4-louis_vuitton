package com.vuitton.android.designkit.ui.theme.atoms;

import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.BorderKt;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowMeasurePolicy;
import androidx.compose.material3.TextKt;
import androidx.compose.runtime.Applier;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.StaticProvidableCompositionLocal;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.ClipKt;
import androidx.compose.ui.graphics.RectangleShapeKt;
import androidx.compose.ui.graphics.Shape;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.style.TextAlign;
import androidx.compose.ui.text.style.TextOverflow;
import androidx.compose.ui.unit.Dp;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.designkit.ui.theme.atoms.configurations.ConfigurationTag;
import defpackage.c70;
import defpackage.cj;
import defpackage.h;
import defpackage.tr;
import defpackage.v1;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"system"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class LVTagKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final StaticProvidableCompositionLocal f48516a = new StaticProvidableCompositionLocal(new c70(10));

    /* JADX WARN: Code duplicated, block: B:26:0x0043  */
    public static final void a(Modifier modifier, ConfigurationTag configurationTag, String str, Composer composer, int i2, int i3) {
        int i4;
        int i5;
        if (modifier != null) {
            modifier = defpackage.a.e(modifier, "LVTag");
        }
        str.getClass();
        GapComposer gapComposerH = composer.h(436464975);
        int i6 = i3 & 1;
        if (i6 != 0) {
            i4 = i2 | 6;
        } else if ((i2 & 6) == 0) {
            i4 = (gapComposerH.K(modifier) ? 4 : 2) | i2;
        } else {
            i4 = i2;
        }
        if ((i2 & 48) == 0) {
            if ((i3 & 2) != 0) {
                i5 = 16;
            } else {
                if ((i2 & 64) == 0 ? gapComposerH.K(configurationTag) : gapComposerH.y(configurationTag)) {
                    i5 = 32;
                } else {
                    i5 = 16;
                }
            }
            i4 |= i5;
        }
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i4 |= gapComposerH.K(str) ? 256 : 128;
        }
        int i7 = i4 | 27648;
        if (gapComposerH.p(i7 & 1, (i7 & 9363) != 9362)) {
            gapComposerH.y0();
            if ((i2 & 1) == 0 || gapComposerH.h0()) {
                if (i6 != 0) {
                    modifier = new DTFunctionNameModifier("LVTag");
                }
                if ((i3 & 2) != 0) {
                    configurationTag = ((LVTagConfigs) gapComposerH.k(f48516a)).f48514b;
                    i7 &= -113;
                }
            } else {
                gapComposerH.D();
                if ((i3 & 2) != 0) {
                    i7 &= -113;
                }
            }
            gapComposerH.a0();
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            int i8 = i7 >> 3;
            b(modifier, str, configurationTag, gapComposerH, (i7 & 14) | (i8 & 112) | (i8 & 896) | ((i7 << 6) & 7168) | (57344 & i7));
        } else {
            gapComposerH.D();
        }
        Modifier modifier2 = modifier;
        ConfigurationTag configurationTag2 = configurationTag;
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new h(modifier2, configurationTag2, str, i2, i3, 5);
        }
    }

    public static final void b(Modifier modifier, String str, ConfigurationTag configurationTag, Composer composer, int i2) {
        int i3;
        GapComposer gapComposer;
        Modifier dTFunctionNameModifier;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = defpackage.a.e(modifierE, "LVTagInternal");
        }
        Modifier modifier2 = modifierE;
        GapComposer gapComposerH = composer.h(2104180594);
        Applier applier = gapComposerH.f7976a;
        if ((i2 & 6) == 0) {
            i3 = (gapComposerH.K(modifier2) ? 4 : 2) | i2;
        } else {
            i3 = i2;
        }
        if ((i2 & 48) == 0) {
            i3 |= gapComposerH.K(str) ? 32 : 16;
        }
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i3 |= gapComposerH.K(null) ? 256 : 128;
        }
        if ((i2 & 3072) == 0) {
            i3 |= (i2 & 4096) == 0 ? gapComposerH.K(configurationTag) : gapComposerH.y(configurationTag) ? 2048 : 1024;
        }
        if ((i2 & 24576) == 0) {
            i3 |= gapComposerH.y(null) ? 16384 : 8192;
        }
        if (gapComposerH.p(i3 & 1, (i3 & 9363) != 9362)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Shape shape = configurationTag.f48591e;
            ConfigurationTag.Border border = configurationTag.f48592f;
            Modifier modifierB = BackgroundKt.b(ClipKt.a(modifier2, shape), configurationTag.f48589b, RectangleShapeKt.f8913a);
            if (border instanceof ConfigurationTag.Border.Stroke) {
                ConfigurationTag.Border.Stroke stroke = (ConfigurationTag.Border.Stroke) border;
                dTFunctionNameModifier = BorderKt.a(new DTFunctionNameModifier("LVTagInternal"), stroke.f48595b, stroke.f48594a, configurationTag.f48591e);
            } else {
                dTFunctionNameModifier = new DTFunctionNameModifier("LVTagInternal");
            }
            Modifier modifierO = modifierB.o(dTFunctionNameModifier);
            gapComposerH.L(597327680);
            gapComposerH.Z(false);
            Modifier modifierE2 = defpackage.a.e(modifierO, "LVTagInternal");
            Alignment.f8582a.getClass();
            MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierE2);
            ComposeUiNode.b0.getClass();
            Function0 function0 = ComposeUiNode.Companion.f9641b;
            if (applier == null) {
                ComposablesKt.b();
                throw r9;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function0);
            } else {
                gapComposerH.o();
            }
            Function2 function2 = ComposeUiNode.Companion.f9644f;
            Updater.c(gapComposerH, measurePolicyD, function2);
            Function2 function3 = ComposeUiNode.Companion.f9643e;
            Updater.c(gapComposerH, persistentCompositionLocalMapU, function3);
            Integer numValueOf = Integer.valueOf(iHashCode);
            Function2 function4 = ComposeUiNode.Companion.g;
            Updater.c(gapComposerH, numValueOf, function4);
            Function1 function1 = ComposeUiNode.Companion.f9645h;
            Updater.b(gapComposerH, function1);
            Function2 function5 = ComposeUiNode.Companion.d;
            DTFunctionNameModifier dTFunctionNameModifierE = tr.e(gapComposerH, modifierC, function5, "LVTagInternal");
            Dp.Companion companion = Dp.f11004c;
            Modifier modifierJ = PaddingKt.j(dTFunctionNameModifierE, 12.0f, 4.0f);
            RowMeasurePolicy rowMeasurePolicyA = RowKt.a(Arrangement.f4918a, Alignment.Companion.l, gapComposerH, 48);
            int iHashCode2 = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU2 = gapComposerH.U();
            Modifier modifierC2 = ComposedModifierKt.c(gapComposerH, modifierJ);
            if (applier == null) {
                ComposablesKt.b();
                throw 0;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function0);
            } else {
                gapComposerH.o();
            }
            Updater.c(gapComposerH, rowMeasurePolicyA, function2);
            Updater.c(gapComposerH, persistentCompositionLocalMapU2, function3);
            cj.t(iHashCode2, gapComposerH, function4, gapComposerH, function1);
            Updater.c(gapComposerH, modifierC2, function5);
            gapComposerH.L(2099483575);
            gapComposerH.Z(false);
            TextAlign.f10959b.getClass();
            int i4 = TextAlign.f10961e;
            TextStyle textStyle = configurationTag.f48588a;
            long j2 = configurationTag.f48590c;
            TextOverflow.f10989a.getClass();
            TextKt.c(str, null, j2, 0L, null, 0L, null, new TextAlign(i4), 0L, TextOverflow.f10991c, false, 1, 0, null, textStyle, gapComposerH, (i3 >> 3) & 14, 24960, 109562);
            gapComposer = gapComposerH;
            gapComposer.Z(true);
            gapComposer.Z(true);
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new v1(i2, 22, modifier2, str, configurationTag);
        }
    }
}
