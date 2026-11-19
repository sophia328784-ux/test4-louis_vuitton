package com.vuitton.android.presentation.screen.options.accessibility.components;

import androidx.compose.foundation.ScrollKt;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.Arrangement$Top$1;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.layout.SpacerKt;
import androidx.compose.material3.TextKt;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.res.StringResources_androidKt;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.google.ar.core.ImageMetadata;
import com.vuitton.android.R;
import com.vuitton.android.designkit.ui.common.ModifierExtKt;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.presentation.compose.components.PreferenceSwitchKt;
import com.vuitton.android.presentation.screen.options.accessibility.models.AccessibilityPreferencesFeatureFlags;
import com.vuitton.android.presentation.screen.options.accessibility.models.AccessibilityPreferencesViewState;
import defpackage.n00;
import defpackage.w;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class AccessibilityPreferencesScreenKt {
    public static final void a(Modifier modifier, AccessibilityPreferencesViewState accessibilityPreferencesViewState, Function1 function1, Function1 function2, Function1 function3, Composer composer, int i2) {
        float f2;
        boolean z;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = defpackage.a.e(modifierE, "AccessibilityPreferencesScreen");
        }
        accessibilityPreferencesViewState.getClass();
        function1.getClass();
        function2.getClass();
        function3.getClass();
        GapComposer gapComposerH = composer.h(851230623);
        int i3 = i2 | (gapComposerH.K(modifierE) ? 4 : 2) | (gapComposerH.K(accessibilityPreferencesViewState) ? 32 : 16) | (gapComposerH.y(function1) ? 256 : 128) | (gapComposerH.y(function2) ? 2048 : 1024) | (gapComposerH.y(function3) ? 16384 : 8192);
        if (gapComposerH.p(i3 & 1, (i3 & 9363) != 9362)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Modifier modifierD = ScrollKt.d(modifierE, ScrollKt.b(gapComposerH), false, 14);
            Arrangement$Top$1 arrangement$Top$1 = Arrangement.f4920c;
            Alignment.f8582a.getClass();
            ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(arrangement$Top$1, Alignment.Companion.n, gapComposerH, 0);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierD);
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
            Updater.c(gapComposerH, columnMeasurePolicyA, ComposeUiNode.Companion.f9644f);
            Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
            Updater.c(gapComposerH, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
            Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
            TextKt.c(StringResources_androidKt.c(gapComposerH, R.string.accessibility_settings_description), PaddingKt.m(n00.f(gapComposerH, modifierC, ComposeUiNode.Companion.d, "AccessibilityPreferencesScreen", "accessibilityPreference_descriptionText").o(SizeKt.f5052c), LVAppDesignKitTheme.l(gapComposerH).f48416e, LVAppDesignKitTheme.l(gapComposerH).f48416e, LVAppDesignKitTheme.l(gapComposerH).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, 8), LVAppDesignKitTheme.c(gapComposerH).f48361b.l, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).g, gapComposerH, 0, 0, 131064);
            gapComposerH = gapComposerH;
            SpacerKt.a(gapComposerH, SizeKt.f(new DTFunctionNameModifier("AccessibilityPreferencesScreen"), LVAppDesignKitTheme.l(gapComposerH).f48418h));
            AccessibilityPreferencesFeatureFlags accessibilityPreferencesFeatureFlags = accessibilityPreferencesViewState.d;
            if (accessibilityPreferencesFeatureFlags.f59723a) {
                gapComposerH.L(561153235);
                Modifier modifierD2 = SizeKt.d(ModifierExtKt.e(new DTFunctionNameModifier("AccessibilityPreferencesScreen"), "accessibilityPreference_simplifyNavigationView"), 1.0f);
                String strC = StringResources_androidKt.c(gapComposerH, R.string.accessibility_settings_simplify_navigation_title);
                String strC2 = StringResources_androidKt.c(gapComposerH, R.string.accessibility_settings_simplify_navigation_description);
                boolean z2 = accessibilityPreferencesViewState.f59736a;
                int i4 = ((i3 << 15) & 29360128) | ImageMetadata.EDGE_MODE;
                f2 = 1.0f;
                PreferenceSwitchKt.a(modifierD2, strC, strC2, false, z2, true, null, function1, gapComposerH, i4, 72);
                gapComposerH.Z(false);
            } else {
                f2 = 1.0f;
                gapComposerH.L(561743289);
                gapComposerH.Z(false);
            }
            boolean z3 = accessibilityPreferencesFeatureFlags.f59724b;
            boolean z4 = accessibilityPreferencesFeatureFlags.f59726e;
            if (z3) {
                gapComposerH.L(561824230);
                z = z4;
                PreferenceSwitchKt.a(SizeKt.d(ModifierExtKt.e(new DTFunctionNameModifier("AccessibilityPreferencesScreen"), "accessibilityPreference_disableAutoplayView"), f2), StringResources_androidKt.c(gapComposerH, R.string.accessibility_settings_disable_autoplay_title), StringResources_androidKt.c(gapComposerH, R.string.accessibility_settings_disable_autoplay_description), false, accessibilityPreferencesViewState.f59737b, true, null, function2, gapComposerH, ((i3 << 12) & 29360128) | ImageMetadata.EDGE_MODE, 72);
                gapComposerH.Z(false);
            } else {
                z = z4;
                gapComposerH.L(562396025);
                gapComposerH.Z(false);
            }
            if (accessibilityPreferencesFeatureFlags.f59725c) {
                gapComposerH.L(562499255);
                PreferenceSwitchKt.a(SizeKt.d(ModifierExtKt.e(new DTFunctionNameModifier("AccessibilityPreferencesScreen"), "accessibilityPreference_enhancedContrastView"), f2), StringResources_androidKt.c(gapComposerH, R.string.accessibility_settings_enhanced_contrast_title), StringResources_androidKt.c(gapComposerH, R.string.accessibility_settings_enhanced_contrast_description), !z, accessibilityPreferencesViewState.f59738c, true, z ? StringResources_androidKt.c(gapComposerH, R.string.accessibility_settings_contrast_disclaimer) : null, function3, gapComposerH, ((i3 << 9) & 29360128) | ImageMetadata.EDGE_MODE, 0);
                gapComposerH.Z(false);
            } else {
                gapComposerH.L(563310649);
                gapComposerH.Z(false);
            }
            gapComposerH.Z(true);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new w(modifierE, (Object) accessibilityPreferencesViewState, function1, function2, function3, i2, 2);
        }
    }
}
