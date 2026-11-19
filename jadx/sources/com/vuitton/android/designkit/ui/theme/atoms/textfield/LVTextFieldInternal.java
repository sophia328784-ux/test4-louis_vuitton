package com.vuitton.android.designkit.ui.theme.atoms.textfield;

import androidx.compose.animation.AnimatedVisibilityKt;
import androidx.compose.animation.EnterExitTransitionKt;
import androidx.compose.animation.EnterTransition;
import androidx.compose.animation.ExitTransition;
import androidx.compose.animation.core.SpringSpec;
import androidx.compose.animation.core.Transition;
import androidx.compose.animation.core.TransitionKt;
import androidx.compose.animation.core.TransitionState;
import androidx.compose.animation.core.TwoWayConverter;
import androidx.compose.animation.core.VectorConvertersKt;
import androidx.compose.foundation.BorderKt;
import androidx.compose.foundation.ClickableKt;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.Arrangement$Start$1;
import androidx.compose.foundation.layout.Arrangement$Top$1;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.ColumnScopeInstance;
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
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.State;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.runtime.snapshots.Snapshot;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.BiasAlignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.ClipKt;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.res.PainterResources_androidKt;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.style.TextOverflow;
import androidx.compose.ui.unit.Dp;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.google.ar.core.ImageMetadata;
import com.vuitton.android.designkit.ui.common.ModifierExtKt;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.atoms.configurations.ConfigurationTextField;
import com.vuitton.android.designkit.ui.theme.atoms.textfield.LVTextFieldInternal;
import defpackage.cj;
import defpackage.eb;
import defpackage.g80;
import defpackage.i80;
import defpackage.n00;
import defpackage.p1;
import defpackage.py;
import defpackage.t50;
import defpackage.x4;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.text.StringsKt;
import net.rtccloud.sdk.Call;
import org.bouncycastle.asn1.cmp.PKIFailureInfo;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bÇ\u0002\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/designkit/ui/theme/atoms/textfield/LVTextFieldInternal;", "", "system"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class LVTextFieldInternal {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final LVTextFieldInternal f48624a = new LVTextFieldInternal();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final float f48625b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final float f48626c;
    public static final float d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final float f48627e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final float f48628f;
    public static final float g;

    static {
        Dp.Companion companion = Dp.f11004c;
        f48625b = 56.0f;
        f48626c = 1.0f;
        d = 16.0f;
        f48627e = 8.0f;
        f48628f = 6.0f;
        g = 8.0f;
    }

    public final void a(final Function0 function0, final String str, final String str2, final long j2, Composer composer, final int i2) {
        function0.getClass();
        str2.getClass();
        GapComposer gapComposerH = composer.h(-1696711814);
        int i3 = i2 | (gapComposerH.y(function0) ? 4 : 2) | (gapComposerH.K(str) ? 32 : 16) | (gapComposerH.K(str2) ? 256 : 128) | (gapComposerH.e(j2) ? 2048 : 1024);
        if (gapComposerH.p(i3 & 1, (i3 & 9363) != 9362)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Modifier modifierA = ClipKt.a(new DTFunctionNameModifier("ClearButtonIcon-ww6aTOc$system"), RoundedCornerShapeKt.f5846a);
            boolean z = ((i3 & 14) == 4) | ((i3 & 896) == 256);
            Object objX = gapComposerH.x();
            if (z || objX == Composer.Companion.f7939a) {
                objX = new t50(1, str2, function0);
                gapComposerH.q(objX);
            }
            IconKt.a(PainterResources_androidKt.a(LVAppDesignKitTheme.g(gapComposerH).s, gapComposerH, 0), str2, PaddingKt.i(ClickableKt.d(SemanticsModifierKt.b(modifierA, false, (Function1) objX), false, null, null, function0, 15), g).o(str != null ? n00.g("ClearButtonIcon-ww6aTOc$system", str) : new DTFunctionNameModifier("ClearButtonIcon-ww6aTOc$system")), j2, gapComposerH, ((i3 >> 3) & 112) | 8 | (i3 & 7168), 0);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new Function2(function0, str, str2, j2, i2) { // from class: j80

                /* JADX INFO: renamed from: c, reason: collision with root package name */
                public final /* synthetic */ Function0 f71335c;
                public final /* synthetic */ String d;

                /* JADX INFO: renamed from: e, reason: collision with root package name */
                public final /* synthetic */ String f71336e;

                /* JADX INFO: renamed from: f, reason: collision with root package name */
                public final /* synthetic */ long f71337f;

                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    Composer composer2 = (Composer) obj;
                    ((Integer) obj2).getClass();
                    LVTextFieldInternal lVTextFieldInternal = LVTextFieldInternal.f48624a;
                    this.f71334b.a(this.f71335c, this.d, this.f71336e, this.f71337f, composer2, RecomposeScopeImplKt.a(24577));
                    return Unit.f71739a;
                }
            };
        }
    }

    /* JADX WARN: Type inference failed for: r9v17 */
    /* JADX WARN: Type inference failed for: r9v18, types: [androidx.compose.animation.core.FiniteAnimationSpec, kotlin.jvm.functions.Function1] */
    /* JADX WARN: Type inference failed for: r9v20 */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$PrimitiveArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public final void b(Modifier modifier, final String str, final ConfigurationTextField configurationTextField, final boolean z, final String str2, final Modifier modifier2, final String str3, Modifier modifier3, final boolean z2, final boolean z3, final boolean z4, Function2 function2, final Function2 function3, final Function2 function4, final boolean z5, final boolean z6, Composer composer, final int i2, final int i3) {
        int i4;
        final Modifier modifier4;
        final Modifier modifier5;
        final Function2 function5;
        GapComposer gapComposer;
        DTFunctionNameModifier dTFunctionNameModifier;
        long j2;
        Object objA;
        boolean z7;
        Function2 function6;
        Function2 function7;
        Function2 function8;
        String str4;
        Applier applier;
        Function1 function1;
        boolean z8;
        boolean z9;
        Function2 function9;
        BiasAlignment biasAlignment;
        Function2 function10;
        boolean z10;
        Function2 function11;
        ?? r9;
        Modifier modifierB;
        Modifier modifierE = modifier;
        Function2 function12 = function2;
        Integer num = 0;
        if (modifierE != null) {
            modifierE = defpackage.a.e(modifierE, "DecorationBox$system");
        }
        str.getClass();
        function4.getClass();
        Modifier modifier6 = modifierE;
        GapComposer gapComposerH = composer.h(731577810);
        Applier applier2 = gapComposerH.f7976a;
        int i5 = i2 | 6 | (gapComposerH.K(str) ? 32 : 16) | (gapComposerH.K(configurationTextField) ? 256 : 128) | (gapComposerH.b(z) ? 2048 : 1024) | (gapComposerH.K(str2) ? 16384 : 8192) | (gapComposerH.K(modifier2) ? 131072 : 65536) | (gapComposerH.K(str3) ? 1048576 : 524288) | (gapComposerH.K(modifier3) ? 8388608 : 4194304) | (gapComposerH.b(z2) ? 67108864 : 33554432) | (gapComposerH.b(z3) ? PKIFailureInfo.duplicateCertReq : 268435456);
        if ((i3 & 6) == 0) {
            i4 = i3 | (gapComposerH.b(z4) ? 4 : 2);
        } else {
            i4 = i3;
        }
        if ((i3 & 48) == 0) {
            i4 |= gapComposerH.y(function12) ? 32 : 16;
        }
        if ((i3 & KyberEngine.KyberPolyBytes) == 0) {
            i4 |= gapComposerH.y(function3) ? 256 : 128;
        }
        if ((i3 & 3072) == 0) {
            i4 |= gapComposerH.y(function4) ? 2048 : 1024;
        }
        if ((i3 & 24576) == 0) {
            i4 |= gapComposerH.b(z5) ? 16384 : 8192;
        }
        if ((i3 & ImageMetadata.EDGE_MODE) == 0) {
            i4 |= gapComposerH.b(z6) ? 131072 : 65536;
        }
        int i6 = i4;
        if (gapComposerH.p(i5 & 1, ((i5 & 306783379) == 306783378 && (i6 & 74899) == 74898) ? false : true)) {
            DTFunctionNameModifier dTFunctionNameModifier2 = new DTFunctionNameModifier("DecorationBox$system");
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            if (z) {
                dTFunctionNameModifier = dTFunctionNameModifier2;
                if (z2) {
                    j2 = configurationTextField.m;
                } else {
                    j2 = z3 ? configurationTextField.l : configurationTextField.f48612j;
                }
            } else {
                dTFunctionNameModifier = dTFunctionNameModifier2;
                j2 = configurationTextField.f48613k;
            }
            boolean z11 = ((i5 & 1879048192) == 536870912) | ((i5 & 112) == 32);
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (z11 || objX == composer$Companion$Empty$1) {
                objX = Boolean.valueOf(z3 || str.length() > 0);
                gapComposerH.q(objX);
            }
            Boolean bool = (Boolean) objX;
            boolean zBooleanValue = bool.booleanValue();
            final Transition transitionF = TransitionKt.f(bool, "showInnerTextField", gapComposerH, 48);
            TransitionState transitionState = transitionF.f3988a;
            boolean z12 = (function12 == null && function3 == null) ? false : true;
            TwoWayConverter twoWayConverter = VectorConvertersKt.f4036a;
            if (transitionF.i()) {
                z12 = z12;
                gapComposerH.L(1666827533);
                gapComposerH.Z(false);
                objA = transitionState.a();
            } else {
                gapComposerH.L(1666573488);
                boolean zK = gapComposerH.K(transitionF);
                objA = gapComposerH.x();
                if (zK || objA == composer$Companion$Empty$1) {
                    Snapshot.f8462e.getClass();
                    Snapshot snapshotA = Snapshot.Companion.a();
                    Function1 f8461f = snapshotA != null ? snapshotA.getF8461f() : null;
                    Snapshot snapshotB = Snapshot.Companion.b(snapshotA);
                    try {
                        Object objA2 = transitionState.a();
                        Snapshot.Companion.e(snapshotA, snapshotB, f8461f);
                        gapComposerH.q(objA2);
                        objA = objA2;
                    } catch (Throwable th) {
                        Snapshot.Companion.e(snapshotA, snapshotB, f8461f);
                        throw th;
                    }
                }
                gapComposerH.Z(false);
            }
            boolean zBooleanValue2 = ((Boolean) objA).booleanValue();
            gapComposerH.L(798257530);
            float f2 = (zBooleanValue2 && z4) ? 6.0f : 16.0f;
            gapComposerH.Z(false);
            Float fValueOf = Float.valueOf(f2);
            boolean zK2 = gapComposerH.K(transitionF);
            Object objX2 = gapComposerH.x();
            if (zK2 || objX2 == composer$Companion$Empty$1) {
                objX2 = SnapshotStateKt.e(new Function0<Boolean>() { // from class: com.vuitton.android.designkit.ui.theme.atoms.textfield.LVTextFieldInternal$DecorationBox$$inlined$animateFloat$1
                    @Override // kotlin.jvm.functions.Function0
                    /* JADX INFO: renamed from: invoke */
                    public final Object mo47invoke() {
                        return ((SnapshotMutableStateImpl) transitionF.d).getF10755b();
                    }
                });
                gapComposerH.q(objX2);
            }
            boolean zBooleanValue3 = ((Boolean) ((State) objX2).getF10755b()).booleanValue();
            gapComposerH.L(798257530);
            float f3 = (zBooleanValue3 && z4) ? 6.0f : 16.0f;
            gapComposerH.Z(false);
            Float fValueOf2 = Float.valueOf(f3);
            boolean zK3 = gapComposerH.K(transitionF);
            Object objX3 = gapComposerH.x();
            if (zK3 || objX3 == composer$Companion$Empty$1) {
                objX3 = SnapshotStateKt.e(new Function0<Transition.Segment<Boolean>>() { // from class: com.vuitton.android.designkit.ui.theme.atoms.textfield.LVTextFieldInternal$DecorationBox$$inlined$animateFloat$2
                    @Override // kotlin.jvm.functions.Function0
                    /* JADX INFO: renamed from: invoke */
                    public final Object mo47invoke() {
                        return transitionF.f();
                    }
                });
                gapComposerH.q(objX3);
            }
            ((Transition.Segment) ((State) objX3).getF10755b()).getClass();
            gapComposerH.L(-953401601);
            SpringSpec springSpec = LVTextFieldInternalKt.f48631a;
            gapComposerH.Z(false);
            Transition.TransitionAnimationState transitionAnimationStateD = TransitionKt.d(transitionF, fValueOf, fValueOf2, springSpec, twoWayConverter, "Text field vertical padding", gapComposerH, ImageMetadata.EDGE_MODE);
            GapComposer gapComposer2 = gapComposerH;
            Arrangement$Top$1 arrangement$Top$1 = Arrangement.f4920c;
            Alignment.f8582a.getClass();
            BiasAlignment.Horizontal horizontal = Alignment.Companion.n;
            ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(arrangement$Top$1, horizontal, gapComposer2, 0);
            int iHashCode = Long.hashCode(gapComposer2.getT());
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposer2.U();
            DTFunctionNameModifier dTFunctionNameModifier3 = dTFunctionNameModifier;
            Modifier modifierC = ComposedModifierKt.c(gapComposer2, dTFunctionNameModifier3);
            ComposeUiNode.b0.getClass();
            Function0 function0 = ComposeUiNode.Companion.f9641b;
            if (applier2 == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposer2.B();
            if (gapComposer2.S) {
                gapComposer2.C(function0);
            } else {
                gapComposer2.o();
            }
            Function2 function13 = ComposeUiNode.Companion.f9644f;
            Updater.c(gapComposer2, columnMeasurePolicyA, function13);
            Function2 function14 = ComposeUiNode.Companion.f9643e;
            Updater.c(gapComposer2, persistentCompositionLocalMapU, function14);
            Integer numValueOf = Integer.valueOf(iHashCode);
            Function2 function15 = ComposeUiNode.Companion.g;
            Updater.c(gapComposer2, numValueOf, function15);
            Function1 function16 = ComposeUiNode.Companion.f9645h;
            Updater.b(gapComposer2, function16);
            Function2 function17 = ComposeUiNode.Companion.d;
            Updater.c(gapComposer2, modifierC, function17);
            Modifier modifierA = BorderKt.a(SizeKt.b(new DTFunctionNameModifier("DecorationBox$system"), Call.Parameters.DEFAULT_CAMERA_ZOOM, f48625b, 1), f48626c, j2, LVAppDesignKitTheme.j(gapComposer2).f48410b);
            float f4 = d;
            Modifier modifierM = PaddingKt.m(modifierA, f4, Call.Parameters.DEFAULT_CAMERA_ZOOM, z12 ? g : f4, Call.Parameters.DEFAULT_CAMERA_ZOOM, 10);
            Arrangement$Start$1 arrangement$Start$1 = Arrangement.f4918a;
            BiasAlignment.Vertical vertical = Alignment.Companion.f8591k;
            RowMeasurePolicy rowMeasurePolicyA = RowKt.a(arrangement$Start$1, vertical, gapComposer2, 0);
            int iHashCode2 = Long.hashCode(gapComposer2.getT());
            PersistentCompositionLocalMap persistentCompositionLocalMapU2 = gapComposer2.U();
            Modifier modifierC2 = ComposedModifierKt.c(gapComposer2, modifierM);
            if (applier2 == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposer2.B();
            if (gapComposer2.S) {
                gapComposer2.C(function0);
            } else {
                gapComposer2.o();
            }
            Updater.c(gapComposer2, rowMeasurePolicyA, function13);
            Updater.c(gapComposer2, persistentCompositionLocalMapU2, function14);
            cj.t(iHashCode2, gapComposer2, function15, gapComposer2, function16);
            Updater.c(gapComposer2, modifierC2, function17);
            DTFunctionNameModifier dTFunctionNameModifier4 = new DTFunctionNameModifier("DecorationBox$system");
            BiasAlignment.Vertical vertical2 = Alignment.Companion.l;
            RowScopeInstance rowScopeInstance = RowScopeInstance.f5040a;
            Modifier modifierB2 = rowScopeInstance.b(dTFunctionNameModifier4, vertical2);
            float f5 = z12 ? f48627e : Call.Parameters.DEFAULT_CAMERA_ZOOM;
            float fFloatValue = ((Number) transitionAnimationStateD.getF10755b()).floatValue();
            Dp.Companion companion = Dp.f11004c;
            Modifier modifierA2 = rowScopeInstance.a(PaddingKt.m(modifierB2, Call.Parameters.DEFAULT_CAMERA_ZOOM, fFloatValue, f5, z5 ? ((Number) transitionAnimationStateD.getF10755b()).floatValue() : Call.Parameters.DEFAULT_CAMERA_ZOOM, 1), 1.0f, true);
            BiasAlignment biasAlignment2 = Alignment.Companion.f8584b;
            MeasurePolicy measurePolicyD = BoxKt.d(biasAlignment2, false);
            int iHashCode3 = Long.hashCode(gapComposer2.getT());
            PersistentCompositionLocalMap persistentCompositionLocalMapU3 = gapComposer2.U();
            Modifier modifierC3 = ComposedModifierKt.c(gapComposer2, modifierA2);
            if (applier2 == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposer2.B();
            if (gapComposer2.S) {
                gapComposer2.C(function0);
            } else {
                gapComposer2.o();
            }
            Updater.c(gapComposer2, measurePolicyD, function13);
            Updater.c(gapComposer2, persistentCompositionLocalMapU3, function14);
            cj.t(iHashCode3, gapComposer2, function15, gapComposer2, function16);
            Updater.c(gapComposer2, modifierC3, function17);
            if (str2 == null || StringsKt.w(str2)) {
                z7 = z2;
                function6 = function13;
                function7 = function14;
                function8 = function15;
                str4 = "DecorationBox$system";
                applier = applier2;
                function1 = function16;
                gapComposer2.L(1087267312);
                function4.invoke(gapComposer2, Integer.valueOf((i6 >> 9) & 14));
                z8 = false;
                gapComposer2.Z(false);
            } else {
                gapComposer2.L(1087393668);
                if (z6) {
                    r9 = 0;
                    modifierB = ModifierExtKt.b(new DTFunctionNameModifier("DecorationBox$system"), null, null, 7);
                } else {
                    r9 = 0;
                    modifierB = modifier2;
                }
                EnterTransition enterTransitionB = EnterExitTransitionKt.d(r9, vertical, r9, 13).b(EnterExitTransitionKt.f(r9, Call.Parameters.DEFAULT_CAMERA_ZOOM, 3));
                ExitTransition exitTransitionB = EnterExitTransitionKt.n(r9, vertical, r9, 13).b(EnterExitTransitionKt.h(r9, 3));
                function8 = function15;
                str4 = "DecorationBox$system";
                applier = applier2;
                AnimatedVisibilityKt.d(rowScopeInstance, !zBooleanValue, null, enterTransitionB, exitTransitionB, null, ComposableLambdaKt.b(-1730800010, new g80(modifierB, configurationTextField, str2, z, z2, 0), gapComposer2), gapComposer2, 1600518, 18);
                DTFunctionNameModifier dTFunctionNameModifier5 = new DTFunctionNameModifier(str4);
                ColumnMeasurePolicy columnMeasurePolicyA2 = ColumnKt.a(arrangement$Top$1, horizontal, gapComposer2, 0);
                OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                int iHashCode4 = Long.hashCode(gapComposer2.getT());
                PersistentCompositionLocalMap persistentCompositionLocalMapU4 = gapComposer2.U();
                Modifier modifierC4 = ComposedModifierKt.c(gapComposer2, dTFunctionNameModifier5);
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
                function6 = function13;
                Updater.c(gapComposer2, columnMeasurePolicyA2, function6);
                function7 = function14;
                Updater.c(gapComposer2, persistentCompositionLocalMapU4, function7);
                cj.t(iHashCode4, gapComposer2, function8, gapComposer2, function16);
                Updater.c(gapComposer2, modifierC4, function17);
                z7 = z2;
                num = null;
                function1 = function16;
                AnimatedVisibilityKt.c(ColumnScopeInstance.f4944a, zBooleanValue, null, EnterExitTransitionKt.d(null, null, null, 15).b(EnterExitTransitionKt.f(null, Call.Parameters.DEFAULT_CAMERA_ZOOM, 3)), EnterExitTransitionKt.n(null, null, null, 15).b(EnterExitTransitionKt.h(null, 3)), null, ComposableLambdaKt.b(1186562496, new g80(modifierB, configurationTextField, str2, z, z7, 1), gapComposer2), gapComposer2, 1600518, 18);
                function4.invoke(gapComposer2, Integer.valueOf((i6 >> 9) & 14));
                gapComposer2.Z(true);
                z8 = false;
                gapComposer2.Z(false);
            }
            gapComposer2.Z(true);
            if (function3 != null) {
                gapComposer2.L(-5557562);
                Modifier modifierB3 = rowScopeInstance.b(new DTFunctionNameModifier(str4), vertical2);
                biasAlignment = biasAlignment2;
                MeasurePolicy measurePolicyD2 = BoxKt.d(biasAlignment, z8);
                int iHashCode5 = Long.hashCode(gapComposer2.getT());
                PersistentCompositionLocalMap persistentCompositionLocalMapU5 = gapComposer2.U();
                Modifier modifierC5 = ComposedModifierKt.c(gapComposer2, modifierB3);
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
                Updater.c(gapComposer2, measurePolicyD2, function6);
                Updater.c(gapComposer2, persistentCompositionLocalMapU5, function7);
                function10 = function8;
                cj.t(iHashCode5, gapComposer2, function10, gapComposer2, function1);
                function9 = function17;
                Updater.c(gapComposer2, modifierC5, function9);
                function3.invoke(gapComposer2, Integer.valueOf((i6 >> 6) & 14));
                gapComposer2.Z(true);
                z9 = false;
                gapComposer2.Z(false);
            } else {
                z9 = z8;
                function9 = function17;
                biasAlignment = biasAlignment2;
                function10 = function8;
                gapComposer2.L(-5399958);
                gapComposer2.Z(z9);
            }
            if (function2 == null) {
                gapComposer2.L(-5361240);
                gapComposer2.Z(z9);
                function11 = function2;
                z10 = true;
            } else {
                gapComposer2.L(-5361239);
                Modifier modifierB4 = r18.b(new DTFunctionNameModifier(str4), vertical2);
                MeasurePolicy measurePolicyD3 = BoxKt.d(biasAlignment, z9);
                int iHashCode6 = Long.hashCode(gapComposer2.getT());
                PersistentCompositionLocalMap persistentCompositionLocalMapU6 = gapComposer2.U();
                Modifier modifierC6 = ComposedModifierKt.c(gapComposer2, modifierB4);
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
                Updater.c(gapComposer2, measurePolicyD3, function6);
                Updater.c(gapComposer2, persistentCompositionLocalMapU6, function7);
                cj.t(iHashCode6, gapComposer2, function10, gapComposer2, function1);
                Updater.c(gapComposer2, modifierC6, function9);
                Function2 function18 = function2;
                function18.invoke(gapComposer2, num);
                z10 = true;
                gapComposer2.Z(true);
                gapComposer2.Z(false);
                function11 = function18;
            }
            gapComposer2.Z(z10);
            boolean z13 = (i5 & 234881024) == 67108864;
            Object objX4 = gapComposer2.x();
            if (z13 || objX4 == composer$Companion$Empty$1) {
                objX4 = new x4(z7, 4);
                gapComposer2.q(objX4);
            }
            modifier4 = modifier3;
            Modifier modifierB5 = SemanticsModifierKt.b(modifier4, false, (Function1) objX4);
            int i7 = i5 >> 3;
            f48624a.e((57344 & (i5 >> 6)) | (i7 & 896) | (i7 & 112) | ImageMetadata.EDGE_MODE | ((i5 >> 15) & 7168), gapComposer2, modifierB5, configurationTextField, str3, z, z7);
            gapComposer2.Z(true);
            modifier5 = dTFunctionNameModifier3;
            gapComposer = gapComposer2;
            function5 = function11;
        } else {
            modifier4 = modifier3;
            GapComposer gapComposer3 = gapComposerH;
            gapComposer3.D();
            modifier5 = modifier6;
            gapComposer = gapComposer3;
            function5 = function12;
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new Function2(modifier5, str, configurationTextField, z, str2, modifier2, str3, modifier4, z2, z3, z4, function5, function3, function4, z5, z6, i2, i3) { // from class: h80

                /* JADX INFO: renamed from: c, reason: collision with root package name */
                public final /* synthetic */ Modifier f69648c;
                public final /* synthetic */ String d;

                /* JADX INFO: renamed from: e, reason: collision with root package name */
                public final /* synthetic */ ConfigurationTextField f69649e;

                /* JADX INFO: renamed from: f, reason: collision with root package name */
                public final /* synthetic */ boolean f69650f;
                public final /* synthetic */ String g;

                /* JADX INFO: renamed from: h, reason: collision with root package name */
                public final /* synthetic */ Modifier f69651h;

                /* JADX INFO: renamed from: i, reason: collision with root package name */
                public final /* synthetic */ String f69652i;

                /* JADX INFO: renamed from: j, reason: collision with root package name */
                public final /* synthetic */ Modifier f69653j;

                /* JADX INFO: renamed from: k, reason: collision with root package name */
                public final /* synthetic */ boolean f69654k;
                public final /* synthetic */ boolean l;
                public final /* synthetic */ boolean m;
                public final /* synthetic */ Function2 n;
                public final /* synthetic */ Function2 o;
                public final /* synthetic */ Function2 p;
                public final /* synthetic */ boolean q;
                public final /* synthetic */ boolean r;
                public final /* synthetic */ int s;

                {
                    this.s = i3;
                }

                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    ((Integer) obj2).getClass();
                    LVTextFieldInternal lVTextFieldInternal = LVTextFieldInternal.f48624a;
                    int iA = RecomposeScopeImplKt.a(1);
                    int iA2 = RecomposeScopeImplKt.a(this.s);
                    this.f69647b.b(this.f69648c, this.d, this.f69649e, this.f69650f, this.g, this.f69651h, this.f69652i, this.f69653j, this.f69654k, this.l, this.m, this.n, this.o, this.p, this.q, this.r, (Composer) obj, iA, iA2);
                    return Unit.f71739a;
                }
            };
        }
    }

    public final void c(int i2, Composer composer, Modifier modifier, ConfigurationTextField configurationTextField, String str, boolean z, boolean z2) {
        GapComposer gapComposer;
        long j2;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = defpackage.a.e(modifierE, "LabelMagnified$system");
        }
        Modifier modifier2 = modifierE;
        GapComposer gapComposerH = composer.h(1719610352);
        int i3 = i2 | (gapComposerH.K(modifier2) ? 4 : 2) | (gapComposerH.K(configurationTextField) ? 32 : 16) | (gapComposerH.K(str) ? 256 : 128) | (gapComposerH.b(z) ? 2048 : 1024) | (gapComposerH.b(z2) ? 16384 : 8192);
        if (gapComposerH.p(i3 & 1, (i3 & 9363) != 9362)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            String str2 = str == null ? "" : str;
            TextStyle textStyle = LVAppDesignKitTheme.n(gapComposerH).f48429j;
            if (z) {
                j2 = z2 ? configurationTextField.f48609f : configurationTextField.d;
            } else {
                j2 = configurationTextField.f48608e;
            }
            TextOverflow.f10989a.getClass();
            gapComposer = gapComposerH;
            TextKt.c(str2, modifier2, j2, 0L, null, 0L, null, null, 0L, TextOverflow.f10991c, false, 1, 0, null, textStyle, gapComposer, (i3 << 3) & 112, 24960, 110584);
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new i80(this, modifier2, configurationTextField, str, z, z2, i2, 0);
        }
    }

    public final void d(int i2, Composer composer, Modifier modifier, ConfigurationTextField configurationTextField, String str, boolean z, boolean z2) {
        GapComposer gapComposer;
        long j2;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = defpackage.a.e(modifierE, "LabelMinified$system");
        }
        Modifier modifier2 = modifierE;
        GapComposer gapComposerH = composer.h(-611456261);
        int i3 = i2 | (gapComposerH.K(modifier2) ? 4 : 2) | (gapComposerH.K(configurationTextField) ? 32 : 16) | (gapComposerH.K(str) ? 256 : 128) | (gapComposerH.b(z) ? 2048 : 1024) | (gapComposerH.b(z2) ? 16384 : 8192);
        if (gapComposerH.p(i3 & 1, (i3 & 9363) != 9362)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            String str2 = str == null ? "" : str;
            TextStyle textStyle = LVAppDesignKitTheme.n(gapComposerH).m;
            if (z) {
                j2 = z2 ? configurationTextField.f48609f : configurationTextField.d;
            } else {
                j2 = configurationTextField.f48608e;
            }
            TextOverflow.f10989a.getClass();
            gapComposer = gapComposerH;
            TextKt.c(str2, modifier2, j2, 0L, null, 0L, null, null, 0L, TextOverflow.f10991c, false, 1, 0, null, textStyle, gapComposer, (i3 << 3) & 112, 24960, 110584);
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new i80(this, modifier2, configurationTextField, str, z, z2, i2, 1);
        }
    }

    public final void e(int i2, Composer composer, Modifier modifier, ConfigurationTextField configurationTextField, String str, boolean z, boolean z2) {
        int i3;
        LVTextFieldInternal lVTextFieldInternal;
        long j2;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = defpackage.a.e(modifierE, "SupportingText$system");
        }
        Modifier modifier2 = modifierE;
        GapComposer gapComposerH = composer.h(355022300);
        if ((i2 & 6) == 0) {
            i3 = (gapComposerH.K(modifier2) ? 4 : 2) | i2;
        } else {
            i3 = i2;
        }
        if ((i2 & 48) == 0) {
            i3 |= gapComposerH.K(configurationTextField) ? 32 : 16;
        }
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i3 |= gapComposerH.b(z) ? 256 : 128;
        }
        if ((i2 & 3072) == 0) {
            i3 |= gapComposerH.b(z2) ? 2048 : 1024;
        }
        if ((i2 & 24576) == 0) {
            i3 |= gapComposerH.K(str) ? 16384 : 8192;
        }
        if ((196608 & i2) == 0) {
            lVTextFieldInternal = this;
            i3 |= gapComposerH.K(lVTextFieldInternal) ? 131072 : 65536;
        } else {
            lVTextFieldInternal = this;
        }
        if (gapComposerH.p(i3 & 1, (74899 & i3) != 74898)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            if (str == null || str.length() == 0) {
                gapComposerH.L(-2034312186);
                gapComposerH.Z(false);
            } else {
                gapComposerH.L(-2034838163);
                Modifier modifierM = PaddingKt.m(modifier2, Call.Parameters.DEFAULT_CAMERA_ZOOM, f48628f, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13);
                TextStyle textStyle = LVAppDesignKitTheme.n(gapComposerH).m;
                if (z) {
                    j2 = z2 ? configurationTextField.f48611i : configurationTextField.g;
                } else {
                    j2 = configurationTextField.f48610h;
                }
                TextKt.c(str, modifierM, j2, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, textStyle, gapComposerH, (i3 >> 12) & 14, 0, 131064);
                gapComposerH.Z(false);
            }
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new eb(lVTextFieldInternal, modifier2, configurationTextField, z, z2, str, i2);
        }
    }

    public final void f(Modifier modifier, int i2, String str, boolean z, Function0 function0, ConfigurationTextField configurationTextField, Composer composer, int i3) {
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = defpackage.a.e(modifierE, "TrailingIcon$system");
        }
        Modifier modifier2 = modifierE;
        GapComposer gapComposerH = composer.h(1314906310);
        int i4 = i3 | (gapComposerH.K(modifier2) ? 4 : 2) | (gapComposerH.d(i2) ? 32 : 16) | (gapComposerH.K(str) ? 256 : 128) | (gapComposerH.b(z) ? 2048 : 1024) | (gapComposerH.y(function0) ? 16384 : 8192) | (gapComposerH.K(configurationTextField) ? 131072 : 65536);
        if (gapComposerH.p(i4 & 1, (599187 & i4) != 599186)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Modifier modifierA = ClipKt.a(ModifierExtKt.e(modifier2, "dropdown_arrow_button"), RoundedCornerShapeKt.f5846a);
            boolean z2 = z && function0 != null;
            boolean z3 = (57344 & i4) == 16384;
            Object objX = gapComposerH.x();
            if (z3 || objX == Composer.Companion.f7939a) {
                objX = new py(function0, 20);
                gapComposerH.q(objX);
            }
            int i5 = i4 >> 3;
            IconKt.a(PainterResources_androidKt.a(i2, gapComposerH, i5 & 14), str, PaddingKt.i(ClickableKt.d(modifierA, z2, null, null, (Function0) objX, 14), g), z ? configurationTextField.n : configurationTextField.o, gapComposerH, 8 | (i5 & 112), 0);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new p1(this, modifier2, i2, str, z, function0, configurationTextField, i3);
        }
    }
}
