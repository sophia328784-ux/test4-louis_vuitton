package com.vuitton.android.designkit.ui.theme.atoms;

import androidx.compose.animation.AnimationModifierKt;
import androidx.compose.animation.core.AnimateAsStateKt;
import androidx.compose.animation.core.FiniteAnimationSpec;
import androidx.compose.animation.core.TweenSpec;
import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowMeasurePolicy;
import androidx.compose.foundation.layout.RowScopeInstance;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.snapshots.SnapshotStateList;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.ClipKt;
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
import com.vuitton.android.designkit.ui.theme.atoms.LVProgressIndicatorKt;
import defpackage.a20;
import defpackage.c30;
import defpackage.hb;
import defpackage.kw;
import defpackage.md;
import defpackage.tr;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import net.rtccloud.sdk.Call;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002¨\u0006\u0004²\u0006\u000e\u0010\u0001\u001a\u00020\u00008\n@\nX\u008a\u008e\u0002²\u0006\f\u0010\u0003\u001a\u00020\u00028\nX\u008a\u0084\u0002"}, d2 = {"Landroidx/compose/ui/unit/IntSize;", "fullWidth", "Landroidx/compose/ui/unit/Dp;", "animatedWidth", "system"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class LVProgressIndicatorKt {
    public static final void a(Modifier modifier, final int i2, final int i3, int i4, final long j2, final long j3, final TweenSpec tweenSpec, Composer composer, final int i5) {
        int i6;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = defpackage.a.e(modifierE, "LVProgressIndicator-nBX6wN0");
        }
        GapComposer gapComposerH = composer.h(342975725);
        int i7 = (gapComposerH.K(modifierE) ? 4 : 2) | i5 | (gapComposerH.d(i2) ? 32 : 16) | (gapComposerH.d(i3) ? 256 : 128);
        if ((i5 & 3072) == 0) {
            i7 |= gapComposerH.d(i4) ? 2048 : 1024;
        }
        int i8 = i7 | (gapComposerH.e(j2) ? 16384 : 8192) | (gapComposerH.e(j3) ? 131072 : 65536) | (gapComposerH.y(tweenSpec) ? 1048576 : 524288);
        if (gapComposerH.p(i8 & 1, (599187 & i8) != 599186)) {
            gapComposerH.y0();
            if ((i5 & 1) != 0 && !gapComposerH.h0()) {
                gapComposerH.D();
            }
            gapComposerH.a0();
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            long jB = Color.b(1.0f, j2);
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (objX == composer$Companion$Empty$1) {
                IntSize.f11020b.getClass();
                objX = SnapshotStateKt.g(new IntSize(0L));
                gapComposerH.q(objX);
            }
            MutableState mutableState = (MutableState) objX;
            Modifier modifierA = ClipKt.a(modifierE, LVAppDesignKitTheme.j(gapComposerH).f48410b);
            RectangleShapeKt$RectangleShape$1 rectangleShapeKt$RectangleShape$1 = RectangleShapeKt.f8913a;
            Modifier modifierD = SizeKt.d(BackgroundKt.b(modifierA, j3, rectangleShapeKt$RectangleShape$1), 1.0f);
            Object objX2 = gapComposerH.x();
            if (objX2 == composer$Companion$Empty$1) {
                objX2 = new c30(5, mutableState);
                gapComposerH.q(objX2);
            }
            Modifier modifierA2 = OnGloballyPositionedModifierKt.a(modifierD, (Function1) objX2);
            Alignment.f8582a.getClass();
            MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8586e, false);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierA2);
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
            Updater.c(gapComposerH, measurePolicyD, ComposeUiNode.Companion.f9644f);
            Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
            Updater.c(gapComposerH, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
            Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
            Updater.c(gapComposerH, modifierC, ComposeUiNode.Companion.d);
            i6 = i4;
            float fK1 = ((Density) gapComposerH.k(CompositionLocalsKt.f10031h)).k1((int) (((IntSize) mutableState.getF10755b()).f11021a >> 32)) / i6;
            Dp.Companion companion = Dp.f11004c;
            BoxKt.a(BackgroundKt.b(SizeKt.f(SizeKt.s(new DTFunctionNameModifier("LVProgressIndicator-nBX6wN0"), (i2 * fK1) + ((Dp) AnimateAsStateKt.a(fK1 * (i3 - i2), tweenSpec, "", null, gapComposerH, ((i8 >> 15) & 112) | KyberEngine.KyberPolyBytes, 8).getF10755b()).f11006b), LVAppDesignKitTheme.d(gapComposerH).f48386e), jB, rectangleShapeKt$RectangleShape$1), gapComposerH, 0);
            gapComposerH.Z(true);
        } else {
            i6 = i4;
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            final int i9 = i6;
            final Modifier modifier2 = modifierE;
            recomposeScopeImplB0.d = new Function2() { // from class: a70
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    ((Integer) obj2).getClass();
                    LVProgressIndicatorKt.a(modifier2, i2, i3, i9, j2, j3, tweenSpec, (Composer) obj, RecomposeScopeImplKt.a(i5 | 1));
                    return Unit.f71739a;
                }
            };
        }
    }

    public static final void b(Modifier modifier, final int i2, final int i3, float f2, final long j2, long j3, final Long l, Function1 function1, Composer composer, final int i4) {
        final long j4;
        final Function1 function2;
        GapComposer gapComposer;
        float f3;
        long j5;
        Function1 function3;
        int i5;
        Object obj;
        boolean z;
        Modifier modifierE = modifier;
        int i6 = i3;
        if (modifierE != null) {
            modifierE = defpackage.a.e(modifierE, "LVProgressIndicatorV2-0cLKjW4");
        }
        GapComposer gapComposerH = composer.h(1357695135);
        long j6 = j2;
        int i7 = i4 | (gapComposerH.K(modifierE) ? 4 : 2) | (gapComposerH.d(i2) ? 256 : 128) | (gapComposerH.d(i6) ? 2048 : 1024) | 8192 | (gapComposerH.e(j6) ? 131072 : 65536) | 524288 | (gapComposerH.K(l) ? 8388608 : 4194304) | 33554432;
        if (gapComposerH.p(i7 & 1, (38347923 & i7) != 38347922)) {
            gapComposerH.y0();
            int i8 = i4 & 1;
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (i8 == 0 || gapComposerH.h0()) {
                f3 = LVAppDesignKitTheme.l(gapComposerH).f48415c;
                j5 = LVAppDesignKitTheme.c(gapComposerH).f48361b.n;
                boolean z2 = (i7 & 896) == 256;
                Object objX = gapComposerH.x();
                if (z2 || objX == composer$Companion$Empty$1) {
                    objX = new hb(i2, 14);
                    gapComposerH.q(objX);
                }
                function3 = (Function1) objX;
                i5 = i7 & (-238608385);
            } else {
                gapComposerH.D();
                i5 = i7 & (-238608385);
                f3 = f2;
                j5 = j3;
                function3 = function1;
            }
            gapComposerH.a0();
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            if (i2 < 0 || i2 >= i6) {
                md.n("targetStep must be between 0 and totalStepCount (not inclusive)");
                return;
            }
            if (i2 < 0) {
                md.n("initialStep must be between 0 and targetStep (inclusive)");
                return;
            }
            boolean z3 = l != null;
            Object objX2 = gapComposerH.x();
            if (objX2 == composer$Companion$Empty$1) {
                SnapshotStateList snapshotStateList = new SnapshotStateList();
                int i9 = 0;
                while (i9 < i6) {
                    snapshotStateList.add(new StepState.Idle(!z3 ? i9 > i2 : i9 >= 0));
                    i9++;
                    f3 = f3;
                }
                f2 = f3;
                gapComposerH.q(snapshotStateList);
                obj = snapshotStateList;
            } else {
                f2 = f3;
                obj = objX2;
            }
            SnapshotStateList snapshotStateList2 = (SnapshotStateList) obj;
            Modifier modifierF = SizeKt.f(modifierE, LVAppDesignKitTheme.d(gapComposerH).f48386e);
            Arrangement.SpacedAligned spacedAlignedF = Arrangement.f(f2);
            Alignment.f8582a.getClass();
            RowMeasurePolicy rowMeasurePolicyA = RowKt.a(spacedAlignedF, Alignment.Companion.f8591k, gapComposerH, 0);
            OpaqueKey opaqueKey2 = ComposerKt.f7940a;
            String str = "LVProgressIndicatorV2-0cLKjW4";
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierF);
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
            gapComposerH.L(991477729);
            int i10 = 0;
            GapComposer gapComposer2 = gapComposerH;
            while (i10 < i6) {
                String str2 = str;
                Modifier modifierC2 = SizeKt.c(RowScopeInstance.f5040a.a(new DTFunctionNameModifier(str2), 1.0f, true), 1.0f);
                FiniteAnimationSpec finiteAnimationSpec = (FiniteAnimationSpec) function3.invoke(Integer.valueOf(i10));
                StepState stepState = (StepState) snapshotStateList2.get(i10);
                boolean zD = ((i5 & 896) == 256) | gapComposer2.d(i10);
                Object objX3 = gapComposer2.x();
                if (zD || objX3 == composer$Companion$Empty$1) {
                    z = true;
                    objX3 = new a20(i10, i2, 1, snapshotStateList2);
                    gapComposer2.q(objX3);
                } else {
                    z = true;
                }
                GapComposer gapComposer3 = gapComposer2;
                str = str2;
                long j7 = j5;
                c(modifierC2, j6, j7, finiteAnimationSpec, stepState, (Function0) objX3, gapComposer3, (i5 >> 12) & 1008);
                i10++;
                i6 = i3;
                j6 = j2;
                composer$Companion$Empty$1 = composer$Companion$Empty$1;
                gapComposer2 = gapComposer3;
                j5 = j7;
            }
            long j8 = j5;
            GapComposer gapComposer4 = gapComposer2;
            Composer$Companion$Empty$1 composer$Companion$Empty$2 = composer$Companion$Empty$1;
            gapComposer4.Z(false);
            gapComposer4.Z(true);
            if (z3) {
                gapComposer4.L(1391208978);
                Unit unit = Unit.f71739a;
                boolean z4 = (29360128 & i5) == 8388608;
                Object objX4 = gapComposer4.x();
                if (z4 || objX4 == composer$Companion$Empty$2) {
                    objX4 = new LVProgressIndicatorKt$LVProgressIndicatorV2$5$1(l, snapshotStateList2, null);
                    gapComposer4.q(objX4);
                }
                EffectsKt.e(gapComposer4, unit, (Function2) objX4);
                gapComposer4.Z(false);
            } else {
                gapComposer4.L(1391379075);
                gapComposer4.Z(false);
            }
            OpaqueKey opaqueKey3 = ComposerKt.f7940a;
            function2 = function3;
            j4 = j8;
            gapComposer = gapComposer4;
        } else {
            GapComposer gapComposer5 = gapComposerH;
            gapComposer5.D();
            j4 = j3;
            function2 = function1;
            gapComposer = gapComposer5;
        }
        final float f4 = f2;
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            final Modifier modifier2 = modifierE;
            recomposeScopeImplB0.d = new Function2(i2, i3, f4, j2, j4, l, function2, i4) { // from class: z60

                /* JADX INFO: renamed from: c, reason: collision with root package name */
                public final /* synthetic */ int f81552c;
                public final /* synthetic */ int d;

                /* JADX INFO: renamed from: e, reason: collision with root package name */
                public final /* synthetic */ float f81553e;

                /* JADX INFO: renamed from: f, reason: collision with root package name */
                public final /* synthetic */ long f81554f;
                public final /* synthetic */ long g;

                /* JADX INFO: renamed from: h, reason: collision with root package name */
                public final /* synthetic */ Long f81555h;

                /* JADX INFO: renamed from: i, reason: collision with root package name */
                public final /* synthetic */ Function1 f81556i;

                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj2, Object obj3) {
                    ((Integer) obj3).getClass();
                    int iA = RecomposeScopeImplKt.a(49);
                    LVProgressIndicatorKt.b(this.f81551b, this.f81552c, this.d, this.f81553e, this.f81554f, this.g, this.f81555h, this.f81556i, (Composer) obj2, iA);
                    return Unit.f71739a;
                }
            };
        }
    }

    /* JADX WARN: Code duplicated, block: B:84:0x0160  */
    public static final void c(Modifier modifier, final long j2, final long j3, final FiniteAnimationSpec finiteAnimationSpec, final StepState stepState, final Function0 function0, Composer composer, final int i2) {
        int i3;
        Modifier modifierD;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = defpackage.a.e(modifierE, "StepV2-qi6gXK8");
        }
        GapComposer gapComposerH = composer.h(-260131442);
        if ((i2 & 6) == 0) {
            i3 = (gapComposerH.K(modifierE) ? 4 : 2) | i2;
        } else {
            i3 = i2;
        }
        if ((i2 & 48) == 0) {
            i3 |= gapComposerH.e(j2) ? 32 : 16;
        }
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i3 |= gapComposerH.e(j3) ? 256 : 128;
        }
        if ((i2 & 3072) == 0) {
            i3 |= gapComposerH.y(finiteAnimationSpec) ? 2048 : 1024;
        }
        if ((i2 & 24576) == 0) {
            i3 |= (32768 & i2) == 0 ? gapComposerH.K(stepState) : gapComposerH.y(stepState) ? 16384 : 8192;
        }
        if ((196608 & i2) == 0) {
            i3 |= gapComposerH.y(function0) ? 131072 : 65536;
        }
        if (gapComposerH.p(i3 & 1, (74899 & i3) != 74898)) {
            gapComposerH.y0();
            if ((i2 & 1) != 0 && !gapComposerH.h0()) {
                gapComposerH.D();
            }
            gapComposerH.a0();
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Modifier modifierA = ClipKt.a(modifierE, LVAppDesignKitTheme.j(gapComposerH).f48410b);
            RectangleShapeKt$RectangleShape$1 rectangleShapeKt$RectangleShape$1 = RectangleShapeKt.f8913a;
            Modifier modifierO = BackgroundKt.b(modifierA, j3, rectangleShapeKt$RectangleShape$1).o(SizeKt.f5052c);
            Alignment.f8582a.getClass();
            MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierO);
            ComposeUiNode.b0.getClass();
            Function0 function1 = ComposeUiNode.Companion.f9641b;
            if (gapComposerH.f7976a == null) {
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
            Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
            Updater.c(gapComposerH, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
            Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
            DTFunctionNameModifier dTFunctionNameModifierE = tr.e(gapComposerH, modifierC, ComposeUiNode.Companion.d, "StepV2-qi6gXK8");
            boolean z = (458752 & i3) == 131072;
            Object objX = gapComposerH.x();
            if (z || objX == Composer.Companion.f7939a) {
                objX = new kw(function0, 8);
                gapComposerH.q(objX);
            }
            Modifier modifierA2 = AnimationModifierKt.a(dTFunctionNameModifierE, finiteAnimationSpec, (Function2) objX);
            if (stepState instanceof StepState.Animating) {
                modifierD = tr.d("StepV2-qi6gXK8", 1.0f);
            } else {
                stepState.getClass();
                if (((StepState.Idle) stepState).f48518a) {
                    modifierD = tr.d("StepV2-qi6gXK8", 1.0f);
                } else {
                    DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier("StepV2-qi6gXK8");
                    Dp.Companion companion = Dp.f11004c;
                    modifierD = SizeKt.s(dTFunctionNameModifier, Call.Parameters.DEFAULT_CAMERA_ZOOM);
                }
            }
            BoxKt.a(BackgroundKt.b(SizeKt.c(modifierA2.o(modifierD), 1.0f), j2, rectangleShapeKt$RectangleShape$1), gapComposerH, 0);
            gapComposerH.Z(true);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            final Modifier modifier2 = modifierE;
            recomposeScopeImplB0.d = new Function2() { // from class: com.vuitton.android.designkit.ui.theme.atoms.b
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    ((Integer) obj2).getClass();
                    LVProgressIndicatorKt.c(modifier2, j2, j3, finiteAnimationSpec, stepState, function0, (Composer) obj, RecomposeScopeImplKt.a(i2 | 1));
                    return Unit.f71739a;
                }
            };
        }
    }
}
