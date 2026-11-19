package androidx.compose.material3;

import androidx.compose.animation.core.SnapSpec;
import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.BorderKt;
import androidx.compose.foundation.IndicationKt;
import androidx.compose.foundation.interaction.InteractionSource;
import androidx.compose.foundation.interaction.InteractionSourceKt;
import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScopeInstance;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.selection.ToggleableKt;
import androidx.compose.material3.tokens.ColorSchemeKeyTokens;
import androidx.compose.material3.tokens.MotionSchemeKeyTokens;
import androidx.compose.material3.tokens.SwitchTokens;
import androidx.compose.runtime.Applier;
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
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.ColorKt;
import androidx.compose.ui.graphics.Shape;
import androidx.compose.ui.layout.HorizontalAlignmentLine;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.semantics.Role;
import androidx.compose.ui.unit.Dp;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import defpackage.eb;
import defpackage.fb0;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"material3"}, k = 2, mv = {2, 0, 0}, xi = 48)
public abstract class SwitchKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final float f7358a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final float f7359b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final float f7360c;
    public static final float d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final float f7361e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final SnapSpec f7362f;

    static {
        ColorSchemeKeyTokens colorSchemeKeyTokens = SwitchTokens.f7877a;
        float f2 = SwitchTokens.p;
        f7358a = f2;
        f7359b = SwitchTokens.z;
        f7360c = SwitchTokens.w;
        float f3 = SwitchTokens.t;
        d = f3;
        float f4 = f3 - f2;
        Dp.Companion companion = Dp.f11004c;
        f7361e = f4 / 2.0f;
        f7362f = new SnapSpec(0, 1, null);
    }

    /* JADX WARN: Code duplicated, block: B:43:0x0072  */
    /* JADX WARN: Code duplicated, block: B:45:0x0076  */
    /* JADX WARN: Code duplicated, block: B:47:0x007e  */
    /* JADX WARN: Code duplicated, block: B:48:0x0081  */
    /* JADX WARN: Code duplicated, block: B:51:0x0087  */
    /* JADX WARN: Code duplicated, block: B:54:0x0097  */
    /* JADX WARN: Code duplicated, block: B:55:0x0099  */
    /* JADX WARN: Code duplicated, block: B:58:0x00a2  */
    /* JADX WARN: Code duplicated, block: B:67:0x00c1 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:68:0x00c3  */
    /* JADX WARN: Code duplicated, block: B:71:0x00cb  */
    /* JADX WARN: Code duplicated, block: B:74:0x00d0  */
    /* JADX WARN: Code duplicated, block: B:76:0x00de  */
    /* JADX WARN: Code duplicated, block: B:81:0x01a1  */
    /* JADX WARN: Code duplicated, block: B:84:0x01b0  */
    /* JADX WARN: Code duplicated, block: B:85:0x01d4  */
    /* JADX WARN: Code duplicated, block: B:88:0x0215  */
    /* JADX WARN: Code duplicated, block: B:91:0x0221  */
    /* JADX WARN: Code duplicated, block: B:93:? A[RETURN, SYNTHETIC] */
    public static final void a(boolean z, Function1 function1, Modifier modifier, boolean z2, SwitchColors switchColors, Composer composer, int i2, int i3) {
        int i4;
        boolean z3;
        SwitchColors switchColors2;
        int i5;
        boolean z4;
        boolean z5;
        SwitchColors switchColors3;
        Modifier modifier2;
        RecomposeScopeImpl recomposeScopeImplB0;
        Modifier modifier3;
        int i6;
        SwitchColors switchColors4;
        boolean z6;
        ColorScheme colorSchemeA;
        SwitchColors switchColors5;
        long j2;
        Object objX;
        MutableInteractionSource mutableInteractionSource;
        Modifier dTFunctionNameModifier;
        Modifier dTFunctionNameModifier2 = modifier;
        if (dTFunctionNameModifier2 != null) {
            dTFunctionNameModifier2 = defpackage.a.e(dTFunctionNameModifier2, "Switch");
        }
        GapComposer gapComposerH = composer.h(-263339167);
        if ((i2 & 6) == 0) {
            i4 = (gapComposerH.b(z) ? 4 : 2) | i2;
        } else {
            i4 = i2;
        }
        if ((i2 & 48) == 0) {
            i4 |= gapComposerH.y(function1) ? 32 : 16;
        }
        int i7 = i3 & 4;
        if (i7 != 0) {
            i4 |= KyberEngine.KyberPolyBytes;
        } else if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i4 |= gapComposerH.K(dTFunctionNameModifier2) ? 256 : 128;
        }
        int i8 = i4 | 3072;
        int i9 = i3 & 16;
        if (i9 == 0) {
            if ((i2 & 24576) == 0) {
                z3 = z2;
                i8 |= gapComposerH.b(z3) ? 16384 : 8192;
            }
            if ((196608 & i2) == 0) {
                if ((i3 & 32) == 0) {
                    switchColors2 = switchColors;
                    int i10 = gapComposerH.K(switchColors2) ? 131072 : 65536;
                    i8 |= i10;
                } else {
                    switchColors2 = switchColors;
                }
                i8 |= i10;
            } else {
                switchColors2 = switchColors;
            }
            i5 = i8 | 1572864;
            if ((599187 & i5) != 599186) {
                z4 = true;
            } else {
                z4 = false;
            }
            if (gapComposerH.p(i5 & 1, z4)) {
                gapComposerH.y0();
                if ((i2 & 1) != 0 || gapComposerH.h0()) {
                    if (i7 != 0) {
                        dTFunctionNameModifier2 = new DTFunctionNameModifier("Switch");
                    }
                    boolean z7 = i9 == 0 ? z3 : true;
                    if ((i3 & 32) != 0) {
                        int i11 = SwitchDefaults.f7357a;
                        OpaqueKey opaqueKey = ComposerKt.f7940a;
                        colorSchemeA = MaterialTheme.a(gapComposerH);
                        switchColors5 = colorSchemeA.g0;
                        j2 = colorSchemeA.p;
                        if (switchColors5 == null) {
                            long jC = ColorSchemeKt.c(colorSchemeA, SwitchTokens.o);
                            long jC2 = ColorSchemeKt.c(colorSchemeA, SwitchTokens.r);
                            Color.f8866b.getClass();
                            long j3 = Color.f8870h;
                            long jC3 = ColorSchemeKt.c(colorSchemeA, SwitchTokens.q);
                            long jC4 = ColorSchemeKt.c(colorSchemeA, SwitchTokens.y);
                            long jC5 = ColorSchemeKt.c(colorSchemeA, SwitchTokens.B);
                            long jC6 = ColorSchemeKt.c(colorSchemeA, SwitchTokens.x);
                            long jC7 = ColorSchemeKt.c(colorSchemeA, SwitchTokens.A);
                            long jF = ColorKt.f(Color.b(SwitchTokens.f7878b, ColorSchemeKt.c(colorSchemeA, SwitchTokens.f7877a)), j2);
                            long jC8 = ColorSchemeKt.c(colorSchemeA, SwitchTokens.f7880e);
                            float f2 = SwitchTokens.f7881f;
                            switchColors5 = new SwitchColors(jC, jC2, j3, jC3, jC4, jC5, jC6, jC7, jF, ColorKt.f(Color.b(f2, jC8), j2), j3, ColorKt.f(Color.b(SwitchTokens.d, ColorSchemeKt.c(colorSchemeA, SwitchTokens.f7879c)), j2), ColorKt.f(Color.b(SwitchTokens.f7882h, ColorSchemeKt.c(colorSchemeA, SwitchTokens.g)), j2), ColorKt.f(Color.b(f2, ColorSchemeKt.c(colorSchemeA, SwitchTokens.f7885k)), j2), ColorKt.f(Color.b(f2, ColorSchemeKt.c(colorSchemeA, SwitchTokens.l)), j2), ColorKt.f(Color.b(SwitchTokens.f7884j, ColorSchemeKt.c(colorSchemeA, SwitchTokens.f7883i)), j2), null);
                            colorSchemeA.g0 = switchColors5;
                        }
                        i5 &= -458753;
                        switchColors2 = switchColors5;
                    }
                    modifier3 = dTFunctionNameModifier2;
                    i6 = i5;
                    switchColors4 = switchColors2;
                    z6 = z7;
                } else {
                    gapComposerH.D();
                    if ((i3 & 32) != 0) {
                        i5 &= -458753;
                    }
                    modifier3 = dTFunctionNameModifier2;
                    i6 = i5;
                    switchColors4 = switchColors2;
                    z6 = z3;
                }
                gapComposerH.a0();
                OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                gapComposerH.L(1768604058);
                objX = gapComposerH.x();
                if (objX == Composer.Companion.f7939a) {
                    objX = InteractionSourceKt.a();
                    gapComposerH.q(objX);
                }
                mutableInteractionSource = (MutableInteractionSource) objX;
                gapComposerH.Z(false);
                if (function1 != null) {
                    DTFunctionNameModifier dTFunctionNameModifier3 = new DTFunctionNameModifier("Switch");
                    HorizontalAlignmentLine horizontalAlignmentLine = InteractiveComponentSizeKt.f7011a;
                    Modifier modifierO = dTFunctionNameModifier3.o(MinimumInteractiveModifier.f7044b);
                    Role.f10289b.getClass();
                    dTFunctionNameModifier = ToggleableKt.a(modifierO, z, mutableInteractionSource, null, z6, new Role(Role.d), function1);
                } else {
                    dTFunctionNameModifier = new DTFunctionNameModifier("Switch");
                }
                Modifier modifierO2 = modifier3.o(dTFunctionNameModifier);
                Alignment.f8582a.getClass();
                int i12 = i6 << 3;
                int i13 = i6 >> 6;
                dTFunctionNameModifier2 = modifier3;
                b(SizeKt.l(SizeKt.w(modifierO2, Alignment.Companion.f8587f, 2), f7360c, d), z, z6, switchColors4, mutableInteractionSource, ShapesKt.a(SwitchTokens.m, gapComposerH), gapComposerH, (i12 & 112) | (i13 & 896) | (i13 & 7168) | (i12 & 57344));
                z5 = z6;
                switchColors3 = switchColors4;
            } else {
                gapComposerH.D();
                z5 = z3;
                switchColors3 = switchColors2;
            }
            modifier2 = dTFunctionNameModifier2;
            recomposeScopeImplB0 = gapComposerH.b0();
            if (recomposeScopeImplB0 != null) {
                recomposeScopeImplB0.d = new fb0(z, function1, modifier2, z5, switchColors3, i2, i3);
            }
        }
        i8 = i4 | 27648;
        z3 = z2;
        if ((196608 & i2) == 0) {
            if ((i3 & 32) == 0) {
                switchColors2 = switchColors;
                if (gapComposerH.K(switchColors2)) {
                }
                i8 |= i10;
            } else {
                switchColors2 = switchColors;
            }
            i8 |= i10;
        } else {
            switchColors2 = switchColors;
        }
        i5 = i8 | 1572864;
        if ((599187 & i5) != 599186) {
            z4 = true;
        } else {
            z4 = false;
        }
        if (gapComposerH.p(i5 & 1, z4)) {
            gapComposerH.y0();
            if ((i2 & 1) != 0) {
                if (i7 != 0) {
                    dTFunctionNameModifier2 = new DTFunctionNameModifier("Switch");
                }
                if (i9 == 0) {
                }
                if ((i3 & 32) != 0) {
                    int i14 = SwitchDefaults.f7357a;
                    OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                    colorSchemeA = MaterialTheme.a(gapComposerH);
                    switchColors5 = colorSchemeA.g0;
                    j2 = colorSchemeA.p;
                    if (switchColors5 == null) {
                        long jC9 = ColorSchemeKt.c(colorSchemeA, SwitchTokens.o);
                        long jC10 = ColorSchemeKt.c(colorSchemeA, SwitchTokens.r);
                        Color.f8866b.getClass();
                        long j4 = Color.f8870h;
                        long jC11 = ColorSchemeKt.c(colorSchemeA, SwitchTokens.q);
                        long jC12 = ColorSchemeKt.c(colorSchemeA, SwitchTokens.y);
                        long jC13 = ColorSchemeKt.c(colorSchemeA, SwitchTokens.B);
                        long jC14 = ColorSchemeKt.c(colorSchemeA, SwitchTokens.x);
                        long jC15 = ColorSchemeKt.c(colorSchemeA, SwitchTokens.A);
                        long jF2 = ColorKt.f(Color.b(SwitchTokens.f7878b, ColorSchemeKt.c(colorSchemeA, SwitchTokens.f7877a)), j2);
                        long jC16 = ColorSchemeKt.c(colorSchemeA, SwitchTokens.f7880e);
                        float f3 = SwitchTokens.f7881f;
                        switchColors5 = new SwitchColors(jC9, jC10, j4, jC11, jC12, jC13, jC14, jC15, jF2, ColorKt.f(Color.b(f3, jC16), j2), j4, ColorKt.f(Color.b(SwitchTokens.d, ColorSchemeKt.c(colorSchemeA, SwitchTokens.f7879c)), j2), ColorKt.f(Color.b(SwitchTokens.f7882h, ColorSchemeKt.c(colorSchemeA, SwitchTokens.g)), j2), ColorKt.f(Color.b(f3, ColorSchemeKt.c(colorSchemeA, SwitchTokens.f7885k)), j2), ColorKt.f(Color.b(f3, ColorSchemeKt.c(colorSchemeA, SwitchTokens.l)), j2), ColorKt.f(Color.b(SwitchTokens.f7884j, ColorSchemeKt.c(colorSchemeA, SwitchTokens.f7883i)), j2), null);
                        colorSchemeA.g0 = switchColors5;
                    }
                    i5 &= -458753;
                    switchColors2 = switchColors5;
                }
                modifier3 = dTFunctionNameModifier2;
                i6 = i5;
                switchColors4 = switchColors2;
                z6 = z7;
            } else {
                if (i7 != 0) {
                    dTFunctionNameModifier2 = new DTFunctionNameModifier("Switch");
                }
                if (i9 == 0) {
                }
                if ((i3 & 32) != 0) {
                    int i15 = SwitchDefaults.f7357a;
                    OpaqueKey opaqueKey4 = ComposerKt.f7940a;
                    colorSchemeA = MaterialTheme.a(gapComposerH);
                    switchColors5 = colorSchemeA.g0;
                    j2 = colorSchemeA.p;
                    if (switchColors5 == null) {
                        long jC17 = ColorSchemeKt.c(colorSchemeA, SwitchTokens.o);
                        long jC18 = ColorSchemeKt.c(colorSchemeA, SwitchTokens.r);
                        Color.f8866b.getClass();
                        long j5 = Color.f8870h;
                        long jC19 = ColorSchemeKt.c(colorSchemeA, SwitchTokens.q);
                        long jC110 = ColorSchemeKt.c(colorSchemeA, SwitchTokens.y);
                        long jC111 = ColorSchemeKt.c(colorSchemeA, SwitchTokens.B);
                        long jC112 = ColorSchemeKt.c(colorSchemeA, SwitchTokens.x);
                        long jC113 = ColorSchemeKt.c(colorSchemeA, SwitchTokens.A);
                        long jF3 = ColorKt.f(Color.b(SwitchTokens.f7878b, ColorSchemeKt.c(colorSchemeA, SwitchTokens.f7877a)), j2);
                        long jC114 = ColorSchemeKt.c(colorSchemeA, SwitchTokens.f7880e);
                        float f4 = SwitchTokens.f7881f;
                        switchColors5 = new SwitchColors(jC17, jC18, j5, jC19, jC110, jC111, jC112, jC113, jF3, ColorKt.f(Color.b(f4, jC114), j2), j5, ColorKt.f(Color.b(SwitchTokens.d, ColorSchemeKt.c(colorSchemeA, SwitchTokens.f7879c)), j2), ColorKt.f(Color.b(SwitchTokens.f7882h, ColorSchemeKt.c(colorSchemeA, SwitchTokens.g)), j2), ColorKt.f(Color.b(f4, ColorSchemeKt.c(colorSchemeA, SwitchTokens.f7885k)), j2), ColorKt.f(Color.b(f4, ColorSchemeKt.c(colorSchemeA, SwitchTokens.l)), j2), ColorKt.f(Color.b(SwitchTokens.f7884j, ColorSchemeKt.c(colorSchemeA, SwitchTokens.f7883i)), j2), null);
                        colorSchemeA.g0 = switchColors5;
                    }
                    i5 &= -458753;
                    switchColors2 = switchColors5;
                }
                modifier3 = dTFunctionNameModifier2;
                i6 = i5;
                switchColors4 = switchColors2;
                z6 = z7;
            }
            gapComposerH.a0();
            OpaqueKey opaqueKey5 = ComposerKt.f7940a;
            gapComposerH.L(1768604058);
            objX = gapComposerH.x();
            if (objX == Composer.Companion.f7939a) {
                objX = InteractionSourceKt.a();
                gapComposerH.q(objX);
            }
            mutableInteractionSource = (MutableInteractionSource) objX;
            gapComposerH.Z(false);
            if (function1 != null) {
                DTFunctionNameModifier dTFunctionNameModifier4 = new DTFunctionNameModifier("Switch");
                HorizontalAlignmentLine horizontalAlignmentLine2 = InteractiveComponentSizeKt.f7011a;
                Modifier modifierO3 = dTFunctionNameModifier4.o(MinimumInteractiveModifier.f7044b);
                Role.f10289b.getClass();
                dTFunctionNameModifier = ToggleableKt.a(modifierO3, z, mutableInteractionSource, null, z6, new Role(Role.d), function1);
            } else {
                dTFunctionNameModifier = new DTFunctionNameModifier("Switch");
            }
            Modifier modifierO4 = modifier3.o(dTFunctionNameModifier);
            Alignment.f8582a.getClass();
            int i16 = i6 << 3;
            int i17 = i6 >> 6;
            dTFunctionNameModifier2 = modifier3;
            b(SizeKt.l(SizeKt.w(modifierO4, Alignment.Companion.f8587f, 2), f7360c, d), z, z6, switchColors4, mutableInteractionSource, ShapesKt.a(SwitchTokens.m, gapComposerH), gapComposerH, (i16 & 112) | (i17 & 896) | (i17 & 7168) | (i16 & 57344));
            z5 = z6;
            switchColors3 = switchColors4;
        } else {
            gapComposerH.D();
            z5 = z3;
            switchColors3 = switchColors2;
        }
        modifier2 = dTFunctionNameModifier2;
        recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new fb0(z, function1, modifier2, z5, switchColors3, i2, i3);
        }
    }

    public static final void b(Modifier modifier, boolean z, boolean z2, SwitchColors switchColors, InteractionSource interactionSource, Shape shape, Composer composer, int i2) {
        int i3;
        long j2;
        long j3;
        long j4;
        Modifier modifierE = modifier;
        Shape shape2 = shape;
        if (modifierE != null) {
            modifierE = defpackage.a.e(modifierE, "SwitchImpl");
        }
        GapComposer gapComposerH = composer.h(-670917213);
        Applier applier = gapComposerH.f7976a;
        if ((i2 & 6) == 0) {
            i3 = (gapComposerH.K(modifierE) ? 4 : 2) | i2;
        } else {
            i3 = i2;
        }
        if ((i2 & 48) == 0) {
            i3 |= gapComposerH.b(z) ? 32 : 16;
        }
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i3 |= gapComposerH.b(z2) ? 256 : 128;
        }
        if ((i2 & 3072) == 0) {
            i3 |= gapComposerH.K(switchColors) ? 2048 : 1024;
        }
        if ((i2 & 24576) == 0) {
            i3 |= gapComposerH.y(null) ? 16384 : 8192;
        }
        if ((196608 & i2) == 0) {
            i3 |= gapComposerH.K(interactionSource) ? 131072 : 65536;
        }
        if ((1572864 & i2) == 0) {
            i3 |= gapComposerH.K(shape2) ? 1048576 : 524288;
        }
        if (gapComposerH.p(i3 & 1, (599187 & i3) != 599186)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            if (z2) {
                j2 = z ? switchColors.f7349b : switchColors.f7352f;
            } else {
                j2 = z ? switchColors.f7355j : switchColors.n;
            }
            if (z2) {
                j3 = z ? switchColors.f7348a : switchColors.f7351e;
            } else {
                j3 = z ? switchColors.f7354i : switchColors.m;
            }
            Shape shapeA = ShapesKt.a(SwitchTokens.v, gapComposerH);
            float f2 = SwitchTokens.u;
            if (z2) {
                j4 = z ? switchColors.f7350c : switchColors.g;
            } else {
                j4 = z ? switchColors.f7356k : switchColors.o;
            }
            Modifier modifierB = BackgroundKt.b(BorderKt.a(modifierE, f2, j4, shapeA), j2, shapeA);
            Alignment.f8582a.getClass();
            MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
            int iG = gapComposerH.G();
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierB);
            ComposeUiNode.b0.getClass();
            Function0 function0 = ComposeUiNode.Companion.f9641b;
            if (applier == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function0);
            } else {
                gapComposerH.o();
            }
            Function2 function2 = ComposeUiNode.Companion.f9644f;
            Updater.c(gapComposerH, measurePolicyD, function2);
            Function2 function3 = ComposeUiNode.Companion.f9643e;
            Updater.c(gapComposerH, persistentCompositionLocalMapU, function3);
            Function2 function4 = ComposeUiNode.Companion.g;
            if (gapComposerH.S || !Intrinsics.c(gapComposerH.x(), Integer.valueOf(iG))) {
                defpackage.a.t(iG, gapComposerH, iG, function4);
            }
            Function2 function5 = ComposeUiNode.Companion.d;
            Updater.c(gapComposerH, modifierC, function5);
            Modifier modifierO = BoxScopeInstance.f4938a.g(new DTFunctionNameModifier("SwitchImpl"), Alignment.Companion.f8586e).o(new ThumbElement(interactionSource, z, MotionSchemeKt.a(MotionSchemeKeyTokens.FastSpatial, gapComposerH)));
            float f3 = SwitchTokens.s / 2.0f;
            Dp.Companion companion = Dp.f11004c;
            shape2 = shape;
            Modifier modifierB2 = BackgroundKt.b(IndicationKt.a(modifierO, interactionSource, RippleKt.a(f3, 4, false)), j3, shape2);
            MeasurePolicy measurePolicyD2 = BoxKt.d(Alignment.Companion.f8587f, false);
            int iG2 = gapComposerH.G();
            PersistentCompositionLocalMap persistentCompositionLocalMapU2 = gapComposerH.U();
            Modifier modifierC2 = ComposedModifierKt.c(gapComposerH, modifierB2);
            if (applier == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function0);
            } else {
                gapComposerH.o();
            }
            Updater.c(gapComposerH, measurePolicyD2, function2);
            Updater.c(gapComposerH, persistentCompositionLocalMapU2, function3);
            if (gapComposerH.S || !Intrinsics.c(gapComposerH.x(), Integer.valueOf(iG2))) {
                defpackage.a.t(iG2, gapComposerH, iG2, function4);
            }
            Updater.c(gapComposerH, modifierC2, function5);
            gapComposerH.L(1236071411);
            gapComposerH.Z(false);
            gapComposerH.Z(true);
            gapComposerH.Z(true);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new eb(modifierE, z, z2, switchColors, interactionSource, shape2, i2);
        }
    }
}
