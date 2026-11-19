package com.vuitton.android.presentation.screen.main.components;

import android.content.Context;
import androidx.compose.animation.AnimatedVisibilityKt;
import androidx.compose.animation.AnimatedVisibilityScope;
import androidx.compose.animation.EnterExitTransitionKt;
import androidx.compose.animation.EnterTransition;
import androidx.compose.animation.ExitTransition;
import androidx.compose.animation.core.AnimateAsStateKt;
import androidx.compose.animation.core.AnimationSpecKt;
import androidx.compose.animation.core.CubicBezierEasing;
import androidx.compose.animation.core.EasingKt;
import androidx.compose.animation.core.TweenSpec;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.Arrangement$Top$1;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScopeInstance;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.ColumnScopeInstance;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.runtime.Applier;
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
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.State;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.layout.OnRemeasuredModifierKt;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.Dp;
import androidx.navigation.NavDestination;
import com.airbnb.lottie.LottieComposition;
import com.airbnb.lottie.compose.AnimateLottieCompositionAsStateKt;
import com.airbnb.lottie.compose.LottieAnimatable;
import com.airbnb.lottie.compose.LottieAnimationKt;
import com.airbnb.lottie.compose.LottieCompositionResultImpl;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.presentation.compose.animation.EnterTransitionKt;
import com.vuitton.android.presentation.compose.animation.ExitTransitionKt;
import com.vuitton.android.presentation.screen.filter.quickaccess.components.QuickAccessFiltersContainerKt;
import com.vuitton.android.presentation.screen.filter.quickaccess.models.QuickAccessFiltersViewState;
import com.vuitton.android.presentation.screen.main.MainNavigationState;
import com.vuitton.android.presentation.screen.main.components.MainNavBarKt;
import com.vuitton.android.presentation.screen.main.models.MainTopLevelDestination;
import com.vuitton.android.presentation.screen.main.navigation.FeedRoute;
import defpackage.cj;
import defpackage.e6;
import defpackage.hf;
import defpackage.i4;
import defpackage.n00;
import defpackage.o60;
import defpackage.s0;
import defpackage.tr;
import defpackage.uz;
import defpackage.y2;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.ReflectionFactory;
import kotlin.reflect.KClass;
import kotlin.sequences.Sequence;
import net.rtccloud.sdk.Call;
import org.bouncycastle.pqc.crypto.crystals.dilithium.DilithiumEngine;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0002¨\u0006\u0007²\u0006\u000e\u0010\u0001\u001a\u00020\u00008\n@\nX\u008a\u008e\u0002²\u0006\f\u0010\u0002\u001a\u00020\u00008\nX\u008a\u0084\u0002²\u0006\u000e\u0010\u0004\u001a\u0004\u0018\u00010\u00038\nX\u008a\u0084\u0002²\u0006\f\u0010\u0006\u001a\u00020\u00058\nX\u008a\u0084\u0002"}, d2 = {"Landroidx/compose/ui/unit/Dp;", "barHeight", "navBarItemTopPadding", "Lcom/airbnb/lottie/LottieComposition;", "composition", "", "progress", "presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class MainNavBarKt {
    public static final void a(Modifier modifier, final MainNavigationState mainNavigationState, QuickAccessFiltersViewState quickAccessFiltersViewState, final boolean z, final boolean z2, Function0 function0, final Function0 function1, Function0 function2, final Function0 function3, final Function1 function4, Function2 function5, Function1 function6, Function0 function7, final Function1 function8, Composer composer, int i2) {
        GapComposer gapComposer;
        float f2;
        Object s0Var;
        boolean z3;
        EnterTransition enterTransition;
        ExitTransition exitTransition;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = defpackage.a.e(modifierE, "MainNavBar");
        }
        Modifier modifier2 = modifierE;
        quickAccessFiltersViewState.getClass();
        boolean z4 = quickAccessFiltersViewState.f58170b;
        function0.getClass();
        function1.getClass();
        function2.getClass();
        function3.getClass();
        function5.getClass();
        function6.getClass();
        function7.getClass();
        function8.getClass();
        GapComposer gapComposerH = composer.h(235718978);
        Applier applier = gapComposerH.f7976a;
        int i3 = i2 | (gapComposerH.K(modifier2) ? 4 : 2) | (gapComposerH.K(mainNavigationState) ? 32 : 16) | (gapComposerH.y(quickAccessFiltersViewState) ? 256 : 128) | (gapComposerH.b(z) ? 2048 : 1024) | (gapComposerH.b(z2) ? 16384 : 8192) | (gapComposerH.y(function0) ? 131072 : 65536) | (gapComposerH.y(function1) ? 1048576 : 524288) | (gapComposerH.y(function2) ? 8388608 : 4194304) | (gapComposerH.y(function3) ? 67108864 : 33554432);
        int i4 = (gapComposerH.y(function5) ? 4 : 2) | (gapComposerH.y(function6) ? 32 : 16) | (gapComposerH.y(function7) ? 256 : 128) | (gapComposerH.y(function8) ? 2048 : 1024);
        if (gapComposerH.p(i3 & 1, ((i3 & 306783379) == 306783378 && (i4 & 1171) == 1170) ? false : true)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (objX == composer$Companion$Empty$1) {
                objX = SnapshotStateKt.g(new Dp(Call.Parameters.DEFAULT_CAMERA_ZOOM));
                gapComposerH.q(objX);
            }
            MutableState mutableState = (MutableState) objX;
            MainTopLevelDestination mainTopLevelDestinationC = mainNavigationState.c(gapComposerH, (i3 >> 3) & 14);
            boolean showSearchBar = mainTopLevelDestinationC != null ? mainTopLevelDestinationC.getShowSearchBar() : false;
            if (showSearchBar) {
                gapComposerH.L(33687331);
                f2 = LVAppDesignKitTheme.l(gapComposerH).f48415c;
                gapComposerH.Z(false);
            } else {
                gapComposerH.L(33753826);
                f2 = LVAppDesignKitTheme.l(gapComposerH).f48416e;
                gapComposerH.Z(false);
            }
            boolean z5 = showSearchBar;
            final State stateA = AnimateAsStateKt.a(f2, AnimationSpecKt.c(showSearchBar ? DilithiumEngine.DilithiumPolyT1PackedBytes : 220, 0, showSearchBar ? EasingKt.f3862a : EasingKt.f3864c, 2), "NavBar item top padding", null, gapComposerH, KyberEngine.KyberPolyBytes, 8);
            final Density density = (Density) gapComposerH.k(CompositionLocalsKt.f10031h);
            final Context context = (Context) gapComposerH.k(AndroidCompositionLocals_androidKt.f9936b);
            Alignment.f8582a.getClass();
            MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifier2);
            ComposeUiNode.b0.getClass();
            Function0 function9 = ComposeUiNode.Companion.f9641b;
            if (applier == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function9);
            } else {
                gapComposerH.o();
            }
            Function2 function10 = ComposeUiNode.Companion.f9644f;
            Updater.c(gapComposerH, measurePolicyD, function10);
            Function2 function11 = ComposeUiNode.Companion.f9643e;
            Updater.c(gapComposerH, persistentCompositionLocalMapU, function11);
            Integer numValueOf = Integer.valueOf(iHashCode);
            Function2 function12 = ComposeUiNode.Companion.g;
            Updater.c(gapComposerH, numValueOf, function12);
            Function1 function13 = ComposeUiNode.Companion.f9645h;
            Updater.b(gapComposerH, function13);
            Function2 function14 = ComposeUiNode.Companion.d;
            Updater.c(gapComposerH, modifierC, function14);
            if (z4) {
                BoxKt.a(SizeKt.f(o60.c(gapComposerH, 1543476544, "MainNavBar", 1.0f), ((Dp) mutableState.getF10755b()).f11006b), gapComposerH, 0);
                gapComposerH.Z(false);
            } else {
                gapComposerH.L(1543624538);
                gapComposerH.Z(false);
            }
            Modifier modifierD = tr.d("MainNavBar", 1.0f);
            boolean zK = gapComposerH.K(density) | gapComposerH.b(z5) | gapComposerH.y(quickAccessFiltersViewState);
            Object objX2 = gapComposerH.x();
            if (zK || objX2 == composer$Companion$Empty$1) {
                z3 = z5;
                s0Var = new s0(density, z3, quickAccessFiltersViewState, mutableState, 7);
                gapComposerH.q(s0Var);
            } else {
                s0Var = objX2;
                z3 = z5;
            }
            Modifier modifierA = OnRemeasuredModifierKt.a(modifierD, (Function1) s0Var);
            ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(Arrangement.f4920c, Alignment.Companion.n, gapComposerH, 0);
            int iHashCode2 = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU2 = gapComposerH.U();
            Modifier modifierC2 = ComposedModifierKt.c(gapComposerH, modifierA);
            if (applier == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function9);
            } else {
                gapComposerH.o();
            }
            Updater.c(gapComposerH, columnMeasurePolicyA, function10);
            Updater.c(gapComposerH, persistentCompositionLocalMapU2, function11);
            cj.t(iHashCode2, gapComposerH, function12, gapComposerH, function13);
            Updater.c(gapComposerH, modifierC2, function14);
            boolean z6 = !z4;
            NavDestination navDestinationA = mainNavigationState.a(gapComposerH);
            ReflectionFactory reflectionFactory = Reflection.f71922a;
            if (d(navDestinationA, reflectionFactory.b(FeedRoute.class))) {
                EnterTransition.f3626a.getClass();
                enterTransition = EnterTransition.f3627b;
            } else {
                enterTransition = EnterTransitionKt.f50932a;
            }
            EnterTransition enterTransition2 = enterTransition;
            ExitTransition exitTransition2 = ExitTransitionKt.f50933a;
            final boolean z7 = z3;
            AnimatedVisibilityKt.c(ColumnScopeInstance.f4944a, z6, null, enterTransition2, exitTransition2, "Main NavBar animation for QAF", ComposableLambdaKt.b(-695309802, new Function3() { // from class: xb0
                @Override // kotlin.jvm.functions.Function3
                public final Object A(Object obj, Object obj2, Object obj3) {
                    Composer composer2 = (Composer) obj2;
                    ((Integer) obj3).getClass();
                    ((AnimatedVisibilityScope) obj).getClass();
                    OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                    DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier("MainNavBar$lambda$5$1$0");
                    Arrangement$Top$1 arrangement$Top$1 = Arrangement.f4920c;
                    Alignment.f8582a.getClass();
                    ColumnMeasurePolicy columnMeasurePolicyA2 = ColumnKt.a(arrangement$Top$1, Alignment.Companion.n, composer2, 0);
                    int iHashCode3 = Long.hashCode(composer2.getT());
                    PersistentCompositionLocalMap persistentCompositionLocalMapN = composer2.n();
                    Modifier modifierC3 = ComposedModifierKt.c(composer2, dTFunctionNameModifier);
                    ComposeUiNode.b0.getClass();
                    Function0 function15 = ComposeUiNode.Companion.f9641b;
                    if (composer2.getF7976a() == null) {
                        ComposablesKt.b();
                        throw null;
                    }
                    composer2.B();
                    if (composer2.getS()) {
                        composer2.C(function15);
                    } else {
                        composer2.o();
                    }
                    Updater.c(composer2, columnMeasurePolicyA2, ComposeUiNode.Companion.f9644f);
                    Updater.c(composer2, persistentCompositionLocalMapN, ComposeUiNode.Companion.f9643e);
                    Updater.c(composer2, Integer.valueOf(iHashCode3), ComposeUiNode.Companion.g);
                    Updater.b(composer2, ComposeUiNode.Companion.f9645h);
                    Updater.c(composer2, modifierC3, ComposeUiNode.Companion.d);
                    CubicBezierEasing cubicBezierEasing = EasingKt.f3862a;
                    TweenSpec tweenSpecC = AnimationSpecKt.c(DilithiumEngine.DilithiumPolyT1PackedBytes, 0, cubicBezierEasing, 2);
                    Object objX3 = composer2.x();
                    Composer$Companion$Empty$1 composer$Companion$Empty$2 = Composer.Companion.f7939a;
                    if (objX3 == composer$Companion$Empty$2) {
                        objX3 = new ba0(5);
                        composer2.q(objX3);
                    }
                    EnterTransition enterTransitionB = EnterExitTransitionKt.q((Function1) objX3, tweenSpecC).b(EnterExitTransitionKt.d(AnimationSpecKt.c(DilithiumEngine.DilithiumPolyT1PackedBytes, 0, cubicBezierEasing, 2), null, null, 14)).b(EnterExitTransitionKt.f(AnimationSpecKt.c(DilithiumEngine.DilithiumPolyT1PackedBytes, 0, cubicBezierEasing, 2), Call.Parameters.DEFAULT_CAMERA_ZOOM, 2));
                    CubicBezierEasing cubicBezierEasing2 = EasingKt.f3864c;
                    TweenSpec tweenSpecC2 = AnimationSpecKt.c(220, 0, cubicBezierEasing2, 2);
                    Object objX4 = composer2.x();
                    if (objX4 == composer$Companion$Empty$2) {
                        objX4 = new ba0(6);
                        composer2.q(objX4);
                    }
                    ExitTransition exitTransitionB = EnterExitTransitionKt.u((Function1) objX4, tweenSpecC2).b(EnterExitTransitionKt.n(AnimationSpecKt.c(220, 0, cubicBezierEasing2, 2), null, null, 14)).b(EnterExitTransitionKt.h(AnimationSpecKt.c(220, 0, cubicBezierEasing2, 2), 2));
                    ComposableLambdaImpl composableLambdaImplB = ComposableLambdaKt.b(966786788, new pl(function1, z2, function4, function3, 3), composer2);
                    ColumnScopeInstance columnScopeInstance = ColumnScopeInstance.f4944a;
                    AnimatedVisibilityKt.c(columnScopeInstance, z7, null, enterTransitionB, exitTransitionB, "Search bar animation", composableLambdaImplB, composer2, 1769478, 2);
                    TweenSpec tweenSpecC3 = AnimationSpecKt.c(0, 0, null, 7);
                    Object objX5 = composer2.x();
                    if (objX5 == composer$Companion$Empty$2) {
                        objX5 = new x20(18);
                        composer2.q(objX5);
                    }
                    EnterTransition enterTransitionB2 = EnterExitTransitionKt.q((Function1) objX5, tweenSpecC3).b(EnterExitTransitionKt.d(AnimationSpecKt.c(0, 0, null, 7), null, null, 14));
                    TweenSpec tweenSpecC4 = AnimationSpecKt.c(0, 0, null, 7);
                    Object objX6 = composer2.x();
                    if (objX6 == composer$Companion$Empty$2) {
                        objX6 = new x20(18);
                        composer2.q(objX6);
                    }
                    AnimatedVisibilityKt.c(columnScopeInstance, z, null, enterTransitionB2, EnterExitTransitionKt.u((Function1) objX6, tweenSpecC4).b(EnterExitTransitionKt.n(AnimationSpecKt.c(0, 0, null, 7), null, null, 14)), "NavBar animation", ComposableLambdaKt.b(1620106587, new n4(mainNavigationState, context, function8, stateA, density, 12), composer2), composer2, 1797126, 2);
                    composer2.r();
                    return Unit.f71739a;
                }
            }, gapComposerH), gapComposerH, 1794054, 2);
            Modifier modifierG = BoxScopeInstance.f4938a.g(o60.f(gapComposerH, true, "MainNavBar"), Alignment.Companion.f8589i);
            boolean z8 = quickAccessFiltersViewState.f58171c;
            boolean z9 = quickAccessFiltersViewState.f58170b;
            EnterTransition enterTransition3 = EnterTransitionKt.f50932a;
            if (d(mainNavigationState.a(gapComposerH), reflectionFactory.b(FeedRoute.class))) {
                ExitTransition.f3629a.getClass();
                exitTransition = ExitTransition.f3630b;
            } else {
                exitTransition = exitTransition2;
            }
            QuickAccessFiltersContainerKt.a(quickAccessFiltersViewState, modifierG, z9, z8, enterTransition3, exitTransition, function5, function0, function2, function7, function6, gapComposerH, ((i3 >> 6) & 14) | 24576 | ((i4 << 18) & 3670016) | (29360128 & (i3 << 6)) | (234881024 & (i3 << 3)) | ((i4 << 21) & 1879048192), (i4 >> 3) & 14);
            gapComposer = gapComposerH;
            gapComposer.Z(true);
        } else {
            gapComposer = gapComposerH;
            modifier2 = modifier2;
            gapComposer.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new uz(modifier2, mainNavigationState, quickAccessFiltersViewState, z, z2, function0, function1, function2, function3, function4, function5, function6, function7, function8, i2);
        }
    }

    public static final void b(int i2, int i3, Composer composer, Modifier modifier, Function0 function0, boolean z) {
        Modifier modifier2;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = defpackage.a.e(modifierE, "NavBarIconAnimation");
        }
        GapComposer gapComposerH = composer.h(70945536);
        int i4 = i3 | 6 | (gapComposerH.d(i2) ? 32 : 16) | (gapComposerH.b(z) ? 256 : 128) | (gapComposerH.y(function0) ? 2048 : 1024);
        if (gapComposerH.p(i4 & 1, (i4 & 1171) != 1170)) {
            DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier("NavBarIconAnimation");
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            LottieCompositionResultImpl lottieCompositionResultImplH = n00.h(i2, gapComposerH, 0);
            LottieAnimatable lottieAnimatableA = AnimateLottieCompositionAsStateKt.a(lottieCompositionResultImplH.getF10755b(), false, null, 0, gapComposerH, 1022);
            Unit unit = Unit.f71739a;
            boolean z2 = (i4 & 7168) == 2048;
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (z2 || objX == composer$Companion$Empty$1) {
                objX = new y2(function0, 19);
                gapComposerH.q(objX);
            }
            EffectsKt.c(unit, (Function1) objX, gapComposerH);
            LottieComposition f10755b = lottieCompositionResultImplH.getF10755b();
            boolean zK = gapComposerH.K(lottieAnimatableA) | ((i4 & 896) == 256);
            Object objX2 = gapComposerH.x();
            if (zK || objX2 == composer$Companion$Empty$1) {
                objX2 = new hf(z, lottieAnimatableA, 3);
                gapComposerH.q(objX2);
            }
            LottieAnimationKt.b(f10755b, (Function0) objX2, dTFunctionNameModifier, false, false, false, false, null, false, null, null, null, false, false, null, null, false, gapComposerH, KyberEngine.KyberPolyBytes, 0, 131064);
            gapComposerH = gapComposerH;
            modifier2 = dTFunctionNameModifier;
        } else {
            gapComposerH.D();
            modifier2 = modifierE;
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new e6(modifier2, i2, z, function0, i3);
        }
    }

    public static final void c(Modifier modifier, final MainTopLevelDestination mainTopLevelDestination, boolean z, final Function0 function0, Composer composer, int i2) {
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = defpackage.a.e(modifierE, "NavBarIconAnimation");
        }
        Modifier modifier2 = modifierE;
        GapComposer gapComposerH = composer.h(1799510455);
        int i3 = i2 | (gapComposerH.K(modifier2) ? 4 : 2) | (gapComposerH.d(mainTopLevelDestination.ordinal()) ? 32 : 16) | (gapComposerH.b(z) ? 256 : 128) | (gapComposerH.y(function0) ? 2048 : 1024);
        final int i4 = 0;
        final int i5 = 1;
        if (gapComposerH.p(i3 & 1, (i3 & 1171) != 1170)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Alignment.f8582a.getClass();
            MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifier2);
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
            Updater.c(gapComposerH, modifierC, ComposeUiNode.Companion.d);
            EnterTransition.f3626a.getClass();
            EnterTransition enterTransition = EnterTransition.f3627b;
            AnimatedVisibilityKt.e(z, null, enterTransition, EnterExitTransitionKt.h(null, 3), null, ComposableLambdaKt.b(426173593, new Function3() { // from class: wb0
                @Override // kotlin.jvm.functions.Function3
                public final Object A(Object obj, Object obj2, Object obj3) {
                    int i6 = i4;
                    MainTopLevelDestination mainTopLevelDestination2 = mainTopLevelDestination;
                    AnimatedVisibilityScope animatedVisibilityScope = (AnimatedVisibilityScope) obj;
                    Composer composer2 = (Composer) obj2;
                    ((Integer) obj3).getClass();
                    switch (i6) {
                        case 0:
                            animatedVisibilityScope.getClass();
                            OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                            MainNavBarKt.b(mainTopLevelDestination2.getOpenAnimation(), 0, composer2, null, function0, mainTopLevelDestination2.getHasShownAnimation());
                            break;
                        default:
                            animatedVisibilityScope.getClass();
                            OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                            MainNavBarKt.b(mainTopLevelDestination2.getCloseAnimation(), 0, composer2, null, function0, mainTopLevelDestination2.getHasShownAnimation());
                            break;
                    }
                    return Unit.f71739a;
                }
            }, gapComposerH), gapComposerH, ((i3 >> 6) & 14) | 199680, 18);
            AnimatedVisibilityKt.e(((Boolean) mainTopLevelDestination.getIsPreviousSelected().getF10755b()).booleanValue(), null, enterTransition, EnterExitTransitionKt.h(null, 3), null, ComposableLambdaKt.b(200440962, new Function3() { // from class: wb0
                @Override // kotlin.jvm.functions.Function3
                public final Object A(Object obj, Object obj2, Object obj3) {
                    int i6 = i5;
                    MainTopLevelDestination mainTopLevelDestination2 = mainTopLevelDestination;
                    AnimatedVisibilityScope animatedVisibilityScope = (AnimatedVisibilityScope) obj;
                    Composer composer2 = (Composer) obj2;
                    ((Integer) obj3).getClass();
                    switch (i6) {
                        case 0:
                            animatedVisibilityScope.getClass();
                            OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                            MainNavBarKt.b(mainTopLevelDestination2.getOpenAnimation(), 0, composer2, null, function0, mainTopLevelDestination2.getHasShownAnimation());
                            break;
                        default:
                            animatedVisibilityScope.getClass();
                            OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                            MainNavBarKt.b(mainTopLevelDestination2.getCloseAnimation(), 0, composer2, null, function0, mainTopLevelDestination2.getHasShownAnimation());
                            break;
                    }
                    return Unit.f71739a;
                }
            }, gapComposerH), gapComposerH, 199680, 18);
            gapComposerH.Z(true);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new i4(modifier2, mainTopLevelDestination, z, function0, i2, 13);
        }
    }

    public static final boolean d(NavDestination navDestination, KClass kClass) {
        kClass.getClass();
        if (navDestination == null) {
            return false;
        }
        NavDestination.g.getClass();
        Sequence<NavDestination> sequenceB = NavDestination.Companion.b(navDestination);
        if (sequenceB == null) {
            return false;
        }
        for (NavDestination navDestination2 : sequenceB) {
            NavDestination.g.getClass();
            if (NavDestination.Companion.c(navDestination2, kClass)) {
                return true;
            }
        }
        return false;
    }
}
