package androidx.compose.material3;

import androidx.compose.animation.core.TweenSpec;
import androidx.compose.foundation.gestures.AnchoredDraggableDefaults;
import androidx.compose.foundation.gestures.AnchoredDraggableKt;
import androidx.compose.foundation.gestures.AnchoredDraggableState;
import androidx.compose.foundation.gestures.Orientation;
import androidx.compose.foundation.gestures.TargetedFlingBehavior;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.Arrangement$Start$1;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScopeInstance;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowMeasurePolicy;
import androidx.compose.foundation.layout.RowScopeInstance;
import androidx.compose.material3.internal.DraggableAnchorsKt;
import androidx.compose.runtime.Applier;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.BiasAlignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.unit.Dp;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import defpackage.l01;
import defpackage.z3;
import defpackage.zv;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"material3"}, k = 2, mv = {2, 0, 0}, xi = 48)
public abstract class SwipeToDismissBoxKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final float f7342a;

    static {
        Dp.Companion companion = Dp.f11004c;
        f7342a = 125.0f;
    }

    /* JADX WARN: Code duplicated, block: B:100:0x01fd  */
    /* JADX WARN: Code duplicated, block: B:103:0x020a  */
    /* JADX WARN: Code duplicated, block: B:106:0x020f  */
    /* JADX WARN: Code duplicated, block: B:110:0x0240  */
    /* JADX WARN: Code duplicated, block: B:112:0x0249  */
    /* JADX WARN: Code duplicated, block: B:113:0x024d  */
    /* JADX WARN: Code duplicated, block: B:116:0x025a  */
    /* JADX WARN: Code duplicated, block: B:118:0x0268  */
    /* JADX WARN: Code duplicated, block: B:121:0x029a  */
    /* JADX WARN: Code duplicated, block: B:122:0x029c  */
    /* JADX WARN: Code duplicated, block: B:125:0x02a4 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:128:0x02aa  */
    /* JADX WARN: Code duplicated, block: B:130:0x02be  */
    /* JADX WARN: Code duplicated, block: B:132:0x02c4  */
    /* JADX WARN: Code duplicated, block: B:84:0x01a4  */
    /* JADX WARN: Code duplicated, block: B:86:0x01ad  */
    /* JADX WARN: Code duplicated, block: B:87:0x01b1  */
    /* JADX WARN: Code duplicated, block: B:92:0x01cc  */
    /* JADX WARN: Code duplicated, block: B:95:0x01f0  */
    /* JADX WARN: Code duplicated, block: B:96:0x01f2  */
    /* JADX WARN: Code duplicated, block: B:99:0x01fb  */
    public static final void a(SwipeToDismissBoxState swipeToDismissBoxState, Function3 function3, Modifier modifier, boolean z, boolean z2, Function1 function1, ComposableLambdaImpl composableLambdaImpl, Composer composer, int i2) {
        int i3;
        Modifier modifier2;
        ComposableLambdaImpl composableLambdaImpl2;
        boolean z3;
        Function1 function2;
        int i4;
        Composer$Companion$Empty$1 composer$Companion$Empty$1;
        Function2 function4;
        int i5;
        Arrangement$Start$1 arrangement$Start$1;
        BiasAlignment.Vertical vertical;
        RowMeasurePolicy rowMeasurePolicyA;
        int iG;
        PersistentCompositionLocalMap persistentCompositionLocalMapU;
        Modifier modifierC;
        RowScopeInstance rowScopeInstance;
        boolean z4;
        boolean z5;
        boolean zY;
        Object objX;
        Composer$Companion$Empty$1 composer$Companion$Empty$2;
        int i6;
        RowMeasurePolicy rowMeasurePolicyA2;
        int iG2;
        PersistentCompositionLocalMap persistentCompositionLocalMapU2;
        Modifier modifierC2;
        int i7;
        boolean z6;
        boolean z7;
        Object objX2;
        Function1 function5;
        Modifier modifierE = modifier;
        AnchoredDraggableState anchoredDraggableState = swipeToDismissBoxState.f7346a;
        if (modifierE != null) {
            modifierE = defpackage.a.e(modifierE, "SwipeToDismissBox");
        }
        GapComposer gapComposerH = composer.h(-741495334);
        Applier applier = gapComposerH.f7976a;
        if ((i2 & 6) == 0) {
            i3 = (gapComposerH.y(swipeToDismissBoxState) ? 4 : 2) | i2;
        } else {
            i3 = i2;
        }
        if ((i2 & 48) == 0) {
            i3 |= gapComposerH.y(function3) ? 32 : 16;
        }
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i3 |= gapComposerH.K(modifierE) ? 256 : 128;
        }
        if ((i2 & 3072) == 0) {
            i3 |= gapComposerH.b(true) ? 2048 : 1024;
        }
        if ((i2 & 24576) == 0) {
            i3 |= gapComposerH.b(z) ? 16384 : 8192;
        }
        int i8 = i3 | 1769472;
        if ((12582912 & i2) == 0) {
            i8 |= gapComposerH.y(composableLambdaImpl) ? 8388608 : 4194304;
        }
        if (gapComposerH.p(i8 & 1, (4793491 & i8) != 4793490)) {
            Object objX3 = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$3 = Composer.Companion.f7939a;
            if (objX3 == composer$Companion$Empty$3) {
                objX3 = new l01(22);
                gapComposerH.q(objX3);
            }
            Function1 function6 = (Function1) objX3;
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Orientation orientation = Orientation.Horizontal;
            boolean z8 = ((SwipeToDismissBoxValue) ((SnapshotMutableStateImpl) anchoredDraggableState.f4402h).getF10755b()) == SwipeToDismissBoxValue.Settled;
            TargetedFlingBehavior targetedFlingBehaviorA = null;
            if (swipeToDismissBoxState.f7347b != null) {
                gapComposerH.L(387581105);
                TweenSpec tweenSpec = AnchoredDraggableDefaults.f4336a;
                int i9 = i8;
                AnchoredDraggableState anchoredDraggableState2 = swipeToDismissBoxState.f7346a;
                Function1 function7 = swipeToDismissBoxState.f7347b;
                if (function7 == null) {
                    Intrinsics.h("positionalThreshold");
                    throw null;
                }
                i4 = i9;
                composer$Companion$Empty$1 = composer$Companion$Empty$3;
                targetedFlingBehaviorA = AnchoredDraggableDefaults.a(anchoredDraggableState2, function7, null, gapComposerH, AnchoredDraggableDefaults.d << 9, 4);
                gapComposerH.Z(false);
            } else {
                i4 = i8;
                composer$Companion$Empty$1 = composer$Companion$Empty$3;
                gapComposerH.L(-869685853);
                gapComposerH.Z(false);
            }
            Modifier modifierE2 = AnchoredDraggableKt.e(modifierE, anchoredDraggableState, r28, z8, targetedFlingBehaviorA);
            Alignment.f8582a.getClass();
            MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, true);
            int iG3 = gapComposerH.G();
            PersistentCompositionLocalMap persistentCompositionLocalMapU3 = gapComposerH.U();
            Modifier modifierC3 = ComposedModifierKt.c(gapComposerH, modifierE2);
            ComposeUiNode.b0.getClass();
            Function0 function0 = ComposeUiNode.Companion.f9641b;
            if (applier == 0) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function0);
            } else {
                gapComposerH.o();
            }
            Function2 function8 = ComposeUiNode.Companion.f9644f;
            Updater.c(gapComposerH, measurePolicyD, function8);
            Function2 function9 = ComposeUiNode.Companion.f9643e;
            Updater.c(gapComposerH, persistentCompositionLocalMapU3, function9);
            Function2 function10 = ComposeUiNode.Companion.g;
            if (gapComposerH.S) {
                modifier2 = modifierE;
            } else {
                modifier2 = modifierE;
                if (!Intrinsics.c(gapComposerH.x(), Integer.valueOf(iG3))) {
                }
                function4 = ComposeUiNode.Companion.d;
                Updater.c(gapComposerH, modifierC3, function4);
                Modifier modifierJ = BoxScopeInstance.f4938a.j(new DTFunctionNameModifier("SwipeToDismissBox"));
                i5 = (i4 << 6) & 7168;
                arrangement$Start$1 = Arrangement.f4918a;
                vertical = Alignment.Companion.f8591k;
                rowMeasurePolicyA = RowKt.a(arrangement$Start$1, vertical, gapComposerH, 0);
                iG = gapComposerH.G();
                persistentCompositionLocalMapU = gapComposerH.U();
                modifierC = ComposedModifierKt.c(gapComposerH, modifierJ);
                if (applier != 0) {
                    ComposablesKt.b();
                    throw null;
                }
                gapComposerH.B();
                if (gapComposerH.S) {
                    gapComposerH.C(function0);
                } else {
                    gapComposerH.o();
                }
                Updater.c(gapComposerH, rowMeasurePolicyA, function8);
                Updater.c(gapComposerH, persistentCompositionLocalMapU, function9);
                if (gapComposerH.S || !Intrinsics.c(gapComposerH.x(), Integer.valueOf(iG))) {
                    defpackage.a.t(iG, gapComposerH, iG, function10);
                }
                Updater.c(gapComposerH, modifierC, function4);
                Integer numValueOf = Integer.valueOf(((i5 >> 6) & 112) | 6);
                rowScopeInstance = RowScopeInstance.f5040a;
                function3.A(rowScopeInstance, gapComposerH, numValueOf);
                gapComposerH.Z(true);
                DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier("SwipeToDismissBox");
                if ((i4 & 7168) == 2048) {
                    z4 = true;
                } else {
                    z4 = false;
                }
                if ((57344 & i4) == 16384) {
                    z5 = true;
                } else {
                    z5 = false;
                }
                zY = z5 | z4 | gapComposerH.y(swipeToDismissBoxState);
                objX = gapComposerH.x();
                if (zY) {
                    composer$Companion$Empty$2 = composer$Companion$Empty$1;
                } else {
                    composer$Companion$Empty$2 = composer$Companion$Empty$1;
                    if (objX == composer$Companion$Empty$2) {
                    }
                    Modifier modifierA = DraggableAnchorsKt.a(dTFunctionNameModifier, anchoredDraggableState, orientation, (Function2) objX);
                    i6 = (i4 >> 12) & 7168;
                    rowMeasurePolicyA2 = RowKt.a(arrangement$Start$1, vertical, gapComposerH, 0);
                    iG2 = gapComposerH.G();
                    persistentCompositionLocalMapU2 = gapComposerH.U();
                    modifierC2 = ComposedModifierKt.c(gapComposerH, modifierA);
                    if (applier != null) {
                        ComposablesKt.b();
                        throw null;
                    }
                    gapComposerH.B();
                    i7 = i4;
                    if (gapComposerH.S) {
                        gapComposerH.C(function0);
                    } else {
                        gapComposerH.o();
                    }
                    Updater.c(gapComposerH, rowMeasurePolicyA2, function8);
                    Updater.c(gapComposerH, persistentCompositionLocalMapU2, function9);
                    if (gapComposerH.S || !Intrinsics.c(gapComposerH.x(), Integer.valueOf(iG2))) {
                        defpackage.a.t(iG2, gapComposerH, iG2, function10);
                    }
                    Updater.c(gapComposerH, modifierC2, function4);
                    composableLambdaImpl2 = composableLambdaImpl;
                    composableLambdaImpl2.A(rowScopeInstance, gapComposerH, Integer.valueOf(((i6 >> 6) & 112) | 6));
                    gapComposerH.Z(true);
                    gapComposerH.Z(true);
                    SwipeToDismissBoxValue swipeToDismissBoxValue = (SwipeToDismissBoxValue) ((SnapshotMutableStateImpl) anchoredDraggableState.f4402h).getF10755b();
                    boolean zY2 = gapComposerH.y(swipeToDismissBoxState);
                    if ((i7 & 3670016) == 1048576) {
                        z6 = true;
                    } else {
                        z6 = false;
                    }
                    z7 = zY2 | z6;
                    objX2 = gapComposerH.x();
                    if (!z7 || objX2 == composer$Companion$Empty$2) {
                        function5 = function6;
                        objX2 = new SwipeToDismissBoxKt$SwipeToDismissBox$3$1(swipeToDismissBoxState, function5, null);
                        gapComposerH.q(objX2);
                    } else {
                        function5 = function6;
                    }
                    EffectsKt.g(swipeToDismissBoxValue, function5, (Function2) objX2, gapComposerH);
                    function2 = function5;
                    z3 = true;
                }
                objX = new z3(swipeToDismissBoxState, z, 13);
                gapComposerH.q(objX);
                Modifier modifierA2 = DraggableAnchorsKt.a(dTFunctionNameModifier, anchoredDraggableState, orientation, (Function2) objX);
                i6 = (i4 >> 12) & 7168;
                rowMeasurePolicyA2 = RowKt.a(arrangement$Start$1, vertical, gapComposerH, 0);
                iG2 = gapComposerH.G();
                persistentCompositionLocalMapU2 = gapComposerH.U();
                modifierC2 = ComposedModifierKt.c(gapComposerH, modifierA2);
                if (applier != null) {
                    ComposablesKt.b();
                    throw null;
                }
                gapComposerH.B();
                i7 = i4;
                if (gapComposerH.S) {
                    gapComposerH.C(function0);
                } else {
                    gapComposerH.o();
                }
                Updater.c(gapComposerH, rowMeasurePolicyA2, function8);
                Updater.c(gapComposerH, persistentCompositionLocalMapU2, function9);
                if (gapComposerH.S) {
                    defpackage.a.t(iG2, gapComposerH, iG2, function10);
                } else {
                    defpackage.a.t(iG2, gapComposerH, iG2, function10);
                }
                Updater.c(gapComposerH, modifierC2, function4);
                composableLambdaImpl2 = composableLambdaImpl;
                composableLambdaImpl2.A(rowScopeInstance, gapComposerH, Integer.valueOf(((i6 >> 6) & 112) | 6));
                gapComposerH.Z(true);
                gapComposerH.Z(true);
                SwipeToDismissBoxValue swipeToDismissBoxValue2 = (SwipeToDismissBoxValue) ((SnapshotMutableStateImpl) anchoredDraggableState.f4402h).getF10755b();
                boolean zY3 = gapComposerH.y(swipeToDismissBoxState);
                if ((i7 & 3670016) == 1048576) {
                    z6 = true;
                } else {
                    z6 = false;
                }
                z7 = zY3 | z6;
                objX2 = gapComposerH.x();
                if (z7) {
                    function5 = function6;
                    objX2 = new SwipeToDismissBoxKt$SwipeToDismissBox$3$1(swipeToDismissBoxState, function5, null);
                    gapComposerH.q(objX2);
                } else {
                    function5 = function6;
                    objX2 = new SwipeToDismissBoxKt$SwipeToDismissBox$3$1(swipeToDismissBoxState, function5, null);
                    gapComposerH.q(objX2);
                }
                EffectsKt.g(swipeToDismissBoxValue2, function5, (Function2) objX2, gapComposerH);
                function2 = function5;
                z3 = true;
            }
            defpackage.a.t(iG3, gapComposerH, iG3, function10);
            function4 = ComposeUiNode.Companion.d;
            Updater.c(gapComposerH, modifierC3, function4);
            Modifier modifierJ2 = BoxScopeInstance.f4938a.j(new DTFunctionNameModifier("SwipeToDismissBox"));
            i5 = (i4 << 6) & 7168;
            arrangement$Start$1 = Arrangement.f4918a;
            vertical = Alignment.Companion.f8591k;
            rowMeasurePolicyA = RowKt.a(arrangement$Start$1, vertical, gapComposerH, 0);
            iG = gapComposerH.G();
            persistentCompositionLocalMapU = gapComposerH.U();
            modifierC = ComposedModifierKt.c(gapComposerH, modifierJ2);
            if (applier != 0) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function0);
            } else {
                gapComposerH.o();
            }
            Updater.c(gapComposerH, rowMeasurePolicyA, function8);
            Updater.c(gapComposerH, persistentCompositionLocalMapU, function9);
            if (gapComposerH.S) {
                defpackage.a.t(iG, gapComposerH, iG, function10);
            } else {
                defpackage.a.t(iG, gapComposerH, iG, function10);
            }
            Updater.c(gapComposerH, modifierC, function4);
            Integer numValueOf2 = Integer.valueOf(((i5 >> 6) & 112) | 6);
            rowScopeInstance = RowScopeInstance.f5040a;
            function3.A(rowScopeInstance, gapComposerH, numValueOf2);
            gapComposerH.Z(true);
            DTFunctionNameModifier dTFunctionNameModifier2 = new DTFunctionNameModifier("SwipeToDismissBox");
            if ((i4 & 7168) == 2048) {
                z4 = true;
            } else {
                z4 = false;
            }
            if ((57344 & i4) == 16384) {
                z5 = true;
            } else {
                z5 = false;
            }
            zY = z5 | z4 | gapComposerH.y(swipeToDismissBoxState);
            objX = gapComposerH.x();
            if (zY) {
                composer$Companion$Empty$2 = composer$Companion$Empty$1;
                if (objX == composer$Companion$Empty$2) {
                }
                Modifier modifierA3 = DraggableAnchorsKt.a(dTFunctionNameModifier2, anchoredDraggableState, orientation, (Function2) objX);
                i6 = (i4 >> 12) & 7168;
                rowMeasurePolicyA2 = RowKt.a(arrangement$Start$1, vertical, gapComposerH, 0);
                iG2 = gapComposerH.G();
                persistentCompositionLocalMapU2 = gapComposerH.U();
                modifierC2 = ComposedModifierKt.c(gapComposerH, modifierA3);
                if (applier != null) {
                    ComposablesKt.b();
                    throw null;
                }
                gapComposerH.B();
                i7 = i4;
                if (gapComposerH.S) {
                    gapComposerH.C(function0);
                } else {
                    gapComposerH.o();
                }
                Updater.c(gapComposerH, rowMeasurePolicyA2, function8);
                Updater.c(gapComposerH, persistentCompositionLocalMapU2, function9);
                if (gapComposerH.S) {
                    defpackage.a.t(iG2, gapComposerH, iG2, function10);
                } else {
                    defpackage.a.t(iG2, gapComposerH, iG2, function10);
                }
                Updater.c(gapComposerH, modifierC2, function4);
                composableLambdaImpl2 = composableLambdaImpl;
                composableLambdaImpl2.A(rowScopeInstance, gapComposerH, Integer.valueOf(((i6 >> 6) & 112) | 6));
                gapComposerH.Z(true);
                gapComposerH.Z(true);
                SwipeToDismissBoxValue swipeToDismissBoxValue3 = (SwipeToDismissBoxValue) ((SnapshotMutableStateImpl) anchoredDraggableState.f4402h).getF10755b();
                boolean zY4 = gapComposerH.y(swipeToDismissBoxState);
                if ((i7 & 3670016) == 1048576) {
                    z6 = true;
                } else {
                    z6 = false;
                }
                z7 = zY4 | z6;
                objX2 = gapComposerH.x();
                if (z7) {
                    function5 = function6;
                    objX2 = new SwipeToDismissBoxKt$SwipeToDismissBox$3$1(swipeToDismissBoxState, function5, null);
                    gapComposerH.q(objX2);
                } else {
                    function5 = function6;
                    objX2 = new SwipeToDismissBoxKt$SwipeToDismissBox$3$1(swipeToDismissBoxState, function5, null);
                    gapComposerH.q(objX2);
                }
                EffectsKt.g(swipeToDismissBoxValue3, function5, (Function2) objX2, gapComposerH);
                function2 = function5;
                z3 = true;
            } else {
                composer$Companion$Empty$2 = composer$Companion$Empty$1;
            }
            objX = new z3(swipeToDismissBoxState, z, 13);
            gapComposerH.q(objX);
            Modifier modifierA4 = DraggableAnchorsKt.a(dTFunctionNameModifier2, anchoredDraggableState, orientation, (Function2) objX);
            i6 = (i4 >> 12) & 7168;
            rowMeasurePolicyA2 = RowKt.a(arrangement$Start$1, vertical, gapComposerH, 0);
            iG2 = gapComposerH.G();
            persistentCompositionLocalMapU2 = gapComposerH.U();
            modifierC2 = ComposedModifierKt.c(gapComposerH, modifierA4);
            if (applier != null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            i7 = i4;
            if (gapComposerH.S) {
                gapComposerH.C(function0);
            } else {
                gapComposerH.o();
            }
            Updater.c(gapComposerH, rowMeasurePolicyA2, function8);
            Updater.c(gapComposerH, persistentCompositionLocalMapU2, function9);
            if (gapComposerH.S) {
                defpackage.a.t(iG2, gapComposerH, iG2, function10);
            } else {
                defpackage.a.t(iG2, gapComposerH, iG2, function10);
            }
            Updater.c(gapComposerH, modifierC2, function4);
            composableLambdaImpl2 = composableLambdaImpl;
            composableLambdaImpl2.A(rowScopeInstance, gapComposerH, Integer.valueOf(((i6 >> 6) & 112) | 6));
            gapComposerH.Z(true);
            gapComposerH.Z(true);
            SwipeToDismissBoxValue swipeToDismissBoxValue4 = (SwipeToDismissBoxValue) ((SnapshotMutableStateImpl) anchoredDraggableState.f4402h).getF10755b();
            boolean zY5 = gapComposerH.y(swipeToDismissBoxState);
            if ((i7 & 3670016) == 1048576) {
                z6 = true;
            } else {
                z6 = false;
            }
            z7 = zY5 | z6;
            objX2 = gapComposerH.x();
            if (z7) {
                function5 = function6;
                objX2 = new SwipeToDismissBoxKt$SwipeToDismissBox$3$1(swipeToDismissBoxState, function5, null);
                gapComposerH.q(objX2);
            } else {
                function5 = function6;
                objX2 = new SwipeToDismissBoxKt$SwipeToDismissBox$3$1(swipeToDismissBoxState, function5, null);
                gapComposerH.q(objX2);
            }
            EffectsKt.g(swipeToDismissBoxValue4, function5, (Function2) objX2, gapComposerH);
            function2 = function5;
            z3 = true;
        } else {
            modifier2 = modifierE;
            composableLambdaImpl2 = composableLambdaImpl;
            gapComposerH.D();
            z3 = z2;
            function2 = function1;
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new zv(swipeToDismissBoxState, function3, modifier2, z, z3, function2, composableLambdaImpl2, i2);
        }
    }
}
