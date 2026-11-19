package com.vuitton.android.presentation.screen.onboarding.components;

import android.content.res.Configuration;
import androidx.compose.foundation.ImageKt;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScopeInstance;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.FillElement;
import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.material3.TextKt;
import androidx.compose.runtime.Applier;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.ContentScale;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.compose.ui.res.PainterResources_androidKt;
import androidx.compose.ui.res.StringResources_androidKt;
import androidx.compose.ui.text.style.TextAlign;
import androidx.compose.ui.unit.Dp;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.R;
import com.vuitton.android.designkit.components.components.LVFlowerLoaderKt;
import com.vuitton.android.designkit.components.components.LVFlowerLoaderStyle;
import com.vuitton.android.designkit.ui.common.ModifierExtKt;
import com.vuitton.android.designkit.ui.theme.GradientKt;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.atoms.LVImageKt;
import defpackage.cj;
import defpackage.kw;
import defpackage.o60;
import defpackage.pq0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class OnboardingTransitionComposableKt {
    public static final void a(Function0 function0, Composer composer, int i2) {
        function0.getClass();
        GapComposer gapComposerH = composer.h(450196095);
        Applier applier = gapComposerH.f7976a;
        int i3 = i2 | (gapComposerH.y(function0) ? 4 : 2);
        if (gapComposerH.p(i3 & 1, (i3 & 3) != 2)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (objX == composer$Companion$Empty$1) {
                objX = new Dp(96.0f);
                gapComposerH.q(objX);
            }
            float f2 = ((Dp) objX).f11006b;
            Object objX2 = gapComposerH.x();
            if (objX2 == composer$Companion$Empty$1) {
                objX2 = 1500L;
                gapComposerH.q(objX2);
            }
            long jLongValue = ((Number) objX2).longValue();
            Unit unit = Unit.f71739a;
            boolean z = (i3 & 14) == 4;
            Object objX3 = gapComposerH.x();
            if (z || objX3 == composer$Companion$Empty$1) {
                objX3 = new OnboardingTransitionComposableKt$OnboardingTransition$1$1(jLongValue, function0, null);
                gapComposerH.q(objX3);
            }
            EffectsKt.e(gapComposerH, unit, (Function2) objX3);
            DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier("OnboardingTransition");
            FillElement fillElement = SizeKt.f5052c;
            Modifier modifierO = dTFunctionNameModifier.o(fillElement);
            Alignment.f8582a.getClass();
            MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierO);
            ComposeUiNode.b0.getClass();
            Function0 function1 = ComposeUiNode.Companion.f9641b;
            if (applier == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function1);
            } else {
                gapComposerH.o();
            }
            Function2 function2 = ComposeUiNode.Companion.f9644f;
            Updater.c(gapComposerH, measurePolicyD, function2);
            Function2 function3 = ComposeUiNode.Companion.f9643e;
            Updater.c(gapComposerH, persistentCompositionLocalMapU, function3);
            Integer numValueOf = Integer.valueOf(iHashCode);
            Function2 function4 = ComposeUiNode.Companion.g;
            Updater.c(gapComposerH, numValueOf, function4);
            Function1 function5 = ComposeUiNode.Companion.f9645h;
            Updater.b(gapComposerH, function5);
            Function2 function6 = ComposeUiNode.Companion.d;
            Updater.c(gapComposerH, modifierC, function6);
            Modifier modifierA = GradientKt.a(pq0.i("OnboardingTransition", fillElement), GradientKt.d);
            ContentScale.f9447a.getClass();
            ImageKt.a(PainterResources_androidKt.a(R.drawable.onboarding_icons_clear_background, gapComposerH, 0), null, modifierA, null, ContentScale.Companion.f9449b, Call.Parameters.DEFAULT_CAMERA_ZOOM, null, gapComposerH, 24632, 104);
            Modifier modifierI = pq0.i("OnboardingTransition", fillElement);
            ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(Arrangement.f4921e, Alignment.Companion.o, gapComposerH, 54);
            int iHashCode2 = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU2 = gapComposerH.U();
            Modifier modifierC2 = ComposedModifierKt.c(gapComposerH, modifierI);
            if (applier == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function1);
            } else {
                gapComposerH.o();
            }
            Updater.c(gapComposerH, columnMeasurePolicyA, function2);
            Updater.c(gapComposerH, persistentCompositionLocalMapU2, function3);
            cj.t(iHashCode2, gapComposerH, function4, gapComposerH, function5);
            Updater.c(gapComposerH, modifierC2, function6);
            LVImageKt.a(ModifierExtKt.e(SizeKt.f(SizeKt.s(new DTFunctionNameModifier("OnboardingTransition"), f2), f2), "onboardingEndOfJourney_icon_image"), PainterResources_androidKt.a(R.drawable.icon_lv, gapComposerH, 0), null, 1.0f, null, gapComposerH, 3136, 20);
            Modifier modifierE = ModifierExtKt.e(PaddingKt.m(SizeKt.x(new DTFunctionNameModifier("OnboardingTransition"), null, 3), LVAppDesignKitTheme.l(gapComposerH).g, LVAppDesignKitTheme.l(gapComposerH).f48419i, LVAppDesignKitTheme.l(gapComposerH).g, Call.Parameters.DEFAULT_CAMERA_ZOOM, 8), "onboardingEndOfJourney_description_text");
            String strC = StringResources_androidKt.c(gapComposerH, R.string.onboarding_logged_in_profile_completed_description);
            TextAlign.f10959b.getClass();
            TextKt.c(strC, modifierE, LVAppDesignKitTheme.c(gapComposerH).f48361b.m, 0L, null, 0L, null, new TextAlign(TextAlign.f10961e), 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).f48425e, gapComposerH, 0, 0, 130040);
            gapComposerH = gapComposerH;
            LVFlowerLoaderKt.a(ModifierExtKt.e(SizeKt.o(OffsetKt.c(BoxScopeInstance.f4938a.g(o60.f(gapComposerH, true, "OnboardingTransition"), Alignment.Companion.f8587f), Call.Parameters.DEFAULT_CAMERA_ZOOM, ((Configuration) gapComposerH.k(AndroidCompositionLocals_androidKt.f9935a)).screenHeightDp / 4, 1), LVAppDesignKitTheme.d(gapComposerH).o), "onboardingEndOfJourney_loader_view"), LVFlowerLoaderStyle.DARK_BACKGROUND, false, gapComposerH, 48, 4);
            gapComposerH.Z(true);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new kw(i2, 13, function0);
        }
    }
}
