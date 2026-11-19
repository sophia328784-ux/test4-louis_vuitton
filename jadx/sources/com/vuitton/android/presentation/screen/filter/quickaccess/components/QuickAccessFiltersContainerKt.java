package com.vuitton.android.presentation.screen.filter.quickaccess.components;

import androidx.compose.animation.AnimatedVisibilityKt;
import androidx.compose.animation.AnimatedVisibilityScope;
import androidx.compose.animation.EnterTransition;
import androidx.compose.animation.ExitTransition;
import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.Arrangement$Top$1;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
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
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.RectangleShapeKt;
import androidx.compose.ui.node.ComposeUiNode;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.presentation.screen.filter.quickaccess.components.QuickAccessFiltersContainerContentKt;
import com.vuitton.android.presentation.screen.filter.quickaccess.models.QuickAccessFiltersViewState;
import defpackage.ry;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import org.bouncycastle.asn1.cmp.PKIFailureInfo;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\b\n\u0002\u0010\u000b\n\u0002\b\u0002¨\u0006\u0002²\u0006\u000e\u0010\u0001\u001a\u00020\u00008\n@\nX\u008a\u008e\u0002"}, d2 = {"", "isContentVisible", "presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class QuickAccessFiltersContainerKt {
    public static final void a(final QuickAccessFiltersViewState quickAccessFiltersViewState, Modifier modifier, boolean z, final boolean z2, EnterTransition enterTransition, ExitTransition exitTransition, Function2 function2, Function0 function0, final Function0 function1, Function0 function3, final Function1 function4, Composer composer, int i2, int i3) {
        int i4;
        EnterTransition enterTransition2;
        ExitTransition exitTransition2;
        Function2 function5;
        Function0 function6;
        Function0 function7;
        int i5;
        final Modifier modifier2;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = defpackage.a.e(modifierE, "QuickAccessFiltersContainer");
        }
        Modifier modifier3 = modifierE;
        quickAccessFiltersViewState.getClass();
        enterTransition.getClass();
        exitTransition.getClass();
        function2.getClass();
        function0.getClass();
        function1.getClass();
        function3.getClass();
        function4.getClass();
        GapComposer gapComposerH = composer.h(-410081212);
        if ((i2 & 6) == 0) {
            i4 = (gapComposerH.y(quickAccessFiltersViewState) ? 4 : 2) | i2;
        } else {
            i4 = i2;
        }
        if ((i2 & 48) == 0) {
            i4 |= gapComposerH.K(modifier3) ? 32 : 16;
        }
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i4 |= gapComposerH.b(z) ? 256 : 128;
        }
        if ((i2 & 3072) == 0) {
            i4 |= gapComposerH.b(z2) ? 2048 : 1024;
        }
        if ((i2 & 24576) == 0) {
            enterTransition2 = enterTransition;
            i4 |= gapComposerH.K(enterTransition2) ? 16384 : 8192;
        } else {
            enterTransition2 = enterTransition;
        }
        if ((196608 & i2) == 0) {
            exitTransition2 = exitTransition;
            i4 |= gapComposerH.K(exitTransition2) ? 131072 : 65536;
        } else {
            exitTransition2 = exitTransition;
        }
        if ((1572864 & i2) == 0) {
            function5 = function2;
            i4 |= gapComposerH.y(function5) ? 1048576 : 524288;
        } else {
            function5 = function2;
        }
        if ((12582912 & i2) == 0) {
            function6 = function0;
            i4 |= gapComposerH.y(function6) ? 8388608 : 4194304;
        } else {
            function6 = function0;
        }
        if ((100663296 & i2) == 0) {
            i4 |= gapComposerH.y(function1) ? 67108864 : 33554432;
        }
        if ((805306368 & i2) == 0) {
            function7 = function3;
            i4 |= gapComposerH.y(function7) ? PKIFailureInfo.duplicateCertReq : 268435456;
        } else {
            function7 = function3;
        }
        if ((i3 & 6) == 0) {
            i5 = i3 | (gapComposerH.y(function4) ? 4 : 2);
        } else {
            i5 = i3;
        }
        if (gapComposerH.p(i4 & 1, ((i4 & 306783379) == 306783378 && (i5 & 3) == 2) ? false : true)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (objX == composer$Companion$Empty$1) {
                objX = SnapshotStateKt.g(Boolean.FALSE);
                gapComposerH.q(objX);
            }
            final MutableState mutableState = (MutableState) objX;
            Boolean boolValueOf = Boolean.valueOf(z);
            boolean z3 = (i4 & 896) == 256;
            Object objX2 = gapComposerH.x();
            if (z3 || objX2 == composer$Companion$Empty$1) {
                objX2 = new QuickAccessFiltersContainerKt$QuickAccessFiltersContainer$1$1(z, mutableState, null);
                gapComposerH.q(objX2);
            }
            int i6 = i4 >> 6;
            EffectsKt.e(gapComposerH, boolValueOf, (Function2) objX2);
            final Function2 function8 = function5;
            final Function0 function9 = function6;
            final Function0 function10 = function7;
            modifier2 = modifier3;
            AnimatedVisibilityKt.e(z, modifier2, enterTransition2, exitTransition2, "QAF container animation", ComposableLambdaKt.b(925831276, new Function3() { // from class: ar0
                @Override // kotlin.jvm.functions.Function3
                public final Object A(Object obj, Object obj2, Object obj3) {
                    AnimatedVisibilityScope animatedVisibilityScope = (AnimatedVisibilityScope) obj;
                    Composer composer2 = (Composer) obj2;
                    ((Integer) obj3).getClass();
                    Modifier modifierE2 = modifier2;
                    if (modifierE2 != null) {
                        modifierE2 = a.e(modifierE2, "QuickAccessFiltersContainer$lambda$4");
                    }
                    animatedVisibilityScope.getClass();
                    OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                    Modifier modifierB = BackgroundKt.b(SizeKt.d(modifierE2, 1.0f), LVAppDesignKitTheme.c(composer2).f48361b.u, RectangleShapeKt.f8913a);
                    Arrangement$Top$1 arrangement$Top$1 = Arrangement.f4920c;
                    Alignment.f8582a.getClass();
                    ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(arrangement$Top$1, Alignment.Companion.n, composer2, 0);
                    int iHashCode = Long.hashCode(composer2.getT());
                    PersistentCompositionLocalMap persistentCompositionLocalMapN = composer2.n();
                    Modifier modifierC = ComposedModifierKt.c(composer2, modifierB);
                    ComposeUiNode.b0.getClass();
                    Function0 function11 = ComposeUiNode.Companion.f9641b;
                    if (composer2.getF7976a() == null) {
                        ComposablesKt.b();
                        throw null;
                    }
                    composer2.B();
                    if (composer2.getS()) {
                        composer2.C(function11);
                    } else {
                        composer2.o();
                    }
                    Updater.c(composer2, columnMeasurePolicyA, ComposeUiNode.Companion.f9644f);
                    Updater.c(composer2, persistentCompositionLocalMapN, ComposeUiNode.Companion.f9643e);
                    Updater.c(composer2, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
                    Updater.b(composer2, ComposeUiNode.Companion.f9645h);
                    Updater.c(composer2, modifierC, ComposeUiNode.Companion.d);
                    boolean zBooleanValue = ((Boolean) mutableState.getF10755b()).booleanValue();
                    QuickAccessFiltersViewState quickAccessFiltersViewState2 = quickAccessFiltersViewState;
                    QuickAccessFiltersContainerContentKt.a(null, zBooleanValue, z2, quickAccessFiltersViewState2.f58176j, quickAccessFiltersViewState2.f58177k, quickAccessFiltersViewState2.l, quickAccessFiltersViewState2.f58172e, quickAccessFiltersViewState2.p, function8, function9, function1, function10, function4, composer2, 0);
                    composer2.r();
                    return Unit.f71739a;
                }
            }, gapComposerH), gapComposerH, 221184 | (i6 & 14) | (i4 & 112) | (i6 & 896) | (i6 & 7168), 0);
        } else {
            modifier2 = modifier3;
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new ry(quickAccessFiltersViewState, modifier2, z, z2, enterTransition, exitTransition, function2, function0, function1, function3, function4, i2, i3);
        }
    }
}
