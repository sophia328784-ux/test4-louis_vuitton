package com.vuitton.android.presentation.compose.components;

import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowMeasurePolicy;
import androidx.compose.foundation.layout.RowScopeInstance;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.pager.PagerState;
import androidx.compose.runtime.Applier;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.RectangleShapeKt;
import androidx.compose.ui.graphics.RectangleShapeKt$RectangleShape$1;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.layout.OnGloballyPositionedModifierKt;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.unit.IntSize;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.presentation.compose.components.LVPagerLineIndicatorKt;
import defpackage.c30;
import defpackage.cj;
import defpackage.u60;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import net.rtccloud.sdk.Call;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\b\n\u0002\u0018\u0002\n\u0002\b\u0002¨\u0006\u0002²\u0006\u000e\u0010\u0001\u001a\u00020\u00008\n@\nX\u008a\u008e\u0002"}, d2 = {"Landroidx/compose/ui/unit/IntSize;", "fullWidth", "presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class LVPagerLineIndicatorKt {
    public static final void a(final PagerState pagerState, final int i2, Modifier modifier, long j2, long j3, float f2, Composer composer, final int i3, final int i4) {
        int i5;
        long j4;
        final float f3;
        final Modifier modifier2;
        int i6;
        long j5;
        long j6;
        float f4;
        int i7;
        RectangleShapeKt$RectangleShape$1 rectangleShapeKt$RectangleShape$1;
        Modifier dTFunctionNameModifier = modifier;
        if (dTFunctionNameModifier != null) {
            dTFunctionNameModifier = defpackage.a.e(dTFunctionNameModifier, "LVPagerLineIndicator-2poqoh4");
        }
        pagerState.getClass();
        GapComposer gapComposerH = composer.h(406357553);
        Applier applier = gapComposerH.f7976a;
        if ((i3 & 6) == 0) {
            i5 = (gapComposerH.K(pagerState) ? 4 : 2) | i3;
        } else {
            i5 = i3;
        }
        if ((i3 & 48) == 0) {
            i5 |= gapComposerH.d(i2) ? 32 : 16;
        }
        int i8 = i4 & 4;
        if (i8 != 0) {
            i5 |= KyberEngine.KyberPolyBytes;
        } else if ((i3 & KyberEngine.KyberPolyBytes) == 0) {
            i5 |= gapComposerH.K(dTFunctionNameModifier) ? 256 : 128;
        }
        if ((i3 & 3072) == 0) {
            i5 |= 1024;
        }
        int i9 = i5 | 24576;
        if ((196608 & i3) == 0) {
            i9 = 90112 | i5;
        }
        if (gapComposerH.p(i9 & 1, (74899 & i9) != 74898)) {
            gapComposerH.y0();
            if ((i3 & 1) == 0 || gapComposerH.h0()) {
                if (i8 != 0) {
                    dTFunctionNameModifier = new DTFunctionNameModifier("LVPagerLineIndicator-2poqoh4");
                }
                i6 = 32;
                j5 = LVAppDesignKitTheme.c(gapComposerH).f48361b.u;
                Color.f8866b.getClass();
                j6 = Color.f8870h;
                f4 = LVAppDesignKitTheme.d(gapComposerH).d;
                i7 = i9 & (-465921);
            } else {
                gapComposerH.D();
                j5 = j2;
                j6 = j3;
                i7 = i9 & (-465921);
                i6 = 32;
                f4 = f2;
            }
            gapComposerH.a0();
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            int i10 = i7;
            long jB = Color.b(1.0f, j5);
            Alignment.f8582a.getClass();
            MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8586e, false);
            j3 = j6;
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, dTFunctionNameModifier);
            ComposeUiNode.b0.getClass();
            Modifier modifier3 = dTFunctionNameModifier;
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
            Updater.c(gapComposerH, measurePolicyD, function2);
            Function2 function3 = ComposeUiNode.Companion.f9643e;
            Updater.c(gapComposerH, persistentCompositionLocalMapU, function3);
            Integer numValueOf = Integer.valueOf(iHashCode);
            Function2 function4 = ComposeUiNode.Companion.g;
            Updater.c(gapComposerH, numValueOf, function4);
            Function1 function1 = ComposeUiNode.Companion.f9645h;
            Updater.b(gapComposerH, function1);
            Function2 function5 = ComposeUiNode.Companion.d;
            Updater.c(gapComposerH, modifierC, function5);
            Object objX = gapComposerH.x();
            j4 = j5;
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (objX == composer$Companion$Empty$1) {
                IntSize.f11020b.getClass();
                objX = SnapshotStateKt.g(new IntSize(0L));
                gapComposerH.q(objX);
            }
            MutableState mutableState = (MutableState) objX;
            float fK1 = ((Density) gapComposerH.k(CompositionLocalsKt.f10031h)).k1((int) (((IntSize) mutableState.getF10755b()).f11021a >> i6)) / i2;
            Dp.Companion companion = Dp.f11004c;
            DTFunctionNameModifier dTFunctionNameModifier2 = new DTFunctionNameModifier("LVPagerLineIndicator-2poqoh4");
            Object objX2 = gapComposerH.x();
            if (objX2 == composer$Companion$Empty$1) {
                objX2 = new c30(4, mutableState);
                gapComposerH.q(objX2);
            }
            Modifier modifierA = OnGloballyPositionedModifierKt.a(dTFunctionNameModifier2, (Function1) objX2);
            RowMeasurePolicy rowMeasurePolicyA = RowKt.a(Arrangement.f4918a, Alignment.Companion.l, gapComposerH, 48);
            int iHashCode2 = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU2 = gapComposerH.U();
            Modifier modifierC2 = ComposedModifierKt.c(gapComposerH, modifierA);
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
            Updater.c(gapComposerH, rowMeasurePolicyA, function2);
            Updater.c(gapComposerH, persistentCompositionLocalMapU2, function3);
            cj.t(iHashCode2, gapComposerH, function4, gapComposerH, function1);
            Updater.c(gapComposerH, modifierC2, function5);
            int iK = pagerState.k();
            float fL = pagerState.l();
            Modifier modifierF = SizeKt.f(RowScopeInstance.f5040a.a(new DTFunctionNameModifier("LVPagerLineIndicator-2poqoh4"), 1.0f, true), f4);
            gapComposerH.L(104403996);
            int i11 = 0;
            while (true) {
                rectangleShapeKt$RectangleShape$1 = RectangleShapeKt.f8913a;
                if (i11 >= i2) {
                    break;
                }
                BoxKt.a(modifierF.o(BackgroundKt.b(new DTFunctionNameModifier("LVPagerLineIndicator-2poqoh4"), (i11 < iK || (i11 == iK && fL >= Call.Parameters.DEFAULT_CAMERA_ZOOM)) ? jB : j3, rectangleShapeKt$RectangleShape$1)), gapComposerH, 0);
                i11++;
            }
            gapComposerH.Z(false);
            gapComposerH.Z(true);
            DTFunctionNameModifier dTFunctionNameModifier3 = new DTFunctionNameModifier("LVPagerLineIndicator-2poqoh4");
            boolean zC = ((i10 & 112) == i6) | ((i10 & 14) == 4) | gapComposerH.c(fK1);
            Object objX3 = gapComposerH.x();
            if (zC || objX3 == composer$Companion$Empty$1) {
                objX3 = new u60(i2, fK1, pagerState);
                gapComposerH.q(objX3);
            }
            BoxKt.a(BackgroundKt.b(SizeKt.f(SizeKt.s(OffsetKt.a(dTFunctionNameModifier3, (Function1) objX3), fK1), f4), jB, rectangleShapeKt$RectangleShape$1), gapComposerH, 0);
            gapComposerH.Z(true);
            OpaqueKey opaqueKey2 = ComposerKt.f7940a;
            f3 = f4;
            modifier2 = modifier3;
        } else {
            gapComposerH.D();
            j4 = j2;
            f3 = f2;
            modifier2 = dTFunctionNameModifier;
        }
        final long j7 = j3;
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            final long j8 = j4;
            recomposeScopeImplB0.d = new Function2() { // from class: v60
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    ((Integer) obj2).getClass();
                    LVPagerLineIndicatorKt.a(pagerState, i2, modifier2, j8, j7, f3, (Composer) obj, RecomposeScopeImplKt.a(i3 | 1), i4);
                    return Unit.f71739a;
                }
            };
        }
    }
}
