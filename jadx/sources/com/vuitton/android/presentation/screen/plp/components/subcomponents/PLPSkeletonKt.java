package com.vuitton.android.presentation.screen.plp.components.subcomponents;

import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.Arrangement$Top$1;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.IntrinsicKt;
import androidx.compose.foundation.layout.IntrinsicSize;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowMeasurePolicy;
import androidx.compose.foundation.layout.RowScopeInstance;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.lazy.LazyListScope;
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
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.unit.Dp;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.atoms.LVSkeletonKt;
import com.vuitton.android.presentation.screen.catalog.thematicplp.models.GridModes;
import defpackage.cj;
import defpackage.d21;
import defpackage.e1;
import defpackage.fl0;
import defpackage.qe;
import defpackage.tr;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class PLPSkeletonKt {
    public static final void a(Modifier modifier, Composer composer, int i2) {
        GapComposer gapComposer;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = defpackage.a.e(modifierE, "ProductCellFullSkeleton");
        }
        Modifier modifier2 = modifierE;
        GapComposer gapComposerH = composer.h(1020470866);
        Applier applier = gapComposerH.f7976a;
        int i3 = (gapComposerH.K(modifier2) ? 4 : 2) | i2;
        if (gapComposerH.p(i3 & 1, (i3 & 3) != 2)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Dp.Companion companion = Dp.f11004c;
            Modifier modifierM = PaddingKt.m(modifier2, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 40.0f, 7);
            Arrangement$Top$1 arrangement$Top$1 = Arrangement.f4920c;
            Alignment.f8582a.getClass();
            BiasAlignment.Horizontal horizontal = Alignment.Companion.n;
            ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(arrangement$Top$1, horizontal, gapComposerH, 0);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierM);
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
            Function2 function2 = ComposeUiNode.Companion.f9644f;
            Updater.c(gapComposerH, columnMeasurePolicyA, function2);
            Function2 function3 = ComposeUiNode.Companion.f9643e;
            Updater.c(gapComposerH, persistentCompositionLocalMapU, function3);
            Integer numValueOf = Integer.valueOf(iHashCode);
            Function2 function4 = ComposeUiNode.Companion.g;
            Updater.c(gapComposerH, numValueOf, function4);
            Function1 function1 = ComposeUiNode.Companion.f9645h;
            Updater.b(gapComposerH, function1);
            Function2 function5 = ComposeUiNode.Companion.d;
            Updater.c(gapComposerH, modifierC, function5);
            gapComposer = gapComposerH;
            LVSkeletonKt.c(tr.d("ProductCellFullSkeleton", 1.0f), 0.8f, null, null, gapComposer, 54, 12);
            Modifier modifierL = PaddingKt.l(Modifier.Companion.f8607b, LVAppDesignKitTheme.l(gapComposer).d, LVAppDesignKitTheme.l(gapComposer).f48416e, LVAppDesignKitTheme.l(gapComposer).d, LVAppDesignKitTheme.l(gapComposer).d);
            ColumnMeasurePolicy columnMeasurePolicyA2 = ColumnKt.a(Arrangement.f(LVAppDesignKitTheme.l(gapComposer).f48415c), horizontal, gapComposer, 0);
            int iHashCode2 = Long.hashCode(gapComposer.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU2 = gapComposer.U();
            Modifier modifierC2 = ComposedModifierKt.c(gapComposer, modifierL);
            if (applier == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposer.B();
            if (gapComposer.S) {
                gapComposer.C(function0);
            } else {
                gapComposer.o();
            }
            Updater.c(gapComposer, columnMeasurePolicyA2, function2);
            Updater.c(gapComposer, persistentCompositionLocalMapU2, function3);
            cj.t(iHashCode2, gapComposer, function4, gapComposer, function1);
            LVSkeletonKt.a(SizeKt.s(tr.e(gapComposer, modifierC2, function5, "ProductCellFullSkeleton"), LVAppDesignKitTheme.d(gapComposer).E), null, null, gapComposer, 0);
            LVSkeletonKt.a(SizeKt.s(new DTFunctionNameModifier("ProductCellFullSkeleton"), LVAppDesignKitTheme.d(gapComposer).C), null, null, gapComposer, 0);
            gapComposer.Z(true);
            gapComposer.Z(true);
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new qe(modifier2, i2, 14);
        }
    }

    public static final void b(Modifier modifier, Composer composer, int i2) {
        if (modifier != null) {
            modifier = defpackage.a.e(modifier, "ProductCellReducedSkeleton");
        }
        GapComposer gapComposerH = composer.h(-788477527);
        int i3 = (gapComposerH.K(modifier) ? 4 : 2) | i2;
        if (gapComposerH.p(i3 & 1, (i3 & 3) != 2)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            LVSkeletonKt.c(PaddingKt.m(SizeKt.d(modifier, 1.0f), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48415c, 7), 0.8f, null, null, gapComposerH, 48, 12);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new qe(modifier, i2, 13);
        }
    }

    public static final void c(GridModes gridModes, Composer composer, int i2) {
        float f2;
        GapComposer gapComposerH = composer.h(2118515612);
        int i3 = (gapComposerH.K(gridModes) ? 4 : 2) | i2;
        if (gapComposerH.p(i3 & 1, (i3 & 3) != 2)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            if (Intrinsics.c(gridModes, GridModes.Full.f55430b)) {
                gapComposerH.L(79010245);
                f2 = LVAppDesignKitTheme.l(gapComposerH).f48416e;
                gapComposerH.Z(false);
            } else {
                if (!Intrinsics.c(gridModes, GridModes.Reduced.f55431b)) {
                    throw d21.u(gapComposerH, 79008055, false);
                }
                gapComposerH.L(79012420);
                f2 = LVAppDesignKitTheme.l(gapComposerH).f48415c;
                gapComposerH.Z(false);
            }
            Modifier modifierA = IntrinsicKt.a(tr.d("ProductLineGridSkeleton", 1.0f), IntrinsicSize.Max);
            Arrangement.SpacedAligned spacedAlignedF = Arrangement.f(f2);
            Alignment.f8582a.getClass();
            RowMeasurePolicy rowMeasurePolicyA = RowKt.a(spacedAlignedF, Alignment.Companion.f8591k, gapComposerH, 0);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierA);
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
            Modifier modifierC2 = SizeKt.c(RowScopeInstance.f5040a.a(new DTFunctionNameModifier("ProductLineGridSkeleton"), 1.0f, true), 1.0f);
            gapComposerH.L(-962608508);
            int i4 = gridModes.f55429a;
            for (int i5 = 0; i5 < i4; i5++) {
                if (gridModes.equals(GridModes.Full.f55430b)) {
                    gapComposerH.L(917320480);
                    a(modifierC2, gapComposerH, 0);
                    gapComposerH.Z(false);
                } else {
                    if (!gridModes.equals(GridModes.Reduced.f55431b)) {
                        throw d21.u(gapComposerH, 917318971, false);
                    }
                    gapComposerH.L(917323235);
                    b(modifierC2, gapComposerH, 0);
                    gapComposerH.Z(false);
                }
            }
            gapComposerH.Z(false);
            gapComposerH.Z(true);
            OpaqueKey opaqueKey2 = ComposerKt.f7940a;
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new fl0(i2, gridModes);
        }
    }

    public static final void d(LazyListScope lazyListScope, GridModes gridModes) {
        lazyListScope.getClass();
        gridModes.getClass();
        LazyListScope.j(lazyListScope, 20, null, null, new ComposableLambdaImpl(909614404, true, new e1(gridModes, 4)), 6);
    }
}
