package androidx.compose.material3;

import androidx.compose.foundation.interaction.InteractionSourceKt;
import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.Arrangement$Center$1;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowMeasurePolicy;
import androidx.compose.foundation.layout.RowScopeInstance;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.material3.FloatingActionButtonElevation;
import androidx.compose.material3.FloatingActionButtonKt;
import androidx.compose.material3.internal.ProvideContentColorTextStyleKt;
import androidx.compose.material3.tokens.ExtendedFabLargeTokens;
import androidx.compose.material3.tokens.ExtendedFabMediumTokens;
import androidx.compose.material3.tokens.ExtendedFabPrimaryTokens;
import androidx.compose.material3.tokens.ExtendedFabSmallTokens;
import androidx.compose.material3.tokens.FabBaselineTokens;
import androidx.compose.material3.tokens.FabPrimaryContainerTokens;
import androidx.compose.material3.tokens.TypographyKeyTokens;
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
import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Shape;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.unit.Dp;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.google.ar.core.ImageMetadata;
import defpackage.dy;
import defpackage.fc;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import net.rtccloud.sdk.Call;
import org.bouncycastle.asn1.cmp.PKIFailureInfo;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"material3"}, k = 2, mv = {2, 0, 0}, xi = 48)
public abstract class FloatingActionButtonKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final float f6988a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final float f6989b;

    static {
        int i2 = ExtendedFabSmallTokens.f7779a;
        TypographyKeyTokens typographyKeyTokens = TypographyKeyTokens.BodyLarge;
        int i3 = ExtendedFabMediumTokens.f7776a;
        Dp.Companion companion = Dp.f11004c;
        int i4 = ExtendedFabLargeTokens.f7775a;
        f6988a = 20.0f;
        f6989b = 80.0f;
    }

    public static final void a(final Function0 function0, Modifier modifier, Shape shape, long j2, long j3, FloatingActionButtonElevation floatingActionButtonElevation, Function3 function3, Composer composer, final int i2) {
        final Function3 function4;
        final Shape shape2;
        final long j4;
        final long j5;
        final FloatingActionButtonElevation floatingActionButtonElevation2;
        final Modifier modifier2;
        FloatingActionButtonElevation floatingActionButtonElevationA;
        long j6;
        long j7;
        Shape shape3;
        int i3;
        Modifier dTFunctionNameModifier = modifier;
        if (dTFunctionNameModifier != null) {
            dTFunctionNameModifier = defpackage.a.e(dTFunctionNameModifier, "ExtendedFloatingActionButton-X-z6DiA");
        }
        GapComposer gapComposerH = composer.h(1039585610);
        int i4 = i2 | (gapComposerH.y(function0) ? 4 : 2) | 1647792;
        if (gapComposerH.p(i4 & 1, (4793491 & i4) != 4793490)) {
            gapComposerH.y0();
            if ((i2 & 1) == 0 || gapComposerH.h0()) {
                dTFunctionNameModifier = new DTFunctionNameModifier("ExtendedFloatingActionButton-X-z6DiA");
                int i5 = FloatingActionButtonDefaults.f6965a;
                OpaqueKey opaqueKey = ComposerKt.f7940a;
                Shape shapeA = ShapesKt.a(ExtendedFabPrimaryTokens.f7777a, gapComposerH);
                long jD = ColorSchemeKt.d(FabPrimaryContainerTokens.f7782a, gapComposerH);
                long jB = ColorSchemeKt.b(jD, gapComposerH);
                floatingActionButtonElevationA = FloatingActionButtonDefaults.a(15);
                j6 = jB;
                j7 = jD;
                shape3 = shapeA;
                i3 = i4 & (-524161);
            } else {
                gapComposerH.D();
                i3 = i4 & (-524161);
                shape3 = shape;
                j7 = j2;
                j6 = j3;
                floatingActionButtonElevationA = floatingActionButtonElevation;
            }
            Modifier modifier3 = dTFunctionNameModifier;
            gapComposerH.a0();
            OpaqueKey opaqueKey2 = ComposerKt.f7940a;
            function4 = function3;
            b(function0, modifier3, shape3, j7, j6, floatingActionButtonElevationA, ComposableLambdaKt.b(-1233936436, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.FloatingActionButtonKt$ExtendedFloatingActionButton$1
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    Composer composer2 = (Composer) obj;
                    int iIntValue = ((Number) obj2).intValue();
                    if (composer2.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                        OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                        Modifier modifierK = PaddingKt.k(SizeKt.r(Modifier.Companion.f8607b, FloatingActionButtonKt.f6989b, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 14), FloatingActionButtonKt.f6988a, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2);
                        Arrangement$Center$1 arrangement$Center$1 = Arrangement.f4921e;
                        Alignment.f8582a.getClass();
                        RowMeasurePolicy rowMeasurePolicyA = RowKt.a(arrangement$Center$1, Alignment.Companion.l, composer2, 54);
                        int iG = composer2.G();
                        PersistentCompositionLocalMap persistentCompositionLocalMapN = composer2.n();
                        Modifier modifierC = ComposedModifierKt.c(composer2, modifierK);
                        ComposeUiNode.b0.getClass();
                        Function0 function1 = ComposeUiNode.Companion.f9641b;
                        if (composer2.getF7976a() == null) {
                            ComposablesKt.b();
                            throw null;
                        }
                        composer2.B();
                        if (composer2.getS()) {
                            composer2.C(function1);
                        } else {
                            composer2.o();
                        }
                        Updater.c(composer2, rowMeasurePolicyA, ComposeUiNode.Companion.f9644f);
                        Updater.c(composer2, persistentCompositionLocalMapN, ComposeUiNode.Companion.f9643e);
                        Function2 function2 = ComposeUiNode.Companion.g;
                        if (composer2.getS() || !Intrinsics.c(composer2.x(), Integer.valueOf(iG))) {
                            fc.A(function2, iG, composer2, iG);
                        }
                        Updater.c(composer2, modifierC, ComposeUiNode.Companion.d);
                        function4.A(RowScopeInstance.f5040a, composer2, 6);
                        composer2.r();
                    } else {
                        composer2.D();
                    }
                    return Unit.f71739a;
                }
            }, gapComposerH), gapComposerH, (i3 & 14) | 14155824, 0);
            modifier2 = modifier3;
            shape2 = shape3;
            j4 = j7;
            j5 = j6;
            floatingActionButtonElevation2 = floatingActionButtonElevationA;
        } else {
            function4 = function3;
            gapComposerH.D();
            shape2 = shape;
            j4 = j2;
            j5 = j3;
            floatingActionButtonElevation2 = floatingActionButtonElevation;
            modifier2 = dTFunctionNameModifier;
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            final Function3 function5 = function4;
            recomposeScopeImplB0.d = new Function2(modifier2, shape2, j4, j5, floatingActionButtonElevation2, function5, i2) { // from class: kz

                /* JADX INFO: renamed from: c, reason: collision with root package name */
                public final /* synthetic */ Modifier f75899c;
                public final /* synthetic */ Shape d;

                /* JADX INFO: renamed from: e, reason: collision with root package name */
                public final /* synthetic */ long f75900e;

                /* JADX INFO: renamed from: f, reason: collision with root package name */
                public final /* synthetic */ long f75901f;
                public final /* synthetic */ FloatingActionButtonElevation g;

                /* JADX INFO: renamed from: h, reason: collision with root package name */
                public final /* synthetic */ Function3 f75902h;

                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    ((Integer) obj2).getClass();
                    int iA = RecomposeScopeImplKt.a(12582913);
                    FloatingActionButtonKt.a(this.f75898b, this.f75899c, this.d, this.f75900e, this.f75901f, this.g, this.f75902h, (Composer) obj, iA);
                    return Unit.f71739a;
                }
            };
        }
    }

    public static final void b(final Function0 function0, Modifier modifier, final Shape shape, final long j2, final long j3, final FloatingActionButtonElevation floatingActionButtonElevation, final ComposableLambdaImpl composableLambdaImpl, Composer composer, final int i2, final int i3) {
        int i4;
        GapComposer gapComposer;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = defpackage.a.e(modifierE, "FloatingActionButton-X-z6DiA");
        }
        final Modifier modifier2 = modifierE;
        GapComposer gapComposerH = composer.h(748201188);
        if ((i2 & 6) == 0) {
            i4 = (gapComposerH.y(function0) ? 4 : 2) | i2;
        } else {
            i4 = i2;
        }
        if ((i2 & 48) == 0) {
            i4 |= gapComposerH.K(modifier2) ? 32 : 16;
        }
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i4 |= gapComposerH.K(shape) ? 256 : 128;
        }
        if ((i2 & 3072) == 0) {
            i4 |= gapComposerH.e(j2) ? 2048 : 1024;
        }
        if ((i2 & 24576) == 0) {
            i4 |= gapComposerH.e(j3) ? 16384 : 8192;
        }
        if ((196608 & i2) == 0) {
            i4 |= gapComposerH.K(floatingActionButtonElevation) ? 131072 : 65536;
        }
        if ((i3 & 64) != 0) {
            i4 |= 1572864;
        } else if ((i2 & 1572864) == 0) {
            i4 |= gapComposerH.K(null) ? 1048576 : 524288;
        }
        if ((12582912 & i2) == 0) {
            i4 |= gapComposerH.y(composableLambdaImpl) ? 8388608 : 4194304;
        }
        if (gapComposerH.p(i4 & 1, (4793491 & i4) != 4793490)) {
            gapComposerH.y0();
            if ((i2 & 1) != 0 && !gapComposerH.h0()) {
                gapComposerH.D();
            }
            gapComposerH.a0();
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            int i5 = i4 << 9;
            gapComposer = gapComposerH;
            c(function0, TypographyKt.a(ExtendedFabPrimaryTokens.f7778b, gapComposerH), FabBaselineTokens.f7781b, FabBaselineTokens.f7780a, modifier2, shape, j2, j3, floatingActionButtonElevation, composableLambdaImpl, gapComposer, (i4 & 14) | 3456 | (i5 & 57344) | (i5 & ImageMetadata.JPEG_GPS_COORDINATES) | (i5 & 3670016) | (i5 & 29360128) | (i5 & 234881024) | (i5 & 1879048192), (i4 >> 21) & 14);
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new Function2() { // from class: lz
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    ((Integer) obj2).getClass();
                    FloatingActionButtonKt.b(function0, modifier2, shape, j2, j3, floatingActionButtonElevation, composableLambdaImpl, (Composer) obj, RecomposeScopeImplKt.a(i2 | 1), i3);
                    return Unit.f71739a;
                }
            };
        }
    }

    public static final void c(final Function0 function0, final TextStyle textStyle, final float f2, final float f3, Modifier modifier, final Shape shape, final long j2, final long j3, final FloatingActionButtonElevation floatingActionButtonElevation, final ComposableLambdaImpl composableLambdaImpl, Composer composer, final int i2, final int i3) {
        int i4;
        TextStyle textStyle2;
        float f4;
        Shape shape2;
        ComposableLambdaImpl composableLambdaImpl2;
        int i5;
        GapComposer gapComposer;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = defpackage.a.e(modifierE, "FloatingActionButton-lF-WlFE");
        }
        final Modifier modifier2 = modifierE;
        GapComposer gapComposerH = composer.h(121669932);
        if ((i2 & 6) == 0) {
            i4 = (gapComposerH.y(function0) ? 4 : 2) | i2;
        } else {
            i4 = i2;
        }
        if ((i2 & 48) == 0) {
            textStyle2 = textStyle;
            i4 |= gapComposerH.K(textStyle2) ? 32 : 16;
        } else {
            textStyle2 = textStyle;
        }
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i4 |= gapComposerH.c(f2) ? 256 : 128;
        }
        if ((i2 & 3072) == 0) {
            f4 = f3;
            i4 |= gapComposerH.c(f4) ? 2048 : 1024;
        } else {
            f4 = f3;
        }
        if ((i2 & 24576) == 0) {
            i4 |= gapComposerH.K(modifier2) ? 16384 : 8192;
        }
        if ((196608 & i2) == 0) {
            shape2 = shape;
            i4 |= gapComposerH.K(shape2) ? 131072 : 65536;
        } else {
            shape2 = shape;
        }
        if ((1572864 & i2) == 0) {
            i4 |= gapComposerH.e(j2) ? 1048576 : 524288;
        }
        if ((12582912 & i2) == 0) {
            i4 |= gapComposerH.e(j3) ? 8388608 : 4194304;
        }
        if ((100663296 & i2) == 0) {
            i4 |= gapComposerH.K(floatingActionButtonElevation) ? 67108864 : 33554432;
        }
        if ((805306368 & i2) == 0) {
            i4 |= gapComposerH.K(null) ? PKIFailureInfo.duplicateCertReq : 268435456;
        }
        if ((i3 & 6) == 0) {
            composableLambdaImpl2 = composableLambdaImpl;
            i5 = i3 | (gapComposerH.y(composableLambdaImpl2) ? 4 : 2);
        } else {
            composableLambdaImpl2 = composableLambdaImpl;
            i5 = i3;
        }
        boolean z = true;
        if (gapComposerH.p(i4 & 1, ((i4 & 306783379) == 306783378 && (i5 & 3) == 2) ? false : true)) {
            gapComposerH.y0();
            if ((i2 & 1) != 0 && !gapComposerH.h0()) {
                gapComposerH.D();
            }
            gapComposerH.a0();
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            gapComposerH.L(-282833393);
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (objX == composer$Companion$Empty$1) {
                objX = InteractionSourceKt.a();
                gapComposerH.q(objX);
            }
            MutableInteractionSource mutableInteractionSource = (MutableInteractionSource) objX;
            gapComposerH.Z(false);
            Object objX2 = gapComposerH.x();
            if (objX2 == composer$Companion$Empty$1) {
                objX2 = new dy(8);
                gapComposerH.q(objX2);
            }
            Modifier modifierB = SemanticsModifierKt.b(modifier2, false, (Function1) objX2);
            float f5 = floatingActionButtonElevation.f6966a;
            int i6 = i4 >> 21;
            int i7 = i6 & 112;
            boolean zK = gapComposerH.K(mutableInteractionSource);
            Object objX3 = gapComposerH.x();
            if (zK || objX3 == composer$Companion$Empty$1) {
                objX3 = new FloatingActionButtonElevationAnimatable(floatingActionButtonElevation.f6966a, floatingActionButtonElevation.f6967b, floatingActionButtonElevation.d, floatingActionButtonElevation.f6968c, null);
                gapComposerH.q(objX3);
            }
            FloatingActionButtonElevationAnimatable floatingActionButtonElevationAnimatable = (FloatingActionButtonElevationAnimatable) objX3;
            boolean zY = gapComposerH.y(floatingActionButtonElevationAnimatable);
            if (((i7 ^ 48) <= 32 || !gapComposerH.K(floatingActionButtonElevation)) && (i6 & 48) != 32) {
                z = false;
            }
            boolean z2 = zY | z;
            Object objX4 = gapComposerH.x();
            if (z2 || objX4 == composer$Companion$Empty$1) {
                objX4 = new FloatingActionButtonElevation$animateElevation$1$1(floatingActionButtonElevationAnimatable, floatingActionButtonElevation, null);
                gapComposerH.q(objX4);
            }
            EffectsKt.e(gapComposerH, floatingActionButtonElevation, (Function2) objX4);
            boolean zK2 = gapComposerH.K(mutableInteractionSource) | gapComposerH.y(floatingActionButtonElevationAnimatable);
            Object objX5 = gapComposerH.x();
            if (zK2 || objX5 == composer$Companion$Empty$1) {
                objX5 = new FloatingActionButtonElevation$animateElevation$2$1(mutableInteractionSource, floatingActionButtonElevationAnimatable, null);
                gapComposerH.q(objX5);
            }
            EffectsKt.e(gapComposerH, mutableInteractionSource, (Function2) objX5);
            final TextStyle textStyle3 = textStyle2;
            final float f6 = f4;
            final ComposableLambdaImpl composableLambdaImpl3 = composableLambdaImpl2;
            int i8 = i4 & 14;
            int i9 = i4 >> 6;
            gapComposer = gapComposerH;
            SurfaceKt.c(function0, modifierB, false, shape2, j2, j3, f5, ((Dp) ((SnapshotMutableStateImpl) floatingActionButtonElevationAnimatable.f6981e.f3774c.f3818c).getF10755b()).f11006b, mutableInteractionSource, ComposableLambdaKt.b(-1779603465, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.FloatingActionButtonKt$FloatingActionButton$3
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    Composer composer2 = (Composer) obj;
                    int iIntValue = ((Number) obj2).intValue();
                    if (composer2.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                        OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                        final float f7 = f6;
                        final ComposableLambdaImpl composableLambdaImpl4 = composableLambdaImpl3;
                        final float f8 = f2;
                        ProvideContentColorTextStyleKt.a(j3, textStyle3, ComposableLambdaKt.b(-1767363041, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.FloatingActionButtonKt$FloatingActionButton$3.1
                            @Override // kotlin.jvm.functions.Function2
                            public final Object invoke(Object obj3, Object obj4) {
                                Composer composer3 = (Composer) obj3;
                                int iIntValue2 = ((Number) obj4).intValue();
                                if (composer3.p(iIntValue2 & 1, (iIntValue2 & 3) != 2)) {
                                    OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                                    Modifier modifierA = SizeKt.a(Modifier.Companion.f8607b, f8, f7);
                                    Alignment.f8582a.getClass();
                                    MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8587f, false);
                                    int iG = composer3.G();
                                    PersistentCompositionLocalMap persistentCompositionLocalMapN = composer3.n();
                                    Modifier modifierC = ComposedModifierKt.c(composer3, modifierA);
                                    ComposeUiNode.b0.getClass();
                                    Function0 function1 = ComposeUiNode.Companion.f9641b;
                                    if (composer3.getF7976a() == null) {
                                        ComposablesKt.b();
                                        throw null;
                                    }
                                    composer3.B();
                                    if (composer3.getS()) {
                                        composer3.C(function1);
                                    } else {
                                        composer3.o();
                                    }
                                    Updater.c(composer3, measurePolicyD, ComposeUiNode.Companion.f9644f);
                                    Updater.c(composer3, persistentCompositionLocalMapN, ComposeUiNode.Companion.f9643e);
                                    Function2 function2 = ComposeUiNode.Companion.g;
                                    if (composer3.getS() || !Intrinsics.c(composer3.x(), Integer.valueOf(iG))) {
                                        fc.A(function2, iG, composer3, iG);
                                    }
                                    Updater.c(composer3, modifierC, ComposeUiNode.Companion.d);
                                    composableLambdaImpl4.invoke(composer3, 0);
                                    composer3.r();
                                } else {
                                    composer3.D();
                                }
                                return Unit.f71739a;
                            }
                        }, composer2), composer2, KyberEngine.KyberPolyBytes);
                    } else {
                        composer2.D();
                    }
                    return Unit.f71739a;
                }
            }, gapComposerH), gapComposer, i8 | (i9 & 7168) | (57344 & i9) | (i9 & ImageMetadata.JPEG_GPS_COORDINATES), 260);
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new Function2() { // from class: mz
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    ((Integer) obj2).getClass();
                    int iA = RecomposeScopeImplKt.a(i2 | 1);
                    int iA2 = RecomposeScopeImplKt.a(i3);
                    FloatingActionButtonKt.c(function0, textStyle, f2, f3, modifier2, shape, j2, j3, floatingActionButtonElevation, composableLambdaImpl, (Composer) obj, iA, iA2);
                    return Unit.f71739a;
                }
            };
        }
    }
}
