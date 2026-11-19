package com.vuitton.android.presentation.screen.onboarding.components;

import android.content.Context;
import androidx.compose.foundation.BasicMarqueeKt;
import androidx.compose.foundation.ImageKt;
import androidx.compose.foundation.MarqueeAnimationMode;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.ColumnScopeInstance;
import androidx.compose.foundation.layout.FillElement;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.layout.SpacerKt;
import androidx.compose.foundation.layout.WindowInsetsPadding_androidKt;
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
import androidx.compose.ui.draw.ClipKt;
import androidx.compose.ui.graphics.painter.Painter;
import androidx.compose.ui.layout.ContentScale;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.compose.ui.res.PainterResources_androidKt;
import androidx.compose.ui.res.StringResources_androidKt;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.style.TextAlign;
import androidx.compose.ui.unit.Dp;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.R;
import com.vuitton.android.designkit.ui.common.ModifierExtKt;
import com.vuitton.android.designkit.ui.theme.GradientKt;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.atoms.LVButtonKt;
import com.vuitton.android.designkit.ui.theme.atoms.configurations.ConfigurationButton;
import com.vuitton.android.presentation.compose.LvExoPlayer;
import com.vuitton.android.presentation.compose.LvVideoPlayerKt;
import com.vuitton.android.presentation.model.common.AssetVideoUiModel;
import com.vuitton.android.presentation.screen.onboarding.models.OnboardingViewState;
import defpackage.cj;
import defpackage.ee0;
import defpackage.ih0;
import defpackage.pq0;
import defpackage.sc;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.text.StringsKt;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class OnboardingStartNowComposableKt {
    public static final void a(OnboardingViewState onboardingViewState, Function0 function0, Function0 function1, Function1 function2, Composer composer, int i2) {
        Function0 function3;
        int i3;
        String str;
        FillElement fillElement;
        Function1 function4;
        Function2 function5;
        Function2 function6;
        Function2 function7;
        int i4;
        Throwable th;
        Function2 function8;
        Composer$Companion$Empty$1 composer$Companion$Empty$1;
        Function0 function9;
        onboardingViewState.getClass();
        function0.getClass();
        function1.getClass();
        function2.getClass();
        GapComposer gapComposerH = composer.h(-1544179414);
        Applier applier = gapComposerH.f7976a;
        int i5 = i2 | (gapComposerH.y(onboardingViewState) ? 4 : 2) | (gapComposerH.y(function0) ? 32 : 16) | (gapComposerH.y(function1) ? 256 : 128) | (gapComposerH.y(function2) ? 2048 : 1024);
        if (gapComposerH.p(i5 & 1, (i5 & 1171) != 1170)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Dp.Companion companion = Dp.f11004c;
            Unit unit = Unit.f71739a;
            boolean z = ((i5 & 112) == 32) | ((i5 & 7168) == 2048);
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$2 = Composer.Companion.f7939a;
            if (z || objX == composer$Companion$Empty$2) {
                objX = new OnboardingStartNowComposableKt$OnboardingStartNowComposable$1$1(null, function0, function2);
                gapComposerH.q(objX);
            }
            EffectsKt.e(gapComposerH, unit, (Function2) objX);
            DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier("OnboardingStartNowComposable");
            FillElement fillElement2 = SizeKt.f5052c;
            Modifier modifierB = ClipKt.b(dTFunctionNameModifier.o(fillElement2));
            Alignment.f8582a.getClass();
            MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierB);
            ComposeUiNode.b0.getClass();
            Function0 function10 = ComposeUiNode.Companion.f9641b;
            if (applier == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function10);
            } else {
                gapComposerH.o();
            }
            Function2 function11 = ComposeUiNode.Companion.f9644f;
            Updater.c(gapComposerH, measurePolicyD, function11);
            Function2 function12 = ComposeUiNode.Companion.f9643e;
            Updater.c(gapComposerH, persistentCompositionLocalMapU, function12);
            Integer numValueOf = Integer.valueOf(iHashCode);
            Function2 function13 = ComposeUiNode.Companion.g;
            Updater.c(gapComposerH, numValueOf, function13);
            Function1 function14 = ComposeUiNode.Companion.f9645h;
            Updater.b(gapComposerH, function14);
            Function2 function15 = ComposeUiNode.Companion.d;
            Updater.c(gapComposerH, modifierC, function15);
            if (onboardingViewState.d) {
                gapComposerH.L(681064231);
                Modifier modifierA = GradientKt.a(new DTFunctionNameModifier("OnboardingStartNowComposable").o(fillElement2), GradientKt.d);
                Painter painterA = PainterResources_androidKt.a(R.drawable.onboarding_start_now, gapComposerH, 0);
                ContentScale.f9447a.getClass();
                i4 = 0;
                str = "OnboardingStartNowComposable";
                function6 = function11;
                function7 = function12;
                i3 = i5;
                fillElement = fillElement2;
                function4 = function14;
                function5 = function13;
                th = null;
                ImageKt.a(painterA, null, modifierA, null, ContentScale.Companion.f9449b, Call.Parameters.DEFAULT_CAMERA_ZOOM, null, gapComposerH, 24632, 104);
                gapComposerH.Z(false);
                composer$Companion$Empty$1 = composer$Companion$Empty$2;
                function8 = function15;
                function9 = function10;
            } else {
                i3 = i5;
                str = "OnboardingStartNowComposable";
                fillElement = fillElement2;
                function4 = function14;
                function5 = function13;
                function6 = function11;
                function7 = function12;
                i4 = 0;
                th = null;
                gapComposerH.L(681399899);
                Context context = (Context) gapComposerH.k(AndroidCompositionLocals_androidKt.f9936b);
                Object objX2 = gapComposerH.x();
                if (objX2 == composer$Companion$Empty$2) {
                    objX2 = new LvExoPlayer(context);
                    gapComposerH.q(objX2);
                }
                Modifier modifierA2 = GradientKt.a(pq0.i(str, fillElement), GradientKt.d);
                AssetVideoUiModel assetVideoUiModel = onboardingViewState.f59601b.f59579a;
                String str2 = assetVideoUiModel.f51783c;
                String str3 = assetVideoUiModel.d;
                ContentScale.f9447a.getClass();
                function8 = function15;
                composer$Companion$Empty$1 = composer$Companion$Empty$2;
                function9 = function10;
                LvVideoPlayerKt.b(modifierA2, ((LvExoPlayer) objX2).f50900a, str2, null, null, true, str3, ContentScale.Companion.f9449b, false, false, false, false, null, false, 4, null, null, null, null, null, null, gapComposerH, 12779520, 24576, 0, 2080536);
                gapComposerH = gapComposerH;
                gapComposerH.Z(false);
            }
            Modifier modifierC2 = WindowInsetsPadding_androidKt.c(new DTFunctionNameModifier(str).o(fillElement));
            ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(Arrangement.f4920c, Alignment.Companion.n, gapComposerH, i4);
            int iHashCode2 = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU2 = gapComposerH.U();
            Modifier modifierC3 = ComposedModifierKt.c(gapComposerH, modifierC2);
            if (applier == null) {
                ComposablesKt.b();
                throw th;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function9);
            } else {
                gapComposerH.o();
            }
            Updater.c(gapComposerH, columnMeasurePolicyA, function6);
            Updater.c(gapComposerH, persistentCompositionLocalMapU2, function7);
            cj.t(iHashCode2, gapComposerH, function5, gapComposerH, function4);
            Updater.c(gapComposerH, modifierC3, function8);
            String strJ = StringsKt.J(StringResources_androidKt.c(gapComposerH, R.string.onboarding_carousel_category_description), "/", "   ");
            MarqueeAnimationMode.f4246b.getClass();
            sc scVar = new sc(LVAppDesignKitTheme.l(gapComposerH).g, i4);
            Modifier.Companion companion2 = Modifier.Companion.f8607b;
            GapComposer gapComposer = gapComposerH;
            TextKt.c(strJ, ModifierExtKt.e(PaddingKt.m(BasicMarqueeKt.a(companion2, scVar, 12), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, 96.0f, 5), "onboardingStart_categories_view"), LVAppDesignKitTheme.c(gapComposerH).f48361b.m, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).f48425e, gapComposer, 0, 0, 131064);
            SpacerKt.a(gapComposer, ColumnScopeInstance.f4944a.a(new DTFunctionNameModifier(str), 1.0f, true));
            Modifier modifierE = ModifierExtKt.e(SizeKt.d(PaddingKt.l(companion2, LVAppDesignKitTheme.l(gapComposer).f48417f, LVAppDesignKitTheme.l(gapComposer).m, LVAppDesignKitTheme.l(gapComposer).f48417f, LVAppDesignKitTheme.l(gapComposer).f48418h), 1.0f), "onboardingStart_description_text");
            TextStyle textStyle = LVAppDesignKitTheme.n(gapComposer).f48425e;
            long j2 = LVAppDesignKitTheme.c(gapComposer).f48361b.m;
            TextAlign.f10959b.getClass();
            TextKt.c(StringResources_androidKt.c(gapComposer, R.string.onboarding_welcome_description), modifierE, j2, 0L, null, 0L, null, new TextAlign(TextAlign.f10961e), 0L, 0, false, 0, 0, null, textStyle, gapComposer, 0, 0, 130040);
            ConfigurationButton configurationButton = LVAppDesignKitTheme.b(gapComposer).f48447b;
            Modifier modifierE2 = ModifierExtKt.e(SizeKt.d(PaddingKt.m(companion2, LVAppDesignKitTheme.l(gapComposer).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposer).f48417f, LVAppDesignKitTheme.l(gapComposer).g, 2), 1.0f), "onboardingStart_description_button");
            String strC = StringResources_androidKt.c(gapComposer, R.string.onboarding_start_cta);
            int i6 = (i3 & 896) == 256 ? 1 : i4;
            Object objX3 = gapComposer.x();
            if (i6 != 0 || objX3 == composer$Companion$Empty$1) {
                function3 = function1;
                objX3 = new ee0(function3, 8);
                gapComposer.q(objX3);
            } else {
                function3 = function1;
            }
            LVButtonKt.b(0, 504, gapComposer, modifierE2, configurationButton, null, null, strC, (Function0) objX3, false, false, false);
            gapComposerH = gapComposer;
            gapComposerH.Z(true);
            gapComposerH.Z(true);
        } else {
            function3 = function1;
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new ih0(onboardingViewState, function0, function3, function2, i2, 2);
        }
    }
}
