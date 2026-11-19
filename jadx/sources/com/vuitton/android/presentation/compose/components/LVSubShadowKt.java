package com.vuitton.android.presentation.compose.components;

import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.shape.RoundedCornerShape;
import androidx.compose.foundation.shape.RoundedCornerShapeKt;
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
import androidx.compose.ui.draw.BlurKt;
import androidx.compose.ui.draw.BlurredEdgeTreatment;
import androidx.compose.ui.draw.ClipKt;
import androidx.compose.ui.graphics.Brush;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import defpackage.fh;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class LVSubShadowKt {
    public static final void a(Modifier modifier, float f2, Composer composer, int i2) {
        if (modifier != null) {
            modifier = defpackage.a.e(modifier, "LVSubShadow-rAjV9yQ");
        }
        GapComposer gapComposerH = composer.h(359102516);
        int i3 = (gapComposerH.c(f2) ? 32 : 16) | i2;
        if (gapComposerH.p(i3 & 1, (i3 & 19) != 18)) {
            gapComposerH.y0();
            if ((i2 & 1) != 0 && !gapComposerH.h0()) {
                gapComposerH.D();
            }
            gapComposerH.a0();
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier("LVSubShadow-rAjV9yQ");
            float f3 = LVAppDesignKitTheme.d(gapComposerH).n;
            float f4 = LVAppDesignKitTheme.d(gapComposerH).n;
            RoundedCornerShape roundedCornerShapeA = RoundedCornerShapeKt.a(LVAppDesignKitTheme.d(gapComposerH).f48390j);
            BlurredEdgeTreatment.Companion companion = BlurredEdgeTreatment.f8702a;
            Modifier modifierA = BlurKt.a(dTFunctionNameModifier, f3, f4, roundedCornerShapeA);
            Alignment.f8582a.getClass();
            MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierA);
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
            Updater.c(gapComposerH, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
            Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
            Updater.c(gapComposerH, modifierC, ComposeUiNode.Companion.d);
            Modifier modifierA2 = ClipKt.a(PaddingKt.k(SizeKt.f(modifier, f2), LVAppDesignKitTheme.l(gapComposerH).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2), RoundedCornerShapeKt.b(LVAppDesignKitTheme.d(gapComposerH).f48383a, LVAppDesignKitTheme.d(gapComposerH).f48383a, LVAppDesignKitTheme.d(gapComposerH).f48390j, LVAppDesignKitTheme.d(gapComposerH).f48390j));
            Brush.Companion companion2 = Brush.f8862a;
            Color color = new Color(Color.b(0.05f, LVAppDesignKitTheme.c(gapComposerH).f48361b.u));
            Color.f8866b.getClass();
            BoxKt.a(BackgroundKt.a(modifierA2, Brush.Companion.b(companion2, CollectionsKt.P(color, new Color(Color.f8870h)), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 14)), gapComposerH, 0);
            gapComposerH.Z(true);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new fh(modifier, f2, i2, 1);
        }
    }
}
