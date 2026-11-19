package com.vuitton.android.presentation.screen.spotlight.components;

import android.content.res.Configuration;
import androidx.compose.animation.AnimatedContentKt;
import androidx.compose.animation.AnimatedVisibilityKt;
import androidx.compose.animation.EnterExitTransitionKt;
import androidx.compose.animation.EnterTransition;
import androidx.compose.animation.core.AnimateAsStateKt;
import androidx.compose.animation.core.AnimationSpecKt;
import androidx.compose.animation.core.TweenSpec;
import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.ClickableKt;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.Arrangement$Bottom$1;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowMeasurePolicy;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.layout.SpacerKt;
import androidx.compose.foundation.layout.WindowInsetsKt;
import androidx.compose.foundation.layout.WindowInsets_androidKt;
import androidx.compose.material3.IconKt;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.State;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.BiasAlignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.AlphaKt;
import androidx.compose.ui.graphics.RectangleShapeKt;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.res.PainterResources_androidKt;
import androidx.compose.ui.res.StringResources_androidKt;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.Dp;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.google.ar.core.ImageMetadata;
import com.vuitton.android.R;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.atoms.LVButtonKt;
import com.vuitton.android.designkit.ui.theme.atoms.configurations.ConfigurationButton;
import com.vuitton.android.presentation.screen.spotlight.components.SpotlightBottomStepperKt;
import com.vuitton.android.presentation.screen.spotlight.models.SpotlightCtaUiModel;
import defpackage.is;
import defpackage.l01;
import defpackage.s01;
import defpackage.sm;
import defpackage.t01;
import defpackage.vd;
import defpackage.xd;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import net.rtccloud.sdk.Call;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\b\n\u0002\u0010\u0007\n\u0002\b\u0003¨\u0006\u0003²\u0006\f\u0010\u0001\u001a\u00020\u00008\nX\u008a\u0084\u0002²\u0006\f\u0010\u0002\u001a\u00020\u00008\nX\u008a\u0084\u0002"}, d2 = {"", "alphaFirstIcon", "alphaSecondIcon", "presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class SpotlightBottomStepperKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final float f64585a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final float f64586b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final float f64587c;

    static {
        Dp.Companion companion = Dp.f11004c;
        f64585a = 115.0f;
        f64586b = 16.0f;
        f64587c = 36.0f;
    }

    public static final void a(Modifier modifier, boolean z, Function2 function2, Composer composer, int i2) {
        int i3;
        boolean z2;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = defpackage.a.e(modifierE, "BottomContainer");
        }
        Modifier modifier2 = modifierE;
        GapComposer gapComposerH = composer.h(-1513974401);
        if ((i2 & 6) == 0) {
            i3 = (gapComposerH.K(modifier2) ? 4 : 2) | i2;
        } else {
            i3 = i2;
        }
        if ((i2 & 48) == 0) {
            z2 = z;
            i3 |= gapComposerH.b(z2) ? 32 : 16;
        } else {
            z2 = z;
        }
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i3 |= gapComposerH.y(function2) ? 256 : 128;
        }
        final int i4 = 1;
        if (gapComposerH.p(i3 & 1, (i3 & 147) != 146)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            final Density density = (Density) gapComposerH.k(CompositionLocalsKt.f10031h);
            final float d = WindowInsetsKt.e(WindowInsets_androidKt.a(gapComposerH), gapComposerH).getD();
            TweenSpec tweenSpecC = AnimationSpecKt.c(900, 0, null, 6);
            boolean zK = gapComposerH.K(density) | gapComposerH.c(d);
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (zK || objX == composer$Companion$Empty$1) {
                objX = new Function1() { // from class: r01
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        int iB0;
                        int i5 = i4;
                        float f2 = d;
                        Density density2 = density;
                        ((Integer) obj).intValue();
                        switch (i5) {
                            case 0:
                                float f3 = SpotlightBottomStepperKt.f64585a + f2;
                                Dp.Companion companion = Dp.f11004c;
                                iB0 = density2.B0(f3);
                                break;
                            default:
                                float f4 = SpotlightBottomStepperKt.f64585a + f2;
                                Dp.Companion companion2 = Dp.f11004c;
                                iB0 = density2.B0(f4);
                                break;
                        }
                        return Integer.valueOf(iB0);
                    }
                };
                gapComposerH.q(objX);
            }
            EnterTransition enterTransitionQ = EnterExitTransitionKt.q((Function1) objX, tweenSpecC);
            final int i5 = 0;
            TweenSpec tweenSpecC2 = AnimationSpecKt.c(900, 0, null, 6);
            boolean zK2 = gapComposerH.K(density) | gapComposerH.c(d);
            Object objX2 = gapComposerH.x();
            if (zK2 || objX2 == composer$Companion$Empty$1) {
                objX2 = new Function1() { // from class: r01
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        int iB0;
                        int i6 = i5;
                        float f2 = d;
                        Density density2 = density;
                        ((Integer) obj).intValue();
                        switch (i6) {
                            case 0:
                                float f3 = SpotlightBottomStepperKt.f64585a + f2;
                                Dp.Companion companion = Dp.f11004c;
                                iB0 = density2.B0(f3);
                                break;
                            default:
                                float f4 = SpotlightBottomStepperKt.f64585a + f2;
                                Dp.Companion companion2 = Dp.f11004c;
                                iB0 = density2.B0(f4);
                                break;
                        }
                        return Integer.valueOf(iB0);
                    }
                };
                gapComposerH.q(objX2);
            }
            AnimatedVisibilityKt.e(z2, modifier2, enterTransitionQ, EnterExitTransitionKt.u((Function1) objX2, tweenSpecC2), null, ComposableLambdaKt.b(474646103, new sm(3, function2), gapComposerH), gapComposerH, ((i3 >> 3) & 14) | ImageMetadata.EDGE_MODE | ((i3 << 3) & 112), 16);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new vd(modifier2, z, function2, i2, 5);
        }
    }

    public static final void b(Modifier modifier, final boolean z, final Function1 function1, final int i2, final int i3, final String str, final SpotlightCtaUiModel spotlightCtaUiModel, final Function1 function2, final Function1 function3, Composer composer, final int i4) {
        int i5;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = defpackage.a.e(modifierE, "SpotlightBottomStepper");
        }
        function1.getClass();
        function2.getClass();
        function3.getClass();
        GapComposer gapComposerH = composer.h(155570971);
        if ((i4 & 6) == 0) {
            i5 = (gapComposerH.K(modifierE) ? 4 : 2) | i4;
        } else {
            i5 = i4;
        }
        if ((i4 & 48) == 0) {
            i5 |= gapComposerH.b(z) ? 32 : 16;
        }
        if ((i4 & KyberEngine.KyberPolyBytes) == 0) {
            i5 |= gapComposerH.y(function1) ? 256 : 128;
        }
        if ((i4 & 3072) == 0) {
            i5 |= gapComposerH.d(i2) ? 2048 : 1024;
        }
        int i6 = i5 | (gapComposerH.d(i3) ? 16384 : 8192);
        if ((196608 & i4) == 0) {
            i6 |= gapComposerH.K(str) ? 131072 : 65536;
        }
        if ((1572864 & i4) == 0) {
            i6 |= gapComposerH.K(spotlightCtaUiModel) ? 1048576 : 524288;
        }
        if ((12582912 & i4) == 0) {
            i6 |= gapComposerH.y(function2) ? 8388608 : 4194304;
        }
        if ((100663296 & i4) == 0) {
            i6 |= gapComposerH.y(function3) ? 67108864 : 33554432;
        }
        int i7 = i6;
        boolean z2 = false;
        if (gapComposerH.p(i7 & 1, (38347923 & i7) != 38347922)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            final float d = WindowInsetsKt.e(WindowInsets_androidKt.a(gapComposerH), gapComposerH).getD();
            if (spotlightCtaUiModel != null && spotlightCtaUiModel.f64641a.length() > 0) {
                z2 = true;
            }
            final float f2 = ((Configuration) gapComposerH.k(AndroidCompositionLocals_androidKt.f9935a)).screenWidthDp;
            Dp.Companion companion = Dp.f11004c;
            final boolean z3 = z2;
            a(SizeKt.d(modifierE, 1.0f), z, ComposableLambdaKt.b(821281668, new Function2() { // from class: u01
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    float f3;
                    float f4;
                    Composer composer2 = (Composer) obj;
                    int iIntValue = ((Integer) obj2).intValue();
                    float f5 = SpotlightBottomStepperKt.f64585a;
                    if (composer2.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                        OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                        Modifier modifierD = tr.d("SpotlightBottomStepper$lambda$0", 1.0f);
                        float f6 = SpotlightBottomStepperKt.f64585a;
                        float f7 = d;
                        Dp.Companion companion2 = Dp.f11004c;
                        Modifier modifierF = SizeKt.f(modifierD, f6 + f7);
                        Arrangement$Bottom$1 arrangement$Bottom$1 = Arrangement.d;
                        Alignment.f8582a.getClass();
                        ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(arrangement$Bottom$1, Alignment.Companion.n, composer2, 6);
                        int iHashCode = Long.hashCode(composer2.getT());
                        PersistentCompositionLocalMap persistentCompositionLocalMapN = composer2.n();
                        Modifier modifierC = ComposedModifierKt.c(composer2, modifierF);
                        ComposeUiNode.b0.getClass();
                        Function0 function0 = ComposeUiNode.Companion.f9641b;
                        if (composer2.getF7976a() == null) {
                            ComposablesKt.b();
                            throw null;
                        }
                        composer2.B();
                        if (composer2.getS()) {
                            composer2.C(function0);
                        } else {
                            composer2.o();
                        }
                        Function2 function4 = ComposeUiNode.Companion.f9644f;
                        Updater.c(composer2, columnMeasurePolicyA, function4);
                        Function2 function5 = ComposeUiNode.Companion.f9643e;
                        Updater.c(composer2, persistentCompositionLocalMapN, function5);
                        Integer numValueOf = Integer.valueOf(iHashCode);
                        Function2 function6 = ComposeUiNode.Companion.g;
                        Updater.c(composer2, numValueOf, function6);
                        Function1 function7 = ComposeUiNode.Companion.f9645h;
                        Updater.b(composer2, function7);
                        Function2 function8 = ComposeUiNode.Companion.d;
                        Modifier modifierM = PaddingKt.m(n00.c(composer2, modifierC, function8, "SpotlightBottomStepper$lambda$0", 1.0f), LVAppDesignKitTheme.l(composer2).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer2).f48416e, LVAppDesignKitTheme.l(composer2).g, 2);
                        BiasAlignment.Vertical vertical = Alignment.Companion.l;
                        boolean z4 = z3;
                        RowMeasurePolicy rowMeasurePolicyA = RowKt.a(z4 ? Arrangement.g : Arrangement.f4919b, vertical, composer2, 48);
                        int iHashCode2 = Long.hashCode(composer2.getT());
                        PersistentCompositionLocalMap persistentCompositionLocalMapN2 = composer2.n();
                        Modifier modifierC2 = ComposedModifierKt.c(composer2, modifierM);
                        if (composer2.getF7976a() == null) {
                            ComposablesKt.b();
                            throw null;
                        }
                        composer2.B();
                        if (composer2.getS()) {
                            composer2.C(function0);
                        } else {
                            composer2.o();
                        }
                        Updater.c(composer2, rowMeasurePolicyA, function4);
                        Updater.c(composer2, persistentCompositionLocalMapN2, function5);
                        cj.s(iHashCode2, composer2, function6, composer2, function7);
                        Updater.c(composer2, modifierC2, function8);
                        int i8 = i3;
                        if (z4) {
                            DTFunctionNameModifier dTFunctionNameModifierJ = pq0.j(-783376734, composer2, "SpotlightBottomStepper$lambda$0");
                            float f8 = f2 * 0.55f;
                            Modifier modifierT = SizeKt.t(dTFunctionNameModifierJ, f8, f8);
                            ConfigurationButton configurationButton = LVAppDesignKitTheme.b(composer2).f48451h;
                            SpotlightCtaUiModel spotlightCtaUiModel2 = spotlightCtaUiModel;
                            String str2 = spotlightCtaUiModel2 != null ? spotlightCtaUiModel2.f64641a : null;
                            if (str2 == null) {
                                str2 = "";
                            }
                            String str3 = str2;
                            Function1 function9 = function1;
                            boolean zK = composer2.K(function9) | composer2.d(i8);
                            Object objX = composer2.x();
                            if (zK || objX == Composer.Companion.f7939a) {
                                objX = new is(i8, 10, function9);
                                composer2.q(objX);
                            }
                            f3 = f7;
                            f4 = 1.0f;
                            LVButtonKt.b(0, 504, composer2, modifierT, configurationButton, null, null, str3, (Function0) objX, false, false, false);
                            SpacerKt.a(composer2, SizeKt.s(new DTFunctionNameModifier("SpotlightBottomStepper$lambda$0"), LVAppDesignKitTheme.l(composer2).f48416e));
                            composer2.F();
                        } else {
                            f3 = f7;
                            f4 = 1.0f;
                            composer2.L(-782894312);
                            composer2.F();
                        }
                        SpotlightBottomStepperKt.d(SizeKt.f(new DTFunctionNameModifier("SpotlightBottomStepper$lambda$0"), SpotlightBottomStepperKt.f64587c), i2, i8, str, !z4, function2, function3, composer2, 6);
                        composer2.r();
                        BoxKt.a(BackgroundKt.b(SizeKt.f(SizeKt.d(new DTFunctionNameModifier("SpotlightBottomStepper$lambda$0"), f4), f3), LVAppDesignKitTheme.c(composer2).f48361b.u, RectangleShapeKt.f8913a), composer2, 0);
                        composer2.r();
                    } else {
                        composer2.D();
                    }
                    return Unit.f71739a;
                }
            }, gapComposerH), gapComposerH, (i7 & 112) | KyberEngine.KyberPolyBytes);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            final Modifier modifier2 = modifierE;
            recomposeScopeImplB0.d = new Function2() { // from class: v01
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    ((Integer) obj2).getClass();
                    SpotlightBottomStepperKt.b(modifier2, z, function1, i2, i3, str, spotlightCtaUiModel, function2, function3, (Composer) obj, RecomposeScopeImplKt.a(i4 | 1));
                    return Unit.f71739a;
                }
            };
        }
    }

    public static final void c(int i2, int i3, Composer composer, Modifier modifier, String str) {
        int i4;
        Modifier dTFunctionNameModifier = modifier;
        if (dTFunctionNameModifier != null) {
            dTFunctionNameModifier = defpackage.a.e(modifier, "SpotlightLookPosition");
        }
        GapComposer gapComposerH = composer.h(-70186299);
        int i5 = i3 & 1;
        if (i5 != 0) {
            i4 = i2 | 6;
        } else if ((i2 & 6) == 0) {
            i4 = (gapComposerH.K(dTFunctionNameModifier) ? 4 : 2) | i2;
        } else {
            i4 = i2;
        }
        if ((i2 & 48) == 0) {
            i4 |= gapComposerH.K(str) ? 32 : 16;
        }
        if (gapComposerH.p(i4 & 1, (i4 & 19) != 18)) {
            if (i5 != 0) {
                dTFunctionNameModifier = new DTFunctionNameModifier("SpotlightLookPosition");
            }
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Object objX = gapComposerH.x();
            if (objX == Composer.Companion.f7939a) {
                objX = new l01(1);
                gapComposerH.q(objX);
            }
            ComposableSingletons$SpotlightBottomStepperKt.f64575a.getClass();
            Modifier modifier2 = dTFunctionNameModifier;
            AnimatedContentKt.b(str, modifier2, (Function1) objX, null, "Digit animation", null, ComposableSingletons$SpotlightBottomStepperKt.f64577c, gapComposerH, ((i4 >> 3) & 14) | 1597824 | ((i4 << 3) & 112), 40);
            dTFunctionNameModifier = modifier2;
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new t01(dTFunctionNameModifier, str, i2, i3);
        }
    }

    public static final void d(Modifier modifier, int i2, int i3, String str, boolean z, Function1 function1, Function1 function2, Composer composer, int i4) {
        int i5;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = defpackage.a.e(modifierE, "SpotlightSelector");
        }
        GapComposer gapComposerH = composer.h(770684670);
        int i6 = i4 | (gapComposerH.d(i2) ? 32 : 16) | (gapComposerH.d(i3) ? 256 : 128) | (gapComposerH.K(str) ? 2048 : 1024) | (gapComposerH.b(z) ? 16384 : 8192) | (gapComposerH.y(function1) ? 131072 : 65536) | (gapComposerH.y(function2) ? 1048576 : 524288);
        if (gapComposerH.p(i6 & 1, (599187 & i6) != 599186)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Alignment.f8582a.getClass();
            RowMeasurePolicy rowMeasurePolicyA = RowKt.a(z ? Arrangement.g : Arrangement.f4921e, Alignment.Companion.l, gapComposerH, 48);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierE);
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
            Updater.c(gapComposerH, rowMeasurePolicyA, ComposeUiNode.Companion.f9644f);
            Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
            Updater.c(gapComposerH, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
            Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
            Updater.c(gapComposerH, modifierC, ComposeUiNode.Companion.d);
            State stateB = AnimateAsStateKt.b((i2 <= 1 || i3 <= 0) ? 0.0f : 1.0f, null, null, gapComposerH, 0, 30);
            Modifier modifierO = SizeKt.o(new DTFunctionNameModifier("SpotlightSelector"), LVAppDesignKitTheme.d(gapComposerH).o);
            int i7 = i6 & 896;
            boolean z2 = (i7 == 256) | ((458752 & i6) == 131072);
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (z2 || objX == composer$Companion$Empty$1) {
                objX = new is(i3, function1);
                gapComposerH.q(objX);
            }
            IconKt.a(PainterResources_androidKt.a(LVAppDesignKitTheme.g(gapComposerH).H, gapComposerH, 0), StringResources_androidKt.c(gapComposerH, R.string.alt_previous), AlphaKt.a(ClickableKt.d(modifierO, false, null, null, (Function0) objX, 15), ((Number) stateB.getF10755b()).floatValue()), LVAppDesignKitTheme.c(gapComposerH).f48361b.m, gapComposerH, 8, 0);
            SpacerKt.a(gapComposerH, SizeKt.s(new DTFunctionNameModifier("SpotlightSelector"), LVAppDesignKitTheme.d(gapComposerH).f48390j));
            c((i6 >> 6) & 112, 1, gapComposerH, null, str);
            SpacerKt.a(gapComposerH, SizeKt.s(new DTFunctionNameModifier("SpotlightSelector"), LVAppDesignKitTheme.d(gapComposerH).f48390j));
            State stateB2 = AnimateAsStateKt.b((i2 <= 1 || i3 >= i2 + (-1)) ? 0.0f : 1.0f, null, null, gapComposerH, 0, 30);
            Modifier modifierO2 = SizeKt.o(new DTFunctionNameModifier("SpotlightSelector"), LVAppDesignKitTheme.d(gapComposerH).o);
            boolean z3 = ((i6 & 112) == 32) | (i7 == 256) | ((3670016 & i6) == 1048576);
            Object objX2 = gapComposerH.x();
            if (z3 || objX2 == composer$Companion$Empty$1) {
                i5 = 0;
                objX2 = new s01(i3, i2, function2, 0);
                gapComposerH.q(objX2);
            } else {
                i5 = 0;
            }
            IconKt.a(PainterResources_androidKt.a(LVAppDesignKitTheme.g(gapComposerH).I, gapComposerH, i5), StringResources_androidKt.c(gapComposerH, R.string.alt_next), AlphaKt.a(ClickableKt.d(modifierO2, false, null, null, (Function0) objX2, 15), ((Number) stateB2.getF10755b()).floatValue()), LVAppDesignKitTheme.c(gapComposerH).f48361b.m, gapComposerH, 8, 0);
            gapComposerH = gapComposerH;
            gapComposerH.Z(true);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new xd(modifierE, i2, i3, str, z, function1, function2, i4);
        }
    }
}
