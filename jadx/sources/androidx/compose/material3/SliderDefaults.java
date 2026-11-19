package androidx.compose.material3;

import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.CanvasKt;
import androidx.compose.foundation.HoverableKt;
import androidx.compose.foundation.gestures.Orientation;
import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.foundation.layout.FillElement;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.layout.SpacerKt;
import androidx.compose.material3.SliderDefaults;
import androidx.compose.material3.SliderKt;
import androidx.compose.material3.SliderState;
import androidx.compose.material3.tokens.ColorSchemeKeyTokens;
import androidx.compose.material3.tokens.SliderTokens;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.SnapshotMutableIntStateImpl;
import androidx.compose.runtime.snapshots.SnapshotStateList;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.geometry.CornerRadius;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.RectKt;
import androidx.compose.ui.geometry.RoundRect;
import androidx.compose.ui.geometry.RoundRectKt;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.graphics.AndroidPath;
import androidx.compose.ui.graphics.AndroidPath_androidKt;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.ColorKt;
import androidx.compose.ui.graphics.Path;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import androidx.compose.ui.layout.LayoutModifierKt;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.unit.DpSize;
import androidx.compose.ui.unit.LayoutDirection;
import androidx.compose.ui.util.MathHelpersKt;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.google.ar.core.ImageMetadata;
import defpackage.r10;
import defpackage.z3;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.collections.ArraysKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.ClosedFloatingPointRange;
import kotlin.ranges.RangesKt;
import net.rtccloud.sdk.Call;
import org.bouncycastle.asn1.cmc.BodyPartID;
import org.bouncycastle.asn1.cmp.PKIFailureInfo;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bÇ\u0002\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/compose/material3/SliderDefaults;", "", "material3"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class SliderDefaults {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final SliderDefaults f7235a = new SliderDefaults();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final float f7236b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final float f7237c;
    public static final AndroidPath d;

    static {
        float f2 = SliderTokens.o;
        f7236b = f2;
        f7237c = f2;
        d = AndroidPath_androidKt.a();
    }

    public static SliderColors d(Composer composer) {
        OpaqueKey opaqueKey = ComposerKt.f7940a;
        return f(MaterialTheme.a(composer));
    }

    public static void e(DrawScope drawScope, Orientation orientation, long j2, long j3, long j4, float f2, float f3) {
        RoundRect roundRectA;
        long jFloatToRawIntBits = (((long) Float.floatToRawIntBits(f2)) << 32) | (((long) Float.floatToRawIntBits(f2)) & BodyPartID.bodyIdMax);
        CornerRadius.Companion companion = CornerRadius.f8802a;
        long jFloatToRawIntBits2 = (((long) Float.floatToRawIntBits(f3)) << 32) | (((long) Float.floatToRawIntBits(f3)) & BodyPartID.bodyIdMax);
        if (orientation == Orientation.Vertical) {
            float fIntBitsToFloat = Float.intBitsToFloat((int) (j3 >> 32));
            long jFloatToRawIntBits3 = (((long) Float.floatToRawIntBits(Float.intBitsToFloat((int) (j3 & BodyPartID.bodyIdMax)))) & BodyPartID.bodyIdMax) | (Float.floatToRawIntBits(fIntBitsToFloat) << 32);
            Size.Companion companion2 = Size.f8820b;
            roundRectA = RoundRectKt.a(RectKt.a(j2, jFloatToRawIntBits3), jFloatToRawIntBits, jFloatToRawIntBits, jFloatToRawIntBits2, jFloatToRawIntBits2);
        } else {
            float fIntBitsToFloat2 = Float.intBitsToFloat((int) (j3 >> 32));
            long jFloatToRawIntBits4 = (((long) Float.floatToRawIntBits(Float.intBitsToFloat((int) (j3 & BodyPartID.bodyIdMax)))) & BodyPartID.bodyIdMax) | (Float.floatToRawIntBits(fIntBitsToFloat2) << 32);
            Size.Companion companion3 = Size.f8820b;
            roundRectA = RoundRectKt.a(RectKt.a(j2, jFloatToRawIntBits4), jFloatToRawIntBits, jFloatToRawIntBits2, jFloatToRawIntBits2, jFloatToRawIntBits);
        }
        AndroidPath androidPath = d;
        androidPath.s(roundRectA, Path.Direction.CounterClockwise);
        DrawScope.U(drawScope, androidPath, j4, null, 60);
        androidPath.k();
    }

    public static SliderColors f(ColorScheme colorScheme) {
        SliderColors sliderColors = colorScheme.f0;
        if (sliderColors != null) {
            return sliderColors;
        }
        long jC = ColorSchemeKt.c(colorScheme, SliderTokens.f7859i);
        ColorSchemeKeyTokens colorSchemeKeyTokens = SliderTokens.f7854b;
        long jC2 = ColorSchemeKt.c(colorScheme, colorSchemeKeyTokens);
        ColorSchemeKeyTokens colorSchemeKeyTokens2 = SliderTokens.m;
        long jC3 = ColorSchemeKt.c(colorScheme, colorSchemeKeyTokens2);
        long jC4 = ColorSchemeKt.c(colorScheme, colorSchemeKeyTokens2);
        long jC5 = ColorSchemeKt.c(colorScheme, colorSchemeKeyTokens);
        long jF = ColorKt.f(Color.b(SliderTokens.f7857f, ColorSchemeKt.c(colorScheme, SliderTokens.f7856e)), colorScheme.p);
        ColorSchemeKeyTokens colorSchemeKeyTokens3 = SliderTokens.f7855c;
        long jC6 = ColorSchemeKt.c(colorScheme, colorSchemeKeyTokens3);
        float f2 = SliderTokens.d;
        long jB = Color.b(f2, jC6);
        ColorSchemeKeyTokens colorSchemeKeyTokens4 = SliderTokens.g;
        long jC7 = ColorSchemeKt.c(colorScheme, colorSchemeKeyTokens4);
        float f3 = SliderTokens.f7858h;
        SliderColors sliderColors2 = new SliderColors(jC, jC2, jC3, jC4, jC5, jF, jB, Color.b(f3, jC7), Color.b(f3, ColorSchemeKt.c(colorScheme, colorSchemeKeyTokens4)), Color.b(f2, ColorSchemeKt.c(colorScheme, colorSchemeKeyTokens3)), null);
        colorScheme.f0 = sliderColors2;
        return sliderColors2;
    }

    public final void a(MutableInteractionSource mutableInteractionSource, Modifier modifier, SliderColors sliderColors, boolean z, long j2, Composer composer, int i2) {
        long j3;
        long j4;
        long jFloatToRawIntBits;
        Modifier dTFunctionNameModifier = modifier;
        if (dTFunctionNameModifier != null) {
            dTFunctionNameModifier = defpackage.a.e(dTFunctionNameModifier, "Thumb-9LiSoMs");
        }
        GapComposer gapComposerH = composer.h(-290277409);
        int i3 = i2 | (gapComposerH.K(mutableInteractionSource) ? 4 : 2) | 48 | (gapComposerH.K(sliderColors) ? 256 : 128) | (gapComposerH.b(z) ? 2048 : 1024) | 24576;
        if (gapComposerH.p(i3 & 1, (74899 & i3) != 74898)) {
            gapComposerH.y0();
            if ((i2 & 1) == 0 || gapComposerH.h0()) {
                dTFunctionNameModifier = new DTFunctionNameModifier("Thumb-9LiSoMs");
                j4 = SliderKt.f7244c;
            } else {
                gapComposerH.D();
                j4 = j2;
            }
            gapComposerH.a0();
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (objX == composer$Companion$Empty$1) {
                objX = new SnapshotStateList();
                gapComposerH.q(objX);
            }
            SnapshotStateList snapshotStateList = (SnapshotStateList) objX;
            boolean z2 = (i3 & 14) == 4;
            Object objX2 = gapComposerH.x();
            if (z2 || objX2 == composer$Companion$Empty$1) {
                objX2 = new SliderDefaults$Thumb$1$1(mutableInteractionSource, snapshotStateList, null);
                gapComposerH.q(objX2);
            }
            EffectsKt.e(gapComposerH, mutableInteractionSource, (Function2) objX2);
            if (snapshotStateList.isEmpty()) {
                jFloatToRawIntBits = j4;
            } else {
                float fB = DpSize.b(j4) / 2.0f;
                Dp.Companion companion = Dp.f11004c;
                jFloatToRawIntBits = (((long) Float.floatToRawIntBits(DpSize.a(j4))) & BodyPartID.bodyIdMax) | (((long) Float.floatToRawIntBits(fB)) << 32);
            }
            FillElement fillElement = SizeKt.f5050a;
            SpacerKt.a(gapComposerH, BackgroundKt.b(HoverableKt.a(SizeKt.p(dTFunctionNameModifier, DpSize.b(jFloatToRawIntBits), DpSize.a(jFloatToRawIntBits)), mutableInteractionSource), z ? sliderColors.f7227a : sliderColors.f7231f, ShapesKt.a(SliderTokens.f7861k, gapComposerH)));
            j3 = j4;
        } else {
            gapComposerH.D();
            j3 = j2;
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new r10(this, mutableInteractionSource, dTFunctionNameModifier, sliderColors, z, j3, i2);
        }
    }

    /* JADX WARN: Code duplicated, block: B:100:0x012f  */
    /* JADX WARN: Code duplicated, block: B:103:0x0137  */
    /* JADX WARN: Code duplicated, block: B:105:0x013f  */
    /* JADX WARN: Code duplicated, block: B:107:0x0145  */
    /* JADX WARN: Code duplicated, block: B:113:0x0154  */
    /* JADX WARN: Code duplicated, block: B:116:0x015e A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:117:0x0160  */
    /* JADX WARN: Code duplicated, block: B:121:0x0175  */
    /* JADX WARN: Code duplicated, block: B:124:0x017e  */
    /* JADX WARN: Code duplicated, block: B:125:0x0181  */
    /* JADX WARN: Code duplicated, block: B:127:0x0184  */
    /* JADX WARN: Code duplicated, block: B:128:0x018d  */
    /* JADX WARN: Code duplicated, block: B:130:0x01d1  */
    /* JADX WARN: Code duplicated, block: B:133:0x01e2  */
    /* JADX WARN: Code duplicated, block: B:135:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:36:0x0063  */
    /* JADX WARN: Code duplicated, block: B:38:0x0069  */
    /* JADX WARN: Code duplicated, block: B:39:0x006c  */
    /* JADX WARN: Code duplicated, block: B:43:0x0073  */
    /* JADX WARN: Code duplicated, block: B:45:0x0077  */
    /* JADX WARN: Code duplicated, block: B:47:0x007f  */
    /* JADX WARN: Code duplicated, block: B:48:0x0082  */
    /* JADX WARN: Code duplicated, block: B:51:0x0088  */
    /* JADX WARN: Code duplicated, block: B:54:0x0091  */
    /* JADX WARN: Code duplicated, block: B:56:0x0097  */
    /* JADX WARN: Code duplicated, block: B:58:0x009c  */
    /* JADX WARN: Code duplicated, block: B:60:0x00a4  */
    /* JADX WARN: Code duplicated, block: B:61:0x00a7  */
    /* JADX WARN: Code duplicated, block: B:65:0x00b1  */
    /* JADX WARN: Code duplicated, block: B:66:0x00b6  */
    /* JADX WARN: Code duplicated, block: B:68:0x00bc  */
    /* JADX WARN: Code duplicated, block: B:70:0x00c2  */
    /* JADX WARN: Code duplicated, block: B:71:0x00c5  */
    /* JADX WARN: Code duplicated, block: B:75:0x00cf  */
    /* JADX WARN: Code duplicated, block: B:77:0x00d9  */
    /* JADX WARN: Code duplicated, block: B:78:0x00dc  */
    /* JADX WARN: Code duplicated, block: B:80:0x00e1  */
    /* JADX WARN: Code duplicated, block: B:83:0x00f3  */
    /* JADX WARN: Code duplicated, block: B:84:0x00f6  */
    /* JADX WARN: Code duplicated, block: B:87:0x0100  */
    /* JADX WARN: Code duplicated, block: B:89:0x010a  */
    /* JADX WARN: Code duplicated, block: B:96:0x0123 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:97:0x0125  */
    /* JADX WARN: Code duplicated, block: B:98:0x012b  */
    public final void b(final SliderState sliderState, Modifier modifier, boolean z, final SliderColors sliderColors, Function2 function2, Function3 function3, float f2, float f3, Composer composer, final int i2, final int i3) {
        int i4;
        boolean z2;
        Function2 function4;
        int i5;
        int i6;
        float f4;
        int i7;
        int i8;
        float f5;
        int i9;
        boolean z3;
        final Function3 function5;
        final boolean z4;
        final Function2 function6;
        final float f6;
        final float f7;
        final Modifier modifier2;
        RecomposeScopeImpl recomposeScopeImplB0;
        Modifier dTFunctionNameModifier;
        int i10;
        Composer$Companion$Empty$1 composer$Companion$Empty$1;
        Object objX;
        Function3 function7;
        float f8;
        boolean z5;
        Object objX2;
        int i11;
        int i12;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = defpackage.a.e(modifierE, "Track-4EFweAY");
        }
        GapComposer gapComposerH = composer.h(49984771);
        if ((i2 & 6) == 0) {
            i4 = (gapComposerH.y(sliderState) ? 4 : 2) | i2;
        } else {
            i4 = i2;
        }
        int i13 = i3 & 2;
        if (i13 != 0) {
            i4 |= 48;
        } else if ((i2 & 48) == 0) {
            i4 |= gapComposerH.K(modifierE) ? 32 : 16;
        }
        int i14 = i3 & 4;
        if (i14 == 0) {
            if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
                z2 = z;
                i4 |= gapComposerH.b(z2) ? 256 : 128;
            }
            if ((i2 & 3072) == 0) {
                if (gapComposerH.K(sliderColors)) {
                    i12 = 2048;
                } else {
                    i12 = 1024;
                }
                i4 |= i12;
            }
            if ((i2 & 24576) == 0) {
                if ((i3 & 16) == 0) {
                    function4 = function2;
                    int i15 = gapComposerH.y(function4) ? 16384 : 8192;
                    i4 |= i15;
                } else {
                    function4 = function2;
                }
                i4 |= i15;
            } else {
                function4 = function2;
            }
            i5 = 196608 | i4;
            i6 = i3 & 64;
            if (i6 != 0) {
                if ((1572864 & i2) == 0) {
                    f4 = f2;
                    if (gapComposerH.c(f4)) {
                        i7 = 1048576;
                    } else {
                        i7 = 524288;
                    }
                    i5 |= i7;
                }
                i8 = i3 & 128;
                if (i8 != 0) {
                    i5 |= 12582912;
                    f5 = f3;
                } else {
                    f5 = f3;
                    if ((i2 & 12582912) == 0) {
                        if (gapComposerH.c(f5)) {
                            i9 = 8388608;
                        } else {
                            i9 = 4194304;
                        }
                        i5 |= i9;
                    }
                }
                if ((i2 & 100663296) != 0) {
                    if (gapComposerH.K(this)) {
                        i11 = 67108864;
                    } else {
                        i11 = 33554432;
                    }
                    i5 |= i11;
                }
                if ((i5 & 38347923) != 38347922) {
                    z3 = true;
                } else {
                    z3 = false;
                }
                if (gapComposerH.p(i5 & 1, z3)) {
                    gapComposerH.y0();
                    if ((i2 & 1) != 0 || gapComposerH.h0()) {
                        if (i13 != 0) {
                            dTFunctionNameModifier = new DTFunctionNameModifier("Track-4EFweAY");
                        }
                        if (i14 != 0) {
                            dTFunctionNameModifier = modifierE;
                            z2 = true;
                        }
                        dTFunctionNameModifier = modifierE;
                        i10 = i3 & 16;
                        composer$Companion$Empty$1 = Composer.Companion.f7939a;
                        if (i10 != 0) {
                            z5 = ((((i5 & 7168) ^ 3072) <= 2048 && gapComposerH.K(sliderColors)) || (i5 & 3072) == 2048) | ((i5 & 896) == 256);
                            objX2 = gapComposerH.x();
                            if (z5 || objX2 == composer$Companion$Empty$1) {
                                objX2 = new z3(sliderColors, z2, 12);
                                gapComposerH.q(objX2);
                            }
                            i5 &= -57345;
                            function4 = (Function2) objX2;
                        }
                        objX = gapComposerH.x();
                        if (objX == composer$Companion$Empty$1) {
                            objX = SliderDefaults$Track$5$1.f7241b;
                            gapComposerH.q(objX);
                        }
                        function7 = (Function3) objX;
                        if (i6 != 0) {
                            f8 = SliderKt.d;
                        } else {
                            f8 = f4;
                        }
                        if (i8 != 0) {
                            function5 = function7;
                            z4 = z2;
                            function6 = function4;
                            f7 = f8;
                            f6 = SliderKt.f7245e;
                            modifier2 = dTFunctionNameModifier;
                        } else {
                            modifier2 = dTFunctionNameModifier;
                            function5 = function7;
                            z4 = z2;
                            function6 = function4;
                            f6 = f5;
                            f7 = f8;
                        }
                    } else {
                        gapComposerH.D();
                        if ((i3 & 16) != 0) {
                            i5 &= -57345;
                        }
                        function5 = function3;
                        z4 = z2;
                        function6 = function4;
                        f6 = f5;
                        f7 = f4;
                        modifier2 = modifierE;
                    }
                    gapComposerH.a0();
                    OpaqueKey opaqueKey = ComposerKt.f7940a;
                    Dp.f11004c.getClass();
                    int i16 = i5 << 3;
                    c(sliderState, Dp.f11005e, modifier2, z4, sliderColors, function6, function5, f7, f6, gapComposerH, 805306416 | (i5 & 14) | (i16 & 896) | (i16 & 7168) | (57344 & i16) | (458752 & i16) | (3670016 & i16) | (29360128 & i16) | (i16 & 234881024), ((i5 >> 21) & 112) | 6);
                } else {
                    gapComposerH.D();
                    function5 = function3;
                    z4 = z2;
                    function6 = function4;
                    f6 = f5;
                    f7 = f4;
                    modifier2 = modifierE;
                }
                recomposeScopeImplB0 = gapComposerH.b0();
                if (recomposeScopeImplB0 != null) {
                    recomposeScopeImplB0.d = new Function2() { // from class: mz0
                        @Override // kotlin.jvm.functions.Function2
                        public final Object invoke(Object obj, Object obj2) {
                            Composer composer2 = (Composer) obj;
                            ((Integer) obj2).getClass();
                            SliderDefaults sliderDefaults = SliderDefaults.f7235a;
                            this.f76396b.b(sliderState, modifier2, z4, sliderColors, function6, function5, f7, f6, composer2, RecomposeScopeImplKt.a(i2 | 1), i3);
                            return Unit.f71739a;
                        }
                    };
                }
            }
            i5 = 1769472 | i4;
            f4 = f2;
            i8 = i3 & 128;
            if (i8 != 0) {
                i5 |= 12582912;
                f5 = f3;
            } else {
                f5 = f3;
                if ((i2 & 12582912) == 0) {
                    if (gapComposerH.c(f5)) {
                        i9 = 8388608;
                    } else {
                        i9 = 4194304;
                    }
                    i5 |= i9;
                }
            }
            if ((i2 & 100663296) != 0) {
                if (gapComposerH.K(this)) {
                    i11 = 67108864;
                } else {
                    i11 = 33554432;
                }
                i5 |= i11;
            }
            if ((i5 & 38347923) != 38347922) {
                z3 = true;
            } else {
                z3 = false;
            }
            if (gapComposerH.p(i5 & 1, z3)) {
                gapComposerH.y0();
                if ((i2 & 1) != 0) {
                    if (i13 != 0) {
                        dTFunctionNameModifier = new DTFunctionNameModifier("Track-4EFweAY");
                    }
                    if (i14 != 0) {
                        dTFunctionNameModifier = modifierE;
                        z2 = true;
                    }
                    dTFunctionNameModifier = modifierE;
                    i10 = i3 & 16;
                    composer$Companion$Empty$1 = Composer.Companion.f7939a;
                    if (i10 != 0) {
                        z5 = ((((i5 & 7168) ^ 3072) <= 2048 && gapComposerH.K(sliderColors)) || (i5 & 3072) == 2048) | ((i5 & 896) == 256);
                        objX2 = gapComposerH.x();
                        if (z5) {
                            objX2 = new z3(sliderColors, z2, 12);
                            gapComposerH.q(objX2);
                        } else {
                            objX2 = new z3(sliderColors, z2, 12);
                            gapComposerH.q(objX2);
                        }
                        i5 &= -57345;
                        function4 = (Function2) objX2;
                    }
                    objX = gapComposerH.x();
                    if (objX == composer$Companion$Empty$1) {
                        objX = SliderDefaults$Track$5$1.f7241b;
                        gapComposerH.q(objX);
                    }
                    function7 = (Function3) objX;
                    if (i6 != 0) {
                        f8 = SliderKt.d;
                    } else {
                        f8 = f4;
                    }
                    if (i8 != 0) {
                        function5 = function7;
                        z4 = z2;
                        function6 = function4;
                        f7 = f8;
                        f6 = SliderKt.f7245e;
                        modifier2 = dTFunctionNameModifier;
                    } else {
                        modifier2 = dTFunctionNameModifier;
                        function5 = function7;
                        z4 = z2;
                        function6 = function4;
                        f6 = f5;
                        f7 = f8;
                    }
                } else {
                    if (i13 != 0) {
                        dTFunctionNameModifier = new DTFunctionNameModifier("Track-4EFweAY");
                    }
                    if (i14 != 0) {
                        dTFunctionNameModifier = modifierE;
                        z2 = true;
                    }
                    dTFunctionNameModifier = modifierE;
                    i10 = i3 & 16;
                    composer$Companion$Empty$1 = Composer.Companion.f7939a;
                    if (i10 != 0) {
                        z5 = ((((i5 & 7168) ^ 3072) <= 2048 && gapComposerH.K(sliderColors)) || (i5 & 3072) == 2048) | ((i5 & 896) == 256);
                        objX2 = gapComposerH.x();
                        if (z5) {
                            objX2 = new z3(sliderColors, z2, 12);
                            gapComposerH.q(objX2);
                        } else {
                            objX2 = new z3(sliderColors, z2, 12);
                            gapComposerH.q(objX2);
                        }
                        i5 &= -57345;
                        function4 = (Function2) objX2;
                    }
                    objX = gapComposerH.x();
                    if (objX == composer$Companion$Empty$1) {
                        objX = SliderDefaults$Track$5$1.f7241b;
                        gapComposerH.q(objX);
                    }
                    function7 = (Function3) objX;
                    if (i6 != 0) {
                        f8 = SliderKt.d;
                    } else {
                        f8 = f4;
                    }
                    if (i8 != 0) {
                        function5 = function7;
                        z4 = z2;
                        function6 = function4;
                        f7 = f8;
                        f6 = SliderKt.f7245e;
                        modifier2 = dTFunctionNameModifier;
                    } else {
                        modifier2 = dTFunctionNameModifier;
                        function5 = function7;
                        z4 = z2;
                        function6 = function4;
                        f6 = f5;
                        f7 = f8;
                    }
                }
                gapComposerH.a0();
                OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                Dp.f11004c.getClass();
                int i17 = i5 << 3;
                c(sliderState, Dp.f11005e, modifier2, z4, sliderColors, function6, function5, f7, f6, gapComposerH, 805306416 | (i5 & 14) | (i17 & 896) | (i17 & 7168) | (57344 & i17) | (458752 & i17) | (3670016 & i17) | (29360128 & i17) | (i17 & 234881024), ((i5 >> 21) & 112) | 6);
            } else {
                gapComposerH.D();
                function5 = function3;
                z4 = z2;
                function6 = function4;
                f6 = f5;
                f7 = f4;
                modifier2 = modifierE;
            }
            recomposeScopeImplB0 = gapComposerH.b0();
            if (recomposeScopeImplB0 != null) {
                recomposeScopeImplB0.d = new Function2() { // from class: mz0
                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj, Object obj2) {
                        Composer composer2 = (Composer) obj;
                        ((Integer) obj2).getClass();
                        SliderDefaults sliderDefaults = SliderDefaults.f7235a;
                        this.f76396b.b(sliderState, modifier2, z4, sliderColors, function6, function5, f7, f6, composer2, RecomposeScopeImplKt.a(i2 | 1), i3);
                        return Unit.f71739a;
                    }
                };
            }
        }
        i4 |= KyberEngine.KyberPolyBytes;
        z2 = z;
        if ((i2 & 3072) == 0) {
            if (gapComposerH.K(sliderColors)) {
                i12 = 2048;
            } else {
                i12 = 1024;
            }
            i4 |= i12;
        }
        if ((i2 & 24576) == 0) {
            if ((i3 & 16) == 0) {
                function4 = function2;
                if (gapComposerH.y(function4)) {
                }
                i4 |= i15;
            } else {
                function4 = function2;
            }
            i4 |= i15;
        } else {
            function4 = function2;
        }
        i5 = 196608 | i4;
        i6 = i3 & 64;
        if (i6 != 0) {
            if ((1572864 & i2) == 0) {
                f4 = f2;
                if (gapComposerH.c(f4)) {
                    i7 = 1048576;
                } else {
                    i7 = 524288;
                }
                i5 |= i7;
            }
            i8 = i3 & 128;
            if (i8 != 0) {
                i5 |= 12582912;
                f5 = f3;
            } else {
                f5 = f3;
                if ((i2 & 12582912) == 0) {
                    if (gapComposerH.c(f5)) {
                        i9 = 8388608;
                    } else {
                        i9 = 4194304;
                    }
                    i5 |= i9;
                }
            }
            if ((i2 & 100663296) != 0) {
                if (gapComposerH.K(this)) {
                    i11 = 67108864;
                } else {
                    i11 = 33554432;
                }
                i5 |= i11;
            }
            if ((i5 & 38347923) != 38347922) {
                z3 = true;
            } else {
                z3 = false;
            }
            if (gapComposerH.p(i5 & 1, z3)) {
                gapComposerH.y0();
                if ((i2 & 1) != 0) {
                    if (i13 != 0) {
                        dTFunctionNameModifier = new DTFunctionNameModifier("Track-4EFweAY");
                    }
                    if (i14 != 0) {
                        dTFunctionNameModifier = modifierE;
                        z2 = true;
                    }
                    dTFunctionNameModifier = modifierE;
                    i10 = i3 & 16;
                    composer$Companion$Empty$1 = Composer.Companion.f7939a;
                    if (i10 != 0) {
                        z5 = ((((i5 & 7168) ^ 3072) <= 2048 && gapComposerH.K(sliderColors)) || (i5 & 3072) == 2048) | ((i5 & 896) == 256);
                        objX2 = gapComposerH.x();
                        if (z5) {
                            objX2 = new z3(sliderColors, z2, 12);
                            gapComposerH.q(objX2);
                        } else {
                            objX2 = new z3(sliderColors, z2, 12);
                            gapComposerH.q(objX2);
                        }
                        i5 &= -57345;
                        function4 = (Function2) objX2;
                    }
                    objX = gapComposerH.x();
                    if (objX == composer$Companion$Empty$1) {
                        objX = SliderDefaults$Track$5$1.f7241b;
                        gapComposerH.q(objX);
                    }
                    function7 = (Function3) objX;
                    if (i6 != 0) {
                        f8 = SliderKt.d;
                    } else {
                        f8 = f4;
                    }
                    if (i8 != 0) {
                        function5 = function7;
                        z4 = z2;
                        function6 = function4;
                        f7 = f8;
                        f6 = SliderKt.f7245e;
                        modifier2 = dTFunctionNameModifier;
                    } else {
                        modifier2 = dTFunctionNameModifier;
                        function5 = function7;
                        z4 = z2;
                        function6 = function4;
                        f6 = f5;
                        f7 = f8;
                    }
                } else {
                    if (i13 != 0) {
                        dTFunctionNameModifier = new DTFunctionNameModifier("Track-4EFweAY");
                    }
                    if (i14 != 0) {
                        dTFunctionNameModifier = modifierE;
                        z2 = true;
                    }
                    dTFunctionNameModifier = modifierE;
                    i10 = i3 & 16;
                    composer$Companion$Empty$1 = Composer.Companion.f7939a;
                    if (i10 != 0) {
                        z5 = ((((i5 & 7168) ^ 3072) <= 2048 && gapComposerH.K(sliderColors)) || (i5 & 3072) == 2048) | ((i5 & 896) == 256);
                        objX2 = gapComposerH.x();
                        if (z5) {
                            objX2 = new z3(sliderColors, z2, 12);
                            gapComposerH.q(objX2);
                        } else {
                            objX2 = new z3(sliderColors, z2, 12);
                            gapComposerH.q(objX2);
                        }
                        i5 &= -57345;
                        function4 = (Function2) objX2;
                    }
                    objX = gapComposerH.x();
                    if (objX == composer$Companion$Empty$1) {
                        objX = SliderDefaults$Track$5$1.f7241b;
                        gapComposerH.q(objX);
                    }
                    function7 = (Function3) objX;
                    if (i6 != 0) {
                        f8 = SliderKt.d;
                    } else {
                        f8 = f4;
                    }
                    if (i8 != 0) {
                        function5 = function7;
                        z4 = z2;
                        function6 = function4;
                        f7 = f8;
                        f6 = SliderKt.f7245e;
                        modifier2 = dTFunctionNameModifier;
                    } else {
                        modifier2 = dTFunctionNameModifier;
                        function5 = function7;
                        z4 = z2;
                        function6 = function4;
                        f6 = f5;
                        f7 = f8;
                    }
                }
                gapComposerH.a0();
                OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                Dp.f11004c.getClass();
                int i18 = i5 << 3;
                c(sliderState, Dp.f11005e, modifier2, z4, sliderColors, function6, function5, f7, f6, gapComposerH, 805306416 | (i5 & 14) | (i18 & 896) | (i18 & 7168) | (57344 & i18) | (458752 & i18) | (3670016 & i18) | (29360128 & i18) | (i18 & 234881024), ((i5 >> 21) & 112) | 6);
            } else {
                gapComposerH.D();
                function5 = function3;
                z4 = z2;
                function6 = function4;
                f6 = f5;
                f7 = f4;
                modifier2 = modifierE;
            }
            recomposeScopeImplB0 = gapComposerH.b0();
            if (recomposeScopeImplB0 != null) {
                recomposeScopeImplB0.d = new Function2() { // from class: mz0
                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj, Object obj2) {
                        Composer composer2 = (Composer) obj;
                        ((Integer) obj2).getClass();
                        SliderDefaults sliderDefaults = SliderDefaults.f7235a;
                        this.f76396b.b(sliderState, modifier2, z4, sliderColors, function6, function5, f7, f6, composer2, RecomposeScopeImplKt.a(i2 | 1), i3);
                        return Unit.f71739a;
                    }
                };
            }
        }
        i5 = 1769472 | i4;
        f4 = f2;
        i8 = i3 & 128;
        if (i8 != 0) {
            i5 |= 12582912;
            f5 = f3;
        } else {
            f5 = f3;
            if ((i2 & 12582912) == 0) {
                if (gapComposerH.c(f5)) {
                    i9 = 8388608;
                } else {
                    i9 = 4194304;
                }
                i5 |= i9;
            }
        }
        if ((i2 & 100663296) != 0) {
            if (gapComposerH.K(this)) {
                i11 = 67108864;
            } else {
                i11 = 33554432;
            }
            i5 |= i11;
        }
        if ((i5 & 38347923) != 38347922) {
            z3 = true;
        } else {
            z3 = false;
        }
        if (gapComposerH.p(i5 & 1, z3)) {
            gapComposerH.y0();
            if ((i2 & 1) != 0) {
                if (i13 != 0) {
                    dTFunctionNameModifier = new DTFunctionNameModifier("Track-4EFweAY");
                }
                if (i14 != 0) {
                    dTFunctionNameModifier = modifierE;
                    z2 = true;
                }
                dTFunctionNameModifier = modifierE;
                i10 = i3 & 16;
                composer$Companion$Empty$1 = Composer.Companion.f7939a;
                if (i10 != 0) {
                    z5 = ((((i5 & 7168) ^ 3072) <= 2048 && gapComposerH.K(sliderColors)) || (i5 & 3072) == 2048) | ((i5 & 896) == 256);
                    objX2 = gapComposerH.x();
                    if (z5) {
                        objX2 = new z3(sliderColors, z2, 12);
                        gapComposerH.q(objX2);
                    } else {
                        objX2 = new z3(sliderColors, z2, 12);
                        gapComposerH.q(objX2);
                    }
                    i5 &= -57345;
                    function4 = (Function2) objX2;
                }
                objX = gapComposerH.x();
                if (objX == composer$Companion$Empty$1) {
                    objX = SliderDefaults$Track$5$1.f7241b;
                    gapComposerH.q(objX);
                }
                function7 = (Function3) objX;
                if (i6 != 0) {
                    f8 = SliderKt.d;
                } else {
                    f8 = f4;
                }
                if (i8 != 0) {
                    function5 = function7;
                    z4 = z2;
                    function6 = function4;
                    f7 = f8;
                    f6 = SliderKt.f7245e;
                    modifier2 = dTFunctionNameModifier;
                } else {
                    modifier2 = dTFunctionNameModifier;
                    function5 = function7;
                    z4 = z2;
                    function6 = function4;
                    f6 = f5;
                    f7 = f8;
                }
            } else {
                if (i13 != 0) {
                    dTFunctionNameModifier = new DTFunctionNameModifier("Track-4EFweAY");
                }
                if (i14 != 0) {
                    dTFunctionNameModifier = modifierE;
                    z2 = true;
                }
                dTFunctionNameModifier = modifierE;
                i10 = i3 & 16;
                composer$Companion$Empty$1 = Composer.Companion.f7939a;
                if (i10 != 0) {
                    z5 = ((((i5 & 7168) ^ 3072) <= 2048 && gapComposerH.K(sliderColors)) || (i5 & 3072) == 2048) | ((i5 & 896) == 256);
                    objX2 = gapComposerH.x();
                    if (z5) {
                        objX2 = new z3(sliderColors, z2, 12);
                        gapComposerH.q(objX2);
                    } else {
                        objX2 = new z3(sliderColors, z2, 12);
                        gapComposerH.q(objX2);
                    }
                    i5 &= -57345;
                    function4 = (Function2) objX2;
                }
                objX = gapComposerH.x();
                if (objX == composer$Companion$Empty$1) {
                    objX = SliderDefaults$Track$5$1.f7241b;
                    gapComposerH.q(objX);
                }
                function7 = (Function3) objX;
                if (i6 != 0) {
                    f8 = SliderKt.d;
                } else {
                    f8 = f4;
                }
                if (i8 != 0) {
                    function5 = function7;
                    z4 = z2;
                    function6 = function4;
                    f7 = f8;
                    f6 = SliderKt.f7245e;
                    modifier2 = dTFunctionNameModifier;
                } else {
                    modifier2 = dTFunctionNameModifier;
                    function5 = function7;
                    z4 = z2;
                    function6 = function4;
                    f6 = f5;
                    f7 = f8;
                }
            }
            gapComposerH.a0();
            OpaqueKey opaqueKey4 = ComposerKt.f7940a;
            Dp.f11004c.getClass();
            int i19 = i5 << 3;
            c(sliderState, Dp.f11005e, modifier2, z4, sliderColors, function6, function5, f7, f6, gapComposerH, 805306416 | (i5 & 14) | (i19 & 896) | (i19 & 7168) | (57344 & i19) | (458752 & i19) | (3670016 & i19) | (29360128 & i19) | (i19 & 234881024), ((i5 >> 21) & 112) | 6);
        } else {
            gapComposerH.D();
            function5 = function3;
            z4 = z2;
            function6 = function4;
            f6 = f5;
            f7 = f4;
            modifier2 = modifierE;
        }
        recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new Function2() { // from class: mz0
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    Composer composer2 = (Composer) obj;
                    ((Integer) obj2).getClass();
                    SliderDefaults sliderDefaults = SliderDefaults.f7235a;
                    this.f76396b.b(sliderState, modifier2, z4, sliderColors, function6, function5, f7, f6, composer2, RecomposeScopeImplKt.a(i2 | 1), i3);
                    return Unit.f71739a;
                }
            };
        }
    }

    public final void c(final SliderState sliderState, final float f2, Modifier modifier, final boolean z, final SliderColors sliderColors, final Function2 function2, final Function3 function3, final float f3, final float f4, Composer composer, final int i2, final int i3) {
        int i4;
        int i5;
        GapComposer gapComposer;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = defpackage.a.e(modifierE, "TrackImpl-VvwgllI");
        }
        GapComposer gapComposerH = composer.h(133396521);
        if ((i2 & 6) == 0) {
            i4 = (gapComposerH.y(sliderState) ? 4 : 2) | i2;
        } else {
            i4 = i2;
        }
        if ((i2 & 48) == 0) {
            i4 |= gapComposerH.c(f2) ? 32 : 16;
        }
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i4 |= gapComposerH.K(modifierE) ? 256 : 128;
        }
        if ((i2 & 3072) == 0) {
            i4 |= gapComposerH.b(z) ? 2048 : 1024;
        }
        if ((i2 & 24576) == 0) {
            i4 |= gapComposerH.K(sliderColors) ? 16384 : 8192;
        }
        if ((196608 & i2) == 0) {
            i4 |= gapComposerH.y(function2) ? 131072 : 65536;
        }
        if ((1572864 & i2) == 0) {
            i4 |= gapComposerH.y(function3) ? 1048576 : 524288;
        }
        if ((i2 & 12582912) == 0) {
            i4 |= gapComposerH.c(f3) ? 8388608 : 4194304;
        }
        if ((i2 & 100663296) == 0) {
            i4 |= gapComposerH.c(f4) ? 67108864 : 33554432;
        }
        if ((i2 & 805306368) == 0) {
            i4 |= gapComposerH.b(false) ? PKIFailureInfo.duplicateCertReq : 268435456;
        }
        if ((i3 & 6) == 0) {
            i5 = i3 | (gapComposerH.b(false) ? 4 : 2);
        } else {
            i5 = i3;
        }
        if (gapComposerH.p(i4 & 1, ((i4 & 306783379) == 306783378 && (i5 & 3) == 2) ? false : true)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            final long jA = sliderColors.a(z, false);
            final long jA2 = sliderColors.a(z, true);
            long j2 = z ? sliderColors.f7230e : sliderColors.f7234j;
            long j3 = z ? sliderColors.f7229c : sliderColors.f7232h;
            Modifier modifierC = sliderState.m == Orientation.Vertical ? SizeKt.c(SizeKt.s(modifierE, SliderKt.f7242a), 1.0f) : SizeKt.f(SizeKt.d(modifierE, 1.0f), SliderKt.f7242a);
            DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier("TrackImpl-VvwgllI");
            int i6 = i4 & 112;
            boolean zY = (i6 == 32) | gapComposerH.y(sliderState);
            Object objX = gapComposerH.x();
            int i7 = i4;
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (zY || objX == composer$Companion$Empty$1) {
                objX = new Function3() { // from class: nz0
                    @Override // kotlin.jvm.functions.Function3
                    public final Object A(Object obj, Object obj2, Object obj3) {
                        int iB0;
                        MeasureScope measureScope = (MeasureScope) obj;
                        SliderDefaults sliderDefaults = SliderDefaults.f7235a;
                        Placeable placeableT = ((Measurable) obj2).T(((Constraints) obj3).f10999a);
                        Dp.f11004c.getClass();
                        float f5 = Dp.f11005e;
                        float f6 = f2;
                        if (Dp.b(f6, f5)) {
                            iB0 = sliderState.m == Orientation.Vertical ? placeableT.f9548b / 2 : placeableT.f9549c / 2;
                        } else {
                            iB0 = measureScope.B0(f6);
                        }
                        return measureScope.V0(placeableT.f9548b, placeableT.f9549c, MapsKt.h(new Pair(SliderKt.f7246f, Integer.valueOf(iB0))), new a2(placeableT, 15));
                    }
                };
                gapComposerH.q(objX);
            }
            Modifier modifierO = modifierC.o(LayoutModifierKt.a(dTFunctionNameModifier, (Function3) objX));
            boolean zY2 = (i6 == 32) | gapComposerH.y(sliderState) | gapComposerH.e(jA) | gapComposerH.e(jA2) | gapComposerH.e(j2) | gapComposerH.e(j3) | ((i7 & 29360128) == 8388608) | ((i7 & 234881024) == 67108864) | ((i7 & ImageMetadata.JPEG_GPS_COORDINATES) == 131072) | ((i7 & 3670016) == 1048576) | ((i7 & 1879048192) == 536870912) | ((i5 & 14) == 4);
            Object objX2 = gapComposerH.x();
            if (zY2 || objX2 == composer$Companion$Empty$1) {
                gapComposer = gapComposerH;
                final long j4 = j2;
                final long j5 = j3;
                Function1 function1 = new Function1() { // from class: oz0
                    /* JADX WARN: Code duplicated, block: B:105:0x02af  */
                    /* JADX WARN: Code duplicated, block: B:138:0x03bc  */
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        float fU1;
                        long j6;
                        int iB;
                        float f5;
                        float f6;
                        char c2;
                        float[] fArr;
                        Function2 function4;
                        ClosedFloatingPointRange closedFloatingPointRange;
                        float[] fArr2;
                        long jFloatToRawIntBits;
                        long jFloatToRawIntBits2;
                        DrawScope drawScope;
                        Orientation orientation;
                        long jFloatToRawIntBits3;
                        long jFloatToRawIntBits4;
                        DrawScope drawScope2;
                        long jFloatToRawIntBits5;
                        long jFloatToRawIntBits6;
                        int iFloatToRawIntBits;
                        long jFloatToRawIntBits7;
                        float fU2;
                        float fU3;
                        float fU4;
                        DrawScope drawScope3 = (DrawScope) obj;
                        SliderDefaults sliderDefaults = SliderDefaults.f7235a;
                        Dp.f11004c.getClass();
                        float f7 = Dp.f11005e;
                        float f8 = f2;
                        boolean zB = Dp.b(f8, f7);
                        SliderState sliderState2 = sliderState;
                        if (zB) {
                            fU1 = (sliderState2.m == Orientation.Vertical ? Float.intBitsToFloat((int) (drawScope3.b() >> 32)) : Float.intBitsToFloat((int) (drawScope3.b() & BodyPartID.bodyIdMax))) / 2.0f;
                        } else {
                            fU1 = drawScope3.u1(f8);
                        }
                        SliderDefaults sliderDefaults2 = SliderDefaults.f7235a;
                        float[] fArr3 = sliderState2.g;
                        float fC = sliderState2.c();
                        int i8 = 0;
                        float fK1 = drawScope3.k1(0);
                        float fK2 = drawScope3.k1(0);
                        float fK3 = drawScope3.k1(((SnapshotMutableIntStateImpl) sliderState2.f7270k).f());
                        float fK4 = drawScope3.k1(((SnapshotMutableIntStateImpl) sliderState2.l).f());
                        float fL1 = drawScope3.l1(fU1);
                        Orientation orientation2 = sliderState2.m;
                        boolean z2 = orientation2 == Orientation.Vertical;
                        boolean z3 = drawScope3.getLayoutDirection() == LayoutDirection.Rtl;
                        boolean z4 = z3 && !z2;
                        float fU5 = drawScope3.u1(fL1);
                        if (z2) {
                            j6 = 4294967295L;
                            iB = (int) (drawScope3.b() & BodyPartID.bodyIdMax);
                        } else {
                            j6 = 4294967295L;
                            iB = (int) (drawScope3.b() >> 32);
                        }
                        float fIntBitsToFloat = Float.intBitsToFloat(iB);
                        fArr3.getClass();
                        Float fValueOf = fArr3.length == 0 ? null : Float.valueOf(fArr3[0]);
                        float f9 = Call.Parameters.DEFAULT_CAMERA_ZOOM;
                        boolean z5 = Intrinsics.a(Call.Parameters.DEFAULT_CAMERA_ZOOM, fValueOf) || Intrinsics.a(Call.Parameters.DEFAULT_CAMERA_ZOOM, ArraysKt.K(fArr3));
                        float fA = (fArr3.length == 0 || (Intrinsics.a(fC, fArr3.length != 0 ? Float.valueOf(fArr3[0]) : null) || Intrinsics.a(fC, ArraysKt.K(fArr3)))) ? tr.a(fIntBitsToFloat, Call.Parameters.DEFAULT_CAMERA_ZOOM, fC, Call.Parameters.DEFAULT_CAMERA_ZOOM) : (((fIntBitsToFloat - Call.Parameters.DEFAULT_CAMERA_ZOOM) - (fU5 * 2.0f)) * fC) + Call.Parameters.DEFAULT_CAMERA_ZOOM + fU5;
                        float fA2 = (fArr3.length == 0 || z5) ? tr.a(fIntBitsToFloat, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM) : (((fIntBitsToFloat - Call.Parameters.DEFAULT_CAMERA_ZOOM) - (fU5 * 2.0f)) * Call.Parameters.DEFAULT_CAMERA_ZOOM) + Call.Parameters.DEFAULT_CAMERA_ZOOM + fU5;
                        float fU6 = drawScope3.u1(f4);
                        float f10 = f3;
                        if (Dp.a(f10, Call.Parameters.DEFAULT_CAMERA_ZOOM) > 0) {
                            if (z2) {
                                fU2 = drawScope3.u1(f10) + (drawScope3.u1(fK2) / 2.0f);
                                fU3 = drawScope3.u1(fK4) / 2.0f;
                                fU4 = drawScope3.u1(f10);
                            } else {
                                fU2 = drawScope3.u1(f10) + (drawScope3.u1(fK1) / 2.0f);
                                fU3 = drawScope3.u1(fK3) / 2.0f;
                                fU4 = drawScope3.u1(f10);
                            }
                            f5 = fU4 + fU3;
                            f6 = fU2;
                        } else {
                            f5 = 0.0f;
                            f6 = 0.0f;
                        }
                        long jG1 = drawScope3.G1();
                        float fIntBitsToFloat2 = Float.intBitsToFloat((int) (z2 ? jG1 & j6 : jG1 >> 32));
                        float f11 = (fIntBitsToFloat - f5) - fU5;
                        Function2 function5 = function2;
                        if (fA < f11) {
                            float f12 = z4 ? fU5 : fU6;
                            float f13 = z4 ? fU6 : fU5;
                            float f14 = fA + f5;
                            float f15 = fIntBitsToFloat - f14;
                            if (z2) {
                                c2 = ' ';
                                fArr = fArr3;
                                jFloatToRawIntBits4 = (((long) Float.floatToRawIntBits(Call.Parameters.DEFAULT_CAMERA_ZOOM)) << 32) | (((long) Float.floatToRawIntBits(f14)) & j6);
                                Offset.Companion companion = Offset.f8806b;
                            } else {
                                c2 = ' ';
                                fArr = fArr3;
                                if (z3) {
                                    jFloatToRawIntBits4 = (((long) Float.floatToRawIntBits(Call.Parameters.DEFAULT_CAMERA_ZOOM)) << 32) | (((long) Float.floatToRawIntBits(Call.Parameters.DEFAULT_CAMERA_ZOOM)) & j6);
                                    Offset.Companion companion2 = Offset.f8806b;
                                } else {
                                    jFloatToRawIntBits4 = (((long) Float.floatToRawIntBits(f14)) << 32) | (((long) Float.floatToRawIntBits(Call.Parameters.DEFAULT_CAMERA_ZOOM)) & j6);
                                    Offset.Companion companion3 = Offset.f8806b;
                                }
                            }
                            if (z2) {
                                jFloatToRawIntBits5 = (((long) Float.floatToRawIntBits(Float.intBitsToFloat((int) (drawScope3.b() >> c2)))) << c2) | (((long) Float.floatToRawIntBits(f15)) & j6);
                                Size.Companion companion4 = Size.f8820b;
                            } else {
                                if (z3) {
                                    drawScope2 = drawScope3;
                                    jFloatToRawIntBits5 = (((long) Float.floatToRawIntBits(Float.intBitsToFloat((int) (drawScope3.b() >> c2)) - f14)) << c2) | (((long) Float.floatToRawIntBits(Float.intBitsToFloat((int) (drawScope3.b() & j6)))) & j6);
                                    Size.Companion companion5 = Size.f8820b;
                                } else {
                                    drawScope2 = drawScope3;
                                    jFloatToRawIntBits5 = (((long) Float.floatToRawIntBits(f15)) << c2) | (((long) Float.floatToRawIntBits(Float.intBitsToFloat((int) (drawScope2.b() & j6)))) & j6);
                                    Size.Companion companion6 = Size.f8820b;
                                }
                                drawScope3 = drawScope2;
                            }
                            long j7 = jFloatToRawIntBits5;
                            function4 = function5;
                            SliderDefaults.e(drawScope3, orientation2, jFloatToRawIntBits4, j7, jA, f12, f13);
                            if (z2) {
                                jFloatToRawIntBits6 = Float.floatToRawIntBits(Float.intBitsToFloat((int) (drawScope3.G1() >> c2)));
                                iFloatToRawIntBits = Float.floatToRawIntBits(fIntBitsToFloat - fU5);
                            } else {
                                if (z3) {
                                    jFloatToRawIntBits7 = (((long) Float.floatToRawIntBits(fU5)) << c2) | (((long) Float.floatToRawIntBits(Float.intBitsToFloat((int) (drawScope3.G1() & j6)))) & j6);
                                } else {
                                    float fIntBitsToFloat3 = Float.intBitsToFloat((int) (drawScope3.G1() & j6));
                                    jFloatToRawIntBits6 = Float.floatToRawIntBits(fIntBitsToFloat - fU5);
                                    iFloatToRawIntBits = Float.floatToRawIntBits(fIntBitsToFloat3);
                                }
                                if (function4 != null) {
                                    function4.invoke(drawScope3, new Offset(jFloatToRawIntBits7));
                                }
                            }
                            jFloatToRawIntBits7 = (((long) iFloatToRawIntBits) & j6) | (jFloatToRawIntBits6 << c2);
                            if (function4 != null) {
                                function4.invoke(drawScope3, new Offset(jFloatToRawIntBits7));
                            }
                        } else {
                            orientation2 = orientation2;
                            f9 = 0.0f;
                            c2 = ' ';
                            fArr = fArr3;
                            function4 = function5;
                        }
                        float f16 = fA - f5;
                        float f17 = !z4 ? fU5 : fU6;
                        float f18 = z4 ? fU5 : fU6;
                        float f19 = z4 ? f16 : f16 - f9;
                        if (f19 > f17) {
                            if (z2) {
                                jFloatToRawIntBits2 = (((long) Float.floatToRawIntBits(f9)) << c2) | (((long) Float.floatToRawIntBits(f9)) & j6);
                                Offset.Companion companion7 = Offset.f8806b;
                            } else if (z3) {
                                jFloatToRawIntBits2 = (((long) Float.floatToRawIntBits(Float.intBitsToFloat((int) (drawScope3.b() >> c2)) - f16)) << c2) | (((long) Float.floatToRawIntBits(f9)) & j6);
                                Offset.Companion companion8 = Offset.f8806b;
                            } else {
                                jFloatToRawIntBits2 = (((long) Float.floatToRawIntBits(f9)) << c2) | (((long) Float.floatToRawIntBits(f9)) & j6);
                                Offset.Companion companion9 = Offset.f8806b;
                            }
                            if (z2) {
                                drawScope = drawScope3;
                                orientation = orientation2;
                                jFloatToRawIntBits3 = (((long) Float.floatToRawIntBits(f19)) & j6) | (((long) Float.floatToRawIntBits(Float.intBitsToFloat((int) (drawScope3.b() >> c2)))) << c2);
                                Size.Companion companion10 = Size.f8820b;
                            } else {
                                drawScope = drawScope3;
                                orientation = orientation2;
                                if (z3) {
                                    jFloatToRawIntBits3 = (((long) Float.floatToRawIntBits(f16)) << c2) | (((long) Float.floatToRawIntBits(Float.intBitsToFloat((int) (drawScope.b() & j6)))) & j6);
                                    Size.Companion companion11 = Size.f8820b;
                                } else {
                                    jFloatToRawIntBits3 = (((long) Float.floatToRawIntBits(f19)) << c2) | (((long) Float.floatToRawIntBits(Float.intBitsToFloat((int) (drawScope.b() & j6)))) & j6);
                                    Size.Companion companion12 = Size.f8820b;
                                }
                            }
                            long j8 = jFloatToRawIntBits3;
                            drawScope3 = drawScope;
                            SliderDefaults.e(drawScope3, orientation, jFloatToRawIntBits2, j8, jA2, f17, f18);
                        }
                        float f20 = f9 + fU5;
                        float f21 = fIntBitsToFloat - fU5;
                        ClosedFloatingPointRange closedFloatingPointRangeH = RangesKt.h(f9, f16);
                        RangesKt.h(fIntBitsToFloat2 - f5, fIntBitsToFloat2 + f5);
                        RangesKt.h(fA2 - f6, fA2 + f6);
                        ClosedFloatingPointRange closedFloatingPointRangeH2 = RangesKt.h(fA - f5, fA + f5);
                        float[] fArr4 = fArr;
                        int length = fArr4.length;
                        int i9 = 0;
                        while (i8 < length) {
                            float f22 = fArr4[i8];
                            int i10 = i9 + 1;
                            if (function4 == null || i9 != fArr4.length - 1) {
                                float fB = MathHelpersKt.b(f20, f21, f22);
                                if (closedFloatingPointRangeH2.h(Float.valueOf(fB))) {
                                    closedFloatingPointRange = closedFloatingPointRangeH2;
                                    fArr2 = fArr4;
                                } else {
                                    if (z2) {
                                        closedFloatingPointRange = closedFloatingPointRangeH2;
                                        fArr2 = fArr4;
                                        jFloatToRawIntBits = (((long) Float.floatToRawIntBits(fB)) & j6) | (((long) Float.floatToRawIntBits(Float.intBitsToFloat((int) (drawScope3.G1() >> c2)))) << c2);
                                        Offset.Companion companion13 = Offset.f8806b;
                                    } else {
                                        closedFloatingPointRange = closedFloatingPointRangeH2;
                                        fArr2 = fArr4;
                                        if (z3) {
                                            jFloatToRawIntBits = (((long) Float.floatToRawIntBits(Float.intBitsToFloat((int) (drawScope3.G1() & j6)))) & j6) | (((long) Float.floatToRawIntBits(Float.intBitsToFloat((int) (drawScope3.b() >> c2)) - fB)) << c2);
                                            Offset.Companion companion14 = Offset.f8806b;
                                        } else {
                                            jFloatToRawIntBits = (((long) Float.floatToRawIntBits(Float.intBitsToFloat((int) (drawScope3.G1() & j6)))) & j6) | (((long) Float.floatToRawIntBits(fB)) << c2);
                                            Offset.Companion companion15 = Offset.f8806b;
                                        }
                                    }
                                    function3.A(drawScope3, new Offset(jFloatToRawIntBits), new Color(closedFloatingPointRangeH.h(Float.valueOf(fB)) ? j5 : j4));
                                }
                            } else {
                                closedFloatingPointRange = closedFloatingPointRangeH2;
                                fArr2 = fArr4;
                            }
                            i8++;
                            i9 = i10;
                            closedFloatingPointRangeH2 = closedFloatingPointRange;
                            fArr4 = fArr2;
                        }
                        return Unit.f71739a;
                    }
                };
                gapComposer.q(function1);
                objX2 = function1;
            } else {
                gapComposer = gapComposerH;
            }
            CanvasKt.a(modifierO, (Function1) objX2, gapComposer, 0);
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            final Modifier modifier2 = modifierE;
            recomposeScopeImplB0.d = new Function2() { // from class: pz0
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    Composer composer2 = (Composer) obj;
                    ((Integer) obj2).getClass();
                    SliderDefaults sliderDefaults = SliderDefaults.f7235a;
                    this.f78954b.c(sliderState, f2, modifier2, z, sliderColors, function2, function3, f3, f4, composer2, RecomposeScopeImplKt.a(i2 | 1), RecomposeScopeImplKt.a(i3));
                    return Unit.f71739a;
                }
            };
        }
    }
}
