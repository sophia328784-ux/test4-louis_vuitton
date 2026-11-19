package androidx.compose.material3;

import androidx.compose.animation.SingleValueAnimationKt;
import androidx.compose.animation.core.EasingKt;
import androidx.compose.foundation.gestures.DraggableKt;
import androidx.compose.foundation.gestures.DraggableState;
import androidx.compose.foundation.gestures.Orientation;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.Arrangement$End$1;
import androidx.compose.foundation.layout.Arrangement$Start$1;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowMeasurePolicy;
import androidx.compose.foundation.layout.RowScopeInstance;
import androidx.compose.foundation.layout.WindowInsetsPaddingKt;
import androidx.compose.material3.TopAppBarScrollBehavior;
import androidx.compose.material3.TopAppBarState;
import androidx.compose.material3.internal.FloatProducer;
import androidx.compose.material3.tokens.MotionSchemeKeyTokens;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.DynamicProvidableCompositionLocal;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.SnapshotMutableFloatStateImpl;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.State;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.BiasAlignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.ClipKt;
import androidx.compose.ui.draw.DrawModifierKt;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.ColorKt;
import androidx.compose.ui.input.pointer.PointerInputEventHandler;
import androidx.compose.ui.input.pointer.SuspendingPointerInputFilterKt;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.layout.OnRemeasuredModifierKt;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import androidx.compose.ui.text.TextStyle;
import defpackage.bp;
import defpackage.ck;
import defpackage.fc;
import defpackage.iq;
import defpackage.md;
import defpackage.n00;
import defpackage.rs;
import defpackage.tr;
import defpackage.w6;
import defpackage.ya;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÁ\u0002\u0018\u00002\u00020\u0001¨\u0006\u0004²\u0006\f\u0010\u0003\u001a\u00020\u00028\nX\u008a\u0084\u0002"}, d2 = {"Landroidx/compose/material3/DefaultSingleRowTopAppBarOverride;", "Landroidx/compose/material3/SingleRowTopAppBarOverride;", "Landroidx/compose/ui/graphics/Color;", "targetColor", "material3"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class DefaultSingleRowTopAppBarOverride implements SingleRowTopAppBarOverride {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final DefaultSingleRowTopAppBarOverride f6891a = new DefaultSingleRowTopAppBarOverride();

    @Override // androidx.compose.material3.SingleRowTopAppBarOverride
    public final void a(final SingleRowTopAppBarOverrideScope singleRowTopAppBarOverrideScope, Composer composer, int i2) {
        int i3;
        Modifier modifierJ;
        TopAppBarState f6904a;
        Modifier modifierA;
        float f2 = singleRowTopAppBarOverrideScope.f7224i;
        GapComposer gapComposerH = composer.h(2137486921);
        int i4 = 2;
        int i5 = (gapComposerH.K(singleRowTopAppBarOverrideScope) ? 4 : 2) | i2;
        int i6 = 1;
        if (gapComposerH.p(i5 & 1, (i5 & 3) != 2)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            TopAppBarColors topAppBarColors = singleRowTopAppBarOverrideScope.f7226k;
            TopAppBarScrollBehavior topAppBarScrollBehavior = singleRowTopAppBarOverrideScope.l;
            if (Float.isNaN(f2) || (Float.floatToRawIntBits(f2) & Integer.MAX_VALUE) >= 2139095040) {
                md.n("The expandedHeight is expected to be specified and finite");
                return;
            }
            boolean zK = gapComposerH.K(topAppBarColors) | gapComposerH.K(topAppBarScrollBehavior);
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (zK || objX == composer$Companion$Empty$1) {
                objX = SnapshotStateKt.e(new Function0<Color>() { // from class: androidx.compose.material3.DefaultSingleRowTopAppBarOverride$SingleRowTopAppBar$targetColor$2$1
                    /* JADX WARN: Code duplicated, block: B:10:0x002b  */
                    @Override // kotlin.jvm.functions.Function0
                    /* JADX INFO: renamed from: invoke */
                    public final Object mo47invoke() {
                        float fC;
                        TopAppBarState f6904a2;
                        SingleRowTopAppBarOverrideScope singleRowTopAppBarOverrideScope2 = singleRowTopAppBarOverrideScope;
                        TopAppBarScrollBehavior topAppBarScrollBehavior2 = singleRowTopAppBarOverrideScope2.l;
                        if (topAppBarScrollBehavior2 == null || (f6904a2 = topAppBarScrollBehavior2.getF6904a()) == null) {
                            fC = 0.0f;
                        } else {
                            float f3 = f6904a2.f7439a;
                            if (f3 == Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                                fC = 0.0f;
                            } else {
                                fC = 1.0f - (RangesKt.c(f3 - ((SnapshotMutableFloatStateImpl) f6904a2.f7440b).a(), f6904a2.f7439a, Call.Parameters.DEFAULT_CAMERA_ZOOM) / f6904a2.f7439a);
                            }
                        }
                        TopAppBarColors topAppBarColors2 = singleRowTopAppBarOverrideScope2.f7226k;
                        return new Color(ColorKt.g(topAppBarColors2.f7428a, topAppBarColors2.f7429b, EasingKt.f3864c.a(fC <= 0.01f ? 0.0f : 1.0f)));
                    }
                });
                gapComposerH.q(objX);
            }
            State stateB = SingleValueAnimationKt.b(((Color) ((State) objX).getF10755b()).f8872a, MotionSchemeKt.a(MotionSchemeKeyTokens.DefaultEffects, gapComposerH), null, gapComposerH, 0, 12);
            ComposableLambdaImpl composableLambdaImplB = ComposableLambdaKt.b(-1658896622, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.DefaultSingleRowTopAppBarOverride$SingleRowTopAppBar$actionsRow$1
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    Composer composer2 = (Composer) obj;
                    int iIntValue = ((Number) obj2).intValue();
                    if (composer2.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                        OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                        Arrangement$End$1 arrangement$End$1 = Arrangement.f4919b;
                        Alignment.f8582a.getClass();
                        BiasAlignment.Vertical vertical = Alignment.Companion.l;
                        Function3 function3 = singleRowTopAppBarOverrideScope.f7223h;
                        RowMeasurePolicy rowMeasurePolicyA = RowKt.a(arrangement$End$1, vertical, composer2, 54);
                        int iG = composer2.G();
                        PersistentCompositionLocalMap persistentCompositionLocalMapN = composer2.n();
                        Modifier modifierC = ComposedModifierKt.c(composer2, Modifier.Companion.f8607b);
                        ComposeUiNode.b0.getClass();
                        Function0 function0 = ComposeUiNode.Companion.f9641b;
                        if (composer2.getF7976a() == null) {
                            ComposablesKt.b();
                            throw null;
                        }
                        composer2.B();
                        if (composer2.getS()) {
                            composer2.C(function0);
                        } else {
                            composer2.o();
                        }
                        Updater.c(composer2, rowMeasurePolicyA, ComposeUiNode.Companion.f9644f);
                        Updater.c(composer2, persistentCompositionLocalMapN, ComposeUiNode.Companion.f9643e);
                        Function2 function2 = ComposeUiNode.Companion.g;
                        if (composer2.getS() || !Intrinsics.c(composer2.x(), Integer.valueOf(iG))) {
                            fc.A(function2, iG, composer2, iG);
                        }
                        Updater.c(composer2, modifierC, ComposeUiNode.Companion.d);
                        function3.A(RowScopeInstance.f5040a, composer2, 6);
                        composer2.r();
                    } else {
                        composer2.D();
                    }
                    return Unit.f71739a;
                }
            }, gapComposerH);
            if (topAppBarScrollBehavior != null) {
                gapComposerH.L(689467622);
                Orientation orientation = Orientation.Vertical;
                int i7 = i5 & 14;
                boolean z = i7 == 4;
                Object objX2 = gapComposerH.x();
                if (z || objX2 == composer$Companion$Empty$1) {
                    objX2 = new ck(singleRowTopAppBarOverrideScope, 10);
                    gapComposerH.q(objX2);
                }
                DraggableState draggableStateB = DraggableKt.b(gapComposerH, (Function1) objX2);
                boolean z2 = i7 == 4;
                Object objX3 = gapComposerH.x();
                if (z2 || objX3 == composer$Companion$Empty$1) {
                    objX3 = new DefaultSingleRowTopAppBarOverride$SingleRowTopAppBar$appBarDragModifier$2$1(singleRowTopAppBarOverrideScope, null);
                    gapComposerH.q(objX3);
                }
                modifierJ = DraggableKt.a(Modifier.Companion.f8607b, draggableStateB, orientation, false, null, false, (Function3) objX3, false, 188);
                gapComposerH.Z(false);
            } else {
                modifierJ = n00.j(gapComposerH, 690108113, false, "SingleRowTopAppBar");
            }
            Modifier modifierO = singleRowTopAppBarOverrideScope.f7218a.o(modifierJ);
            boolean zK2 = gapComposerH.K(stateB);
            Object objX4 = gapComposerH.x();
            if (zK2 || objX4 == composer$Companion$Empty$1) {
                objX4 = new ya(stateB, i4);
                gapComposerH.q(objX4);
            }
            Modifier modifierB = DrawModifierKt.b(modifierO, (Function1) objX4);
            Object objX5 = gapComposerH.x();
            if (objX5 == composer$Companion$Empty$1) {
                objX5 = new bp(19);
                gapComposerH.q(objX5);
            }
            Modifier modifierB2 = SemanticsModifierKt.b(modifierB, false, (Function1) objX5);
            Unit unit = Unit.f71739a;
            Object objX6 = gapComposerH.x();
            if (objX6 == composer$Companion$Empty$1) {
                objX6 = DefaultSingleRowTopAppBarOverride$SingleRowTopAppBar$4$1.f6892a;
                gapComposerH.q(objX6);
            }
            Modifier modifierA2 = SuspendingPointerInputFilterKt.a(modifierB2, unit, (PointerInputEventHandler) objX6);
            Alignment.f8582a.getClass();
            MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
            int iG = gapComposerH.G();
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
            Function2 function2 = ComposeUiNode.Companion.g;
            if (gapComposerH.S || !Intrinsics.c(gapComposerH.x(), Integer.valueOf(iG))) {
                defpackage.a.t(iG, gapComposerH, iG, function2);
            }
            Modifier modifierB3 = ClipKt.b(WindowInsetsPaddingKt.d(tr.e(gapComposerH, modifierC, ComposeUiNode.Companion.d, "SingleRowTopAppBar"), singleRowTopAppBarOverrideScope.f7225j));
            DynamicProvidableCompositionLocal dynamicProvidableCompositionLocal = AppBarKt.f6561a;
            if (topAppBarScrollBehavior != null && (f6904a = topAppBarScrollBehavior.getF6904a()) != null && (modifierA = OnRemeasuredModifierKt.a(modifierB3, new w6(f6904a, i6))) != null) {
                modifierB3 = modifierA;
            }
            boolean z3 = (i5 & 14) == 4;
            Object objX7 = gapComposerH.x();
            if (z3 || objX7 == composer$Companion$Empty$1) {
                objX7 = new FloatProducer() { // from class: xs
                    @Override // androidx.compose.material3.internal.FloatProducer
                    public final float invoke() {
                        TopAppBarState f6904a2;
                        TopAppBarScrollBehavior topAppBarScrollBehavior2 = singleRowTopAppBarOverrideScope.l;
                        return (topAppBarScrollBehavior2 == null || (f6904a2 = topAppBarScrollBehavior2.getF6904a()) == null) ? Call.Parameters.DEFAULT_CAMERA_ZOOM : f6904a2.b();
                    }
                };
                gapComposerH.q(objX7);
            }
            FloatProducer floatProducer = (FloatProducer) objX7;
            long j2 = topAppBarColors.f7430c;
            long j3 = topAppBarColors.d;
            long j4 = topAppBarColors.f7431e;
            long j5 = topAppBarColors.f7432f;
            Function2 function3 = singleRowTopAppBarOverrideScope.f7219b;
            TextStyle textStyle = singleRowTopAppBarOverrideScope.f7220c;
            Function2 function4 = singleRowTopAppBarOverrideScope.d;
            TextStyle textStyle2 = singleRowTopAppBarOverrideScope.f7221e;
            Arrangement$Start$1 arrangement$Start$1 = Arrangement.f4918a;
            Alignment.Horizontal horizontal = singleRowTopAppBarOverrideScope.f7222f;
            Function2 function5 = singleRowTopAppBarOverrideScope.g;
            float f3 = singleRowTopAppBarOverrideScope.f7224i;
            Object objX8 = gapComposerH.x();
            if (objX8 == composer$Companion$Empty$1) {
                objX8 = new iq(24);
                gapComposerH.q(objX8);
            }
            Function0 function1 = (Function0) objX8;
            i3 = 1;
            AppBarKt.d(modifierB3, floatProducer, j2, j3, j5, j4, function3, textStyle, function4, textStyle2, function1, horizontal, function5, composableLambdaImplB, f3, gapComposerH, 0);
            gapComposerH = gapComposerH;
            gapComposerH.Z(true);
        } else {
            i3 = 1;
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new rs(this, singleRowTopAppBarOverrideScope, i2, i3);
        }
    }
}
