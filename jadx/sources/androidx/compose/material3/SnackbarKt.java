package androidx.compose.material3;

import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.PaddingValuesImpl;
import androidx.compose.foundation.layout.RowScope;
import androidx.compose.material3.SnackbarKt;
import androidx.compose.material3.tokens.ColorSchemeKeyTokens;
import androidx.compose.material3.tokens.SnackbarTokens;
import androidx.compose.runtime.Applier;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.CompositionLocalKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.ProvidedValue;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.BiasAlignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Shape;
import androidx.compose.ui.layout.LayoutIdKt;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.unit.Dp;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import defpackage.u70;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import net.rtccloud.sdk.Call;
import org.bouncycastle.asn1.cmp.PKIFailureInfo;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"material3"}, k = 2, mv = {2, 0, 0}, xi = 48)
public abstract class SnackbarKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final float f7301a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final float f7302b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final float f7303c;
    public static final float d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final float f7304e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final float f7305f;

    static {
        Dp.Companion companion = Dp.f11004c;
        f7301a = 600.0f;
        f7302b = 30.0f;
        f7303c = 16.0f;
        d = 8.0f;
        f7304e = 6.0f;
        f7305f = 8.0f;
    }

    public static final void a(final ComposableLambdaImpl composableLambdaImpl, Function2 function2, Function2 function3, TextStyle textStyle, final long j2, long j3, Composer composer, final int i2) {
        Function2 function4;
        Function2 function5;
        TextStyle textStyle2;
        long j4;
        float f2;
        boolean z;
        int i3;
        boolean z2;
        GapComposer gapComposerH = composer.h(-931325388);
        Applier applier = gapComposerH.f7976a;
        int i4 = i2 | (gapComposerH.y(composableLambdaImpl) ? 4 : 2) | (gapComposerH.y(function2) ? 32 : 16) | (gapComposerH.y(function3) ? 256 : 128) | (gapComposerH.K(textStyle) ? 2048 : 1024) | (gapComposerH.e(j2) ? 16384 : 8192) | (gapComposerH.e(j3) ? 131072 : 65536);
        if (gapComposerH.p(i4 & 1, (74899 & i4) != 74898)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier("OneRowSnackbar-kKq0p4A");
            if (function3 == null) {
                f2 = d;
            } else {
                Dp.Companion companion = Dp.f11004c;
                f2 = Call.Parameters.DEFAULT_CAMERA_ZOOM;
            }
            Modifier modifierM = PaddingKt.m(dTFunctionNameModifier, f7303c, Call.Parameters.DEFAULT_CAMERA_ZOOM, f2, Call.Parameters.DEFAULT_CAMERA_ZOOM, 10);
            Object objX = gapComposerH.x();
            if (objX == Composer.Companion.f7939a) {
                objX = new SnackbarKt$OneRowSnackbar$2$1();
                gapComposerH.q(objX);
            }
            MeasurePolicy measurePolicy = (MeasurePolicy) objX;
            int iG = gapComposerH.G();
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierM);
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
            Function2 function6 = ComposeUiNode.Companion.f9644f;
            Updater.c(gapComposerH, measurePolicy, function6);
            Function2 function7 = ComposeUiNode.Companion.f9643e;
            Updater.c(gapComposerH, persistentCompositionLocalMapU, function7);
            Function2 function8 = ComposeUiNode.Companion.g;
            if (gapComposerH.S || !Intrinsics.c(gapComposerH.x(), Integer.valueOf(iG))) {
                defpackage.a.t(iG, gapComposerH, iG, function8);
            }
            Function2 function9 = ComposeUiNode.Companion.d;
            Updater.c(gapComposerH, modifierC, function9);
            Modifier modifierK = PaddingKt.k(LayoutIdKt.b(new DTFunctionNameModifier("OneRowSnackbar-kKq0p4A"), "text"), Call.Parameters.DEFAULT_CAMERA_ZOOM, f7304e, 1);
            Alignment.f8582a.getClass();
            BiasAlignment biasAlignment = Alignment.Companion.f8584b;
            MeasurePolicy measurePolicyD = BoxKt.d(biasAlignment, false);
            int iG2 = gapComposerH.G();
            PersistentCompositionLocalMap persistentCompositionLocalMapU2 = gapComposerH.U();
            Modifier modifierC2 = ComposedModifierKt.c(gapComposerH, modifierK);
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
            Updater.c(gapComposerH, measurePolicyD, function6);
            Updater.c(gapComposerH, persistentCompositionLocalMapU2, function7);
            if (gapComposerH.S || !Intrinsics.c(gapComposerH.x(), Integer.valueOf(iG2))) {
                defpackage.a.t(iG2, gapComposerH, iG2, function8);
            }
            Updater.c(gapComposerH, modifierC2, function9);
            composableLambdaImpl.invoke(gapComposerH, Integer.valueOf(i4 & 14));
            gapComposerH.Z(true);
            if (function2 != null) {
                gapComposerH.L(-1014168049);
                Modifier modifierB = LayoutIdKt.b(new DTFunctionNameModifier("OneRowSnackbar-kKq0p4A"), "action");
                MeasurePolicy measurePolicyD2 = BoxKt.d(biasAlignment, false);
                int iG3 = gapComposerH.G();
                PersistentCompositionLocalMap persistentCompositionLocalMapU3 = gapComposerH.U();
                Modifier modifierC3 = ComposedModifierKt.c(gapComposerH, modifierB);
                if (applier == null) {
                    ComposablesKt.b();
                    throw null;
                }
                gapComposerH.B();
                i3 = 8;
                if (gapComposerH.S) {
                    gapComposerH.C(function0);
                } else {
                    gapComposerH.o();
                }
                Updater.c(gapComposerH, measurePolicyD2, function6);
                Updater.c(gapComposerH, persistentCompositionLocalMapU3, function7);
                if (gapComposerH.S || !Intrinsics.c(gapComposerH.x(), Integer.valueOf(iG3))) {
                    defpackage.a.t(iG3, gapComposerH, iG3, function8);
                }
                Updater.c(gapComposerH, modifierC3, function9);
                textStyle2 = textStyle;
                function4 = function2;
                CompositionLocalKt.b(new ProvidedValue[]{defpackage.a.d(j2, ContentColorKt.f6730a), TextKt.f7383a.c(textStyle2)}, function4, gapComposerH, 8 | (i4 & 112));
                gapComposerH.Z(true);
                z = false;
                gapComposerH.Z(false);
            } else {
                function4 = function2;
                textStyle2 = textStyle;
                z = false;
                i3 = 8;
                gapComposerH.L(-1013852841);
                gapComposerH.Z(false);
            }
            if (function3 != null) {
                gapComposerH.L(-1013804481);
                Modifier modifierB2 = LayoutIdKt.b(new DTFunctionNameModifier("OneRowSnackbar-kKq0p4A"), "dismissAction");
                MeasurePolicy measurePolicyD3 = BoxKt.d(biasAlignment, z);
                int iG4 = gapComposerH.G();
                PersistentCompositionLocalMap persistentCompositionLocalMapU4 = gapComposerH.U();
                Modifier modifierC4 = ComposedModifierKt.c(gapComposerH, modifierB2);
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
                Updater.c(gapComposerH, measurePolicyD3, function6);
                Updater.c(gapComposerH, persistentCompositionLocalMapU4, function7);
                if (gapComposerH.S || !Intrinsics.c(gapComposerH.x(), Integer.valueOf(iG4))) {
                    defpackage.a.t(iG4, gapComposerH, iG4, function8);
                }
                Updater.c(gapComposerH, modifierC4, function9);
                j4 = j3;
                function5 = function3;
                CompositionLocalKt.a(defpackage.a.d(j4, ContentColorKt.f6730a), function5, gapComposerH, i3 | ((i4 >> 3) & 112));
                z2 = true;
                gapComposerH.Z(true);
                gapComposerH.Z(false);
            } else {
                function5 = function3;
                j4 = j3;
                z2 = true;
                gapComposerH.L(-1013535401);
                gapComposerH.Z(z);
            }
            gapComposerH.Z(z2);
        } else {
            function4 = function2;
            function5 = function3;
            textStyle2 = textStyle;
            j4 = j3;
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            final long j5 = j4;
            final TextStyle textStyle3 = textStyle2;
            final Function2 function10 = function5;
            final Function2 function11 = function4;
            recomposeScopeImplB0.d = new Function2(function11, function10, textStyle3, j2, j5, i2) { // from class: tz0

                /* JADX INFO: renamed from: c, reason: collision with root package name */
                public final /* synthetic */ Function2 f80180c;
                public final /* synthetic */ Function2 d;

                /* JADX INFO: renamed from: e, reason: collision with root package name */
                public final /* synthetic */ TextStyle f80181e;

                /* JADX INFO: renamed from: f, reason: collision with root package name */
                public final /* synthetic */ long f80182f;
                public final /* synthetic */ long g;

                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    ((Integer) obj2).getClass();
                    int iA = RecomposeScopeImplKt.a(1);
                    SnackbarKt.a(this.f80179b, this.f80180c, this.d, this.f80181e, this.f80182f, this.g, (Composer) obj, iA);
                    return Unit.f71739a;
                }
            };
        }
    }

    public static final void b(Modifier modifier, final Function2 function2, final Function2 function3, final Shape shape, final long j2, final long j3, final long j4, final long j5, final ComposableLambdaImpl composableLambdaImpl, Composer composer, final int i2) {
        int i3;
        Function2 function4;
        Function2 function5;
        Shape shape2;
        long j6;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = defpackage.a.e(modifierE, "Snackbar-eQBnUkQ");
        }
        final Modifier modifier2 = modifierE;
        GapComposer gapComposerH = composer.h(-1218779924);
        if ((i2 & 6) == 0) {
            i3 = (gapComposerH.K(modifier2) ? 4 : 2) | i2;
        } else {
            i3 = i2;
        }
        if ((i2 & 48) == 0) {
            function4 = function2;
            i3 |= gapComposerH.y(function4) ? 32 : 16;
        } else {
            function4 = function2;
        }
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            function5 = function3;
            i3 |= gapComposerH.y(function5) ? 256 : 128;
        } else {
            function5 = function3;
        }
        if ((i2 & 3072) == 0) {
            i3 |= gapComposerH.b(false) ? 2048 : 1024;
        }
        if ((i2 & 24576) == 0) {
            shape2 = shape;
            i3 |= gapComposerH.K(shape2) ? 16384 : 8192;
        } else {
            shape2 = shape;
        }
        if ((196608 & i2) == 0) {
            i3 |= gapComposerH.e(j2) ? 131072 : 65536;
        }
        if ((1572864 & i2) == 0) {
            i3 |= gapComposerH.e(j3) ? 1048576 : 524288;
        }
        if ((12582912 & i2) == 0) {
            j6 = j4;
            i3 |= gapComposerH.e(j6) ? 8388608 : 4194304;
        } else {
            j6 = j4;
        }
        if ((100663296 & i2) == 0) {
            i3 |= gapComposerH.e(j5) ? 67108864 : 33554432;
        }
        if ((805306368 & i2) == 0) {
            i3 |= gapComposerH.y(composableLambdaImpl) ? PKIFailureInfo.duplicateCertReq : 268435456;
        }
        if (gapComposerH.p(i3 & 1, (306783379 & i3) != 306783378)) {
            gapComposerH.y0();
            if ((i2 & 1) != 0 && !gapComposerH.h0()) {
                gapComposerH.D();
            }
            gapComposerH.a0();
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            final Function2 function6 = function4;
            final Function2 function7 = function5;
            final long j7 = j6;
            int i4 = (i3 & 14) | 12779520;
            int i5 = i3 >> 9;
            SurfaceKt.a(modifier2, shape2, j2, j3, Call.Parameters.DEFAULT_CAMERA_ZOOM, SnackbarTokens.d, ComposableLambdaKt.b(-1343524879, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.SnackbarKt$Snackbar$1
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    Composer composer2 = (Composer) obj;
                    int iIntValue = ((Number) obj2).intValue();
                    if (composer2.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                        OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                        TextStyle textStyleA = TypographyKt.a(SnackbarTokens.f7872h, composer2);
                        final TextStyle textStyleA2 = TypographyKt.a(SnackbarTokens.f7868b, composer2);
                        ProvidedValue providedValueC = TextKt.f7383a.c(textStyleA);
                        final long j8 = j7;
                        final long j9 = j5;
                        final Function2 function8 = function6;
                        final ComposableLambdaImpl composableLambdaImpl2 = composableLambdaImpl;
                        final Function2 function9 = function7;
                        CompositionLocalKt.a(providedValueC, ComposableLambdaKt.b(969655473, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.SnackbarKt$Snackbar$1.1
                            @Override // kotlin.jvm.functions.Function2
                            public final Object invoke(Object obj3, Object obj4) {
                                Composer composer3 = (Composer) obj3;
                                int iIntValue2 = ((Number) obj4).intValue();
                                if (composer3.p(iIntValue2 & 1, (iIntValue2 & 3) != 2)) {
                                    OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                                    composer3.L(-168976609);
                                    SnackbarKt.a(composableLambdaImpl2, function8, function9, textStyleA2, j8, j9, composer3, 0);
                                    composer3.F();
                                } else {
                                    composer3.D();
                                }
                                return Unit.f71739a;
                            }
                        }, composer2), composer2, 56);
                    } else {
                        composer2.D();
                    }
                    return Unit.f71739a;
                }
            }, gapComposerH), gapComposerH, i4 | (i5 & 112) | (i5 & 896) | (i5 & 7168), 80);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new Function2() { // from class: sz0
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    ((Integer) obj2).getClass();
                    int iA = RecomposeScopeImplKt.a(i2 | 1);
                    SnackbarKt.b(modifier2, function2, function3, shape, j2, j3, j4, j5, composableLambdaImpl, (Composer) obj, iA);
                    return Unit.f71739a;
                }
            };
        }
    }

    public static final void c(final SnackbarData snackbarData, Modifier modifier, Shape shape, long j2, long j3, long j4, long j5, long j6, Composer composer, final int i2) {
        int i3;
        GapComposer gapComposer;
        final Shape shape2;
        final long j7;
        final long j8;
        final long j9;
        final long j10;
        final long j11;
        final long jD;
        long j12;
        long j13;
        long jD2;
        long jD3;
        Shape shape3;
        int i4;
        ComposableLambdaImpl composableLambdaImpl;
        Modifier dTFunctionNameModifier = modifier;
        if (dTFunctionNameModifier != null) {
            dTFunctionNameModifier = defpackage.a.e(dTFunctionNameModifier, "Snackbar-sDKtq54");
        }
        GapComposer gapComposerH = composer.h(274621471);
        if ((i2 & 6) == 0) {
            i3 = (gapComposerH.K(snackbarData) ? 4 : 2) | i2;
        } else {
            i3 = i2;
        }
        int i5 = i3 | 432;
        if ((i2 & 3072) == 0) {
            i5 = i3 | 1456;
        }
        if ((i2 & 24576) == 0) {
            i5 |= 8192;
        }
        if ((196608 & i2) == 0) {
            i5 |= 65536;
        }
        if ((1572864 & i2) == 0) {
            i5 |= 524288;
        }
        if ((12582912 & i2) == 0) {
            i5 |= 4194304;
        }
        if ((100663296 & i2) == 0) {
            i5 |= 33554432;
        }
        if (gapComposerH.p(i5 & 1, (38347923 & i5) != 38347922)) {
            gapComposerH.y0();
            if ((i2 & 1) == 0 || gapComposerH.h0()) {
                dTFunctionNameModifier = new DTFunctionNameModifier("Snackbar-sDKtq54");
                OpaqueKey opaqueKey = ComposerKt.f7940a;
                Shape shapeA = ShapesKt.a(SnackbarTokens.f7870e, gapComposerH);
                long jD4 = ColorSchemeKt.d(SnackbarTokens.f7869c, gapComposerH);
                long jD5 = ColorSchemeKt.d(SnackbarTokens.g, gapComposerH);
                ColorSchemeKeyTokens colorSchemeKeyTokens = SnackbarTokens.f7867a;
                jD = ColorSchemeKt.d(colorSchemeKeyTokens, gapComposerH);
                j12 = jD4;
                j13 = jD5;
                jD2 = ColorSchemeKt.d(colorSchemeKeyTokens, gapComposerH);
                jD3 = ColorSchemeKt.d(SnackbarTokens.f7871f, gapComposerH);
                shape3 = shapeA;
                i4 = i5 & (-268434433);
            } else {
                gapComposerH.D();
                i4 = i5 & (-268434433);
                shape3 = shape;
                j12 = j2;
                j13 = j3;
                jD = j4;
                jD2 = j5;
                jD3 = j6;
            }
            gapComposerH.a0();
            OpaqueKey opaqueKey2 = ComposerKt.f7940a;
            final String f7295b = snackbarData.getF7292a().getD();
            ComposableLambdaImpl composableLambdaImplB = null;
            if (f7295b != null) {
                gapComposerH.L(-663815981);
                ComposableLambdaImpl composableLambdaImplB2 = ComposableLambdaKt.b(-1378313599, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.SnackbarKt$Snackbar$actionComposable$1
                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj, Object obj2) {
                        Composer composer2 = (Composer) obj;
                        int iIntValue = ((Number) obj2).intValue();
                        if (composer2.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                            OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                            PaddingValuesImpl paddingValuesImpl = ButtonDefaults.f6634a;
                            ButtonColors buttonColorsD = ButtonDefaults.d(jD, composer2);
                            SnackbarData snackbarData2 = snackbarData;
                            boolean zK = composer2.K(snackbarData2);
                            Object objX = composer2.x();
                            if (zK || objX == Composer.Companion.f7939a) {
                                objX = new u70(snackbarData2, 5);
                                composer2.q(objX);
                            }
                            final String str = f7295b;
                            ButtonKt.b((Function0) objX, null, false, null, buttonColorsD, null, ComposableLambdaKt.b(521110564, new Function3<RowScope, Composer, Integer, Unit>() { // from class: androidx.compose.material3.SnackbarKt$Snackbar$actionComposable$1.2
                                @Override // kotlin.jvm.functions.Function3
                                public final Object A(Object obj3, Object obj4, Object obj5) {
                                    Composer composer3 = (Composer) obj4;
                                    int iIntValue2 = ((Number) obj5).intValue();
                                    if (composer3.p(iIntValue2 & 1, (iIntValue2 & 17) != 16)) {
                                        OpaqueKey opaqueKey4 = ComposerKt.f7940a;
                                        TextKt.c(str, null, 0L, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, null, composer3, 0, 0, 262142);
                                    } else {
                                        composer3.D();
                                    }
                                    return Unit.f71739a;
                                }
                            }, composer2), composer2, 805306368, 494);
                        } else {
                            composer2.D();
                        }
                        return Unit.f71739a;
                    }
                }, gapComposerH);
                gapComposerH.Z(false);
                composableLambdaImpl = composableLambdaImplB2;
            } else {
                gapComposerH.L(-663517017);
                gapComposerH.Z(false);
                composableLambdaImpl = null;
            }
            if (snackbarData.getF7292a().getF48675c()) {
                gapComposerH.L(-663364652);
                composableLambdaImplB = ComposableLambdaKt.b(-1812633777, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.SnackbarKt$Snackbar$dismissActionComposable$1
                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj, Object obj2) {
                        Composer composer2 = (Composer) obj;
                        int iIntValue = ((Number) obj2).intValue();
                        if (composer2.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                            OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                            SnackbarData snackbarData2 = snackbarData;
                            boolean zK = composer2.K(snackbarData2);
                            Object objX = composer2.x();
                            if (zK || objX == Composer.Companion.f7939a) {
                                objX = new u70(snackbarData2, 6);
                                composer2.q(objX);
                            }
                            ComposableSingletons$SnackbarKt.f6727a.getClass();
                            IconButtonKt.a((Function0) objX, null, false, null, null, ComposableSingletons$SnackbarKt.f6728b, composer2, 1572864, 62);
                        } else {
                            composer2.D();
                        }
                        return Unit.f71739a;
                    }
                }, gapComposerH);
                gapComposerH.Z(false);
            } else {
                gapComposerH.L(-662974393);
                gapComposerH.Z(false);
            }
            ComposableLambdaImpl composableLambdaImpl2 = composableLambdaImplB;
            Dp.Companion companion = Dp.f11004c;
            gapComposer = gapComposerH;
            b(PaddingKt.i(dTFunctionNameModifier, 12.0f), composableLambdaImpl, composableLambdaImpl2, shape3, j12, j13, jD2, jD3, ComposableLambdaKt.b(-1266389126, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.SnackbarKt$Snackbar$3
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    Composer composer2 = (Composer) obj;
                    int iIntValue = ((Number) obj2).intValue();
                    if (composer2.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                        OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                        TextKt.c(snackbarData.getF7292a().getF48673a(), null, 0L, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, null, composer2, 0, 0, 262142);
                    } else {
                        composer2.D();
                    }
                    return Unit.f71739a;
                }
            }, gapComposerH), gapComposer, ((i4 << 3) & 7168) | 805306368);
            j9 = jD;
            shape2 = shape3;
            j7 = j12;
            j8 = j13;
            j10 = jD2;
            j11 = jD3;
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
            shape2 = shape;
            j7 = j2;
            j8 = j3;
            j9 = j4;
            j10 = j5;
            j11 = j6;
        }
        final Modifier modifier2 = dTFunctionNameModifier;
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new Function2() { // from class: rz0
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    ((Integer) obj2).getClass();
                    int iA = RecomposeScopeImplKt.a(i2 | 1);
                    SnackbarKt.c(snackbarData, modifier2, shape2, j7, j8, j9, j10, j11, (Composer) obj, iA);
                    return Unit.f71739a;
                }
            };
        }
    }
}
