package com.vuitton.android.presentation.compose.components;

import androidx.compose.animation.SingleValueAnimationKt;
import androidx.compose.animation.core.AnimationSpecKt;
import androidx.compose.animation.core.EasingKt;
import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.BorderKt;
import androidx.compose.foundation.interaction.InteractionSourceKt;
import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.foundation.interaction.PressInteractionKt;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.shape.RoundedCornerShape;
import androidx.compose.foundation.shape.RoundedCornerShapeKt;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.CompositionLocalKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.State;
import androidx.compose.runtime.StaticProvidableCompositionLocal;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.ClipKt;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.RectangleShapeKt;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.DensityKt;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.designkit.ui.common.ModifierExtKt;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.atoms.configurations.ConfigurationIconButton;
import defpackage.lt;
import defpackage.og;
import defpackage.rv;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import net.rtccloud.sdk.Call;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u000e\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002¨\u0006\u0004²\u0006\f\u0010\u0001\u001a\u00020\u00008\nX\u008a\u0084\u0002²\u0006\f\u0010\u0003\u001a\u00020\u00028\nX\u008a\u0084\u0002"}, d2 = {"", "isPressed", "Landroidx/compose/ui/graphics/Color;", "animatingBorderColor", "presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class LVTextButtonKt {
    public static final void a(Modifier modifier, ConfigurationIconButton configurationIconButton, String str, String str2, String str3, boolean z, Function0 function0, Composer composer, int i2) {
        ConfigurationIconButton configurationIconButton2;
        boolean z2;
        long j2;
        long jB;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = defpackage.a.e(modifierE, "LVTextButton");
        }
        configurationIconButton.getClass();
        ConfigurationIconButton.Border border = configurationIconButton.f48556h;
        str.getClass();
        function0.getClass();
        GapComposer gapComposerH = composer.h(298670878);
        int i3 = i2 | (gapComposerH.K(modifierE) ? 4 : 2) | (gapComposerH.K(configurationIconButton) ? 32 : 16) | (gapComposerH.K(str) ? 256 : 128) | (gapComposerH.K(str2) ? 2048 : 1024) | (gapComposerH.K(str3) ? 16384 : 8192) | 1769472 | (gapComposerH.y(function0) ? 8388608 : 4194304);
        if (gapComposerH.p(i3 & 1, (4793491 & i3) != 4793490)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            StaticProvidableCompositionLocal staticProvidableCompositionLocal = CompositionLocalsKt.f10031h;
            Density density = (Density) gapComposerH.k(staticProvidableCompositionLocal);
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (objX == composer$Companion$Empty$1) {
                objX = InteractionSourceKt.a();
                gapComposerH.q(objX);
            }
            MutableInteractionSource mutableInteractionSource = (MutableInteractionSource) objX;
            MutableState mutableStateA = PressInteractionKt.a(mutableInteractionSource, gapComposerH, 6);
            long j3 = ((Boolean) mutableStateA.getF10755b()).booleanValue() ? configurationIconButton.f48552b : configurationIconButton.f48551a;
            ConfigurationIconButton.Border border2 = ((Boolean) mutableStateA.getF10755b()).booleanValue() ? configurationIconButton.f48557i : border;
            boolean z3 = border2 instanceof ConfigurationIconButton.Border.Stroke;
            if (z3) {
                jB = ((ConfigurationIconButton.Border.Stroke) border2).f48560a;
            } else {
                if (border instanceof ConfigurationIconButton.Border.Stroke) {
                    j2 = ((ConfigurationIconButton.Border.Stroke) border).f48560a;
                } else {
                    Color.f8866b.getClass();
                    j2 = Color.f8870h;
                }
                jB = Color.b(Call.Parameters.DEFAULT_CAMERA_ZOOM, j2);
            }
            long j4 = j3;
            ConfigurationIconButton.Border border3 = border2;
            State stateB = SingleValueAnimationKt.b(jB, AnimationSpecKt.c(150, 0, EasingKt.f3862a, 2), "animatingBorderColor", gapComposerH, KyberEngine.KyberPolyBytes, 8);
            Modifier modifierO = SizeKt.o(modifierE, LVAppDesignKitTheme.d(gapComposerH).v);
            RoundedCornerShape roundedCornerShape = RoundedCornerShapeKt.f5846a;
            z2 = true;
            Modifier modifierO2 = ModifierExtKt.c(BackgroundKt.b(ClipKt.a(modifierO, roundedCornerShape), j4, RectangleShapeKt.f8913a), true, mutableInteractionSource, null, function0, 18).o(z3 ? BorderKt.a(new DTFunctionNameModifier("LVTextButton"), ((ConfigurationIconButton.Border.Stroke) border3).f48561b, ((Color) stateB.getF10755b()).f8872a, roundedCornerShape) : new DTFunctionNameModifier("LVTextButton"));
            boolean z4 = (i3 & 7168) == 2048;
            Object objX2 = gapComposerH.x();
            if (z4 || objX2 == composer$Companion$Empty$1) {
                objX2 = new lt(str2, 16);
                gapComposerH.q(objX2);
            }
            Modifier modifierB = SemanticsModifierKt.b(modifierO2, false, (Function1) objX2);
            Alignment.f8582a.getClass();
            MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8587f, false);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierB);
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
            configurationIconButton2 = configurationIconButton;
            CompositionLocalKt.a(staticProvidableCompositionLocal.c(DensityKt.a(density.getF9496c(), 1.0f)), ComposableLambdaKt.b(2037503000, new rv(str3, str, configurationIconButton2, 16), gapComposerH), gapComposerH, 56);
            gapComposerH.Z(true);
        } else {
            configurationIconButton2 = configurationIconButton;
            gapComposerH.D();
            z2 = z;
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new og(modifierE, configurationIconButton2, str, str2, str3, z2, function0, i2);
        }
    }
}
