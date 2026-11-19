package com.vuitton.android.presentation.screen.immersivearticle.podcast.components;

import androidx.compose.foundation.ClickableKt;
import androidx.compose.foundation.interaction.InteractionSourceKt;
import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.shape.RoundedCornerShapeKt;
import androidx.compose.material3.IconKt;
import androidx.compose.material3.InteractiveComponentSizeKt;
import androidx.compose.material3.MinimumInteractiveModifier;
import androidx.compose.material3.RippleKt;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.ClipKt;
import androidx.compose.ui.layout.HorizontalAlignmentLine;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.res.PainterResources_androidKt;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import androidx.compose.ui.unit.Dp;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import defpackage.a;
import defpackage.o70;
import defpackage.yn0;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class PodcastControlButtonKt {
    public static final void a(Modifier modifier, int i2, String str, float f2, Function0 function0, Composer composer, int i3, int i4) {
        int i5;
        Modifier dTFunctionNameModifier = modifier;
        if (dTFunctionNameModifier != null) {
            dTFunctionNameModifier = a.e(dTFunctionNameModifier, "PodcastControlButton-hGBTI10");
        }
        str.getClass();
        function0.getClass();
        GapComposer gapComposerH = composer.h(469669897);
        int i6 = i4 & 1;
        if (i6 != 0) {
            i5 = i3 | 6;
        } else {
            i5 = i3 | (gapComposerH.K(dTFunctionNameModifier) ? 4 : 2);
        }
        int i7 = i5 | (gapComposerH.d(i2) ? 32 : 16) | (gapComposerH.K(str) ? 256 : 128) | (gapComposerH.c(f2) ? 2048 : 1024) | (gapComposerH.y(function0) ? 16384 : 8192);
        if (gapComposerH.p(i7 & 1, (i7 & 9363) != 9362)) {
            if (i6 != 0) {
                dTFunctionNameModifier = new DTFunctionNameModifier("PodcastControlButton-hGBTI10");
            }
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (objX == composer$Companion$Empty$1) {
                objX = InteractionSourceKt.a();
                gapComposerH.q(objX);
            }
            MutableInteractionSource mutableInteractionSource = (MutableInteractionSource) objX;
            Object objX2 = gapComposerH.x();
            if (objX2 == composer$Companion$Empty$1) {
                objX2 = new yn0(4);
                gapComposerH.q(objX2);
            }
            Modifier modifierB = SemanticsModifierKt.b(dTFunctionNameModifier, false, (Function1) objX2);
            HorizontalAlignmentLine horizontalAlignmentLine = InteractiveComponentSizeKt.f7011a;
            Modifier modifierA = ClipKt.a(SizeKt.o(modifierB.o(MinimumInteractiveModifier.f7044b), f2), RoundedCornerShapeKt.f5846a);
            Dp.Companion companion = Dp.f11004c;
            Modifier modifierB2 = ClickableKt.b(modifierA, mutableInteractionSource, RippleKt.a(f2 / 2.0f, 4, false), false, null, null, function0, 28);
            Alignment.f8582a.getClass();
            MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8587f, false);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierB2);
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
            int i8 = i7 >> 3;
            IconKt.a(PainterResources_androidKt.a(i2, gapComposerH, i8 & 14), str, SizeKt.o(new DTFunctionNameModifier("PodcastControlButton-hGBTI10"), f2), LVAppDesignKitTheme.c(gapComposerH).f48361b.m, gapComposerH, 8 | (i8 & 112), 0);
            gapComposerH.Z(true);
        } else {
            gapComposerH.D();
        }
        Modifier modifier2 = dTFunctionNameModifier;
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new o70(modifier2, i2, str, f2, function0, i3, i4);
        }
    }
}
