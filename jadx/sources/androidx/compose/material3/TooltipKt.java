package androidx.compose.material3;

import androidx.compose.animation.core.FiniteAnimationSpec;
import androidx.compose.animation.core.Transition;
import androidx.compose.animation.core.TransitionKt;
import androidx.compose.animation.core.TransitionState;
import androidx.compose.animation.core.TwoWayConverter;
import androidx.compose.animation.core.VectorConvertersKt;
import androidx.compose.foundation.MutatorMutex;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.PaddingValuesImpl;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.material3.TooltipKt;
import androidx.compose.material3.internal.BasicTooltipDefaults;
import androidx.compose.material3.internal.BasicTooltipKt;
import androidx.compose.material3.tokens.MotionSchemeKeyTokens;
import androidx.compose.material3.tokens.PlainTooltipTokens;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.CompositionLocalKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.ProvidedValue;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.GraphicsLayerModifierKt;
import androidx.compose.ui.graphics.Shape;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.layout.OnGloballyPositionedModifierKt;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.InspectableValueKt;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.window.PopupPositionProvider;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.google.ar.core.ImageMetadata;
import defpackage.fc;
import defpackage.ku0;
import defpackage.rp;
import defpackage.v11;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import net.rtccloud.sdk.Call;
import org.bouncycastle.asn1.cmp.PKIFailureInfo;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\b\n\u0002\u0010\u0007\n\u0002\b\u0003¨\u0006\u0003²\u0006\f\u0010\u0001\u001a\u00020\u00008\nX\u008a\u0084\u0002²\u0006\f\u0010\u0002\u001a\u00020\u00008\nX\u008a\u0084\u0002"}, d2 = {"", "scale", "alpha", "material3"}, k = 2, mv = {2, 0, 0}, xi = 48)
public abstract class TooltipKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final float f7402a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final float f7403b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final float f7404c;
    public static final PaddingValuesImpl d;

    static {
        Dp.Companion companion = Dp.f11004c;
        f7402a = 4.0f;
        f7403b = 24.0f;
        f7404c = 40.0f;
        d = PaddingKt.b(8.0f, 4.0f);
    }

    public static final void a(final TooltipScope tooltipScope, Modifier modifier, float f2, Shape shape, long j2, long j3, final ComposableLambdaImpl composableLambdaImpl, Composer composer, final int i2) {
        int i3;
        GapComposer gapComposer;
        final float f3;
        final Shape shape2;
        final long j4;
        final long j5;
        final Modifier modifier2;
        final float f4;
        long jD;
        Modifier modifier3;
        int i4;
        Shape shape3;
        final long j6;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = defpackage.a.e(modifierE, "PlainTooltip-gv3ox5I");
        }
        GapComposer gapComposerH = composer.h(-343758958);
        if ((i2 & 6) == 0) {
            i3 = ((i2 & 8) == 0 ? gapComposerH.K(tooltipScope) : gapComposerH.y(tooltipScope) ? 4 : 2) | i2;
        } else {
            i3 = i2;
        }
        int i5 = i3 | 3504;
        if ((i2 & 24576) == 0) {
            i5 = i3 | 11696;
        }
        if ((196608 & i2) == 0) {
            i5 |= 65536;
        }
        if ((1572864 & i2) == 0) {
            i5 |= 524288;
        }
        int i6 = 113246208 | i5;
        if ((805306368 & i2) == 0) {
            i6 |= gapComposerH.y(composableLambdaImpl) ? PKIFailureInfo.duplicateCertReq : 268435456;
        }
        if (gapComposerH.p(i6 & 1, (306783379 & i6) != 306783378)) {
            gapComposerH.y0();
            if ((i2 & 1) == 0 || gapComposerH.h0()) {
                DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier("PlainTooltip-gv3ox5I");
                f4 = TooltipDefaults.f7400b;
                OpaqueKey opaqueKey = ComposerKt.f7940a;
                Shape shapeA = ShapesKt.a(PlainTooltipTokens.f7833b, gapComposerH);
                long jD2 = ColorSchemeKt.d(PlainTooltipTokens.f7834c, gapComposerH);
                jD = ColorSchemeKt.d(PlainTooltipTokens.f7832a, gapComposerH);
                Dp.Companion companion = Dp.f11004c;
                modifier3 = dTFunctionNameModifier;
                i4 = i6 & (-4186113);
                shape3 = shapeA;
                j6 = jD2;
            } else {
                gapComposerH.D();
                int i7 = i6 & (-4186113);
                shape3 = shape;
                j6 = j2;
                jD = j3;
                modifier3 = modifierE;
                i4 = i7;
                f4 = f2;
            }
            gapComposerH.a0();
            OpaqueKey opaqueKey2 = ComposerKt.f7940a;
            gapComposerH.L(-1719831991);
            gapComposerH.Z(false);
            int i8 = i4 >> 9;
            gapComposer = gapComposerH;
            SurfaceKt.a(modifier3, shape3, jD, 0L, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, ComposableLambdaKt.b(-1573998995, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.TooltipKt$PlainTooltip$4
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    Composer composer2 = (Composer) obj;
                    int iIntValue = ((Number) obj2).intValue();
                    if (composer2.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                        OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                        Modifier modifierH = PaddingKt.h(SizeKt.r(Modifier.Companion.f8607b, TooltipKt.f7404c, TooltipKt.f7403b, f4, 8), TooltipKt.d);
                        Alignment.f8582a.getClass();
                        MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
                        int iG = composer2.G();
                        PersistentCompositionLocalMap persistentCompositionLocalMapN = composer2.n();
                        Modifier modifierC = ComposedModifierKt.c(composer2, modifierH);
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
                        Updater.c(composer2, measurePolicyD, ComposeUiNode.Companion.f9644f);
                        Updater.c(composer2, persistentCompositionLocalMapN, ComposeUiNode.Companion.f9643e);
                        Function2 function2 = ComposeUiNode.Companion.g;
                        if (composer2.getS() || !Intrinsics.c(composer2.x(), Integer.valueOf(iG))) {
                            fc.A(function2, iG, composer2, iG);
                        }
                        Updater.c(composer2, modifierC, ComposeUiNode.Companion.d);
                        CompositionLocalKt.b(new ProvidedValue[]{defpackage.a.d(j6, ContentColorKt.f6730a), TextKt.f7383a.c(TypographyKt.a(PlainTooltipTokens.d, composer2))}, composableLambdaImpl, composer2, 8);
                        composer2.r();
                    } else {
                        composer2.D();
                    }
                    return Unit.f71739a;
                }
            }, gapComposerH), gapComposer, (57344 & i8) | 12582912 | (i8 & ImageMetadata.JPEG_GPS_COORDINATES), 72);
            f3 = f4;
            j4 = j6;
            modifier2 = modifier3;
            shape2 = shape3;
            j5 = jD;
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
            f3 = f2;
            shape2 = shape;
            j4 = j2;
            j5 = j3;
            modifier2 = modifierE;
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new Function2() { // from class: g41
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    ((Integer) obj2).getClass();
                    TooltipKt.a(tooltipScope, modifier2, f3, shape2, j4, j5, composableLambdaImpl, (Composer) obj, RecomposeScopeImplKt.a(i2 | 1));
                    return Unit.f71739a;
                }
            };
        }
    }

    public static final void b(PopupPositionProvider popupPositionProvider, final ComposableLambdaImpl composableLambdaImpl, TooltipState tooltipState, Modifier modifier, boolean z, final ComposableLambdaImpl composableLambdaImpl2, Composer composer, int i2, int i3) {
        int i4;
        Modifier modifier2;
        Modifier modifierE = modifier != null ? defpackage.a.e(modifier, "TooltipBox") : modifier;
        GapComposer gapComposerH = composer.h(-293753984);
        if ((i2 & 6) == 0) {
            i4 = (gapComposerH.K(popupPositionProvider) ? 4 : 2) | i2;
        } else {
            i4 = i2;
        }
        if ((i2 & 48) == 0) {
            i4 |= gapComposerH.y(composableLambdaImpl) ? 32 : 16;
        }
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i4 |= (i2 & 512) == 0 ? gapComposerH.K(tooltipState) : gapComposerH.y(tooltipState) ? 256 : 128;
        }
        int i5 = i3 & 8;
        if (i5 != 0) {
            i4 |= 3072;
        } else if ((i2 & 3072) == 0) {
            i4 |= gapComposerH.K(modifierE) ? 2048 : 1024;
        }
        int i6 = i4 | 14376960;
        if ((100663296 & i2) == 0) {
            i6 |= gapComposerH.y(composableLambdaImpl2) ? 67108864 : 33554432;
        }
        boolean z2 = true;
        if (gapComposerH.p(i6 & 1, (38347923 & i6) != 38347922)) {
            if (i5 != 0) {
                modifierE = new DTFunctionNameModifier("TooltipBox");
            }
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            final Transition transitionE = TransitionKt.e(tooltipState.getF7420c(), "tooltip transition", gapComposerH, 48, 0);
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (objX == composer$Companion$Empty$1) {
                objX = SnapshotStateKt.g(null);
                gapComposerH.q(objX);
            }
            final MutableState mutableState = (MutableState) objX;
            Object objX2 = gapComposerH.x();
            if (objX2 == composer$Companion$Empty$1) {
                objX2 = new TooltipScopeImpl(new v11(5, mutableState), popupPositionProvider);
                gapComposerH.q(objX2);
            }
            final TooltipScopeImpl tooltipScopeImpl = (TooltipScopeImpl) objX2;
            int i7 = (i6 & 14) | 100663344 | (i6 & 896) | (i6 & 7168) | (57344 & i6) | (458752 & i6) | (3670016 & i6) | (i6 & 29360128);
            Modifier modifier3 = modifierE;
            BasicTooltipKt.a(popupPositionProvider, ComposableLambdaKt.b(-527401546, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.TooltipKt$TooltipBox$3
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    Composer composer2 = (Composer) obj;
                    int iIntValue = ((Number) obj2).intValue();
                    if (composer2.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                        OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                        float f2 = TooltipKt.f7402a;
                        Function1 function1 = InspectableValueKt.f10100a;
                        final Transition transition = transitionE;
                        Modifier modifierA = ComposedModifierKt.a(Modifier.Companion.f8607b, function1, new Function3<Modifier, Composer, Integer, Modifier>() { // from class: androidx.compose.material3.TooltipKt$animateTooltip$2
                            @Override // kotlin.jvm.functions.Function3
                            public final Object A(Object obj3, Object obj4, Object obj5) {
                                Modifier modifier4 = (Modifier) obj3;
                                Composer composer3 = (Composer) obj4;
                                ((Number) obj5).intValue();
                                composer3.L(-1498516085);
                                OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                                final FiniteAnimationSpec finiteAnimationSpecA = MotionSchemeKt.a(MotionSchemeKeyTokens.FastSpatial, composer3);
                                final FiniteAnimationSpec finiteAnimationSpecA2 = MotionSchemeKt.a(MotionSchemeKeyTokens.FastEffects, composer3);
                                Function3<Transition.Segment<Boolean>, Composer, Integer, FiniteAnimationSpec<Float>> function3 = new Function3<Transition.Segment<Boolean>, Composer, Integer, FiniteAnimationSpec<Float>>() { // from class: androidx.compose.material3.TooltipKt$animateTooltip$2$scale$2
                                    @Override // kotlin.jvm.functions.Function3
                                    public final Object A(Object obj6, Object obj7, Object obj8) {
                                        Composer composer4 = (Composer) obj7;
                                        ((Number) obj8).intValue();
                                        composer4.L(386845748);
                                        OpaqueKey opaqueKey4 = ComposerKt.f7940a;
                                        composer4.F();
                                        return finiteAnimationSpecA;
                                    }
                                };
                                TwoWayConverter twoWayConverter = VectorConvertersKt.f4036a;
                                Transition transition2 = transition;
                                TransitionState transitionState = transition2.f3988a;
                                MutableState mutableState2 = transition2.d;
                                boolean zBooleanValue = ((Boolean) transitionState.a()).booleanValue();
                                composer3.L(-1553362193);
                                float f3 = zBooleanValue ? 1.0f : 0.8f;
                                composer3.F();
                                Float fValueOf = Float.valueOf(f3);
                                SnapshotMutableStateImpl snapshotMutableStateImpl = (SnapshotMutableStateImpl) mutableState2;
                                boolean zBooleanValue2 = ((Boolean) snapshotMutableStateImpl.getF10755b()).booleanValue();
                                composer3.L(-1553362193);
                                float f4 = zBooleanValue2 ? 1.0f : 0.8f;
                                composer3.F();
                                Transition.TransitionAnimationState transitionAnimationStateD = TransitionKt.d(transition2, fValueOf, Float.valueOf(f4), (FiniteAnimationSpec) function3.A(transition2.f(), composer3, 0), twoWayConverter, "tooltip transition: scaling", composer3, ImageMetadata.EDGE_MODE);
                                Function3<Transition.Segment<Boolean>, Composer, Integer, FiniteAnimationSpec<Float>> function4 = new Function3<Transition.Segment<Boolean>, Composer, Integer, FiniteAnimationSpec<Float>>() { // from class: androidx.compose.material3.TooltipKt$animateTooltip$2$alpha$2
                                    @Override // kotlin.jvm.functions.Function3
                                    public final Object A(Object obj6, Object obj7, Object obj8) {
                                        Composer composer4 = (Composer) obj7;
                                        ((Number) obj8).intValue();
                                        composer4.L(-281714272);
                                        OpaqueKey opaqueKey4 = ComposerKt.f7940a;
                                        composer4.F();
                                        return finiteAnimationSpecA2;
                                    }
                                };
                                boolean zBooleanValue3 = ((Boolean) transition2.f3988a.a()).booleanValue();
                                composer3.L(2073045083);
                                float f5 = zBooleanValue3 ? 1.0f : 0.0f;
                                composer3.F();
                                Float fValueOf2 = Float.valueOf(f5);
                                boolean zBooleanValue4 = ((Boolean) snapshotMutableStateImpl.getF10755b()).booleanValue();
                                composer3.L(2073045083);
                                float f6 = zBooleanValue4 ? 1.0f : 0.0f;
                                composer3.F();
                                Modifier modifierB = GraphicsLayerModifierKt.b(modifier4, ((Number) transitionAnimationStateD.getF10755b()).floatValue(), ((Number) transitionAnimationStateD.getF10755b()).floatValue(), ((Number) TransitionKt.d(transition2, fValueOf2, Float.valueOf(f6), (FiniteAnimationSpec) function4.A(transition2.f(), composer3, 0), twoWayConverter, "tooltip transition: alpha", composer3, ImageMetadata.EDGE_MODE).getF10755b()).floatValue(), Call.Parameters.DEFAULT_CAMERA_ZOOM, null, 131064);
                                composer3.F();
                                return modifierB;
                            }
                        });
                        Alignment.f8582a.getClass();
                        MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
                        int iG = composer2.G();
                        PersistentCompositionLocalMap persistentCompositionLocalMapN = composer2.n();
                        Modifier modifierC = ComposedModifierKt.c(composer2, modifierA);
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
                        Updater.c(composer2, measurePolicyD, ComposeUiNode.Companion.f9644f);
                        Updater.c(composer2, persistentCompositionLocalMapN, ComposeUiNode.Companion.f9643e);
                        Function2 function2 = ComposeUiNode.Companion.g;
                        if (composer2.getS() || !Intrinsics.c(composer2.x(), Integer.valueOf(iG))) {
                            fc.A(function2, iG, composer2, iG);
                        }
                        Updater.c(composer2, modifierC, ComposeUiNode.Companion.d);
                        composableLambdaImpl.A(tooltipScopeImpl, composer2, 6);
                        composer2.r();
                    } else {
                        composer2.D();
                    }
                    return Unit.f71739a;
                }
            }, gapComposerH), tooltipState, modifier3, ComposableLambdaKt.b(-23901870, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.TooltipKt$TooltipBox$wrappedContent$1
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    Composer composer2 = (Composer) obj;
                    int iIntValue = ((Number) obj2).intValue();
                    if (composer2.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                        OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                        Object objX3 = composer2.x();
                        if (objX3 == Composer.Companion.f7939a) {
                            objX3 = new ku0(15, mutableState);
                            composer2.q(objX3);
                        }
                        Modifier modifierA = OnGloballyPositionedModifierKt.a(Modifier.Companion.f8607b, (Function1) objX3);
                        Alignment.f8582a.getClass();
                        MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
                        int iG = composer2.G();
                        PersistentCompositionLocalMap persistentCompositionLocalMapN = composer2.n();
                        Modifier modifierC = ComposedModifierKt.c(composer2, modifierA);
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
                        Updater.c(composer2, measurePolicyD, ComposeUiNode.Companion.f9644f);
                        Updater.c(composer2, persistentCompositionLocalMapN, ComposeUiNode.Companion.f9643e);
                        Function2 function2 = ComposeUiNode.Companion.g;
                        if (composer2.getS() || !Intrinsics.c(composer2.x(), Integer.valueOf(iG))) {
                            fc.A(function2, iG, composer2, iG);
                        }
                        Updater.c(composer2, modifierC, ComposeUiNode.Companion.d);
                        composableLambdaImpl2.invoke(composer2, 0);
                        composer2.r();
                    } else {
                        composer2.D();
                    }
                    return Unit.f71739a;
                }
            }, gapComposerH), gapComposerH, i7);
            modifier2 = modifier3;
        } else {
            gapComposerH.D();
            z2 = z;
            modifier2 = modifierE;
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new rp(popupPositionProvider, composableLambdaImpl, tooltipState, modifier2, z2, composableLambdaImpl2, i2, i3);
        }
    }

    public static final TooltipState c(Composer composer) {
        MutatorMutex mutatorMutex = BasicTooltipDefaults.f7548a;
        OpaqueKey opaqueKey = ComposerKt.f7940a;
        boolean zB = composer.b(false) | composer.K(mutatorMutex);
        Object objX = composer.x();
        if (zB || objX == Composer.Companion.f7939a) {
            objX = new TooltipStateImpl(false, false, mutatorMutex);
            composer.q(objX);
        }
        return (TooltipStateImpl) objX;
    }
}
