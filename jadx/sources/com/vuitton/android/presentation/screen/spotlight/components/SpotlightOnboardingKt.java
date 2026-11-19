package com.vuitton.android.presentation.screen.spotlight.components;

import android.os.Build;
import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.ClickableKt;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScopeInstance;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.layout.SpacerKt;
import androidx.compose.material3.TextKt;
import androidx.compose.runtime.Applier;
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
import androidx.compose.ui.BiasAlignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.RectangleShapeKt;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.res.StringResources_androidKt;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.style.TextAlign;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.unit.LayoutDirection;
import com.airbnb.lottie.LottieComposition;
import com.airbnb.lottie.compose.AnimateLottieCompositionAsStateKt;
import com.airbnb.lottie.compose.LottieAnimatable;
import com.airbnb.lottie.compose.LottieAnimationKt;
import com.airbnb.lottie.compose.LottieCompositionResultImpl;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.R;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.atoms.LVButtonKt;
import com.vuitton.android.designkit.ui.theme.atoms.LVIconButtonKt;
import com.vuitton.android.designkit.ui.theme.atoms.configurations.ConfigurationIconButton;
import defpackage.a11;
import defpackage.cj;
import defpackage.n00;
import defpackage.nw0;
import defpackage.tr;
import defpackage.x;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import net.rtccloud.sdk.Call;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0002¨\u0006\u0004²\u0006\u000e\u0010\u0001\u001a\u0004\u0018\u00010\u00008\nX\u008a\u0084\u0002²\u0006\f\u0010\u0003\u001a\u00020\u00028\nX\u008a\u0084\u0002"}, d2 = {"Lcom/airbnb/lottie/LottieComposition;", "composition", "", "state", "presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class SpotlightOnboardingKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final float f64600a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final float f64601b;

    static {
        Dp.Companion companion = Dp.f11004c;
        f64600a = 262.0f;
        f64601b = 234.0f;
    }

    public static final void a(Modifier modifier, Function0 function0, Function0 function1, Composer composer, int i2) {
        Modifier modifier2;
        int i3;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = defpackage.a.e(modifierE, "SpotlightOnboarding");
        }
        GapComposer gapComposerC = defpackage.a.c(function0, function1, composer, 856378354);
        Applier applier = gapComposerC.f7976a;
        int i4 = i2 | (gapComposerC.y(function0) ? 32 : 16) | (gapComposerC.y(function1) ? 256 : 128);
        if (gapComposerC.p(i4 & 1, (i4 & 147) != 146)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            LottieCompositionResultImpl lottieCompositionResultImplH = n00.h(R.raw.animation_on_boarding, gapComposerC, 0);
            LottieAnimatable lottieAnimatableA = AnimateLottieCompositionAsStateKt.a(lottieCompositionResultImplH.getF10755b(), false, null, Integer.MAX_VALUE, gapComposerC, 958);
            Modifier modifierB = BackgroundKt.b(modifierE, Color.b(Build.VERSION.SDK_INT >= 31 ? 0.9f : 0.95f, LVAppDesignKitTheme.c(gapComposerC).f48361b.u), RectangleShapeKt.f8913a);
            Object objX = gapComposerC.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (objX == composer$Companion$Empty$1) {
                objX = new nw0(20);
                gapComposerC.q(objX);
            }
            Modifier modifierD = ClickableKt.d(modifierB, false, null, null, (Function0) objX, 14);
            Alignment.f8582a.getClass();
            MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8587f, false);
            int iHashCode = Long.hashCode(gapComposerC.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerC.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerC, modifierD);
            ComposeUiNode.b0.getClass();
            Function0 function2 = ComposeUiNode.Companion.f9641b;
            if (applier == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerC.B();
            if (gapComposerC.S) {
                gapComposerC.C(function2);
            } else {
                gapComposerC.o();
            }
            Function2 function3 = ComposeUiNode.Companion.f9644f;
            Updater.c(gapComposerC, measurePolicyD, function3);
            Function2 function4 = ComposeUiNode.Companion.f9643e;
            Updater.c(gapComposerC, persistentCompositionLocalMapU, function4);
            Integer numValueOf = Integer.valueOf(iHashCode);
            Function2 function5 = ComposeUiNode.Companion.g;
            Updater.c(gapComposerC, numValueOf, function5);
            Function1 function6 = ComposeUiNode.Companion.f9645h;
            Updater.b(gapComposerC, function6);
            Function2 function7 = ComposeUiNode.Companion.d;
            Updater.c(gapComposerC, modifierC, function7);
            Modifier modifier3 = modifierE;
            Modifier modifierM = PaddingKt.m(BoxScopeInstance.f4938a.g(new DTFunctionNameModifier("SpotlightOnboarding"), Alignment.Companion.f8584b), LVAppDesignKitTheme.l(gapComposerC).f48416e, LVAppDesignKitTheme.l(gapComposerC).l, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 12);
            ConfigurationIconButton configurationIconButton = LVAppDesignKitTheme.f(gapComposerC).d;
            if (gapComposerC.k(CompositionLocalsKt.n) == LayoutDirection.Ltr) {
                gapComposerC.L(1108652625);
                i3 = LVAppDesignKitTheme.g(gapComposerC).H;
                gapComposerC.Z(false);
            } else {
                gapComposerC.L(1108727056);
                i3 = LVAppDesignKitTheme.g(gapComposerC).I;
                gapComposerC.Z(false);
            }
            modifier2 = modifier3;
            LVIconButtonKt.b(modifierM, configurationIconButton, i3, null, null, false, 0, false, false, function0, gapComposerC, 0, (i4 >> 3) & 14, 1016);
            BiasAlignment.Horizontal horizontal = Alignment.Companion.o;
            DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier("SpotlightOnboarding");
            ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(Arrangement.f4920c, horizontal, gapComposerC, 48);
            int iHashCode2 = Long.hashCode(gapComposerC.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU2 = gapComposerC.U();
            Modifier modifierC2 = ComposedModifierKt.c(gapComposerC, dTFunctionNameModifier);
            if (applier == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerC.B();
            if (gapComposerC.S) {
                gapComposerC.C(function2);
            } else {
                gapComposerC.o();
            }
            Updater.c(gapComposerC, columnMeasurePolicyA, function3);
            Updater.c(gapComposerC, persistentCompositionLocalMapU2, function4);
            cj.t(iHashCode2, gapComposerC, function5, gapComposerC, function6);
            Modifier modifierF = SizeKt.f(SizeKt.s(tr.e(gapComposerC, modifierC2, function7, "SpotlightOnboarding"), f64601b), f64600a);
            LottieComposition f10755b = lottieCompositionResultImplH.getF10755b();
            boolean zK = gapComposerC.K(lottieAnimatableA);
            Object objX2 = gapComposerC.x();
            if (zK || objX2 == composer$Companion$Empty$1) {
                objX2 = new x(lottieAnimatableA, 12);
                gapComposerC.q(objX2);
            }
            LottieAnimationKt.b(f10755b, (Function0) objX2, modifierF, false, false, false, false, null, false, null, null, null, false, false, null, null, false, gapComposerC, KyberEngine.KyberPolyBytes, 0, 131064);
            SpacerKt.a(gapComposerC, SizeKt.f(new DTFunctionNameModifier("SpotlightOnboarding"), LVAppDesignKitTheme.l(gapComposerC).l));
            Modifier modifierK = PaddingKt.k(new DTFunctionNameModifier("SpotlightOnboarding"), LVAppDesignKitTheme.l(gapComposerC).f48418h, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2);
            String strC = StringResources_androidKt.c(gapComposerC, R.string.spotlight_onboarding_paragraph);
            TextStyle textStyle = LVAppDesignKitTheme.n(gapComposerC).f48425e;
            long j2 = LVAppDesignKitTheme.c(gapComposerC).f48361b.m;
            TextAlign.f10959b.getClass();
            TextKt.c(strC, modifierK, j2, 0L, null, 0L, null, new TextAlign(TextAlign.f10961e), 0L, 0, false, 0, 0, null, textStyle, gapComposerC, 0, 0, 130040);
            SpacerKt.a(gapComposerC, SizeKt.f(new DTFunctionNameModifier("SpotlightOnboarding"), LVAppDesignKitTheme.l(gapComposerC).g));
            LVButtonKt.b((i4 << 21) & 1879048192, 505, gapComposerC, null, LVAppDesignKitTheme.b(gapComposerC).f48450f, null, null, StringResources_androidKt.c(gapComposerC, R.string.start_experience_cta), function1, false, false, false);
            gapComposerC = gapComposerC;
            gapComposerC.Z(true);
            gapComposerC.Z(true);
        } else {
            modifier2 = modifierE;
            gapComposerC.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerC.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new a11(modifier2, function0, function1, i2, 0);
        }
    }
}
