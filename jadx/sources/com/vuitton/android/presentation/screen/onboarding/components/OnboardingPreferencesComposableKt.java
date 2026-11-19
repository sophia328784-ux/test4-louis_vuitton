package com.vuitton.android.presentation.screen.onboarding.components;

import android.content.Context;
import androidx.compose.animation.core.AnimationSpecKt;
import androidx.compose.animation.core.EasingKt;
import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScopeInstance;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.FillElement;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.layout.WindowInsetsPadding_androidKt;
import androidx.compose.foundation.pager.PagerStateKt;
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
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.RectangleShapeKt;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.compose.ui.res.StringResources_androidKt;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.style.TextAlign;
import androidx.media3.exoplayer.ExoPlayer;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.R;
import com.vuitton.android.designkit.ui.common.ModifierExtKt;
import com.vuitton.android.designkit.ui.theme.GradientKt;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.atoms.LVButtonKt;
import com.vuitton.android.designkit.ui.theme.atoms.LVPageNumberIndicatorKt;
import com.vuitton.android.designkit.ui.theme.atoms.LVProgressIndicatorKt;
import com.vuitton.android.designkit.ui.theme.atoms.configurations.ConfigurationButton;
import com.vuitton.android.presentation.compose.LvExoPlayer;
import com.vuitton.android.presentation.compose.LvVideoPlayerKt;
import com.vuitton.android.presentation.model.common.AssetVideoUiModel;
import com.vuitton.android.presentation.screen.onboarding.components.OnboardingPreferencesComposableKt;
import com.vuitton.android.presentation.screen.onboarding.models.OnboardingAssetType;
import com.vuitton.android.presentation.screen.onboarding.models.OnboardingViewState;
import defpackage.a;
import defpackage.cj;
import defpackage.e90;
import defpackage.ee0;
import defpackage.ih0;
import defpackage.n00;
import defpackage.pq0;
import defpackage.tr;
import defpackage.wf;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import net.rtccloud.sdk.Call;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class OnboardingPreferencesComposableKt {
    /* JADX WARN: Code duplicated, block: B:23:0x0042  */
    /* JADX WARN: Code duplicated, block: B:25:0x0048  */
    /* JADX WARN: Code duplicated, block: B:26:0x004b  */
    /* JADX WARN: Code duplicated, block: B:30:0x0052  */
    /* JADX WARN: Code duplicated, block: B:32:0x0058  */
    /* JADX WARN: Code duplicated, block: B:33:0x005b  */
    /* JADX WARN: Code duplicated, block: B:37:0x0065  */
    /* JADX WARN: Code duplicated, block: B:38:0x0067  */
    /* JADX WARN: Code duplicated, block: B:41:0x0070 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:42:0x0072  */
    /* JADX WARN: Code duplicated, block: B:43:0x0075  */
    /* JADX WARN: Code duplicated, block: B:46:0x00b8  */
    /* JADX WARN: Code duplicated, block: B:48:0x00c1  */
    /* JADX WARN: Code duplicated, block: B:49:0x00c5  */
    /* JADX WARN: Code duplicated, block: B:52:0x00fb  */
    /* JADX WARN: Code duplicated, block: B:55:0x01b1  */
    /* JADX WARN: Code duplicated, block: B:57:0x01b8  */
    /* JADX WARN: Code duplicated, block: B:58:0x01bc  */
    /* JADX WARN: Code duplicated, block: B:61:0x0253  */
    /* JADX WARN: Code duplicated, block: B:62:0x0257  */
    /* JADX WARN: Code duplicated, block: B:65:0x0266  */
    /* JADX WARN: Code duplicated, block: B:66:0x0268  */
    /* JADX WARN: Code duplicated, block: B:73:0x0277  */
    /* JADX WARN: Code duplicated, block: B:75:0x029c  */
    /* JADX WARN: Code duplicated, block: B:77:0x02a0  */
    /* JADX WARN: Code duplicated, block: B:79:0x02a4  */
    /* JADX WARN: Code duplicated, block: B:82:0x02af  */
    /* JADX WARN: Code duplicated, block: B:84:? A[RETURN, SYNTHETIC] */
    public static final void a(final AssetVideoUiModel assetVideoUiModel, boolean z, final int i2, Function0 function0, Composer composer, final int i3, final int i4) {
        int i5;
        boolean z2;
        boolean z3;
        final boolean z4;
        RecomposeScopeImpl recomposeScopeImplB0;
        boolean z5;
        Context context;
        float f2;
        FillElement fillElement;
        MeasurePolicy measurePolicyD;
        int iHashCode;
        PersistentCompositionLocalMap persistentCompositionLocalMapU;
        Modifier modifierC;
        Function0 function1;
        Function2 function2;
        Function2 function3;
        Function2 function4;
        Function1 function5;
        Function2 function6;
        Object objX;
        Composer$Companion$Empty$1 composer$Companion$Empty$1;
        int i6;
        ColumnMeasurePolicy columnMeasurePolicyA;
        int iHashCode2;
        PersistentCompositionLocalMap persistentCompositionLocalMapU2;
        Modifier modifierC2;
        int i7;
        boolean z6;
        Object objX2;
        int i8;
        int i9;
        final Function0 function7 = function0;
        GapComposer gapComposerH = composer.h(2057986841);
        Applier applier = gapComposerH.f7976a;
        if ((i3 & 6) == 0) {
            i5 = (gapComposerH.y(assetVideoUiModel) ? 4 : 2) | i3;
        } else {
            i5 = i3;
        }
        int i10 = i4 & 2;
        if (i10 == 0) {
            if ((i3 & 48) == 0) {
                z2 = z;
                i5 |= gapComposerH.b(z2) ? 32 : 16;
            }
            if ((i3 & KyberEngine.KyberPolyBytes) == 0) {
                if (gapComposerH.d(i2)) {
                    i9 = 256;
                } else {
                    i9 = 128;
                }
                i5 |= i9;
            }
            if ((i3 & 3072) == 0) {
                if (gapComposerH.y(function7)) {
                    i8 = 2048;
                } else {
                    i8 = 1024;
                }
                i5 |= i8;
            }
            if ((i5 & 1171) != 1170) {
                z3 = true;
            } else {
                z3 = false;
            }
            if (gapComposerH.p(i5 & 1, z3)) {
                if (i10 != 0) {
                    z5 = true;
                } else {
                    z5 = z2;
                }
                OpaqueKey opaqueKey = ComposerKt.f7940a;
                context = (Context) gapComposerH.k(AndroidCompositionLocals_androidKt.f9936b);
                f2 = LVAppDesignKitTheme.l(gapComposerH).f48418h;
                DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier("OnboardingAuthorization");
                fillElement = SizeKt.f5052c;
                Modifier modifierO = dTFunctionNameModifier.o(fillElement);
                Alignment.f8582a.getClass();
                measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
                iHashCode = Long.hashCode(gapComposerH.T);
                persistentCompositionLocalMapU = gapComposerH.U();
                modifierC = ComposedModifierKt.c(gapComposerH, modifierO);
                ComposeUiNode.b0.getClass();
                function1 = ComposeUiNode.Companion.f9641b;
                if (applier != null) {
                    ComposablesKt.b();
                    throw null;
                }
                gapComposerH.B();
                if (gapComposerH.S) {
                    gapComposerH.C(function1);
                } else {
                    gapComposerH.o();
                }
                function2 = ComposeUiNode.Companion.f9644f;
                Updater.c(gapComposerH, measurePolicyD, function2);
                function3 = ComposeUiNode.Companion.f9643e;
                Updater.c(gapComposerH, persistentCompositionLocalMapU, function3);
                Integer numValueOf = Integer.valueOf(iHashCode);
                function4 = ComposeUiNode.Companion.g;
                Updater.c(gapComposerH, numValueOf, function4);
                function5 = ComposeUiNode.Companion.f9645h;
                Updater.b(gapComposerH, function5);
                function6 = ComposeUiNode.Companion.d;
                Updater.c(gapComposerH, modifierC, function6);
                Modifier modifierA = GradientKt.a(pq0.i("OnboardingAuthorization", fillElement), GradientKt.d);
                objX = gapComposerH.x();
                composer$Companion$Empty$1 = Composer.Companion.f7939a;
                if (objX == composer$Companion$Empty$1) {
                    objX = new LvExoPlayer(context).f50900a;
                    gapComposerH.q(objX);
                }
                i6 = i5;
                LvVideoPlayerKt.b(modifierA, (ExoPlayer) objX, assetVideoUiModel.f51783c, null, null, false, assetVideoUiModel.d, null, false, false, false, false, null, false, 3, null, null, null, null, null, null, gapComposerH, 0, 24576, 0, 2080696);
                Modifier modifierM = PaddingKt.m(WindowInsetsPadding_androidKt.c(BoxScopeInstance.f4938a.g(tr.d("OnboardingAuthorization", 1.0f), Alignment.Companion.f8589i)), LVAppDesignKitTheme.l(gapComposerH).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, 10);
                columnMeasurePolicyA = ColumnKt.a(Arrangement.f4920c, Alignment.Companion.n, gapComposerH, 0);
                iHashCode2 = Long.hashCode(gapComposerH.T);
                persistentCompositionLocalMapU2 = gapComposerH.U();
                modifierC2 = ComposedModifierKt.c(gapComposerH, modifierM);
                if (applier != null) {
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
                String strC = StringResources_androidKt.c(gapComposerH, i2);
                Modifier modifierE = ModifierExtKt.e(PaddingKt.m(new DTFunctionNameModifier("OnboardingAuthorization"), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, f2, 7), "onboarding_consentDescription_text");
                TextStyle textStyle = LVAppDesignKitTheme.n(gapComposerH).f48425e;
                long j2 = LVAppDesignKitTheme.c(gapComposerH).f48361b.m;
                TextAlign.f10959b.getClass();
                TextKt.c(strC, modifierE, j2, 0L, null, 0L, null, new TextAlign(TextAlign.f10961e), 0L, 0, false, 0, 0, null, textStyle, gapComposerH, 0, 0, 130040);
                gapComposerH = gapComposerH;
                ConfigurationButton configurationButton = LVAppDesignKitTheme.b(gapComposerH).f48447b;
                Modifier modifierE2 = ModifierExtKt.e(SizeKt.d(PaddingKt.m(new DTFunctionNameModifier("OnboardingAuthorization"), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).g, 7), 1.0f), "onboarding_consentNext_button");
                if (z5) {
                    i7 = R.string.onboarding_continue__cta;
                } else {
                    i7 = R.string.onboarding_end_cta;
                }
                String strC2 = StringResources_androidKt.c(gapComposerH, i7);
                if ((i6 & 7168) == 2048) {
                    z6 = true;
                } else {
                    z6 = false;
                }
                objX2 = gapComposerH.x();
                if (!z6 || objX2 == composer$Companion$Empty$1) {
                    function7 = function0;
                    objX2 = new ee0(function7, 7);
                    gapComposerH.q(objX2);
                } else {
                    function7 = function0;
                }
                LVButtonKt.b(0, 504, gapComposerH, modifierE2, configurationButton, null, null, strC2, (Function0) objX2, false, false, false);
                gapComposerH.Z(true);
                gapComposerH.Z(true);
                z4 = z5;
            } else {
                gapComposerH.D();
                z4 = z2;
            }
            recomposeScopeImplB0 = gapComposerH.b0();
            if (recomposeScopeImplB0 != null) {
                recomposeScopeImplB0.d = new Function2() { // from class: jh0
                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj, Object obj2) {
                        ((Integer) obj2).getClass();
                        OnboardingPreferencesComposableKt.a(assetVideoUiModel, z4, i2, function7, (Composer) obj, RecomposeScopeImplKt.a(i3 | 1), i4);
                        return Unit.f71739a;
                    }
                };
            }
        }
        i5 |= 48;
        z2 = z;
        if ((i3 & KyberEngine.KyberPolyBytes) == 0) {
            if (gapComposerH.d(i2)) {
                i9 = 256;
            } else {
                i9 = 128;
            }
            i5 |= i9;
        }
        if ((i3 & 3072) == 0) {
            if (gapComposerH.y(function7)) {
                i8 = 2048;
            } else {
                i8 = 1024;
            }
            i5 |= i8;
        }
        if ((i5 & 1171) != 1170) {
            z3 = true;
        } else {
            z3 = false;
        }
        if (gapComposerH.p(i5 & 1, z3)) {
            if (i10 != 0) {
                z5 = true;
            } else {
                z5 = z2;
            }
            OpaqueKey opaqueKey2 = ComposerKt.f7940a;
            context = (Context) gapComposerH.k(AndroidCompositionLocals_androidKt.f9936b);
            f2 = LVAppDesignKitTheme.l(gapComposerH).f48418h;
            DTFunctionNameModifier dTFunctionNameModifier2 = new DTFunctionNameModifier("OnboardingAuthorization");
            fillElement = SizeKt.f5052c;
            Modifier modifierO2 = dTFunctionNameModifier2.o(fillElement);
            Alignment.f8582a.getClass();
            measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
            iHashCode = Long.hashCode(gapComposerH.T);
            persistentCompositionLocalMapU = gapComposerH.U();
            modifierC = ComposedModifierKt.c(gapComposerH, modifierO2);
            ComposeUiNode.b0.getClass();
            function1 = ComposeUiNode.Companion.f9641b;
            if (applier != null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function1);
            } else {
                gapComposerH.o();
            }
            function2 = ComposeUiNode.Companion.f9644f;
            Updater.c(gapComposerH, measurePolicyD, function2);
            function3 = ComposeUiNode.Companion.f9643e;
            Updater.c(gapComposerH, persistentCompositionLocalMapU, function3);
            Integer numValueOf2 = Integer.valueOf(iHashCode);
            function4 = ComposeUiNode.Companion.g;
            Updater.c(gapComposerH, numValueOf2, function4);
            function5 = ComposeUiNode.Companion.f9645h;
            Updater.b(gapComposerH, function5);
            function6 = ComposeUiNode.Companion.d;
            Updater.c(gapComposerH, modifierC, function6);
            Modifier modifierA2 = GradientKt.a(pq0.i("OnboardingAuthorization", fillElement), GradientKt.d);
            objX = gapComposerH.x();
            composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (objX == composer$Companion$Empty$1) {
                objX = new LvExoPlayer(context).f50900a;
                gapComposerH.q(objX);
            }
            i6 = i5;
            LvVideoPlayerKt.b(modifierA2, (ExoPlayer) objX, assetVideoUiModel.f51783c, null, null, false, assetVideoUiModel.d, null, false, false, false, false, null, false, 3, null, null, null, null, null, null, gapComposerH, 0, 24576, 0, 2080696);
            Modifier modifierM2 = PaddingKt.m(WindowInsetsPadding_androidKt.c(BoxScopeInstance.f4938a.g(tr.d("OnboardingAuthorization", 1.0f), Alignment.Companion.f8589i)), LVAppDesignKitTheme.l(gapComposerH).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, 10);
            columnMeasurePolicyA = ColumnKt.a(Arrangement.f4920c, Alignment.Companion.n, gapComposerH, 0);
            iHashCode2 = Long.hashCode(gapComposerH.T);
            persistentCompositionLocalMapU2 = gapComposerH.U();
            modifierC2 = ComposedModifierKt.c(gapComposerH, modifierM2);
            if (applier != null) {
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
            String strC3 = StringResources_androidKt.c(gapComposerH, i2);
            Modifier modifierE3 = ModifierExtKt.e(PaddingKt.m(new DTFunctionNameModifier("OnboardingAuthorization"), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, f2, 7), "onboarding_consentDescription_text");
            TextStyle textStyle2 = LVAppDesignKitTheme.n(gapComposerH).f48425e;
            long j3 = LVAppDesignKitTheme.c(gapComposerH).f48361b.m;
            TextAlign.f10959b.getClass();
            TextKt.c(strC3, modifierE3, j3, 0L, null, 0L, null, new TextAlign(TextAlign.f10961e), 0L, 0, false, 0, 0, null, textStyle2, gapComposerH, 0, 0, 130040);
            gapComposerH = gapComposerH;
            ConfigurationButton configurationButton2 = LVAppDesignKitTheme.b(gapComposerH).f48447b;
            Modifier modifierE4 = ModifierExtKt.e(SizeKt.d(PaddingKt.m(new DTFunctionNameModifier("OnboardingAuthorization"), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).g, 7), 1.0f), "onboarding_consentNext_button");
            if (z5) {
                i7 = R.string.onboarding_continue__cta;
            } else {
                i7 = R.string.onboarding_end_cta;
            }
            String strC4 = StringResources_androidKt.c(gapComposerH, i7);
            if ((i6 & 7168) == 2048) {
                z6 = true;
            } else {
                z6 = false;
            }
            objX2 = gapComposerH.x();
            if (z6) {
                function7 = function0;
                objX2 = new ee0(function7, 7);
                gapComposerH.q(objX2);
            } else {
                function7 = function0;
                objX2 = new ee0(function7, 7);
                gapComposerH.q(objX2);
            }
            LVButtonKt.b(0, 504, gapComposerH, modifierE4, configurationButton2, null, null, strC4, (Function0) objX2, false, false, false);
            gapComposerH.Z(true);
            gapComposerH.Z(true);
            z4 = z5;
        } else {
            gapComposerH.D();
            z4 = z2;
        }
        recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new Function2() { // from class: jh0
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    ((Integer) obj2).getClass();
                    OnboardingPreferencesComposableKt.a(assetVideoUiModel, z4, i2, function7, (Composer) obj, RecomposeScopeImplKt.a(i3 | 1), i4);
                    return Unit.f71739a;
                }
            };
        }
    }

    public static final void b(OnboardingViewState onboardingViewState, Function0 function0, Function0 function1, Function1 function2, Composer composer, int i2) {
        onboardingViewState.getClass();
        function0.getClass();
        function1.getClass();
        function2.getClass();
        GapComposer gapComposerH = composer.h(1175884075);
        int i3 = i2 | (gapComposerH.y(onboardingViewState) ? 4 : 2) | (gapComposerH.y(function0) ? 32 : 16) | (gapComposerH.y(function1) ? 256 : 128) | (gapComposerH.y(function2) ? 2048 : 1024);
        if (gapComposerH.p(i3 & 1, (i3 & 1171) != 1170)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Unit unit = Unit.f71739a;
            boolean z = ((i3 & 112) == 32) | ((i3 & 7168) == 2048);
            Object objX = gapComposerH.x();
            if (z || objX == Composer.Companion.f7939a) {
                objX = new OnboardingPreferencesComposableKt$OnboardingGeolocation$1$1(null, function0, function2);
                gapComposerH.q(objX);
            }
            EffectsKt.e(gapComposerH, unit, (Function2) objX);
            List list = onboardingViewState.f59602c;
            Iterator it = list.iterator();
            int i4 = 0;
            while (true) {
                if (!it.hasNext()) {
                    i4 = -1;
                    break;
                } else if (((OnboardingAssetType) it.next()) == OnboardingAssetType.GEOLOCATION) {
                    break;
                } else {
                    i4++;
                }
            }
            int i5 = i4;
            Modifier modifierO = new DTFunctionNameModifier("OnboardingGeolocation").o(SizeKt.f5052c);
            Color.f8866b.getClass();
            Modifier modifierB = BackgroundKt.b(modifierO, Color.f8870h, RectangleShapeKt.f8913a);
            Alignment.f8582a.getClass();
            MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
            OpaqueKey opaqueKey2 = ComposerKt.f7940a;
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierB);
            ComposeUiNode.b0.getClass();
            Function0 function3 = ComposeUiNode.Companion.f9641b;
            if (gapComposerH.f7976a == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function3);
            } else {
                gapComposerH.o();
            }
            Updater.c(gapComposerH, measurePolicyD, ComposeUiNode.Companion.f9644f);
            Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
            Updater.c(gapComposerH, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
            Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
            Updater.c(gapComposerH, modifierC, ComposeUiNode.Companion.d);
            a(onboardingViewState.f59601b.f59581c, onboardingViewState.f59600a, R.string.onboarding_logged_in_geolocalisation_description, function1, gapComposerH, (i3 << 3) & 7168, 0);
            if (list.size() > 1) {
                c(BoxScopeInstance.f4938a.g(n00.i(gapComposerH, 1638712707, "OnboardingGeolocation"), Alignment.Companion.f8585c), i5, list.size(), gapComposerH, 0);
                gapComposerH.Z(false);
            } else {
                gapComposerH.L(1638922205);
                gapComposerH.Z(false);
            }
            gapComposerH.Z(true);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new ih0(onboardingViewState, function0, function1, function2, i2, 1);
        }
    }

    public static final void c(Modifier modifier, int i2, int i3, Composer composer, int i4) {
        GapComposer gapComposer;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = a.e(modifierE, "OnboardingIndicator");
        }
        Modifier modifier2 = modifierE;
        modifier2.getClass();
        GapComposer gapComposerH = composer.h(1966787639);
        int i5 = (gapComposerH.K(modifier2) ? 4 : 2) | i4 | (gapComposerH.d(i2) ? 32 : 16) | (gapComposerH.d(i3) ? 256 : 128);
        if (gapComposerH.p(i5 & 1, (i5 & 147) != 146)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Modifier modifierK = PaddingKt.k(PaddingKt.m(modifier2, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).l, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), LVAppDesignKitTheme.l(gapComposerH).f48421k, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2);
            Alignment.f8582a.getClass();
            ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(Arrangement.f4920c, Alignment.Companion.o, gapComposerH, 48);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierK);
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
            Updater.c(gapComposerH, modifierC, ComposeUiNode.Companion.d);
            boolean z = (i5 & 896) == 256;
            Object objX = gapComposerH.x();
            if (z || objX == Composer.Companion.f7939a) {
                objX = new e90(i3, 2);
                gapComposerH.q(objX);
            }
            LVPageNumberIndicatorKt.a(null, PagerStateKt.b(i2, (Function0) objX, gapComposerH, (i5 >> 3) & 14, 2), null, gapComposerH, 0, 5);
            LVProgressIndicatorKt.a(PaddingKt.m(new DTFunctionNameModifier("OnboardingIndicator"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), i2, i2 + 1, i3, Color.b(0.8f, LVAppDesignKitTheme.c(gapComposerH).f48361b.f48374a), Color.b(0.4f, LVAppDesignKitTheme.c(gapComposerH).f48361b.f48374a), AnimationSpecKt.c(400, 0, EasingKt.f3863b, 2), gapComposerH, (i5 & 112) | ((i5 << 3) & 7168));
            gapComposer = gapComposerH;
            gapComposer.Z(true);
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new wf(modifier2, i2, i3, i4);
        }
    }

    public static final void d(OnboardingViewState onboardingViewState, Function0 function0, Function0 function1, Function1 function2, Composer composer, int i2) {
        onboardingViewState.getClass();
        function0.getClass();
        function1.getClass();
        function2.getClass();
        GapComposer gapComposerH = composer.h(-127698871);
        int i3 = i2 | (gapComposerH.y(onboardingViewState) ? 4 : 2) | (gapComposerH.y(function0) ? 32 : 16) | (gapComposerH.y(function1) ? 256 : 128) | (gapComposerH.y(function2) ? 2048 : 1024);
        if (gapComposerH.p(i3 & 1, (i3 & 1171) != 1170)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Unit unit = Unit.f71739a;
            boolean z = ((i3 & 112) == 32) | ((i3 & 7168) == 2048);
            Object objX = gapComposerH.x();
            if (z || objX == Composer.Companion.f7939a) {
                objX = new OnboardingPreferencesComposableKt$OnboardingNotifications$1$1(null, function0, function2);
                gapComposerH.q(objX);
            }
            EffectsKt.e(gapComposerH, unit, (Function2) objX);
            List list = onboardingViewState.f59602c;
            Iterator it = list.iterator();
            int i4 = 0;
            while (true) {
                if (!it.hasNext()) {
                    i4 = -1;
                    break;
                } else if (((OnboardingAssetType) it.next()) == OnboardingAssetType.NOTIFICATIONS) {
                    break;
                } else {
                    i4++;
                }
            }
            int i5 = i4;
            Modifier modifierO = new DTFunctionNameModifier("OnboardingNotifications").o(SizeKt.f5052c);
            Color.f8866b.getClass();
            Modifier modifierB = BackgroundKt.b(modifierO, Color.f8870h, RectangleShapeKt.f8913a);
            Alignment.f8582a.getClass();
            MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
            OpaqueKey opaqueKey2 = ComposerKt.f7940a;
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierB);
            ComposeUiNode.b0.getClass();
            Function0 function3 = ComposeUiNode.Companion.f9641b;
            if (gapComposerH.f7976a == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function3);
            } else {
                gapComposerH.o();
            }
            Updater.c(gapComposerH, measurePolicyD, ComposeUiNode.Companion.f9644f);
            Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
            Updater.c(gapComposerH, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
            Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
            Updater.c(gapComposerH, modifierC, ComposeUiNode.Companion.d);
            a(onboardingViewState.f59601b.f59580b, false, R.string.onboarding_logged_in_notifications_description, function1, gapComposerH, (i3 << 3) & 7168, 2);
            if (list.size() > 1) {
                c(BoxScopeInstance.f4938a.g(n00.i(gapComposerH, 67561189, "OnboardingNotifications"), Alignment.Companion.f8585c), i5, list.size(), gapComposerH, 0);
                gapComposerH.Z(false);
            } else {
                gapComposerH.L(67770687);
                gapComposerH.Z(false);
            }
            gapComposerH.Z(true);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new ih0(onboardingViewState, function0, function1, function2, i2, 0);
        }
    }
}
