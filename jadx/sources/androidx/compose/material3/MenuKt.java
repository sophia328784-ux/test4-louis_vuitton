package androidx.compose.material3;

import androidx.compose.animation.core.FiniteAnimationSpec;
import androidx.compose.animation.core.MutableTransitionState;
import androidx.compose.animation.core.Transition;
import androidx.compose.animation.core.TransitionKt;
import androidx.compose.animation.core.TransitionState;
import androidx.compose.animation.core.TwoWayConverter;
import androidx.compose.animation.core.VectorConvertersKt;
import androidx.compose.foundation.ClickableKt;
import androidx.compose.foundation.ScrollKt;
import androidx.compose.foundation.ScrollState;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.Arrangement$Top$1;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.ColumnScopeInstance;
import androidx.compose.foundation.layout.IntrinsicKt;
import androidx.compose.foundation.layout.IntrinsicSize;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowMeasurePolicy;
import androidx.compose.foundation.layout.RowScopeInstance;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.material3.MenuKt;
import androidx.compose.material3.tokens.ListTokens;
import androidx.compose.material3.tokens.MotionSchemeKeyTokens;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.CompositionLocalKt;
import androidx.compose.runtime.DynamicProvidableCompositionLocal;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.ProvidedValue;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.GraphicsLayerModifierKt;
import androidx.compose.ui.graphics.Shape;
import androidx.compose.ui.graphics.TransformOriginKt;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.InspectionModeKt;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.unit.IntRect;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import defpackage.fc;
import defpackage.kc;
import defpackage.wc0;
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
public abstract class MenuKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final float f7027a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final float f7028b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final float f7029c;
    public static final float d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final float f7030e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final float f7031f;

    static {
        Dp.Companion companion = Dp.f11004c;
        f7027a = 48.0f;
        f7028b = 48.0f;
        f7029c = 12.0f;
        d = 8.0f;
        f7030e = 112.0f;
        f7031f = 280.0f;
    }

    public static final void a(Modifier modifier, final MutableTransitionState mutableTransitionState, final MutableState mutableState, final ScrollState scrollState, final Shape shape, final long j2, final float f2, final ComposableLambdaImpl composableLambdaImpl, Composer composer, final int i2) {
        GapComposer gapComposer;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = defpackage.a.e(modifierE, "DropdownMenuContent-Qj0Zi0g");
        }
        final Modifier modifier2 = modifierE;
        GapComposer gapComposerH = composer.h(848986741);
        int i3 = i2 | (gapComposerH.K(modifier2) ? 4 : 2) | (gapComposerH.K(mutableTransitionState) ? 32 : 16) | (gapComposerH.K(scrollState) ? 2048 : 1024) | (gapComposerH.K(shape) ? 16384 : 8192) | (gapComposerH.e(j2) ? 131072 : 65536) | (gapComposerH.c(Call.Parameters.DEFAULT_CAMERA_ZOOM) ? 1048576 : 524288) | (gapComposerH.c(f2) ? 8388608 : 4194304) | (gapComposerH.K(null) ? 67108864 : 33554432) | (gapComposerH.y(composableLambdaImpl) ? PKIFailureInfo.duplicateCertReq : 268435456);
        if (gapComposerH.p(i3 & 1, (i3 & 306783379) != 306783378)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Transition transitionE = TransitionKt.e(mutableTransitionState, "DropDownMenu", gapComposerH, (((i3 >> 3) & 14) | 48) & 126, 0);
            final FiniteAnimationSpec finiteAnimationSpecA = MotionSchemeKt.a(MotionSchemeKeyTokens.FastSpatial, gapComposerH);
            final FiniteAnimationSpec finiteAnimationSpecA2 = MotionSchemeKt.a(MotionSchemeKeyTokens.FastEffects, gapComposerH);
            Function3<Transition.Segment<Boolean>, Composer, Integer, FiniteAnimationSpec<Float>> function3 = new Function3<Transition.Segment<Boolean>, Composer, Integer, FiniteAnimationSpec<Float>>() { // from class: androidx.compose.material3.MenuKt$DropdownMenuContent$scale$2
                @Override // kotlin.jvm.functions.Function3
                public final Object A(Object obj, Object obj2, Object obj3) {
                    Composer composer2 = (Composer) obj2;
                    ((Number) obj3).intValue();
                    composer2.L(-745957716);
                    OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                    composer2.F();
                    return finiteAnimationSpecA;
                }
            };
            TwoWayConverter twoWayConverter = VectorConvertersKt.f4036a;
            TransitionState transitionState = transitionE.f3988a;
            MutableState mutableState2 = transitionE.d;
            boolean zBooleanValue = ((Boolean) transitionState.a()).booleanValue();
            gapComposerH.L(143964305);
            float f3 = zBooleanValue ? 1.0f : 0.8f;
            gapComposerH.Z(false);
            Float fValueOf = Float.valueOf(f3);
            SnapshotMutableStateImpl snapshotMutableStateImpl = (SnapshotMutableStateImpl) mutableState2;
            boolean zBooleanValue2 = ((Boolean) snapshotMutableStateImpl.getF10755b()).booleanValue();
            gapComposerH.L(143964305);
            float f4 = zBooleanValue2 ? 1.0f : 0.8f;
            gapComposerH.Z(false);
            Transition.TransitionAnimationState transitionAnimationStateD = TransitionKt.d(transitionE, fValueOf, Float.valueOf(f4), (FiniteAnimationSpec) function3.A(transitionE.f(), gapComposerH, 0), twoWayConverter, "FloatAnimation", gapComposerH, 0);
            Function3<Transition.Segment<Boolean>, Composer, Integer, FiniteAnimationSpec<Float>> function4 = new Function3<Transition.Segment<Boolean>, Composer, Integer, FiniteAnimationSpec<Float>>() { // from class: androidx.compose.material3.MenuKt$DropdownMenuContent$alpha$2
                @Override // kotlin.jvm.functions.Function3
                public final Object A(Object obj, Object obj2, Object obj3) {
                    Composer composer2 = (Composer) obj2;
                    ((Number) obj3).intValue();
                    composer2.L(2839488);
                    OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                    composer2.F();
                    return finiteAnimationSpecA2;
                }
            };
            boolean zBooleanValue3 = ((Boolean) transitionE.f3988a.a()).booleanValue();
            gapComposerH.L(892761509);
            float f5 = zBooleanValue3 ? 1.0f : 0.0f;
            gapComposerH.Z(false);
            Float fValueOf2 = Float.valueOf(f5);
            boolean zBooleanValue4 = ((Boolean) snapshotMutableStateImpl.getF10755b()).booleanValue();
            gapComposerH.L(892761509);
            float f6 = zBooleanValue4 ? 1.0f : 0.0f;
            gapComposerH.Z(false);
            Transition.TransitionAnimationState transitionAnimationStateD2 = TransitionKt.d(transitionE, fValueOf2, Float.valueOf(f6), (FiniteAnimationSpec) function4.A(transitionE.f(), gapComposerH, 0), twoWayConverter, "FloatAnimation", gapComposerH, 0);
            boolean zBooleanValue5 = ((Boolean) gapComposerH.k(InspectionModeKt.f10102a)).booleanValue();
            DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier("DropdownMenuContent-Qj0Zi0g");
            boolean zB = ((i3 & 112) == 32) | gapComposerH.b(zBooleanValue5) | gapComposerH.K(transitionAnimationStateD) | gapComposerH.K(transitionAnimationStateD2);
            Object objX = gapComposerH.x();
            if (zB || objX == Composer.Companion.f7939a) {
                wc0 wc0Var = new wc0(zBooleanValue5, mutableTransitionState, mutableState, transitionAnimationStateD, transitionAnimationStateD2);
                gapComposerH.q(wc0Var);
                objX = wc0Var;
            }
            int i4 = i3 >> 9;
            int i5 = i3 >> 6;
            SurfaceKt.a(GraphicsLayerModifierKt.a(dTFunctionNameModifier, (Function1) objX), shape, j2, 0L, Call.Parameters.DEFAULT_CAMERA_ZOOM, f2, ComposableLambdaKt.b(-1463404422, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.MenuKt$DropdownMenuContent$2
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    Composer composer2 = (Composer) obj;
                    int iIntValue = ((Number) obj2).intValue();
                    if (composer2.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                        OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                        Modifier modifierD = ScrollKt.d(IntrinsicKt.b(PaddingKt.k(modifier2, Call.Parameters.DEFAULT_CAMERA_ZOOM, MenuKt.d, 1), IntrinsicSize.Max), scrollState, false, 14);
                        Arrangement$Top$1 arrangement$Top$1 = Arrangement.f4920c;
                        Alignment.f8582a.getClass();
                        ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(arrangement$Top$1, Alignment.Companion.n, composer2, 0);
                        int iG = composer2.G();
                        PersistentCompositionLocalMap persistentCompositionLocalMapN = composer2.n();
                        Modifier modifierC = ComposedModifierKt.c(composer2, modifierD);
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
                        Updater.c(composer2, columnMeasurePolicyA, ComposeUiNode.Companion.f9644f);
                        Updater.c(composer2, persistentCompositionLocalMapN, ComposeUiNode.Companion.f9643e);
                        Function2 function2 = ComposeUiNode.Companion.g;
                        if (composer2.getS() || !Intrinsics.c(composer2.x(), Integer.valueOf(iG))) {
                            fc.A(function2, iG, composer2, iG);
                        }
                        Updater.c(composer2, modifierC, ComposeUiNode.Companion.d);
                        composableLambdaImpl.A(ColumnScopeInstance.f4944a, composer2, 6);
                        composer2.r();
                    } else {
                        composer2.D();
                    }
                    return Unit.f71739a;
                }
            }, gapComposerH), gapComposerH, (i4 & 896) | (i4 & 112) | 12582912 | (57344 & i5) | (458752 & i5) | (i5 & 3670016), 8);
            gapComposer = gapComposerH;
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new Function2(mutableTransitionState, mutableState, scrollState, shape, j2, f2, composableLambdaImpl, i2) { // from class: xc0

                /* JADX INFO: renamed from: c, reason: collision with root package name */
                public final /* synthetic */ MutableTransitionState f81100c;
                public final /* synthetic */ MutableState d;

                /* JADX INFO: renamed from: e, reason: collision with root package name */
                public final /* synthetic */ ScrollState f81101e;

                /* JADX INFO: renamed from: f, reason: collision with root package name */
                public final /* synthetic */ Shape f81102f;
                public final /* synthetic */ long g;

                /* JADX INFO: renamed from: h, reason: collision with root package name */
                public final /* synthetic */ float f81103h;

                /* JADX INFO: renamed from: i, reason: collision with root package name */
                public final /* synthetic */ ComposableLambdaImpl f81104i;

                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    ((Integer) obj2).getClass();
                    int iA = RecomposeScopeImplKt.a(385);
                    MenuKt.a(this.f81099b, this.f81100c, this.d, this.f81101e, this.f81102f, this.g, this.f81103h, this.f81104i, (Composer) obj, iA);
                    return Unit.f71739a;
                }
            };
        }
    }

    public static final void b(final Function2 function2, Function0 function0, Modifier modifier, Function2 function3, final Function2 function4, final boolean z, MenuItemColors menuItemColors, PaddingValues paddingValues, Composer composer, int i2) {
        int i3;
        Function0 function1;
        final Function2 function5;
        final MenuItemColors menuItemColors2;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = defpackage.a.e(modifierE, "DropdownMenuItemContent");
        }
        Modifier modifier2 = modifierE;
        GapComposer gapComposerH = composer.h(-1325192924);
        if ((i2 & 6) == 0) {
            i3 = (gapComposerH.y(function2) ? 4 : 2) | i2;
        } else {
            i3 = i2;
        }
        if ((i2 & 48) == 0) {
            function1 = function0;
            i3 |= gapComposerH.y(function1) ? 32 : 16;
        } else {
            function1 = function0;
        }
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i3 |= gapComposerH.K(modifier2) ? 256 : 128;
        }
        if ((i2 & 3072) == 0) {
            function5 = function3;
            i3 |= gapComposerH.y(function5) ? 2048 : 1024;
        } else {
            function5 = function3;
        }
        if ((i2 & 24576) == 0) {
            i3 |= gapComposerH.y(function4) ? 16384 : 8192;
        }
        if ((196608 & i2) == 0) {
            i3 |= gapComposerH.b(z) ? 131072 : 65536;
        }
        if ((1572864 & i2) == 0) {
            menuItemColors2 = menuItemColors;
            i3 |= gapComposerH.K(menuItemColors2) ? 1048576 : 524288;
        } else {
            menuItemColors2 = menuItemColors;
        }
        if ((12582912 & i2) == 0) {
            i3 |= gapComposerH.K(paddingValues) ? 8388608 : 4194304;
        }
        if ((100663296 & i2) == 0) {
            i3 |= gapComposerH.K(null) ? 67108864 : 33554432;
        }
        if (gapComposerH.p(i3 & 1, (38347923 & i3) != 38347922)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Modifier modifierH = PaddingKt.h(SizeKt.r(SizeKt.d(ClickableKt.b(modifier2, null, RippleKt.a(Call.Parameters.DEFAULT_CAMERA_ZOOM, 6, true), z, null, null, function1, 24), 1.0f), f7030e, f7028b, f7031f, 8), paddingValues);
            Alignment.f8582a.getClass();
            RowMeasurePolicy rowMeasurePolicyA = RowKt.a(Arrangement.f4918a, Alignment.Companion.l, gapComposerH, 48);
            int iG = gapComposerH.G();
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierH);
            ComposeUiNode.b0.getClass();
            Function0 function6 = ComposeUiNode.Companion.f9641b;
            if (gapComposerH.f7976a == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function6);
            } else {
                gapComposerH.o();
            }
            Updater.c(gapComposerH, rowMeasurePolicyA, ComposeUiNode.Companion.f9644f);
            Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
            Function2 function7 = ComposeUiNode.Companion.g;
            if (gapComposerH.S || !Intrinsics.c(gapComposerH.x(), Integer.valueOf(iG))) {
                defpackage.a.t(iG, gapComposerH, iG, function7);
            }
            Updater.c(gapComposerH, modifierC, ComposeUiNode.Companion.d);
            TextKt.a(MaterialTheme.b(gapComposerH).m, ComposableLambdaKt.b(865999929, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.MenuKt$DropdownMenuItemContent$1$1
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    Composer composer2 = (Composer) obj;
                    int iIntValue = ((Number) obj2).intValue();
                    if (composer2.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                        OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                        boolean z2 = z;
                        MenuItemColors menuItemColors3 = menuItemColors2;
                        final Function2 function8 = function5;
                        if (function8 != null) {
                            composer2.L(-864613220);
                            CompositionLocalKt.a(defpackage.a.d(z2 ? menuItemColors3.f7023b : menuItemColors3.f7025e, ContentColorKt.f6730a), ComposableLambdaKt.b(1241781204, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.MenuKt$DropdownMenuItemContent$1$1.1
                                @Override // kotlin.jvm.functions.Function2
                                public final Object invoke(Object obj3, Object obj4) {
                                    Composer composer3 = (Composer) obj3;
                                    int iIntValue2 = ((Number) obj4).intValue();
                                    if (composer3.p(iIntValue2 & 1, (iIntValue2 & 3) != 2)) {
                                        OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                                        Modifier modifierB = SizeKt.b(Modifier.Companion.f8607b, ListTokens.f7805i, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2);
                                        Alignment.f8582a.getClass();
                                        MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
                                        int iG2 = composer3.G();
                                        PersistentCompositionLocalMap persistentCompositionLocalMapN = composer3.n();
                                        Modifier modifierC2 = ComposedModifierKt.c(composer3, modifierB);
                                        ComposeUiNode.b0.getClass();
                                        Function0 function9 = ComposeUiNode.Companion.f9641b;
                                        if (composer3.getF7976a() == null) {
                                            ComposablesKt.b();
                                            throw null;
                                        }
                                        composer3.B();
                                        if (composer3.getS()) {
                                            composer3.C(function9);
                                        } else {
                                            composer3.o();
                                        }
                                        Updater.c(composer3, measurePolicyD, ComposeUiNode.Companion.f9644f);
                                        Updater.c(composer3, persistentCompositionLocalMapN, ComposeUiNode.Companion.f9643e);
                                        Function2 function10 = ComposeUiNode.Companion.g;
                                        if (composer3.getS() || !Intrinsics.c(composer3.x(), Integer.valueOf(iG2))) {
                                            fc.A(function10, iG2, composer3, iG2);
                                        }
                                        Updater.c(composer3, modifierC2, ComposeUiNode.Companion.d);
                                        function8.invoke(composer3, 0);
                                        composer3.r();
                                    } else {
                                        composer3.D();
                                    }
                                    return Unit.f71739a;
                                }
                            }, composer2), composer2, 56);
                            composer2.F();
                        } else {
                            composer2.L(-864293207);
                            composer2.F();
                        }
                        DynamicProvidableCompositionLocal dynamicProvidableCompositionLocal = ContentColorKt.f6730a;
                        ProvidedValue providedValueD = defpackage.a.d(z2 ? menuItemColors3.f7022a : menuItemColors3.d, dynamicProvidableCompositionLocal);
                        final Function2 function9 = function2;
                        final Function2 function10 = function4;
                        CompositionLocalKt.a(providedValueD, ComposableLambdaKt.b(-893579015, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.MenuKt$DropdownMenuItemContent$1$1.2
                            @Override // kotlin.jvm.functions.Function2
                            public final Object invoke(Object obj3, Object obj4) {
                                float f2;
                                Composer composer3 = (Composer) obj3;
                                int iIntValue2 = ((Number) obj4).intValue();
                                if (composer3.p(iIntValue2 & 1, (iIntValue2 & 3) != 2)) {
                                    OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                                    Modifier modifierA = RowScopeInstance.f5040a.a(Modifier.Companion.f8607b, 1.0f, true);
                                    Function2 function11 = function8;
                                    float f3 = Call.Parameters.DEFAULT_CAMERA_ZOOM;
                                    if (function11 != null) {
                                        f2 = MenuKt.f7029c;
                                    } else {
                                        Dp.Companion companion = Dp.f11004c;
                                        f2 = 0.0f;
                                    }
                                    if (function10 != null) {
                                        f3 = MenuKt.f7029c;
                                    } else {
                                        Dp.Companion companion2 = Dp.f11004c;
                                    }
                                    Modifier modifierM = PaddingKt.m(modifierA, f2, Call.Parameters.DEFAULT_CAMERA_ZOOM, f3, Call.Parameters.DEFAULT_CAMERA_ZOOM, 10);
                                    Alignment.f8582a.getClass();
                                    MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
                                    int iG2 = composer3.G();
                                    PersistentCompositionLocalMap persistentCompositionLocalMapN = composer3.n();
                                    Modifier modifierC2 = ComposedModifierKt.c(composer3, modifierM);
                                    ComposeUiNode.b0.getClass();
                                    Function0 function12 = ComposeUiNode.Companion.f9641b;
                                    if (composer3.getF7976a() == null) {
                                        ComposablesKt.b();
                                        throw null;
                                    }
                                    composer3.B();
                                    if (composer3.getS()) {
                                        composer3.C(function12);
                                    } else {
                                        composer3.o();
                                    }
                                    Updater.c(composer3, measurePolicyD, ComposeUiNode.Companion.f9644f);
                                    Updater.c(composer3, persistentCompositionLocalMapN, ComposeUiNode.Companion.f9643e);
                                    Function2 function13 = ComposeUiNode.Companion.g;
                                    if (composer3.getS() || !Intrinsics.c(composer3.x(), Integer.valueOf(iG2))) {
                                        fc.A(function13, iG2, composer3, iG2);
                                    }
                                    Updater.c(composer3, modifierC2, ComposeUiNode.Companion.d);
                                    function9.invoke(composer3, 0);
                                    composer3.r();
                                } else {
                                    composer3.D();
                                }
                                return Unit.f71739a;
                            }
                        }, composer2), composer2, 56);
                        if (function10 != null) {
                            composer2.L(-863394951);
                            CompositionLocalKt.a(defpackage.a.d(z2 ? menuItemColors3.f7024c : menuItemColors3.f7026f, dynamicProvidableCompositionLocal), ComposableLambdaKt.b(-782441013, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.MenuKt$DropdownMenuItemContent$1$1.3
                                @Override // kotlin.jvm.functions.Function2
                                public final Object invoke(Object obj3, Object obj4) {
                                    Composer composer3 = (Composer) obj3;
                                    int iIntValue2 = ((Number) obj4).intValue();
                                    if (composer3.p(iIntValue2 & 1, (iIntValue2 & 3) != 2)) {
                                        OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                                        Modifier modifierB = SizeKt.b(Modifier.Companion.f8607b, ListTokens.f7807k, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2);
                                        Alignment.f8582a.getClass();
                                        MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
                                        int iG2 = composer3.G();
                                        PersistentCompositionLocalMap persistentCompositionLocalMapN = composer3.n();
                                        Modifier modifierC2 = ComposedModifierKt.c(composer3, modifierB);
                                        ComposeUiNode.b0.getClass();
                                        Function0 function11 = ComposeUiNode.Companion.f9641b;
                                        if (composer3.getF7976a() == null) {
                                            ComposablesKt.b();
                                            throw null;
                                        }
                                        composer3.B();
                                        if (composer3.getS()) {
                                            composer3.C(function11);
                                        } else {
                                            composer3.o();
                                        }
                                        Updater.c(composer3, measurePolicyD, ComposeUiNode.Companion.f9644f);
                                        Updater.c(composer3, persistentCompositionLocalMapN, ComposeUiNode.Companion.f9643e);
                                        Function2 function12 = ComposeUiNode.Companion.g;
                                        if (composer3.getS() || !Intrinsics.c(composer3.x(), Integer.valueOf(iG2))) {
                                            fc.A(function12, iG2, composer3, iG2);
                                        }
                                        Updater.c(composer3, modifierC2, ComposeUiNode.Companion.d);
                                        function10.invoke(composer3, 0);
                                        composer3.r();
                                    } else {
                                        composer3.D();
                                    }
                                    return Unit.f71739a;
                                }
                            }, composer2), composer2, 56);
                            composer2.F();
                        } else {
                            composer2.L(-863072055);
                            composer2.F();
                        }
                    } else {
                        composer2.D();
                    }
                    return Unit.f71739a;
                }
            }, gapComposerH), gapComposerH, 48);
            gapComposerH.Z(true);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new kc(function2, function0, modifier2, function3, function4, z, menuItemColors, paddingValues, i2);
        }
    }

    /* JADX WARN: Code duplicated, block: B:12:0x003b  */
    /* JADX WARN: Code duplicated, block: B:4:0x0017  */
    public static final long c(IntRect intRect, IntRect intRect2) {
        float fMin;
        int i2 = intRect2.f11017a;
        int i3 = intRect2.d;
        int i4 = intRect2.f11017a;
        int i5 = intRect2.f11019c;
        int i6 = intRect2.f11018b;
        int i7 = intRect.f11019c;
        int i8 = intRect.f11018b;
        int i9 = intRect.d;
        int i10 = intRect.f11017a;
        float fMin2 = 1.0f;
        if (i2 >= i7) {
            fMin = 0.0f;
        } else if (i5 <= i10) {
            fMin = 1.0f;
        } else if (intRect2.d() == 0) {
            fMin = 0.0f;
        } else {
            fMin = (((Math.min(intRect.f11019c, i5) + Math.max(i10, i4)) / 2) - i4) / intRect2.d();
        }
        if (i6 >= i9) {
            fMin2 = 0.0f;
        } else if (i3 > i8) {
            if (intRect2.b() == 0) {
                fMin2 = 0.0f;
            } else {
                fMin2 = (((Math.min(i9, i3) + Math.max(i8, i6)) / 2) - i6) / intRect2.b();
            }
        }
        return TransformOriginKt.a(fMin, fMin2);
    }
}
