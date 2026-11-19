package com.vuitton.android.designkit.ui.theme.atoms;

import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.Arrangement$SpaceBetween$1;
import androidx.compose.foundation.layout.Arrangement$Start$1;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.IntrinsicKt;
import androidx.compose.foundation.layout.IntrinsicSize;
import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowMeasurePolicy;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.material3.TextKt;
import androidx.compose.runtime.Applier;
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
import androidx.compose.ui.graphics.RectangleShapeKt;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.style.TextAlign;
import androidx.compose.ui.text.style.TextOverflow;
import androidx.compose.ui.unit.Dp;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import defpackage.hb;
import defpackage.n00;
import defpackage.q60;
import defpackage.ud;
import defpackage.v1;
import defpackage.yt0;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function5;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"system"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class LVNavBarKt {
    public static final void a(Modifier modifier, List list, Function5 function5, Composer composer, int i2) {
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = defpackage.a.e(modifierE, "LVNavBar");
        }
        Modifier modifier2 = modifierE;
        list.getClass();
        GapComposer gapComposerH = composer.h(-538429127);
        Applier applier = gapComposerH.f7976a;
        int i3 = 2;
        int i4 = i2 | (gapComposerH.K(modifier2) ? 4 : 2);
        if ((i2 & 48) == 0) {
            i4 |= gapComposerH.y(list) ? 32 : 16;
        }
        boolean z = false;
        if (gapComposerH.p(i4 & 1, (i4 & 147) != 146)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Modifier modifierB = SemanticsModifierKt.b(SizeKt.d(BackgroundKt.b(modifier2, LVAppDesignKitTheme.c(gapComposerH).f48361b.u, RectangleShapeKt.f8913a), 1.0f), false, new yt0(21));
            boolean zY = gapComposerH.y(list);
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (zY || objX == composer$Companion$Empty$1) {
                objX = new ud(list, 8);
                gapComposerH.q(objX);
            }
            Modifier modifierB2 = SemanticsModifierKt.b(modifierB, false, (Function1) objX);
            Arrangement$SpaceBetween$1 arrangement$SpaceBetween$1 = Arrangement.g;
            Alignment.f8582a.getClass();
            RowMeasurePolicy rowMeasurePolicyA = RowKt.a(arrangement$SpaceBetween$1, Alignment.Companion.f8591k, gapComposerH, 6);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierB2);
            ComposeUiNode.b0.getClass();
            Function0 function0 = ComposeUiNode.Companion.f9641b;
            if (applier == null) {
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
            Updater.c(gapComposerH, modifierC, ComposeUiNode.Companion.d);
            gapComposerH.L(-1647766300);
            int i5 = 0;
            for (Object obj : list) {
                int i6 = i5 + 1;
                if (i5 < 0) {
                    CollectionsKt.t0();
                    throw null;
                }
                Modifier modifierB3 = IntrinsicKt.b(new DTFunctionNameModifier("LVNavBar"), IntrinsicSize.Max);
                Dp.Companion companion = Dp.f11004c;
                Modifier modifierU = SizeKt.u(modifierB3, 44.0f, Call.Parameters.DEFAULT_CAMERA_ZOOM, i3);
                boolean zD = gapComposerH.d(i5);
                Object objX2 = gapComposerH.x();
                if (zD || objX2 == composer$Companion$Empty$1) {
                    objX2 = new hb(i5, 13);
                    gapComposerH.q(objX2);
                }
                Modifier modifierB4 = SemanticsModifierKt.b(modifierU, z, (Function1) objX2);
                Alignment.f8582a.getClass();
                MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8587f, z);
                OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                int iHashCode2 = Long.hashCode(gapComposerH.T);
                PersistentCompositionLocalMap persistentCompositionLocalMapU2 = gapComposerH.U();
                Modifier modifierC2 = ComposedModifierKt.c(gapComposerH, modifierB4);
                ComposeUiNode.b0.getClass();
                Function0 function1 = ComposeUiNode.Companion.f9641b;
                if (applier == null) {
                    ComposablesKt.b();
                    throw null;
                }
                gapComposerH.B();
                if (gapComposerH.S) {
                    gapComposerH.C(function1);
                } else {
                    gapComposerH.o();
                }
                Updater.c(gapComposerH, measurePolicyD, ComposeUiNode.Companion.f9644f);
                Updater.c(gapComposerH, persistentCompositionLocalMapU2, ComposeUiNode.Companion.f9643e);
                Updater.c(gapComposerH, Integer.valueOf(iHashCode2), ComposeUiNode.Companion.g);
                Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
                Updater.c(gapComposerH, modifierC2, ComposeUiNode.Companion.d);
                function5.D(LVNavBarScopeInstance.f48490a, Integer.valueOf(i5), obj, gapComposerH, 3078);
                gapComposerH.Z(true);
                i5 = i6;
                i3 = 2;
                z = false;
            }
            gapComposerH.Z(z);
            gapComposerH.Z(true);
            OpaqueKey opaqueKey3 = ComposerKt.f7940a;
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new v1(i2, 19, modifier2, list, function5);
        }
    }

    public static final void b(int i2, int i3, Composer composer, String str) {
        int i4;
        int i5;
        GapComposer gapComposerH = composer.h(-413542230);
        if ((i3 & 6) == 0) {
            i4 = i3 | (gapComposerH.d(i2) ? 4 : 2);
        } else {
            i4 = i3;
        }
        if ((i3 & 48) == 0) {
            i4 |= gapComposerH.K(str) ? 32 : 16;
        }
        if (gapComposerH.p(i4 & 1, (i4 & 19) != 18)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier("LVNavBarIconTextual");
            Arrangement$Start$1 arrangement$Start$1 = Arrangement.f4918a;
            Alignment.f8582a.getClass();
            RowMeasurePolicy rowMeasurePolicyA = RowKt.a(arrangement$Start$1, Alignment.Companion.f8591k, gapComposerH, 0);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, dTFunctionNameModifier);
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
            Updater.c(gapComposerH, modifierC, ComposeUiNode.Companion.d);
            TextStyle textStyle = LVAppDesignKitTheme.n(gapComposerH).f48430k;
            long j2 = LVAppDesignKitTheme.c(gapComposerH).f48361b.m;
            TextAlign.f10959b.getClass();
            int i6 = TextAlign.f10961e;
            TextOverflow.f10989a.getClass();
            i5 = 0;
            TextKt.c(str, null, j2, 0L, null, 0L, null, new TextAlign(i6), 0L, TextOverflow.f10991c, false, 1, 0, null, textStyle, gapComposerH, (i4 >> 3) & 14, 24960, 109562);
            gapComposerH = gapComposerH;
            if (i2 > 0) {
                DTFunctionNameModifier dTFunctionNameModifierI = n00.i(gapComposerH, -1730505280, "LVNavBarIconTextual");
                Dp.Companion companion = Dp.f11004c;
                TextKt.c(String.valueOf(i2), OffsetKt.b(dTFunctionNameModifierI, 3.0f, -4.0f), LVAppDesignKitTheme.c(gapComposerH).f48361b.m, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).o, gapComposerH, 48, 0, 131064);
                gapComposerH.Z(false);
            } else {
                gapComposerH.L(-1730076364);
                gapComposerH.Z(false);
            }
            gapComposerH.Z(true);
        } else {
            i5 = 0;
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new q60(i2, i3, i5, str);
        }
    }
}
