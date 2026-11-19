package com.vuitton.android.presentation.screen.options.accessibility.components;

import android.content.Context;
import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.layout.WindowInsetsPadding_androidKt;
import androidx.compose.material3.ScaffoldKt;
import androidx.compose.material3.SnackbarHostState;
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
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.compose.ui.res.StringResources_androidKt;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.compose.LocalLifecycleOwnerKt;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.R;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.ShadowKt;
import com.vuitton.android.presentation.notification.NotificationBuilder;
import com.vuitton.android.presentation.notification.NotificationBuilderKt;
import com.vuitton.android.presentation.screen.options.accessibility.AccessibilityPreferencesViewModel;
import com.vuitton.android.presentation.screen.options.accessibility.models.AccessibilityPreferencesViewState;
import com.vuitton.android.presentation.screen.options.notifications.components.StickyBottomAreaKt;
import defpackage.f0;
import defpackage.g0;
import defpackage.j2;
import defpackage.n00;
import defpackage.u;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.reflect.KFunction;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002¨\u0006\u0004²\u0006\f\u0010\u0001\u001a\u00020\u00008\nX\u008a\u0084\u0002²\u0006\f\u0010\u0003\u001a\u00020\u00028\nX\u008a\u0084\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/options/accessibility/models/AccessibilityPreferencesViewState;", "viewState", "Landroidx/lifecycle/Lifecycle$State;", "lifecycleState", "presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class AccessibilityPreferencesComposableKt {
    public static final void a(final AccessibilityPreferencesViewModel accessibilityPreferencesViewModel, final Function0 function0, Function0 function1, Composer composer, int i2) {
        GapComposer gapComposer;
        Object accessibilityPreferencesComposableKt$AccessibilityPreferencesComposable$3$1;
        SnackbarHostState snackbarHostState;
        accessibilityPreferencesViewModel.getClass();
        function0.getClass();
        function1.getClass();
        GapComposer gapComposerH = composer.h(1798725799);
        int i3 = i2 | (gapComposerH.K(accessibilityPreferencesViewModel) ? 4 : 2) | (gapComposerH.y(function0) ? 32 : 16) | (gapComposerH.y(function1) ? 256 : 128);
        if (gapComposerH.p(i3 & 1, (i3 & 147) != 146)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Context context = (Context) gapComposerH.k(AndroidCompositionLocals_androidKt.f9936b);
            final MutableState mutableStateB = SnapshotStateKt.b(accessibilityPreferencesViewModel.getF59687k(), gapComposerH);
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (objX == composer$Companion$Empty$1) {
                objX = n00.b(gapComposerH);
            }
            SnackbarHostState snackbarHostState2 = (SnackbarHostState) objX;
            NotificationBuilder notificationBuilderA = NotificationBuilderKt.a(gapComposerH);
            MutableState mutableStateB2 = SnapshotStateKt.b(((LifecycleOwner) gapComposerH.k(LocalLifecycleOwnerKt.f13562a)).getD().c(), gapComposerH);
            Lifecycle.State state = (Lifecycle.State) mutableStateB2.getF10755b();
            int i4 = i3 & 14;
            boolean zK = gapComposerH.K(mutableStateB2) | (i4 == 4);
            Object objX2 = gapComposerH.x();
            if (zK || objX2 == composer$Companion$Empty$1) {
                objX2 = new AccessibilityPreferencesComposableKt$AccessibilityPreferencesComposable$1$1(accessibilityPreferencesViewModel, mutableStateB2, null);
                gapComposerH.q(objX2);
            }
            EffectsKt.e(gapComposerH, state, (Function2) objX2);
            Unit unit = Unit.f71739a;
            boolean z = i4 == 4;
            Object objX3 = gapComposerH.x();
            if (z || objX3 == composer$Companion$Empty$1) {
                objX3 = new AccessibilityPreferencesComposableKt$AccessibilityPreferencesComposable$2$1(accessibilityPreferencesViewModel, null);
                gapComposerH.q(objX3);
            }
            EffectsKt.e(gapComposerH, unit, (Function2) objX3);
            boolean zY = (i4 == 4) | ((i3 & 896) == 256) | gapComposerH.y(notificationBuilderA) | gapComposerH.y(context);
            Object objX4 = gapComposerH.x();
            if (zY || objX4 == composer$Companion$Empty$1) {
                snackbarHostState = snackbarHostState2;
                accessibilityPreferencesComposableKt$AccessibilityPreferencesComposable$3$1 = new AccessibilityPreferencesComposableKt$AccessibilityPreferencesComposable$3$1(accessibilityPreferencesViewModel, function1, snackbarHostState, notificationBuilderA, context, null);
                gapComposerH.q(accessibilityPreferencesComposableKt$AccessibilityPreferencesComposable$3$1);
            } else {
                accessibilityPreferencesComposableKt$AccessibilityPreferencesComposable$3$1 = objX4;
                snackbarHostState = snackbarHostState2;
            }
            EffectsKt.e(gapComposerH, unit, (Function2) accessibilityPreferencesComposableKt$AccessibilityPreferencesComposable$3$1);
            gapComposer = gapComposerH;
            ScaffoldKt.a(new DTFunctionNameModifier("AccessibilityPreferencesComposable").o(SizeKt.f5052c), ComposableLambdaKt.b(-1292400277, new f0(accessibilityPreferencesViewModel, function1, 1), gapComposerH), ComposableLambdaKt.b(-1123148692, new Function2() { // from class: com.vuitton.android.presentation.screen.options.accessibility.components.a
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    Composer composer2 = (Composer) obj;
                    int iIntValue = ((Integer) obj2).intValue();
                    if (composer2.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                        OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                        Modifier modifierD = SizeKt.d(WindowInsetsPadding_androidKt.b(BackgroundKt.b(ShadowKt.c(new DTFunctionNameModifier("AccessibilityPreferencesComposable$lambda$7"), composer2, 6, 3), LVAppDesignKitTheme.c(composer2).f48361b.f48374a, RectangleShapeKt.f8913a)), 1.0f);
                        Alignment.f8582a.getClass();
                        MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8587f, false);
                        int iHashCode = Long.hashCode(composer2.getT());
                        PersistentCompositionLocalMap persistentCompositionLocalMapN = composer2.n();
                        Modifier modifierC = ComposedModifierKt.c(composer2, modifierD);
                        ComposeUiNode.b0.getClass();
                        Function0 function2 = ComposeUiNode.Companion.f9641b;
                        if (composer2.getF7976a() == null) {
                            ComposablesKt.b();
                            throw null;
                        }
                        composer2.B();
                        if (composer2.getS()) {
                            composer2.C(function2);
                        } else {
                            composer2.o();
                        }
                        Updater.c(composer2, measurePolicyD, ComposeUiNode.Companion.f9644f);
                        Updater.c(composer2, persistentCompositionLocalMapN, ComposeUiNode.Companion.f9643e);
                        Updater.c(composer2, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
                        Updater.b(composer2, ComposeUiNode.Companion.f9645h);
                        Modifier modifierC2 = n00.c(composer2, modifierC, ComposeUiNode.Companion.d, "AccessibilityPreferencesComposable$lambda$7", 1.0f);
                        String strC = ((AccessibilityPreferencesViewState) mutableStateB.getF10755b()).d.d ? StringResources_androidKt.c(composer2, R.string.accessibility_settings_statement_label) : null;
                        AccessibilityPreferencesViewModel accessibilityPreferencesViewModel2 = accessibilityPreferencesViewModel;
                        boolean zY2 = composer2.y(accessibilityPreferencesViewModel2);
                        Object objX5 = composer2.x();
                        Composer$Companion$Empty$1 composer$Companion$Empty$2 = Composer.Companion.f7939a;
                        if (zY2 || objX5 == composer$Companion$Empty$2) {
                            AccessibilityPreferencesComposableKt$AccessibilityPreferencesComposable$5$1$2$1 accessibilityPreferencesComposableKt$AccessibilityPreferencesComposable$5$1$2$1 = new AccessibilityPreferencesComposableKt$AccessibilityPreferencesComposable$5$1$2$1(0, accessibilityPreferencesViewModel2, AccessibilityPreferencesViewModel.class, "saveValues", "saveValues()V", 0);
                            composer2.q(accessibilityPreferencesComposableKt$AccessibilityPreferencesComposable$5$1$2$1);
                            objX5 = accessibilityPreferencesComposableKt$AccessibilityPreferencesComposable$5$1$2$1;
                        }
                        Function0 function3 = (Function0) ((KFunction) objX5);
                        boolean zY3 = composer2.y(accessibilityPreferencesViewModel2);
                        Function0 function4 = function0;
                        boolean zK2 = zY3 | composer2.K(function4);
                        Object objX6 = composer2.x();
                        if (zK2 || objX6 == composer$Companion$Empty$2) {
                            objX6 = new j2(accessibilityPreferencesViewModel2, function4, 1);
                            composer2.q(objX6);
                        }
                        StickyBottomAreaKt.a(modifierC2, strC, "accessibilityPreference_saveButton", "accessibilityPreference_readAccessibilityStatementLinkButton", function3, (Function0) objX6, composer2, 3462, 0);
                        composer2.r();
                    } else {
                        composer2.D();
                    }
                    return Unit.f71739a;
                }
            }, gapComposerH), ComposableLambdaKt.b(-953897107, new g0(snackbarHostState, 1), gapComposerH), null, 0, 0L, 0L, null, ComposableLambdaKt.b(1870765878, new Function3() { // from class: com.vuitton.android.presentation.screen.options.accessibility.components.b
                @Override // kotlin.jvm.functions.Function3
                public final Object A(Object obj, Object obj2, Object obj3) {
                    PaddingValues paddingValues = (PaddingValues) obj;
                    Composer composer2 = (Composer) obj2;
                    int iIntValue = ((Integer) obj3).intValue();
                    paddingValues.getClass();
                    if ((iIntValue & 6) == 0) {
                        iIntValue |= composer2.K(paddingValues) ? 4 : 2;
                    }
                    if (composer2.p(iIntValue & 1, (iIntValue & 19) != 18)) {
                        OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                        Modifier modifierH = PaddingKt.h(new DTFunctionNameModifier("AccessibilityPreferencesComposable$lambda$9").o(SizeKt.f5052c), paddingValues);
                        AccessibilityPreferencesViewState accessibilityPreferencesViewState = (AccessibilityPreferencesViewState) mutableStateB.getF10755b();
                        AccessibilityPreferencesViewModel accessibilityPreferencesViewModel2 = accessibilityPreferencesViewModel;
                        boolean zY2 = composer2.y(accessibilityPreferencesViewModel2);
                        Object objX5 = composer2.x();
                        Composer$Companion$Empty$1 composer$Companion$Empty$2 = Composer.Companion.f7939a;
                        if (zY2 || objX5 == composer$Companion$Empty$2) {
                            AccessibilityPreferencesComposableKt$AccessibilityPreferencesComposable$7$1$1 accessibilityPreferencesComposableKt$AccessibilityPreferencesComposable$7$1$1 = new AccessibilityPreferencesComposableKt$AccessibilityPreferencesComposable$7$1$1(1, accessibilityPreferencesViewModel2, AccessibilityPreferencesViewModel.class, "setSimplifiedNavigation", "setSimplifiedNavigation(Z)V", 0);
                            composer2.q(accessibilityPreferencesComposableKt$AccessibilityPreferencesComposable$7$1$1);
                            objX5 = accessibilityPreferencesComposableKt$AccessibilityPreferencesComposable$7$1$1;
                        }
                        Function1 function2 = (Function1) ((KFunction) objX5);
                        boolean zY3 = composer2.y(accessibilityPreferencesViewModel2);
                        Object objX6 = composer2.x();
                        if (zY3 || objX6 == composer$Companion$Empty$2) {
                            AccessibilityPreferencesComposableKt$AccessibilityPreferencesComposable$7$2$1 accessibilityPreferencesComposableKt$AccessibilityPreferencesComposable$7$2$1 = new AccessibilityPreferencesComposableKt$AccessibilityPreferencesComposable$7$2$1(1, accessibilityPreferencesViewModel2, AccessibilityPreferencesViewModel.class, "setDisableAutoplay", "setDisableAutoplay(Z)V", 0);
                            composer2.q(accessibilityPreferencesComposableKt$AccessibilityPreferencesComposable$7$2$1);
                            objX6 = accessibilityPreferencesComposableKt$AccessibilityPreferencesComposable$7$2$1;
                        }
                        Function1 function3 = (Function1) ((KFunction) objX6);
                        boolean zY4 = composer2.y(accessibilityPreferencesViewModel2);
                        Object objX7 = composer2.x();
                        if (zY4 || objX7 == composer$Companion$Empty$2) {
                            AccessibilityPreferencesComposableKt$AccessibilityPreferencesComposable$7$3$1 accessibilityPreferencesComposableKt$AccessibilityPreferencesComposable$7$3$1 = new AccessibilityPreferencesComposableKt$AccessibilityPreferencesComposable$7$3$1(1, accessibilityPreferencesViewModel2, AccessibilityPreferencesViewModel.class, "setEnhancedContrast", "setEnhancedContrast(Z)V", 0);
                            composer2.q(accessibilityPreferencesComposableKt$AccessibilityPreferencesComposable$7$3$1);
                            objX7 = accessibilityPreferencesComposableKt$AccessibilityPreferencesComposable$7$3$1;
                        }
                        AccessibilityPreferencesScreenKt.a(modifierH, accessibilityPreferencesViewState, function2, function3, (Function1) ((KFunction) objX7), composer2, 0);
                    } else {
                        composer2.D();
                    }
                    return Unit.f71739a;
                }
            }, gapComposerH), gapComposer, 805309878, 496);
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new u(i2, 1, accessibilityPreferencesViewModel, function0, function1);
        }
    }
}
