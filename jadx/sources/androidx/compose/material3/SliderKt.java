package androidx.compose.material3;

import androidx.compose.foundation.FocusableKt;
import androidx.compose.foundation.gestures.DraggableKt;
import androidx.compose.foundation.gestures.Orientation;
import androidx.compose.foundation.gestures.PressGestureScope;
import androidx.compose.foundation.gestures.TapGestureDetectorKt;
import androidx.compose.foundation.interaction.InteractionSourceKt;
import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.material3.internal.AccessibilityUtilKt;
import androidx.compose.material3.tokens.SliderTokens;
import androidx.compose.runtime.Applier;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.SnapshotMutableFloatStateImpl;
import androidx.compose.runtime.SnapshotMutableIntStateImpl;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.BiasAlignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.input.key.Key;
import androidx.compose.ui.input.key.KeyEvent;
import androidx.compose.ui.input.key.KeyEventType;
import androidx.compose.ui.input.key.KeyEvent_androidKt;
import androidx.compose.ui.input.key.KeyInputModifierKt;
import androidx.compose.ui.input.key.Key_androidKt;
import androidx.compose.ui.input.pointer.PointerEvent;
import androidx.compose.ui.input.pointer.PointerInputEventHandler;
import androidx.compose.ui.input.pointer.PointerInputScope;
import androidx.compose.ui.input.pointer.SuspendPointerInputElement;
import androidx.compose.ui.input.pointer.SuspendingPointerInputFilterKt;
import androidx.compose.ui.layout.HorizontalAlignmentLine;
import androidx.compose.ui.layout.LayoutIdKt;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.OnRemeasuredModifierKt;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.layout.VerticalAlignmentLine;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.ConstraintsKt;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.unit.DpKt;
import androidx.compose.ui.unit.LayoutDirection;
import androidx.compose.ui.util.ListUtilsKt;
import androidx.compose.ui.util.MathHelpersKt;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.google.ar.core.ImageMetadata;
import defpackage.bg;
import defpackage.ka;
import defpackage.md;
import defpackage.os;
import defpackage.p1;
import defpackage.q80;
import defpackage.u60;
import defpackage.z00;
import java.util.List;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.ArraysKt;
import kotlin.collections.MapsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref$IntRef;
import kotlin.math.MathKt;
import kotlin.ranges.ClosedFloatingPointRange;
import kotlin.ranges.RangesKt;
import net.rtccloud.sdk.Call;
import org.bouncycastle.asn1.cmc.BodyPartID;
import org.bouncycastle.asn1.cmp.PKIFailureInfo;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"material3"}, k = 2, mv = {2, 0, 0}, xi = 48)
public abstract class SliderKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final float f7242a = SliderTokens.n;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final float f7243b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final long f7244c;
    public static final float d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final float f7245e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final VerticalAlignmentLine f7246f;

    static {
        float f2 = SliderTokens.l;
        f7243b = f2;
        float f3 = SliderTokens.f7860j;
        f7244c = DpKt.a(f2, f3);
        DpKt.a(f3, f2);
        d = SliderTokens.f7853a;
        Dp.Companion companion = Dp.f11004c;
        f7245e = 2.0f;
        f7246f = new VerticalAlignmentLine(SliderKt$CornerSizeAlignmentLine$1.f7247b);
    }

    public static final void a(float f2, Function1 function1, Modifier modifier, boolean z, Function0 function0, SliderColors sliderColors, MutableInteractionSource mutableInteractionSource, Function3 function3, ComposableLambdaImpl composableLambdaImpl, ClosedFloatingPointRange closedFloatingPointRange, Composer composer, int i2) {
        int i3;
        MutableInteractionSource mutableInteractionSource2;
        Function3 function4;
        ComposableLambdaImpl composableLambdaImpl2;
        GapComposer gapComposer;
        boolean z2;
        SliderColors sliderColors2;
        SliderColors sliderColorsD;
        int i4;
        boolean z3;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = defpackage.a.e(modifierE, "Slider");
        }
        Modifier modifier2 = modifierE;
        GapComposer gapComposerH = composer.h(985901935);
        if ((i2 & 6) == 0) {
            i3 = (gapComposerH.c(f2) ? 4 : 2) | i2;
        } else {
            i3 = i2;
        }
        if ((i2 & 48) == 0) {
            i3 |= gapComposerH.y(function1) ? 32 : 16;
        }
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i3 |= gapComposerH.K(modifier2) ? 256 : 128;
        }
        int i5 = i3 | 3072;
        if ((i2 & 24576) == 0) {
            i5 |= gapComposerH.y(function0) ? 16384 : 8192;
        }
        if ((196608 & i2) == 0) {
            i5 |= 65536;
        }
        if ((1572864 & i2) == 0) {
            mutableInteractionSource2 = mutableInteractionSource;
            i5 |= gapComposerH.K(mutableInteractionSource2) ? 1048576 : 524288;
        } else {
            mutableInteractionSource2 = mutableInteractionSource;
        }
        int i6 = i5 | 12582912;
        if ((100663296 & i2) == 0) {
            function4 = function3;
            i6 |= gapComposerH.y(function4) ? 67108864 : 33554432;
        } else {
            function4 = function3;
        }
        if ((805306368 & i2) == 0) {
            composableLambdaImpl2 = composableLambdaImpl;
            i6 |= gapComposerH.y(composableLambdaImpl2) ? PKIFailureInfo.duplicateCertReq : 268435456;
        } else {
            composableLambdaImpl2 = composableLambdaImpl;
        }
        char c2 = gapComposerH.K(closedFloatingPointRange) ? (char) 4 : (char) 2;
        boolean z4 = true;
        if (gapComposerH.p(i6 & 1, ((306783379 & i6) == 306783378 && (c2 & 3) == 2) ? false : true)) {
            gapComposerH.y0();
            if ((i2 & 1) == 0 || gapComposerH.h0()) {
                SliderDefaults sliderDefaults = SliderDefaults.f7235a;
                sliderColorsD = SliderDefaults.d(gapComposerH);
                i4 = i6 & (-458753);
                z3 = true;
            } else {
                gapComposerH.D();
                i4 = i6 & (-458753);
                z3 = z;
                sliderColorsD = sliderColors;
            }
            gapComposerH.a0();
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            boolean z5 = (29360128 & i4) == 8388608;
            int i7 = i4;
            if ((((c2 & 14) ^ 6) <= 4 || !gapComposerH.K(closedFloatingPointRange)) && (c2 & 6) != 4) {
                z4 = false;
            }
            boolean z6 = z5 | z4;
            Object objX = gapComposerH.x();
            if (z6 || objX == Composer.Companion.f7939a) {
                objX = new SliderState(f2, 0, function0, closedFloatingPointRange);
                gapComposerH.q(objX);
            }
            SliderState sliderState = (SliderState) objX;
            sliderState.f7263b = function0;
            sliderState.f7265e = function1;
            sliderState.e(f2);
            int i8 = i7 >> 9;
            gapComposer = gapComposerH;
            b(sliderState, modifier2, z3, null, mutableInteractionSource2, function4, composableLambdaImpl2, gapComposer, ((i7 >> 3) & 1008) | ((i7 >> 6) & 57344) | (458752 & i8) | (i8 & 3670016), 8);
            sliderColors2 = sliderColorsD;
            z2 = z3;
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
            z2 = z;
            sliderColors2 = sliderColors;
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new z00(f2, function1, modifier2, z2, function0, sliderColors2, mutableInteractionSource, function3, composableLambdaImpl, closedFloatingPointRange, i2);
        }
    }

    /* JADX WARN: Code duplicated, block: B:101:0x0142  */
    /* JADX WARN: Code duplicated, block: B:102:0x016a  */
    /* JADX WARN: Code duplicated, block: B:104:0x0170  */
    /* JADX WARN: Code duplicated, block: B:107:0x0182  */
    /* JADX WARN: Code duplicated, block: B:109:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:36:0x005d  */
    /* JADX WARN: Code duplicated, block: B:39:0x0063  */
    /* JADX WARN: Code duplicated, block: B:41:0x0068  */
    /* JADX WARN: Code duplicated, block: B:43:0x006c  */
    /* JADX WARN: Code duplicated, block: B:45:0x0074  */
    /* JADX WARN: Code duplicated, block: B:46:0x0077  */
    /* JADX WARN: Code duplicated, block: B:50:0x0080  */
    /* JADX WARN: Code duplicated, block: B:52:0x0084  */
    /* JADX WARN: Code duplicated, block: B:54:0x0087  */
    /* JADX WARN: Code duplicated, block: B:56:0x008f  */
    /* JADX WARN: Code duplicated, block: B:57:0x0092  */
    /* JADX WARN: Code duplicated, block: B:61:0x009b  */
    /* JADX WARN: Code duplicated, block: B:63:0x009f  */
    /* JADX WARN: Code duplicated, block: B:65:0x00a2  */
    /* JADX WARN: Code duplicated, block: B:67:0x00aa  */
    /* JADX WARN: Code duplicated, block: B:68:0x00ad  */
    /* JADX WARN: Code duplicated, block: B:72:0x00bd  */
    /* JADX WARN: Code duplicated, block: B:73:0x00c0  */
    /* JADX WARN: Code duplicated, block: B:76:0x00c9  */
    /* JADX WARN: Code duplicated, block: B:78:0x00d0  */
    /* JADX WARN: Code duplicated, block: B:82:0x00e5 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:83:0x00e7  */
    /* JADX WARN: Code duplicated, block: B:84:0x00ed  */
    /* JADX WARN: Code duplicated, block: B:86:0x00f1  */
    /* JADX WARN: Code duplicated, block: B:89:0x00fd  */
    /* JADX WARN: Code duplicated, block: B:91:0x0105  */
    /* JADX WARN: Code duplicated, block: B:94:0x0111  */
    /* JADX WARN: Code duplicated, block: B:96:0x0120  */
    /* JADX WARN: Code duplicated, block: B:98:0x0134  */
    public static final void b(SliderState sliderState, Modifier modifier, boolean z, SliderColors sliderColors, MutableInteractionSource mutableInteractionSource, Function3 function3, Function3 function4, Composer composer, int i2, int i3) {
        int i4;
        final boolean z2;
        int i5;
        final MutableInteractionSource mutableInteractionSource2;
        int i6;
        int i7;
        Function3 function3B;
        int i8;
        int i9;
        Function3 function5;
        int i10;
        Modifier modifier2;
        boolean z3;
        Modifier modifier3;
        SliderColors sliderColors2;
        boolean z4;
        MutableInteractionSource mutableInteractionSource3;
        Function3 function6;
        Function3 function7;
        RecomposeScopeImpl recomposeScopeImplB0;
        Modifier dTFunctionNameModifier;
        final SliderColors sliderColorsD;
        Function3 function3B2;
        Modifier modifier4;
        int i11;
        MutableInteractionSource mutableInteractionSource4;
        Object objX;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = defpackage.a.e(modifierE, "Slider");
        }
        GapComposer gapComposerH = composer.h(409861960);
        if ((i2 & 6) == 0) {
            i4 = (gapComposerH.y(sliderState) ? 4 : 2) | i2;
        } else {
            i4 = i2;
        }
        int i12 = i3 & 2;
        if (i12 != 0) {
            i4 |= 48;
        } else if ((i2 & 48) == 0) {
            i4 |= gapComposerH.K(modifierE) ? 32 : 16;
        }
        int i13 = i3 & 4;
        if (i13 == 0) {
            if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
                z2 = z;
                i4 |= gapComposerH.b(z2) ? 256 : 128;
            }
            if ((i2 & 3072) == 0) {
                i4 |= 1024;
            }
            i5 = i3 & 16;
            if (i5 != 0) {
                if ((i2 & 24576) == 0) {
                    mutableInteractionSource2 = mutableInteractionSource;
                    if (gapComposerH.K(mutableInteractionSource2)) {
                        i6 = 16384;
                    } else {
                        i6 = 8192;
                    }
                    i4 |= i6;
                }
                i7 = i3 & 32;
                if (i7 != 0) {
                    if ((196608 & i2) == 0) {
                        function3B = function3;
                        if (gapComposerH.y(function3B)) {
                            i8 = 131072;
                        } else {
                            i8 = 65536;
                        }
                        i4 |= i8;
                    }
                    i9 = i3 & 64;
                    if (i9 != 0) {
                        if ((1572864 & i2) == 0) {
                            function5 = function4;
                            if (gapComposerH.y(function5)) {
                                i10 = 1048576;
                            } else {
                                i10 = 524288;
                            }
                            i4 |= i10;
                        }
                        modifier2 = modifierE;
                        if ((599187 & i4) != 599186) {
                            z3 = true;
                        } else {
                            z3 = false;
                        }
                        if (gapComposerH.p(i4 & 1, z3)) {
                            gapComposerH.y0();
                            if ((i2 & 1) != 0 || gapComposerH.h0()) {
                                if (i12 != 0) {
                                    dTFunctionNameModifier = new DTFunctionNameModifier("Slider");
                                } else {
                                    dTFunctionNameModifier = modifier2;
                                }
                                if (i13 != 0) {
                                    z2 = true;
                                }
                                SliderDefaults sliderDefaults = SliderDefaults.f7235a;
                                sliderColorsD = SliderDefaults.d(gapComposerH);
                                int i14 = i4 & (-7169);
                                if (i5 != 0) {
                                    objX = gapComposerH.x();
                                    if (objX == Composer.Companion.f7939a) {
                                        objX = InteractionSourceKt.a();
                                        gapComposerH.q(objX);
                                    }
                                    mutableInteractionSource2 = (MutableInteractionSource) objX;
                                }
                                if (i7 != 0) {
                                    function3B = ComposableLambdaKt.b(-2100927368, new Function3<SliderState, Composer, Integer, Unit>() { // from class: androidx.compose.material3.SliderKt$Slider$10
                                        @Override // kotlin.jvm.functions.Function3
                                        public final Object A(Object obj, Object obj2, Object obj3) {
                                            ((Number) obj3).intValue();
                                            OpaqueKey opaqueKey = ComposerKt.f7940a;
                                            SliderDefaults.f7235a.a(mutableInteractionSource2, null, sliderColorsD, z2, 0L, (Composer) obj2, ImageMetadata.EDGE_MODE);
                                            return Unit.f71739a;
                                        }
                                    }, gapComposerH);
                                }
                                if (i9 != 0) {
                                    function3B2 = ComposableLambdaKt.b(-81224541, new Function3<SliderState, Composer, Integer, Unit>() { // from class: androidx.compose.material3.SliderKt$Slider$11
                                        @Override // kotlin.jvm.functions.Function3
                                        public final Object A(Object obj, Object obj2, Object obj3) {
                                            SliderState sliderState2 = (SliderState) obj;
                                            Composer composer2 = (Composer) obj2;
                                            int iIntValue = ((Number) obj3).intValue();
                                            OpaqueKey opaqueKey = ComposerKt.f7940a;
                                            SliderDefaults.f7235a.b(sliderState2, null, z2, sliderColorsD, null, null, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, composer2, (iIntValue & 14) | 100663296, 242);
                                            return Unit.f71739a;
                                        }
                                    }, gapComposerH);
                                } else {
                                    function3B2 = function5;
                                }
                                modifier4 = dTFunctionNameModifier;
                                i11 = i14;
                                mutableInteractionSource4 = mutableInteractionSource2;
                            } else {
                                gapComposerH.D();
                                i11 = i4 & (-7169);
                                sliderColorsD = sliderColors;
                                z2 = z2;
                                mutableInteractionSource4 = mutableInteractionSource2;
                                function3B = function3B;
                                function3B2 = function5;
                                modifier4 = modifier2;
                            }
                            gapComposerH.a0();
                            OpaqueKey opaqueKey = ComposerKt.f7940a;
                            if (sliderState.f7262a >= 0) {
                                md.n("steps should be >= 0");
                                return;
                            }
                            int i15 = i11 >> 3;
                            Modifier modifier5 = modifier4;
                            c(modifier5, sliderState, z2, mutableInteractionSource4, function3B, function3B2, gapComposerH, (i11 & 896) | (i15 & 14) | ((i11 << 3) & 112) | (i15 & 7168) | (57344 & i15) | (i15 & ImageMetadata.JPEG_GPS_COORDINATES));
                            function7 = function3B2;
                            mutableInteractionSource3 = mutableInteractionSource4;
                            z4 = z2;
                            modifier3 = modifier5;
                            function6 = function3B;
                            sliderColors2 = sliderColorsD;
                        } else {
                            gapComposerH.D();
                            modifier3 = modifier2;
                            sliderColors2 = sliderColors;
                            z4 = z2;
                            mutableInteractionSource3 = mutableInteractionSource2;
                            function6 = function3B;
                            function7 = function5;
                        }
                        recomposeScopeImplB0 = gapComposerH.b0();
                        if (recomposeScopeImplB0 != null) {
                            recomposeScopeImplB0.d = new bg(sliderState, modifier3, z4, sliderColors2, mutableInteractionSource3, function6, function7, i2, i3, 5);
                        }
                    }
                    i4 |= 1572864;
                    function5 = function4;
                    modifier2 = modifierE;
                    if ((599187 & i4) != 599186) {
                        z3 = true;
                    } else {
                        z3 = false;
                    }
                    if (gapComposerH.p(i4 & 1, z3)) {
                        gapComposerH.y0();
                        if ((i2 & 1) != 0) {
                            if (i12 != 0) {
                                dTFunctionNameModifier = new DTFunctionNameModifier("Slider");
                            } else {
                                dTFunctionNameModifier = modifier2;
                            }
                            if (i13 != 0) {
                                z2 = true;
                            }
                            SliderDefaults sliderDefaults2 = SliderDefaults.f7235a;
                            sliderColorsD = SliderDefaults.d(gapComposerH);
                            int i16 = i4 & (-7169);
                            if (i5 != 0) {
                                objX = gapComposerH.x();
                                if (objX == Composer.Companion.f7939a) {
                                    objX = InteractionSourceKt.a();
                                    gapComposerH.q(objX);
                                }
                                mutableInteractionSource2 = (MutableInteractionSource) objX;
                            }
                            if (i7 != 0) {
                                function3B = ComposableLambdaKt.b(-2100927368, new Function3<SliderState, Composer, Integer, Unit>() { // from class: androidx.compose.material3.SliderKt$Slider$10
                                    @Override // kotlin.jvm.functions.Function3
                                    public final Object A(Object obj, Object obj2, Object obj3) {
                                        ((Number) obj3).intValue();
                                        OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                                        SliderDefaults.f7235a.a(mutableInteractionSource2, null, sliderColorsD, z2, 0L, (Composer) obj2, ImageMetadata.EDGE_MODE);
                                        return Unit.f71739a;
                                    }
                                }, gapComposerH);
                            }
                            if (i9 != 0) {
                                function3B2 = ComposableLambdaKt.b(-81224541, new Function3<SliderState, Composer, Integer, Unit>() { // from class: androidx.compose.material3.SliderKt$Slider$11
                                    @Override // kotlin.jvm.functions.Function3
                                    public final Object A(Object obj, Object obj2, Object obj3) {
                                        SliderState sliderState2 = (SliderState) obj;
                                        Composer composer2 = (Composer) obj2;
                                        int iIntValue = ((Number) obj3).intValue();
                                        OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                                        SliderDefaults.f7235a.b(sliderState2, null, z2, sliderColorsD, null, null, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, composer2, (iIntValue & 14) | 100663296, 242);
                                        return Unit.f71739a;
                                    }
                                }, gapComposerH);
                            } else {
                                function3B2 = function5;
                            }
                            modifier4 = dTFunctionNameModifier;
                            i11 = i16;
                            mutableInteractionSource4 = mutableInteractionSource2;
                        } else {
                            if (i12 != 0) {
                                dTFunctionNameModifier = new DTFunctionNameModifier("Slider");
                            } else {
                                dTFunctionNameModifier = modifier2;
                            }
                            if (i13 != 0) {
                                z2 = true;
                            }
                            SliderDefaults sliderDefaults3 = SliderDefaults.f7235a;
                            sliderColorsD = SliderDefaults.d(gapComposerH);
                            int i17 = i4 & (-7169);
                            if (i5 != 0) {
                                objX = gapComposerH.x();
                                if (objX == Composer.Companion.f7939a) {
                                    objX = InteractionSourceKt.a();
                                    gapComposerH.q(objX);
                                }
                                mutableInteractionSource2 = (MutableInteractionSource) objX;
                            }
                            if (i7 != 0) {
                                function3B = ComposableLambdaKt.b(-2100927368, new Function3<SliderState, Composer, Integer, Unit>() { // from class: androidx.compose.material3.SliderKt$Slider$10
                                    @Override // kotlin.jvm.functions.Function3
                                    public final Object A(Object obj, Object obj2, Object obj3) {
                                        ((Number) obj3).intValue();
                                        OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                                        SliderDefaults.f7235a.a(mutableInteractionSource2, null, sliderColorsD, z2, 0L, (Composer) obj2, ImageMetadata.EDGE_MODE);
                                        return Unit.f71739a;
                                    }
                                }, gapComposerH);
                            }
                            if (i9 != 0) {
                                function3B2 = ComposableLambdaKt.b(-81224541, new Function3<SliderState, Composer, Integer, Unit>() { // from class: androidx.compose.material3.SliderKt$Slider$11
                                    @Override // kotlin.jvm.functions.Function3
                                    public final Object A(Object obj, Object obj2, Object obj3) {
                                        SliderState sliderState2 = (SliderState) obj;
                                        Composer composer2 = (Composer) obj2;
                                        int iIntValue = ((Number) obj3).intValue();
                                        OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                                        SliderDefaults.f7235a.b(sliderState2, null, z2, sliderColorsD, null, null, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, composer2, (iIntValue & 14) | 100663296, 242);
                                        return Unit.f71739a;
                                    }
                                }, gapComposerH);
                            } else {
                                function3B2 = function5;
                            }
                            modifier4 = dTFunctionNameModifier;
                            i11 = i17;
                            mutableInteractionSource4 = mutableInteractionSource2;
                        }
                        gapComposerH.a0();
                        OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                        if (sliderState.f7262a >= 0) {
                            md.n("steps should be >= 0");
                            return;
                        }
                        int i18 = i11 >> 3;
                        Modifier modifier6 = modifier4;
                        c(modifier6, sliderState, z2, mutableInteractionSource4, function3B, function3B2, gapComposerH, (i11 & 896) | (i18 & 14) | ((i11 << 3) & 112) | (i18 & 7168) | (57344 & i18) | (i18 & ImageMetadata.JPEG_GPS_COORDINATES));
                        function7 = function3B2;
                        mutableInteractionSource3 = mutableInteractionSource4;
                        z4 = z2;
                        modifier3 = modifier6;
                        function6 = function3B;
                        sliderColors2 = sliderColorsD;
                    } else {
                        gapComposerH.D();
                        modifier3 = modifier2;
                        sliderColors2 = sliderColors;
                        z4 = z2;
                        mutableInteractionSource3 = mutableInteractionSource2;
                        function6 = function3B;
                        function7 = function5;
                    }
                    recomposeScopeImplB0 = gapComposerH.b0();
                    if (recomposeScopeImplB0 != null) {
                        recomposeScopeImplB0.d = new bg(sliderState, modifier3, z4, sliderColors2, mutableInteractionSource3, function6, function7, i2, i3, 5);
                    }
                }
                i4 |= ImageMetadata.EDGE_MODE;
                function3B = function3;
                i9 = i3 & 64;
                if (i9 != 0) {
                    if ((1572864 & i2) == 0) {
                        function5 = function4;
                        if (gapComposerH.y(function5)) {
                            i10 = 1048576;
                        } else {
                            i10 = 524288;
                        }
                        i4 |= i10;
                    }
                    modifier2 = modifierE;
                    if ((599187 & i4) != 599186) {
                        z3 = true;
                    } else {
                        z3 = false;
                    }
                    if (gapComposerH.p(i4 & 1, z3)) {
                        gapComposerH.y0();
                        if ((i2 & 1) != 0) {
                            if (i12 != 0) {
                                dTFunctionNameModifier = new DTFunctionNameModifier("Slider");
                            } else {
                                dTFunctionNameModifier = modifier2;
                            }
                            if (i13 != 0) {
                                z2 = true;
                            }
                            SliderDefaults sliderDefaults4 = SliderDefaults.f7235a;
                            sliderColorsD = SliderDefaults.d(gapComposerH);
                            int i19 = i4 & (-7169);
                            if (i5 != 0) {
                                objX = gapComposerH.x();
                                if (objX == Composer.Companion.f7939a) {
                                    objX = InteractionSourceKt.a();
                                    gapComposerH.q(objX);
                                }
                                mutableInteractionSource2 = (MutableInteractionSource) objX;
                            }
                            if (i7 != 0) {
                                function3B = ComposableLambdaKt.b(-2100927368, new Function3<SliderState, Composer, Integer, Unit>() { // from class: androidx.compose.material3.SliderKt$Slider$10
                                    @Override // kotlin.jvm.functions.Function3
                                    public final Object A(Object obj, Object obj2, Object obj3) {
                                        ((Number) obj3).intValue();
                                        OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                                        SliderDefaults.f7235a.a(mutableInteractionSource2, null, sliderColorsD, z2, 0L, (Composer) obj2, ImageMetadata.EDGE_MODE);
                                        return Unit.f71739a;
                                    }
                                }, gapComposerH);
                            }
                            if (i9 != 0) {
                                function3B2 = ComposableLambdaKt.b(-81224541, new Function3<SliderState, Composer, Integer, Unit>() { // from class: androidx.compose.material3.SliderKt$Slider$11
                                    @Override // kotlin.jvm.functions.Function3
                                    public final Object A(Object obj, Object obj2, Object obj3) {
                                        SliderState sliderState2 = (SliderState) obj;
                                        Composer composer2 = (Composer) obj2;
                                        int iIntValue = ((Number) obj3).intValue();
                                        OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                                        SliderDefaults.f7235a.b(sliderState2, null, z2, sliderColorsD, null, null, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, composer2, (iIntValue & 14) | 100663296, 242);
                                        return Unit.f71739a;
                                    }
                                }, gapComposerH);
                            } else {
                                function3B2 = function5;
                            }
                            modifier4 = dTFunctionNameModifier;
                            i11 = i19;
                            mutableInteractionSource4 = mutableInteractionSource2;
                        } else {
                            if (i12 != 0) {
                                dTFunctionNameModifier = new DTFunctionNameModifier("Slider");
                            } else {
                                dTFunctionNameModifier = modifier2;
                            }
                            if (i13 != 0) {
                                z2 = true;
                            }
                            SliderDefaults sliderDefaults5 = SliderDefaults.f7235a;
                            sliderColorsD = SliderDefaults.d(gapComposerH);
                            int i110 = i4 & (-7169);
                            if (i5 != 0) {
                                objX = gapComposerH.x();
                                if (objX == Composer.Companion.f7939a) {
                                    objX = InteractionSourceKt.a();
                                    gapComposerH.q(objX);
                                }
                                mutableInteractionSource2 = (MutableInteractionSource) objX;
                            }
                            if (i7 != 0) {
                                function3B = ComposableLambdaKt.b(-2100927368, new Function3<SliderState, Composer, Integer, Unit>() { // from class: androidx.compose.material3.SliderKt$Slider$10
                                    @Override // kotlin.jvm.functions.Function3
                                    public final Object A(Object obj, Object obj2, Object obj3) {
                                        ((Number) obj3).intValue();
                                        OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                                        SliderDefaults.f7235a.a(mutableInteractionSource2, null, sliderColorsD, z2, 0L, (Composer) obj2, ImageMetadata.EDGE_MODE);
                                        return Unit.f71739a;
                                    }
                                }, gapComposerH);
                            }
                            if (i9 != 0) {
                                function3B2 = ComposableLambdaKt.b(-81224541, new Function3<SliderState, Composer, Integer, Unit>() { // from class: androidx.compose.material3.SliderKt$Slider$11
                                    @Override // kotlin.jvm.functions.Function3
                                    public final Object A(Object obj, Object obj2, Object obj3) {
                                        SliderState sliderState2 = (SliderState) obj;
                                        Composer composer2 = (Composer) obj2;
                                        int iIntValue = ((Number) obj3).intValue();
                                        OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                                        SliderDefaults.f7235a.b(sliderState2, null, z2, sliderColorsD, null, null, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, composer2, (iIntValue & 14) | 100663296, 242);
                                        return Unit.f71739a;
                                    }
                                }, gapComposerH);
                            } else {
                                function3B2 = function5;
                            }
                            modifier4 = dTFunctionNameModifier;
                            i11 = i110;
                            mutableInteractionSource4 = mutableInteractionSource2;
                        }
                        gapComposerH.a0();
                        OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                        if (sliderState.f7262a >= 0) {
                            md.n("steps should be >= 0");
                            return;
                        }
                        int i111 = i11 >> 3;
                        Modifier modifier7 = modifier4;
                        c(modifier7, sliderState, z2, mutableInteractionSource4, function3B, function3B2, gapComposerH, (i11 & 896) | (i111 & 14) | ((i11 << 3) & 112) | (i111 & 7168) | (57344 & i111) | (i111 & ImageMetadata.JPEG_GPS_COORDINATES));
                        function7 = function3B2;
                        mutableInteractionSource3 = mutableInteractionSource4;
                        z4 = z2;
                        modifier3 = modifier7;
                        function6 = function3B;
                        sliderColors2 = sliderColorsD;
                    } else {
                        gapComposerH.D();
                        modifier3 = modifier2;
                        sliderColors2 = sliderColors;
                        z4 = z2;
                        mutableInteractionSource3 = mutableInteractionSource2;
                        function6 = function3B;
                        function7 = function5;
                    }
                    recomposeScopeImplB0 = gapComposerH.b0();
                    if (recomposeScopeImplB0 != null) {
                        recomposeScopeImplB0.d = new bg(sliderState, modifier3, z4, sliderColors2, mutableInteractionSource3, function6, function7, i2, i3, 5);
                    }
                }
                i4 |= 1572864;
                function5 = function4;
                modifier2 = modifierE;
                if ((599187 & i4) != 599186) {
                    z3 = true;
                } else {
                    z3 = false;
                }
                if (gapComposerH.p(i4 & 1, z3)) {
                    gapComposerH.y0();
                    if ((i2 & 1) != 0) {
                        if (i12 != 0) {
                            dTFunctionNameModifier = new DTFunctionNameModifier("Slider");
                        } else {
                            dTFunctionNameModifier = modifier2;
                        }
                        if (i13 != 0) {
                            z2 = true;
                        }
                        SliderDefaults sliderDefaults6 = SliderDefaults.f7235a;
                        sliderColorsD = SliderDefaults.d(gapComposerH);
                        int i112 = i4 & (-7169);
                        if (i5 != 0) {
                            objX = gapComposerH.x();
                            if (objX == Composer.Companion.f7939a) {
                                objX = InteractionSourceKt.a();
                                gapComposerH.q(objX);
                            }
                            mutableInteractionSource2 = (MutableInteractionSource) objX;
                        }
                        if (i7 != 0) {
                            function3B = ComposableLambdaKt.b(-2100927368, new Function3<SliderState, Composer, Integer, Unit>() { // from class: androidx.compose.material3.SliderKt$Slider$10
                                @Override // kotlin.jvm.functions.Function3
                                public final Object A(Object obj, Object obj2, Object obj3) {
                                    ((Number) obj3).intValue();
                                    OpaqueKey opaqueKey4 = ComposerKt.f7940a;
                                    SliderDefaults.f7235a.a(mutableInteractionSource2, null, sliderColorsD, z2, 0L, (Composer) obj2, ImageMetadata.EDGE_MODE);
                                    return Unit.f71739a;
                                }
                            }, gapComposerH);
                        }
                        if (i9 != 0) {
                            function3B2 = ComposableLambdaKt.b(-81224541, new Function3<SliderState, Composer, Integer, Unit>() { // from class: androidx.compose.material3.SliderKt$Slider$11
                                @Override // kotlin.jvm.functions.Function3
                                public final Object A(Object obj, Object obj2, Object obj3) {
                                    SliderState sliderState2 = (SliderState) obj;
                                    Composer composer2 = (Composer) obj2;
                                    int iIntValue = ((Number) obj3).intValue();
                                    OpaqueKey opaqueKey4 = ComposerKt.f7940a;
                                    SliderDefaults.f7235a.b(sliderState2, null, z2, sliderColorsD, null, null, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, composer2, (iIntValue & 14) | 100663296, 242);
                                    return Unit.f71739a;
                                }
                            }, gapComposerH);
                        } else {
                            function3B2 = function5;
                        }
                        modifier4 = dTFunctionNameModifier;
                        i11 = i112;
                        mutableInteractionSource4 = mutableInteractionSource2;
                    } else {
                        if (i12 != 0) {
                            dTFunctionNameModifier = new DTFunctionNameModifier("Slider");
                        } else {
                            dTFunctionNameModifier = modifier2;
                        }
                        if (i13 != 0) {
                            z2 = true;
                        }
                        SliderDefaults sliderDefaults7 = SliderDefaults.f7235a;
                        sliderColorsD = SliderDefaults.d(gapComposerH);
                        int i113 = i4 & (-7169);
                        if (i5 != 0) {
                            objX = gapComposerH.x();
                            if (objX == Composer.Companion.f7939a) {
                                objX = InteractionSourceKt.a();
                                gapComposerH.q(objX);
                            }
                            mutableInteractionSource2 = (MutableInteractionSource) objX;
                        }
                        if (i7 != 0) {
                            function3B = ComposableLambdaKt.b(-2100927368, new Function3<SliderState, Composer, Integer, Unit>() { // from class: androidx.compose.material3.SliderKt$Slider$10
                                @Override // kotlin.jvm.functions.Function3
                                public final Object A(Object obj, Object obj2, Object obj3) {
                                    ((Number) obj3).intValue();
                                    OpaqueKey opaqueKey4 = ComposerKt.f7940a;
                                    SliderDefaults.f7235a.a(mutableInteractionSource2, null, sliderColorsD, z2, 0L, (Composer) obj2, ImageMetadata.EDGE_MODE);
                                    return Unit.f71739a;
                                }
                            }, gapComposerH);
                        }
                        if (i9 != 0) {
                            function3B2 = ComposableLambdaKt.b(-81224541, new Function3<SliderState, Composer, Integer, Unit>() { // from class: androidx.compose.material3.SliderKt$Slider$11
                                @Override // kotlin.jvm.functions.Function3
                                public final Object A(Object obj, Object obj2, Object obj3) {
                                    SliderState sliderState2 = (SliderState) obj;
                                    Composer composer2 = (Composer) obj2;
                                    int iIntValue = ((Number) obj3).intValue();
                                    OpaqueKey opaqueKey4 = ComposerKt.f7940a;
                                    SliderDefaults.f7235a.b(sliderState2, null, z2, sliderColorsD, null, null, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, composer2, (iIntValue & 14) | 100663296, 242);
                                    return Unit.f71739a;
                                }
                            }, gapComposerH);
                        } else {
                            function3B2 = function5;
                        }
                        modifier4 = dTFunctionNameModifier;
                        i11 = i113;
                        mutableInteractionSource4 = mutableInteractionSource2;
                    }
                    gapComposerH.a0();
                    OpaqueKey opaqueKey4 = ComposerKt.f7940a;
                    if (sliderState.f7262a >= 0) {
                        md.n("steps should be >= 0");
                        return;
                    }
                    int i114 = i11 >> 3;
                    Modifier modifier8 = modifier4;
                    c(modifier8, sliderState, z2, mutableInteractionSource4, function3B, function3B2, gapComposerH, (i11 & 896) | (i114 & 14) | ((i11 << 3) & 112) | (i114 & 7168) | (57344 & i114) | (i114 & ImageMetadata.JPEG_GPS_COORDINATES));
                    function7 = function3B2;
                    mutableInteractionSource3 = mutableInteractionSource4;
                    z4 = z2;
                    modifier3 = modifier8;
                    function6 = function3B;
                    sliderColors2 = sliderColorsD;
                } else {
                    gapComposerH.D();
                    modifier3 = modifier2;
                    sliderColors2 = sliderColors;
                    z4 = z2;
                    mutableInteractionSource3 = mutableInteractionSource2;
                    function6 = function3B;
                    function7 = function5;
                }
                recomposeScopeImplB0 = gapComposerH.b0();
                if (recomposeScopeImplB0 != null) {
                    recomposeScopeImplB0.d = new bg(sliderState, modifier3, z4, sliderColors2, mutableInteractionSource3, function6, function7, i2, i3, 5);
                }
            }
            i4 |= 24576;
            mutableInteractionSource2 = mutableInteractionSource;
            i7 = i3 & 32;
            if (i7 != 0) {
                if ((196608 & i2) == 0) {
                    function3B = function3;
                    if (gapComposerH.y(function3B)) {
                        i8 = 131072;
                    } else {
                        i8 = 65536;
                    }
                    i4 |= i8;
                }
                i9 = i3 & 64;
                if (i9 != 0) {
                    if ((1572864 & i2) == 0) {
                        function5 = function4;
                        if (gapComposerH.y(function5)) {
                            i10 = 1048576;
                        } else {
                            i10 = 524288;
                        }
                        i4 |= i10;
                    }
                    modifier2 = modifierE;
                    if ((599187 & i4) != 599186) {
                        z3 = true;
                    } else {
                        z3 = false;
                    }
                    if (gapComposerH.p(i4 & 1, z3)) {
                        gapComposerH.y0();
                        if ((i2 & 1) != 0) {
                            if (i12 != 0) {
                                dTFunctionNameModifier = new DTFunctionNameModifier("Slider");
                            } else {
                                dTFunctionNameModifier = modifier2;
                            }
                            if (i13 != 0) {
                                z2 = true;
                            }
                            SliderDefaults sliderDefaults8 = SliderDefaults.f7235a;
                            sliderColorsD = SliderDefaults.d(gapComposerH);
                            int i115 = i4 & (-7169);
                            if (i5 != 0) {
                                objX = gapComposerH.x();
                                if (objX == Composer.Companion.f7939a) {
                                    objX = InteractionSourceKt.a();
                                    gapComposerH.q(objX);
                                }
                                mutableInteractionSource2 = (MutableInteractionSource) objX;
                            }
                            if (i7 != 0) {
                                function3B = ComposableLambdaKt.b(-2100927368, new Function3<SliderState, Composer, Integer, Unit>() { // from class: androidx.compose.material3.SliderKt$Slider$10
                                    @Override // kotlin.jvm.functions.Function3
                                    public final Object A(Object obj, Object obj2, Object obj3) {
                                        ((Number) obj3).intValue();
                                        OpaqueKey opaqueKey5 = ComposerKt.f7940a;
                                        SliderDefaults.f7235a.a(mutableInteractionSource2, null, sliderColorsD, z2, 0L, (Composer) obj2, ImageMetadata.EDGE_MODE);
                                        return Unit.f71739a;
                                    }
                                }, gapComposerH);
                            }
                            if (i9 != 0) {
                                function3B2 = ComposableLambdaKt.b(-81224541, new Function3<SliderState, Composer, Integer, Unit>() { // from class: androidx.compose.material3.SliderKt$Slider$11
                                    @Override // kotlin.jvm.functions.Function3
                                    public final Object A(Object obj, Object obj2, Object obj3) {
                                        SliderState sliderState2 = (SliderState) obj;
                                        Composer composer2 = (Composer) obj2;
                                        int iIntValue = ((Number) obj3).intValue();
                                        OpaqueKey opaqueKey5 = ComposerKt.f7940a;
                                        SliderDefaults.f7235a.b(sliderState2, null, z2, sliderColorsD, null, null, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, composer2, (iIntValue & 14) | 100663296, 242);
                                        return Unit.f71739a;
                                    }
                                }, gapComposerH);
                            } else {
                                function3B2 = function5;
                            }
                            modifier4 = dTFunctionNameModifier;
                            i11 = i115;
                            mutableInteractionSource4 = mutableInteractionSource2;
                        } else {
                            if (i12 != 0) {
                                dTFunctionNameModifier = new DTFunctionNameModifier("Slider");
                            } else {
                                dTFunctionNameModifier = modifier2;
                            }
                            if (i13 != 0) {
                                z2 = true;
                            }
                            SliderDefaults sliderDefaults9 = SliderDefaults.f7235a;
                            sliderColorsD = SliderDefaults.d(gapComposerH);
                            int i116 = i4 & (-7169);
                            if (i5 != 0) {
                                objX = gapComposerH.x();
                                if (objX == Composer.Companion.f7939a) {
                                    objX = InteractionSourceKt.a();
                                    gapComposerH.q(objX);
                                }
                                mutableInteractionSource2 = (MutableInteractionSource) objX;
                            }
                            if (i7 != 0) {
                                function3B = ComposableLambdaKt.b(-2100927368, new Function3<SliderState, Composer, Integer, Unit>() { // from class: androidx.compose.material3.SliderKt$Slider$10
                                    @Override // kotlin.jvm.functions.Function3
                                    public final Object A(Object obj, Object obj2, Object obj3) {
                                        ((Number) obj3).intValue();
                                        OpaqueKey opaqueKey5 = ComposerKt.f7940a;
                                        SliderDefaults.f7235a.a(mutableInteractionSource2, null, sliderColorsD, z2, 0L, (Composer) obj2, ImageMetadata.EDGE_MODE);
                                        return Unit.f71739a;
                                    }
                                }, gapComposerH);
                            }
                            if (i9 != 0) {
                                function3B2 = ComposableLambdaKt.b(-81224541, new Function3<SliderState, Composer, Integer, Unit>() { // from class: androidx.compose.material3.SliderKt$Slider$11
                                    @Override // kotlin.jvm.functions.Function3
                                    public final Object A(Object obj, Object obj2, Object obj3) {
                                        SliderState sliderState2 = (SliderState) obj;
                                        Composer composer2 = (Composer) obj2;
                                        int iIntValue = ((Number) obj3).intValue();
                                        OpaqueKey opaqueKey5 = ComposerKt.f7940a;
                                        SliderDefaults.f7235a.b(sliderState2, null, z2, sliderColorsD, null, null, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, composer2, (iIntValue & 14) | 100663296, 242);
                                        return Unit.f71739a;
                                    }
                                }, gapComposerH);
                            } else {
                                function3B2 = function5;
                            }
                            modifier4 = dTFunctionNameModifier;
                            i11 = i116;
                            mutableInteractionSource4 = mutableInteractionSource2;
                        }
                        gapComposerH.a0();
                        OpaqueKey opaqueKey5 = ComposerKt.f7940a;
                        if (sliderState.f7262a >= 0) {
                            md.n("steps should be >= 0");
                            return;
                        }
                        int i117 = i11 >> 3;
                        Modifier modifier9 = modifier4;
                        c(modifier9, sliderState, z2, mutableInteractionSource4, function3B, function3B2, gapComposerH, (i11 & 896) | (i117 & 14) | ((i11 << 3) & 112) | (i117 & 7168) | (57344 & i117) | (i117 & ImageMetadata.JPEG_GPS_COORDINATES));
                        function7 = function3B2;
                        mutableInteractionSource3 = mutableInteractionSource4;
                        z4 = z2;
                        modifier3 = modifier9;
                        function6 = function3B;
                        sliderColors2 = sliderColorsD;
                    } else {
                        gapComposerH.D();
                        modifier3 = modifier2;
                        sliderColors2 = sliderColors;
                        z4 = z2;
                        mutableInteractionSource3 = mutableInteractionSource2;
                        function6 = function3B;
                        function7 = function5;
                    }
                    recomposeScopeImplB0 = gapComposerH.b0();
                    if (recomposeScopeImplB0 != null) {
                        recomposeScopeImplB0.d = new bg(sliderState, modifier3, z4, sliderColors2, mutableInteractionSource3, function6, function7, i2, i3, 5);
                    }
                }
                i4 |= 1572864;
                function5 = function4;
                modifier2 = modifierE;
                if ((599187 & i4) != 599186) {
                    z3 = true;
                } else {
                    z3 = false;
                }
                if (gapComposerH.p(i4 & 1, z3)) {
                    gapComposerH.y0();
                    if ((i2 & 1) != 0) {
                        if (i12 != 0) {
                            dTFunctionNameModifier = new DTFunctionNameModifier("Slider");
                        } else {
                            dTFunctionNameModifier = modifier2;
                        }
                        if (i13 != 0) {
                            z2 = true;
                        }
                        SliderDefaults sliderDefaults10 = SliderDefaults.f7235a;
                        sliderColorsD = SliderDefaults.d(gapComposerH);
                        int i118 = i4 & (-7169);
                        if (i5 != 0) {
                            objX = gapComposerH.x();
                            if (objX == Composer.Companion.f7939a) {
                                objX = InteractionSourceKt.a();
                                gapComposerH.q(objX);
                            }
                            mutableInteractionSource2 = (MutableInteractionSource) objX;
                        }
                        if (i7 != 0) {
                            function3B = ComposableLambdaKt.b(-2100927368, new Function3<SliderState, Composer, Integer, Unit>() { // from class: androidx.compose.material3.SliderKt$Slider$10
                                @Override // kotlin.jvm.functions.Function3
                                public final Object A(Object obj, Object obj2, Object obj3) {
                                    ((Number) obj3).intValue();
                                    OpaqueKey opaqueKey6 = ComposerKt.f7940a;
                                    SliderDefaults.f7235a.a(mutableInteractionSource2, null, sliderColorsD, z2, 0L, (Composer) obj2, ImageMetadata.EDGE_MODE);
                                    return Unit.f71739a;
                                }
                            }, gapComposerH);
                        }
                        if (i9 != 0) {
                            function3B2 = ComposableLambdaKt.b(-81224541, new Function3<SliderState, Composer, Integer, Unit>() { // from class: androidx.compose.material3.SliderKt$Slider$11
                                @Override // kotlin.jvm.functions.Function3
                                public final Object A(Object obj, Object obj2, Object obj3) {
                                    SliderState sliderState2 = (SliderState) obj;
                                    Composer composer2 = (Composer) obj2;
                                    int iIntValue = ((Number) obj3).intValue();
                                    OpaqueKey opaqueKey6 = ComposerKt.f7940a;
                                    SliderDefaults.f7235a.b(sliderState2, null, z2, sliderColorsD, null, null, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, composer2, (iIntValue & 14) | 100663296, 242);
                                    return Unit.f71739a;
                                }
                            }, gapComposerH);
                        } else {
                            function3B2 = function5;
                        }
                        modifier4 = dTFunctionNameModifier;
                        i11 = i118;
                        mutableInteractionSource4 = mutableInteractionSource2;
                    } else {
                        if (i12 != 0) {
                            dTFunctionNameModifier = new DTFunctionNameModifier("Slider");
                        } else {
                            dTFunctionNameModifier = modifier2;
                        }
                        if (i13 != 0) {
                            z2 = true;
                        }
                        SliderDefaults sliderDefaults11 = SliderDefaults.f7235a;
                        sliderColorsD = SliderDefaults.d(gapComposerH);
                        int i119 = i4 & (-7169);
                        if (i5 != 0) {
                            objX = gapComposerH.x();
                            if (objX == Composer.Companion.f7939a) {
                                objX = InteractionSourceKt.a();
                                gapComposerH.q(objX);
                            }
                            mutableInteractionSource2 = (MutableInteractionSource) objX;
                        }
                        if (i7 != 0) {
                            function3B = ComposableLambdaKt.b(-2100927368, new Function3<SliderState, Composer, Integer, Unit>() { // from class: androidx.compose.material3.SliderKt$Slider$10
                                @Override // kotlin.jvm.functions.Function3
                                public final Object A(Object obj, Object obj2, Object obj3) {
                                    ((Number) obj3).intValue();
                                    OpaqueKey opaqueKey6 = ComposerKt.f7940a;
                                    SliderDefaults.f7235a.a(mutableInteractionSource2, null, sliderColorsD, z2, 0L, (Composer) obj2, ImageMetadata.EDGE_MODE);
                                    return Unit.f71739a;
                                }
                            }, gapComposerH);
                        }
                        if (i9 != 0) {
                            function3B2 = ComposableLambdaKt.b(-81224541, new Function3<SliderState, Composer, Integer, Unit>() { // from class: androidx.compose.material3.SliderKt$Slider$11
                                @Override // kotlin.jvm.functions.Function3
                                public final Object A(Object obj, Object obj2, Object obj3) {
                                    SliderState sliderState2 = (SliderState) obj;
                                    Composer composer2 = (Composer) obj2;
                                    int iIntValue = ((Number) obj3).intValue();
                                    OpaqueKey opaqueKey6 = ComposerKt.f7940a;
                                    SliderDefaults.f7235a.b(sliderState2, null, z2, sliderColorsD, null, null, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, composer2, (iIntValue & 14) | 100663296, 242);
                                    return Unit.f71739a;
                                }
                            }, gapComposerH);
                        } else {
                            function3B2 = function5;
                        }
                        modifier4 = dTFunctionNameModifier;
                        i11 = i119;
                        mutableInteractionSource4 = mutableInteractionSource2;
                    }
                    gapComposerH.a0();
                    OpaqueKey opaqueKey6 = ComposerKt.f7940a;
                    if (sliderState.f7262a >= 0) {
                        md.n("steps should be >= 0");
                        return;
                    }
                    int i1110 = i11 >> 3;
                    Modifier modifier10 = modifier4;
                    c(modifier10, sliderState, z2, mutableInteractionSource4, function3B, function3B2, gapComposerH, (i11 & 896) | (i1110 & 14) | ((i11 << 3) & 112) | (i1110 & 7168) | (57344 & i1110) | (i1110 & ImageMetadata.JPEG_GPS_COORDINATES));
                    function7 = function3B2;
                    mutableInteractionSource3 = mutableInteractionSource4;
                    z4 = z2;
                    modifier3 = modifier10;
                    function6 = function3B;
                    sliderColors2 = sliderColorsD;
                } else {
                    gapComposerH.D();
                    modifier3 = modifier2;
                    sliderColors2 = sliderColors;
                    z4 = z2;
                    mutableInteractionSource3 = mutableInteractionSource2;
                    function6 = function3B;
                    function7 = function5;
                }
                recomposeScopeImplB0 = gapComposerH.b0();
                if (recomposeScopeImplB0 != null) {
                    recomposeScopeImplB0.d = new bg(sliderState, modifier3, z4, sliderColors2, mutableInteractionSource3, function6, function7, i2, i3, 5);
                }
            }
            i4 |= ImageMetadata.EDGE_MODE;
            function3B = function3;
            i9 = i3 & 64;
            if (i9 != 0) {
                if ((1572864 & i2) == 0) {
                    function5 = function4;
                    if (gapComposerH.y(function5)) {
                        i10 = 1048576;
                    } else {
                        i10 = 524288;
                    }
                    i4 |= i10;
                }
                modifier2 = modifierE;
                if ((599187 & i4) != 599186) {
                    z3 = true;
                } else {
                    z3 = false;
                }
                if (gapComposerH.p(i4 & 1, z3)) {
                    gapComposerH.y0();
                    if ((i2 & 1) != 0) {
                        if (i12 != 0) {
                            dTFunctionNameModifier = new DTFunctionNameModifier("Slider");
                        } else {
                            dTFunctionNameModifier = modifier2;
                        }
                        if (i13 != 0) {
                            z2 = true;
                        }
                        SliderDefaults sliderDefaults12 = SliderDefaults.f7235a;
                        sliderColorsD = SliderDefaults.d(gapComposerH);
                        int i1111 = i4 & (-7169);
                        if (i5 != 0) {
                            objX = gapComposerH.x();
                            if (objX == Composer.Companion.f7939a) {
                                objX = InteractionSourceKt.a();
                                gapComposerH.q(objX);
                            }
                            mutableInteractionSource2 = (MutableInteractionSource) objX;
                        }
                        if (i7 != 0) {
                            function3B = ComposableLambdaKt.b(-2100927368, new Function3<SliderState, Composer, Integer, Unit>() { // from class: androidx.compose.material3.SliderKt$Slider$10
                                @Override // kotlin.jvm.functions.Function3
                                public final Object A(Object obj, Object obj2, Object obj3) {
                                    ((Number) obj3).intValue();
                                    OpaqueKey opaqueKey7 = ComposerKt.f7940a;
                                    SliderDefaults.f7235a.a(mutableInteractionSource2, null, sliderColorsD, z2, 0L, (Composer) obj2, ImageMetadata.EDGE_MODE);
                                    return Unit.f71739a;
                                }
                            }, gapComposerH);
                        }
                        if (i9 != 0) {
                            function3B2 = ComposableLambdaKt.b(-81224541, new Function3<SliderState, Composer, Integer, Unit>() { // from class: androidx.compose.material3.SliderKt$Slider$11
                                @Override // kotlin.jvm.functions.Function3
                                public final Object A(Object obj, Object obj2, Object obj3) {
                                    SliderState sliderState2 = (SliderState) obj;
                                    Composer composer2 = (Composer) obj2;
                                    int iIntValue = ((Number) obj3).intValue();
                                    OpaqueKey opaqueKey7 = ComposerKt.f7940a;
                                    SliderDefaults.f7235a.b(sliderState2, null, z2, sliderColorsD, null, null, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, composer2, (iIntValue & 14) | 100663296, 242);
                                    return Unit.f71739a;
                                }
                            }, gapComposerH);
                        } else {
                            function3B2 = function5;
                        }
                        modifier4 = dTFunctionNameModifier;
                        i11 = i1111;
                        mutableInteractionSource4 = mutableInteractionSource2;
                    } else {
                        if (i12 != 0) {
                            dTFunctionNameModifier = new DTFunctionNameModifier("Slider");
                        } else {
                            dTFunctionNameModifier = modifier2;
                        }
                        if (i13 != 0) {
                            z2 = true;
                        }
                        SliderDefaults sliderDefaults13 = SliderDefaults.f7235a;
                        sliderColorsD = SliderDefaults.d(gapComposerH);
                        int i1112 = i4 & (-7169);
                        if (i5 != 0) {
                            objX = gapComposerH.x();
                            if (objX == Composer.Companion.f7939a) {
                                objX = InteractionSourceKt.a();
                                gapComposerH.q(objX);
                            }
                            mutableInteractionSource2 = (MutableInteractionSource) objX;
                        }
                        if (i7 != 0) {
                            function3B = ComposableLambdaKt.b(-2100927368, new Function3<SliderState, Composer, Integer, Unit>() { // from class: androidx.compose.material3.SliderKt$Slider$10
                                @Override // kotlin.jvm.functions.Function3
                                public final Object A(Object obj, Object obj2, Object obj3) {
                                    ((Number) obj3).intValue();
                                    OpaqueKey opaqueKey7 = ComposerKt.f7940a;
                                    SliderDefaults.f7235a.a(mutableInteractionSource2, null, sliderColorsD, z2, 0L, (Composer) obj2, ImageMetadata.EDGE_MODE);
                                    return Unit.f71739a;
                                }
                            }, gapComposerH);
                        }
                        if (i9 != 0) {
                            function3B2 = ComposableLambdaKt.b(-81224541, new Function3<SliderState, Composer, Integer, Unit>() { // from class: androidx.compose.material3.SliderKt$Slider$11
                                @Override // kotlin.jvm.functions.Function3
                                public final Object A(Object obj, Object obj2, Object obj3) {
                                    SliderState sliderState2 = (SliderState) obj;
                                    Composer composer2 = (Composer) obj2;
                                    int iIntValue = ((Number) obj3).intValue();
                                    OpaqueKey opaqueKey7 = ComposerKt.f7940a;
                                    SliderDefaults.f7235a.b(sliderState2, null, z2, sliderColorsD, null, null, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, composer2, (iIntValue & 14) | 100663296, 242);
                                    return Unit.f71739a;
                                }
                            }, gapComposerH);
                        } else {
                            function3B2 = function5;
                        }
                        modifier4 = dTFunctionNameModifier;
                        i11 = i1112;
                        mutableInteractionSource4 = mutableInteractionSource2;
                    }
                    gapComposerH.a0();
                    OpaqueKey opaqueKey7 = ComposerKt.f7940a;
                    if (sliderState.f7262a >= 0) {
                        md.n("steps should be >= 0");
                        return;
                    }
                    int i1113 = i11 >> 3;
                    Modifier modifier11 = modifier4;
                    c(modifier11, sliderState, z2, mutableInteractionSource4, function3B, function3B2, gapComposerH, (i11 & 896) | (i1113 & 14) | ((i11 << 3) & 112) | (i1113 & 7168) | (57344 & i1113) | (i1113 & ImageMetadata.JPEG_GPS_COORDINATES));
                    function7 = function3B2;
                    mutableInteractionSource3 = mutableInteractionSource4;
                    z4 = z2;
                    modifier3 = modifier11;
                    function6 = function3B;
                    sliderColors2 = sliderColorsD;
                } else {
                    gapComposerH.D();
                    modifier3 = modifier2;
                    sliderColors2 = sliderColors;
                    z4 = z2;
                    mutableInteractionSource3 = mutableInteractionSource2;
                    function6 = function3B;
                    function7 = function5;
                }
                recomposeScopeImplB0 = gapComposerH.b0();
                if (recomposeScopeImplB0 != null) {
                    recomposeScopeImplB0.d = new bg(sliderState, modifier3, z4, sliderColors2, mutableInteractionSource3, function6, function7, i2, i3, 5);
                }
            }
            i4 |= 1572864;
            function5 = function4;
            modifier2 = modifierE;
            if ((599187 & i4) != 599186) {
                z3 = true;
            } else {
                z3 = false;
            }
            if (gapComposerH.p(i4 & 1, z3)) {
                gapComposerH.y0();
                if ((i2 & 1) != 0) {
                    if (i12 != 0) {
                        dTFunctionNameModifier = new DTFunctionNameModifier("Slider");
                    } else {
                        dTFunctionNameModifier = modifier2;
                    }
                    if (i13 != 0) {
                        z2 = true;
                    }
                    SliderDefaults sliderDefaults14 = SliderDefaults.f7235a;
                    sliderColorsD = SliderDefaults.d(gapComposerH);
                    int i1114 = i4 & (-7169);
                    if (i5 != 0) {
                        objX = gapComposerH.x();
                        if (objX == Composer.Companion.f7939a) {
                            objX = InteractionSourceKt.a();
                            gapComposerH.q(objX);
                        }
                        mutableInteractionSource2 = (MutableInteractionSource) objX;
                    }
                    if (i7 != 0) {
                        function3B = ComposableLambdaKt.b(-2100927368, new Function3<SliderState, Composer, Integer, Unit>() { // from class: androidx.compose.material3.SliderKt$Slider$10
                            @Override // kotlin.jvm.functions.Function3
                            public final Object A(Object obj, Object obj2, Object obj3) {
                                ((Number) obj3).intValue();
                                OpaqueKey opaqueKey8 = ComposerKt.f7940a;
                                SliderDefaults.f7235a.a(mutableInteractionSource2, null, sliderColorsD, z2, 0L, (Composer) obj2, ImageMetadata.EDGE_MODE);
                                return Unit.f71739a;
                            }
                        }, gapComposerH);
                    }
                    if (i9 != 0) {
                        function3B2 = ComposableLambdaKt.b(-81224541, new Function3<SliderState, Composer, Integer, Unit>() { // from class: androidx.compose.material3.SliderKt$Slider$11
                            @Override // kotlin.jvm.functions.Function3
                            public final Object A(Object obj, Object obj2, Object obj3) {
                                SliderState sliderState2 = (SliderState) obj;
                                Composer composer2 = (Composer) obj2;
                                int iIntValue = ((Number) obj3).intValue();
                                OpaqueKey opaqueKey8 = ComposerKt.f7940a;
                                SliderDefaults.f7235a.b(sliderState2, null, z2, sliderColorsD, null, null, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, composer2, (iIntValue & 14) | 100663296, 242);
                                return Unit.f71739a;
                            }
                        }, gapComposerH);
                    } else {
                        function3B2 = function5;
                    }
                    modifier4 = dTFunctionNameModifier;
                    i11 = i1114;
                    mutableInteractionSource4 = mutableInteractionSource2;
                } else {
                    if (i12 != 0) {
                        dTFunctionNameModifier = new DTFunctionNameModifier("Slider");
                    } else {
                        dTFunctionNameModifier = modifier2;
                    }
                    if (i13 != 0) {
                        z2 = true;
                    }
                    SliderDefaults sliderDefaults15 = SliderDefaults.f7235a;
                    sliderColorsD = SliderDefaults.d(gapComposerH);
                    int i1115 = i4 & (-7169);
                    if (i5 != 0) {
                        objX = gapComposerH.x();
                        if (objX == Composer.Companion.f7939a) {
                            objX = InteractionSourceKt.a();
                            gapComposerH.q(objX);
                        }
                        mutableInteractionSource2 = (MutableInteractionSource) objX;
                    }
                    if (i7 != 0) {
                        function3B = ComposableLambdaKt.b(-2100927368, new Function3<SliderState, Composer, Integer, Unit>() { // from class: androidx.compose.material3.SliderKt$Slider$10
                            @Override // kotlin.jvm.functions.Function3
                            public final Object A(Object obj, Object obj2, Object obj3) {
                                ((Number) obj3).intValue();
                                OpaqueKey opaqueKey8 = ComposerKt.f7940a;
                                SliderDefaults.f7235a.a(mutableInteractionSource2, null, sliderColorsD, z2, 0L, (Composer) obj2, ImageMetadata.EDGE_MODE);
                                return Unit.f71739a;
                            }
                        }, gapComposerH);
                    }
                    if (i9 != 0) {
                        function3B2 = ComposableLambdaKt.b(-81224541, new Function3<SliderState, Composer, Integer, Unit>() { // from class: androidx.compose.material3.SliderKt$Slider$11
                            @Override // kotlin.jvm.functions.Function3
                            public final Object A(Object obj, Object obj2, Object obj3) {
                                SliderState sliderState2 = (SliderState) obj;
                                Composer composer2 = (Composer) obj2;
                                int iIntValue = ((Number) obj3).intValue();
                                OpaqueKey opaqueKey8 = ComposerKt.f7940a;
                                SliderDefaults.f7235a.b(sliderState2, null, z2, sliderColorsD, null, null, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, composer2, (iIntValue & 14) | 100663296, 242);
                                return Unit.f71739a;
                            }
                        }, gapComposerH);
                    } else {
                        function3B2 = function5;
                    }
                    modifier4 = dTFunctionNameModifier;
                    i11 = i1115;
                    mutableInteractionSource4 = mutableInteractionSource2;
                }
                gapComposerH.a0();
                OpaqueKey opaqueKey8 = ComposerKt.f7940a;
                if (sliderState.f7262a >= 0) {
                    md.n("steps should be >= 0");
                    return;
                }
                int i1116 = i11 >> 3;
                Modifier modifier12 = modifier4;
                c(modifier12, sliderState, z2, mutableInteractionSource4, function3B, function3B2, gapComposerH, (i11 & 896) | (i1116 & 14) | ((i11 << 3) & 112) | (i1116 & 7168) | (57344 & i1116) | (i1116 & ImageMetadata.JPEG_GPS_COORDINATES));
                function7 = function3B2;
                mutableInteractionSource3 = mutableInteractionSource4;
                z4 = z2;
                modifier3 = modifier12;
                function6 = function3B;
                sliderColors2 = sliderColorsD;
            } else {
                gapComposerH.D();
                modifier3 = modifier2;
                sliderColors2 = sliderColors;
                z4 = z2;
                mutableInteractionSource3 = mutableInteractionSource2;
                function6 = function3B;
                function7 = function5;
            }
            recomposeScopeImplB0 = gapComposerH.b0();
            if (recomposeScopeImplB0 != null) {
                recomposeScopeImplB0.d = new bg(sliderState, modifier3, z4, sliderColors2, mutableInteractionSource3, function6, function7, i2, i3, 5);
            }
        }
        i4 |= KyberEngine.KyberPolyBytes;
        z2 = z;
        if ((i2 & 3072) == 0) {
            i4 |= 1024;
        }
        i5 = i3 & 16;
        if (i5 != 0) {
            if ((i2 & 24576) == 0) {
                mutableInteractionSource2 = mutableInteractionSource;
                if (gapComposerH.K(mutableInteractionSource2)) {
                    i6 = 16384;
                } else {
                    i6 = 8192;
                }
                i4 |= i6;
            }
            i7 = i3 & 32;
            if (i7 != 0) {
                if ((196608 & i2) == 0) {
                    function3B = function3;
                    if (gapComposerH.y(function3B)) {
                        i8 = 131072;
                    } else {
                        i8 = 65536;
                    }
                    i4 |= i8;
                }
                i9 = i3 & 64;
                if (i9 != 0) {
                    if ((1572864 & i2) == 0) {
                        function5 = function4;
                        if (gapComposerH.y(function5)) {
                            i10 = 1048576;
                        } else {
                            i10 = 524288;
                        }
                        i4 |= i10;
                    }
                    modifier2 = modifierE;
                    if ((599187 & i4) != 599186) {
                        z3 = true;
                    } else {
                        z3 = false;
                    }
                    if (gapComposerH.p(i4 & 1, z3)) {
                        gapComposerH.y0();
                        if ((i2 & 1) != 0) {
                            if (i12 != 0) {
                                dTFunctionNameModifier = new DTFunctionNameModifier("Slider");
                            } else {
                                dTFunctionNameModifier = modifier2;
                            }
                            if (i13 != 0) {
                                z2 = true;
                            }
                            SliderDefaults sliderDefaults16 = SliderDefaults.f7235a;
                            sliderColorsD = SliderDefaults.d(gapComposerH);
                            int i1117 = i4 & (-7169);
                            if (i5 != 0) {
                                objX = gapComposerH.x();
                                if (objX == Composer.Companion.f7939a) {
                                    objX = InteractionSourceKt.a();
                                    gapComposerH.q(objX);
                                }
                                mutableInteractionSource2 = (MutableInteractionSource) objX;
                            }
                            if (i7 != 0) {
                                function3B = ComposableLambdaKt.b(-2100927368, new Function3<SliderState, Composer, Integer, Unit>() { // from class: androidx.compose.material3.SliderKt$Slider$10
                                    @Override // kotlin.jvm.functions.Function3
                                    public final Object A(Object obj, Object obj2, Object obj3) {
                                        ((Number) obj3).intValue();
                                        OpaqueKey opaqueKey9 = ComposerKt.f7940a;
                                        SliderDefaults.f7235a.a(mutableInteractionSource2, null, sliderColorsD, z2, 0L, (Composer) obj2, ImageMetadata.EDGE_MODE);
                                        return Unit.f71739a;
                                    }
                                }, gapComposerH);
                            }
                            if (i9 != 0) {
                                function3B2 = ComposableLambdaKt.b(-81224541, new Function3<SliderState, Composer, Integer, Unit>() { // from class: androidx.compose.material3.SliderKt$Slider$11
                                    @Override // kotlin.jvm.functions.Function3
                                    public final Object A(Object obj, Object obj2, Object obj3) {
                                        SliderState sliderState2 = (SliderState) obj;
                                        Composer composer2 = (Composer) obj2;
                                        int iIntValue = ((Number) obj3).intValue();
                                        OpaqueKey opaqueKey9 = ComposerKt.f7940a;
                                        SliderDefaults.f7235a.b(sliderState2, null, z2, sliderColorsD, null, null, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, composer2, (iIntValue & 14) | 100663296, 242);
                                        return Unit.f71739a;
                                    }
                                }, gapComposerH);
                            } else {
                                function3B2 = function5;
                            }
                            modifier4 = dTFunctionNameModifier;
                            i11 = i1117;
                            mutableInteractionSource4 = mutableInteractionSource2;
                        } else {
                            if (i12 != 0) {
                                dTFunctionNameModifier = new DTFunctionNameModifier("Slider");
                            } else {
                                dTFunctionNameModifier = modifier2;
                            }
                            if (i13 != 0) {
                                z2 = true;
                            }
                            SliderDefaults sliderDefaults17 = SliderDefaults.f7235a;
                            sliderColorsD = SliderDefaults.d(gapComposerH);
                            int i1118 = i4 & (-7169);
                            if (i5 != 0) {
                                objX = gapComposerH.x();
                                if (objX == Composer.Companion.f7939a) {
                                    objX = InteractionSourceKt.a();
                                    gapComposerH.q(objX);
                                }
                                mutableInteractionSource2 = (MutableInteractionSource) objX;
                            }
                            if (i7 != 0) {
                                function3B = ComposableLambdaKt.b(-2100927368, new Function3<SliderState, Composer, Integer, Unit>() { // from class: androidx.compose.material3.SliderKt$Slider$10
                                    @Override // kotlin.jvm.functions.Function3
                                    public final Object A(Object obj, Object obj2, Object obj3) {
                                        ((Number) obj3).intValue();
                                        OpaqueKey opaqueKey9 = ComposerKt.f7940a;
                                        SliderDefaults.f7235a.a(mutableInteractionSource2, null, sliderColorsD, z2, 0L, (Composer) obj2, ImageMetadata.EDGE_MODE);
                                        return Unit.f71739a;
                                    }
                                }, gapComposerH);
                            }
                            if (i9 != 0) {
                                function3B2 = ComposableLambdaKt.b(-81224541, new Function3<SliderState, Composer, Integer, Unit>() { // from class: androidx.compose.material3.SliderKt$Slider$11
                                    @Override // kotlin.jvm.functions.Function3
                                    public final Object A(Object obj, Object obj2, Object obj3) {
                                        SliderState sliderState2 = (SliderState) obj;
                                        Composer composer2 = (Composer) obj2;
                                        int iIntValue = ((Number) obj3).intValue();
                                        OpaqueKey opaqueKey9 = ComposerKt.f7940a;
                                        SliderDefaults.f7235a.b(sliderState2, null, z2, sliderColorsD, null, null, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, composer2, (iIntValue & 14) | 100663296, 242);
                                        return Unit.f71739a;
                                    }
                                }, gapComposerH);
                            } else {
                                function3B2 = function5;
                            }
                            modifier4 = dTFunctionNameModifier;
                            i11 = i1118;
                            mutableInteractionSource4 = mutableInteractionSource2;
                        }
                        gapComposerH.a0();
                        OpaqueKey opaqueKey9 = ComposerKt.f7940a;
                        if (sliderState.f7262a >= 0) {
                            md.n("steps should be >= 0");
                            return;
                        }
                        int i1119 = i11 >> 3;
                        Modifier modifier13 = modifier4;
                        c(modifier13, sliderState, z2, mutableInteractionSource4, function3B, function3B2, gapComposerH, (i11 & 896) | (i1119 & 14) | ((i11 << 3) & 112) | (i1119 & 7168) | (57344 & i1119) | (i1119 & ImageMetadata.JPEG_GPS_COORDINATES));
                        function7 = function3B2;
                        mutableInteractionSource3 = mutableInteractionSource4;
                        z4 = z2;
                        modifier3 = modifier13;
                        function6 = function3B;
                        sliderColors2 = sliderColorsD;
                    } else {
                        gapComposerH.D();
                        modifier3 = modifier2;
                        sliderColors2 = sliderColors;
                        z4 = z2;
                        mutableInteractionSource3 = mutableInteractionSource2;
                        function6 = function3B;
                        function7 = function5;
                    }
                    recomposeScopeImplB0 = gapComposerH.b0();
                    if (recomposeScopeImplB0 != null) {
                        recomposeScopeImplB0.d = new bg(sliderState, modifier3, z4, sliderColors2, mutableInteractionSource3, function6, function7, i2, i3, 5);
                    }
                }
                i4 |= 1572864;
                function5 = function4;
                modifier2 = modifierE;
                if ((599187 & i4) != 599186) {
                    z3 = true;
                } else {
                    z3 = false;
                }
                if (gapComposerH.p(i4 & 1, z3)) {
                    gapComposerH.y0();
                    if ((i2 & 1) != 0) {
                        if (i12 != 0) {
                            dTFunctionNameModifier = new DTFunctionNameModifier("Slider");
                        } else {
                            dTFunctionNameModifier = modifier2;
                        }
                        if (i13 != 0) {
                            z2 = true;
                        }
                        SliderDefaults sliderDefaults18 = SliderDefaults.f7235a;
                        sliderColorsD = SliderDefaults.d(gapComposerH);
                        int i11110 = i4 & (-7169);
                        if (i5 != 0) {
                            objX = gapComposerH.x();
                            if (objX == Composer.Companion.f7939a) {
                                objX = InteractionSourceKt.a();
                                gapComposerH.q(objX);
                            }
                            mutableInteractionSource2 = (MutableInteractionSource) objX;
                        }
                        if (i7 != 0) {
                            function3B = ComposableLambdaKt.b(-2100927368, new Function3<SliderState, Composer, Integer, Unit>() { // from class: androidx.compose.material3.SliderKt$Slider$10
                                @Override // kotlin.jvm.functions.Function3
                                public final Object A(Object obj, Object obj2, Object obj3) {
                                    ((Number) obj3).intValue();
                                    OpaqueKey opaqueKey10 = ComposerKt.f7940a;
                                    SliderDefaults.f7235a.a(mutableInteractionSource2, null, sliderColorsD, z2, 0L, (Composer) obj2, ImageMetadata.EDGE_MODE);
                                    return Unit.f71739a;
                                }
                            }, gapComposerH);
                        }
                        if (i9 != 0) {
                            function3B2 = ComposableLambdaKt.b(-81224541, new Function3<SliderState, Composer, Integer, Unit>() { // from class: androidx.compose.material3.SliderKt$Slider$11
                                @Override // kotlin.jvm.functions.Function3
                                public final Object A(Object obj, Object obj2, Object obj3) {
                                    SliderState sliderState2 = (SliderState) obj;
                                    Composer composer2 = (Composer) obj2;
                                    int iIntValue = ((Number) obj3).intValue();
                                    OpaqueKey opaqueKey10 = ComposerKt.f7940a;
                                    SliderDefaults.f7235a.b(sliderState2, null, z2, sliderColorsD, null, null, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, composer2, (iIntValue & 14) | 100663296, 242);
                                    return Unit.f71739a;
                                }
                            }, gapComposerH);
                        } else {
                            function3B2 = function5;
                        }
                        modifier4 = dTFunctionNameModifier;
                        i11 = i11110;
                        mutableInteractionSource4 = mutableInteractionSource2;
                    } else {
                        if (i12 != 0) {
                            dTFunctionNameModifier = new DTFunctionNameModifier("Slider");
                        } else {
                            dTFunctionNameModifier = modifier2;
                        }
                        if (i13 != 0) {
                            z2 = true;
                        }
                        SliderDefaults sliderDefaults19 = SliderDefaults.f7235a;
                        sliderColorsD = SliderDefaults.d(gapComposerH);
                        int i11111 = i4 & (-7169);
                        if (i5 != 0) {
                            objX = gapComposerH.x();
                            if (objX == Composer.Companion.f7939a) {
                                objX = InteractionSourceKt.a();
                                gapComposerH.q(objX);
                            }
                            mutableInteractionSource2 = (MutableInteractionSource) objX;
                        }
                        if (i7 != 0) {
                            function3B = ComposableLambdaKt.b(-2100927368, new Function3<SliderState, Composer, Integer, Unit>() { // from class: androidx.compose.material3.SliderKt$Slider$10
                                @Override // kotlin.jvm.functions.Function3
                                public final Object A(Object obj, Object obj2, Object obj3) {
                                    ((Number) obj3).intValue();
                                    OpaqueKey opaqueKey10 = ComposerKt.f7940a;
                                    SliderDefaults.f7235a.a(mutableInteractionSource2, null, sliderColorsD, z2, 0L, (Composer) obj2, ImageMetadata.EDGE_MODE);
                                    return Unit.f71739a;
                                }
                            }, gapComposerH);
                        }
                        if (i9 != 0) {
                            function3B2 = ComposableLambdaKt.b(-81224541, new Function3<SliderState, Composer, Integer, Unit>() { // from class: androidx.compose.material3.SliderKt$Slider$11
                                @Override // kotlin.jvm.functions.Function3
                                public final Object A(Object obj, Object obj2, Object obj3) {
                                    SliderState sliderState2 = (SliderState) obj;
                                    Composer composer2 = (Composer) obj2;
                                    int iIntValue = ((Number) obj3).intValue();
                                    OpaqueKey opaqueKey10 = ComposerKt.f7940a;
                                    SliderDefaults.f7235a.b(sliderState2, null, z2, sliderColorsD, null, null, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, composer2, (iIntValue & 14) | 100663296, 242);
                                    return Unit.f71739a;
                                }
                            }, gapComposerH);
                        } else {
                            function3B2 = function5;
                        }
                        modifier4 = dTFunctionNameModifier;
                        i11 = i11111;
                        mutableInteractionSource4 = mutableInteractionSource2;
                    }
                    gapComposerH.a0();
                    OpaqueKey opaqueKey10 = ComposerKt.f7940a;
                    if (sliderState.f7262a >= 0) {
                        md.n("steps should be >= 0");
                        return;
                    }
                    int i11112 = i11 >> 3;
                    Modifier modifier14 = modifier4;
                    c(modifier14, sliderState, z2, mutableInteractionSource4, function3B, function3B2, gapComposerH, (i11 & 896) | (i11112 & 14) | ((i11 << 3) & 112) | (i11112 & 7168) | (57344 & i11112) | (i11112 & ImageMetadata.JPEG_GPS_COORDINATES));
                    function7 = function3B2;
                    mutableInteractionSource3 = mutableInteractionSource4;
                    z4 = z2;
                    modifier3 = modifier14;
                    function6 = function3B;
                    sliderColors2 = sliderColorsD;
                } else {
                    gapComposerH.D();
                    modifier3 = modifier2;
                    sliderColors2 = sliderColors;
                    z4 = z2;
                    mutableInteractionSource3 = mutableInteractionSource2;
                    function6 = function3B;
                    function7 = function5;
                }
                recomposeScopeImplB0 = gapComposerH.b0();
                if (recomposeScopeImplB0 != null) {
                    recomposeScopeImplB0.d = new bg(sliderState, modifier3, z4, sliderColors2, mutableInteractionSource3, function6, function7, i2, i3, 5);
                }
            }
            i4 |= ImageMetadata.EDGE_MODE;
            function3B = function3;
            i9 = i3 & 64;
            if (i9 != 0) {
                if ((1572864 & i2) == 0) {
                    function5 = function4;
                    if (gapComposerH.y(function5)) {
                        i10 = 1048576;
                    } else {
                        i10 = 524288;
                    }
                    i4 |= i10;
                }
                modifier2 = modifierE;
                if ((599187 & i4) != 599186) {
                    z3 = true;
                } else {
                    z3 = false;
                }
                if (gapComposerH.p(i4 & 1, z3)) {
                    gapComposerH.y0();
                    if ((i2 & 1) != 0) {
                        if (i12 != 0) {
                            dTFunctionNameModifier = new DTFunctionNameModifier("Slider");
                        } else {
                            dTFunctionNameModifier = modifier2;
                        }
                        if (i13 != 0) {
                            z2 = true;
                        }
                        SliderDefaults sliderDefaults110 = SliderDefaults.f7235a;
                        sliderColorsD = SliderDefaults.d(gapComposerH);
                        int i11113 = i4 & (-7169);
                        if (i5 != 0) {
                            objX = gapComposerH.x();
                            if (objX == Composer.Companion.f7939a) {
                                objX = InteractionSourceKt.a();
                                gapComposerH.q(objX);
                            }
                            mutableInteractionSource2 = (MutableInteractionSource) objX;
                        }
                        if (i7 != 0) {
                            function3B = ComposableLambdaKt.b(-2100927368, new Function3<SliderState, Composer, Integer, Unit>() { // from class: androidx.compose.material3.SliderKt$Slider$10
                                @Override // kotlin.jvm.functions.Function3
                                public final Object A(Object obj, Object obj2, Object obj3) {
                                    ((Number) obj3).intValue();
                                    OpaqueKey opaqueKey11 = ComposerKt.f7940a;
                                    SliderDefaults.f7235a.a(mutableInteractionSource2, null, sliderColorsD, z2, 0L, (Composer) obj2, ImageMetadata.EDGE_MODE);
                                    return Unit.f71739a;
                                }
                            }, gapComposerH);
                        }
                        if (i9 != 0) {
                            function3B2 = ComposableLambdaKt.b(-81224541, new Function3<SliderState, Composer, Integer, Unit>() { // from class: androidx.compose.material3.SliderKt$Slider$11
                                @Override // kotlin.jvm.functions.Function3
                                public final Object A(Object obj, Object obj2, Object obj3) {
                                    SliderState sliderState2 = (SliderState) obj;
                                    Composer composer2 = (Composer) obj2;
                                    int iIntValue = ((Number) obj3).intValue();
                                    OpaqueKey opaqueKey11 = ComposerKt.f7940a;
                                    SliderDefaults.f7235a.b(sliderState2, null, z2, sliderColorsD, null, null, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, composer2, (iIntValue & 14) | 100663296, 242);
                                    return Unit.f71739a;
                                }
                            }, gapComposerH);
                        } else {
                            function3B2 = function5;
                        }
                        modifier4 = dTFunctionNameModifier;
                        i11 = i11113;
                        mutableInteractionSource4 = mutableInteractionSource2;
                    } else {
                        if (i12 != 0) {
                            dTFunctionNameModifier = new DTFunctionNameModifier("Slider");
                        } else {
                            dTFunctionNameModifier = modifier2;
                        }
                        if (i13 != 0) {
                            z2 = true;
                        }
                        SliderDefaults sliderDefaults111 = SliderDefaults.f7235a;
                        sliderColorsD = SliderDefaults.d(gapComposerH);
                        int i11114 = i4 & (-7169);
                        if (i5 != 0) {
                            objX = gapComposerH.x();
                            if (objX == Composer.Companion.f7939a) {
                                objX = InteractionSourceKt.a();
                                gapComposerH.q(objX);
                            }
                            mutableInteractionSource2 = (MutableInteractionSource) objX;
                        }
                        if (i7 != 0) {
                            function3B = ComposableLambdaKt.b(-2100927368, new Function3<SliderState, Composer, Integer, Unit>() { // from class: androidx.compose.material3.SliderKt$Slider$10
                                @Override // kotlin.jvm.functions.Function3
                                public final Object A(Object obj, Object obj2, Object obj3) {
                                    ((Number) obj3).intValue();
                                    OpaqueKey opaqueKey11 = ComposerKt.f7940a;
                                    SliderDefaults.f7235a.a(mutableInteractionSource2, null, sliderColorsD, z2, 0L, (Composer) obj2, ImageMetadata.EDGE_MODE);
                                    return Unit.f71739a;
                                }
                            }, gapComposerH);
                        }
                        if (i9 != 0) {
                            function3B2 = ComposableLambdaKt.b(-81224541, new Function3<SliderState, Composer, Integer, Unit>() { // from class: androidx.compose.material3.SliderKt$Slider$11
                                @Override // kotlin.jvm.functions.Function3
                                public final Object A(Object obj, Object obj2, Object obj3) {
                                    SliderState sliderState2 = (SliderState) obj;
                                    Composer composer2 = (Composer) obj2;
                                    int iIntValue = ((Number) obj3).intValue();
                                    OpaqueKey opaqueKey11 = ComposerKt.f7940a;
                                    SliderDefaults.f7235a.b(sliderState2, null, z2, sliderColorsD, null, null, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, composer2, (iIntValue & 14) | 100663296, 242);
                                    return Unit.f71739a;
                                }
                            }, gapComposerH);
                        } else {
                            function3B2 = function5;
                        }
                        modifier4 = dTFunctionNameModifier;
                        i11 = i11114;
                        mutableInteractionSource4 = mutableInteractionSource2;
                    }
                    gapComposerH.a0();
                    OpaqueKey opaqueKey11 = ComposerKt.f7940a;
                    if (sliderState.f7262a >= 0) {
                        md.n("steps should be >= 0");
                        return;
                    }
                    int i11115 = i11 >> 3;
                    Modifier modifier15 = modifier4;
                    c(modifier15, sliderState, z2, mutableInteractionSource4, function3B, function3B2, gapComposerH, (i11 & 896) | (i11115 & 14) | ((i11 << 3) & 112) | (i11115 & 7168) | (57344 & i11115) | (i11115 & ImageMetadata.JPEG_GPS_COORDINATES));
                    function7 = function3B2;
                    mutableInteractionSource3 = mutableInteractionSource4;
                    z4 = z2;
                    modifier3 = modifier15;
                    function6 = function3B;
                    sliderColors2 = sliderColorsD;
                } else {
                    gapComposerH.D();
                    modifier3 = modifier2;
                    sliderColors2 = sliderColors;
                    z4 = z2;
                    mutableInteractionSource3 = mutableInteractionSource2;
                    function6 = function3B;
                    function7 = function5;
                }
                recomposeScopeImplB0 = gapComposerH.b0();
                if (recomposeScopeImplB0 != null) {
                    recomposeScopeImplB0.d = new bg(sliderState, modifier3, z4, sliderColors2, mutableInteractionSource3, function6, function7, i2, i3, 5);
                }
            }
            i4 |= 1572864;
            function5 = function4;
            modifier2 = modifierE;
            if ((599187 & i4) != 599186) {
                z3 = true;
            } else {
                z3 = false;
            }
            if (gapComposerH.p(i4 & 1, z3)) {
                gapComposerH.y0();
                if ((i2 & 1) != 0) {
                    if (i12 != 0) {
                        dTFunctionNameModifier = new DTFunctionNameModifier("Slider");
                    } else {
                        dTFunctionNameModifier = modifier2;
                    }
                    if (i13 != 0) {
                        z2 = true;
                    }
                    SliderDefaults sliderDefaults112 = SliderDefaults.f7235a;
                    sliderColorsD = SliderDefaults.d(gapComposerH);
                    int i11116 = i4 & (-7169);
                    if (i5 != 0) {
                        objX = gapComposerH.x();
                        if (objX == Composer.Companion.f7939a) {
                            objX = InteractionSourceKt.a();
                            gapComposerH.q(objX);
                        }
                        mutableInteractionSource2 = (MutableInteractionSource) objX;
                    }
                    if (i7 != 0) {
                        function3B = ComposableLambdaKt.b(-2100927368, new Function3<SliderState, Composer, Integer, Unit>() { // from class: androidx.compose.material3.SliderKt$Slider$10
                            @Override // kotlin.jvm.functions.Function3
                            public final Object A(Object obj, Object obj2, Object obj3) {
                                ((Number) obj3).intValue();
                                OpaqueKey opaqueKey12 = ComposerKt.f7940a;
                                SliderDefaults.f7235a.a(mutableInteractionSource2, null, sliderColorsD, z2, 0L, (Composer) obj2, ImageMetadata.EDGE_MODE);
                                return Unit.f71739a;
                            }
                        }, gapComposerH);
                    }
                    if (i9 != 0) {
                        function3B2 = ComposableLambdaKt.b(-81224541, new Function3<SliderState, Composer, Integer, Unit>() { // from class: androidx.compose.material3.SliderKt$Slider$11
                            @Override // kotlin.jvm.functions.Function3
                            public final Object A(Object obj, Object obj2, Object obj3) {
                                SliderState sliderState2 = (SliderState) obj;
                                Composer composer2 = (Composer) obj2;
                                int iIntValue = ((Number) obj3).intValue();
                                OpaqueKey opaqueKey12 = ComposerKt.f7940a;
                                SliderDefaults.f7235a.b(sliderState2, null, z2, sliderColorsD, null, null, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, composer2, (iIntValue & 14) | 100663296, 242);
                                return Unit.f71739a;
                            }
                        }, gapComposerH);
                    } else {
                        function3B2 = function5;
                    }
                    modifier4 = dTFunctionNameModifier;
                    i11 = i11116;
                    mutableInteractionSource4 = mutableInteractionSource2;
                } else {
                    if (i12 != 0) {
                        dTFunctionNameModifier = new DTFunctionNameModifier("Slider");
                    } else {
                        dTFunctionNameModifier = modifier2;
                    }
                    if (i13 != 0) {
                        z2 = true;
                    }
                    SliderDefaults sliderDefaults113 = SliderDefaults.f7235a;
                    sliderColorsD = SliderDefaults.d(gapComposerH);
                    int i11117 = i4 & (-7169);
                    if (i5 != 0) {
                        objX = gapComposerH.x();
                        if (objX == Composer.Companion.f7939a) {
                            objX = InteractionSourceKt.a();
                            gapComposerH.q(objX);
                        }
                        mutableInteractionSource2 = (MutableInteractionSource) objX;
                    }
                    if (i7 != 0) {
                        function3B = ComposableLambdaKt.b(-2100927368, new Function3<SliderState, Composer, Integer, Unit>() { // from class: androidx.compose.material3.SliderKt$Slider$10
                            @Override // kotlin.jvm.functions.Function3
                            public final Object A(Object obj, Object obj2, Object obj3) {
                                ((Number) obj3).intValue();
                                OpaqueKey opaqueKey12 = ComposerKt.f7940a;
                                SliderDefaults.f7235a.a(mutableInteractionSource2, null, sliderColorsD, z2, 0L, (Composer) obj2, ImageMetadata.EDGE_MODE);
                                return Unit.f71739a;
                            }
                        }, gapComposerH);
                    }
                    if (i9 != 0) {
                        function3B2 = ComposableLambdaKt.b(-81224541, new Function3<SliderState, Composer, Integer, Unit>() { // from class: androidx.compose.material3.SliderKt$Slider$11
                            @Override // kotlin.jvm.functions.Function3
                            public final Object A(Object obj, Object obj2, Object obj3) {
                                SliderState sliderState2 = (SliderState) obj;
                                Composer composer2 = (Composer) obj2;
                                int iIntValue = ((Number) obj3).intValue();
                                OpaqueKey opaqueKey12 = ComposerKt.f7940a;
                                SliderDefaults.f7235a.b(sliderState2, null, z2, sliderColorsD, null, null, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, composer2, (iIntValue & 14) | 100663296, 242);
                                return Unit.f71739a;
                            }
                        }, gapComposerH);
                    } else {
                        function3B2 = function5;
                    }
                    modifier4 = dTFunctionNameModifier;
                    i11 = i11117;
                    mutableInteractionSource4 = mutableInteractionSource2;
                }
                gapComposerH.a0();
                OpaqueKey opaqueKey12 = ComposerKt.f7940a;
                if (sliderState.f7262a >= 0) {
                    md.n("steps should be >= 0");
                    return;
                }
                int i11118 = i11 >> 3;
                Modifier modifier16 = modifier4;
                c(modifier16, sliderState, z2, mutableInteractionSource4, function3B, function3B2, gapComposerH, (i11 & 896) | (i11118 & 14) | ((i11 << 3) & 112) | (i11118 & 7168) | (57344 & i11118) | (i11118 & ImageMetadata.JPEG_GPS_COORDINATES));
                function7 = function3B2;
                mutableInteractionSource3 = mutableInteractionSource4;
                z4 = z2;
                modifier3 = modifier16;
                function6 = function3B;
                sliderColors2 = sliderColorsD;
            } else {
                gapComposerH.D();
                modifier3 = modifier2;
                sliderColors2 = sliderColors;
                z4 = z2;
                mutableInteractionSource3 = mutableInteractionSource2;
                function6 = function3B;
                function7 = function5;
            }
            recomposeScopeImplB0 = gapComposerH.b0();
            if (recomposeScopeImplB0 != null) {
                recomposeScopeImplB0.d = new bg(sliderState, modifier3, z4, sliderColors2, mutableInteractionSource3, function6, function7, i2, i3, 5);
            }
        }
        i4 |= 24576;
        mutableInteractionSource2 = mutableInteractionSource;
        i7 = i3 & 32;
        if (i7 != 0) {
            if ((196608 & i2) == 0) {
                function3B = function3;
                if (gapComposerH.y(function3B)) {
                    i8 = 131072;
                } else {
                    i8 = 65536;
                }
                i4 |= i8;
            }
            i9 = i3 & 64;
            if (i9 != 0) {
                if ((1572864 & i2) == 0) {
                    function5 = function4;
                    if (gapComposerH.y(function5)) {
                        i10 = 1048576;
                    } else {
                        i10 = 524288;
                    }
                    i4 |= i10;
                }
                modifier2 = modifierE;
                if ((599187 & i4) != 599186) {
                    z3 = true;
                } else {
                    z3 = false;
                }
                if (gapComposerH.p(i4 & 1, z3)) {
                    gapComposerH.y0();
                    if ((i2 & 1) != 0) {
                        if (i12 != 0) {
                            dTFunctionNameModifier = new DTFunctionNameModifier("Slider");
                        } else {
                            dTFunctionNameModifier = modifier2;
                        }
                        if (i13 != 0) {
                            z2 = true;
                        }
                        SliderDefaults sliderDefaults114 = SliderDefaults.f7235a;
                        sliderColorsD = SliderDefaults.d(gapComposerH);
                        int i11119 = i4 & (-7169);
                        if (i5 != 0) {
                            objX = gapComposerH.x();
                            if (objX == Composer.Companion.f7939a) {
                                objX = InteractionSourceKt.a();
                                gapComposerH.q(objX);
                            }
                            mutableInteractionSource2 = (MutableInteractionSource) objX;
                        }
                        if (i7 != 0) {
                            function3B = ComposableLambdaKt.b(-2100927368, new Function3<SliderState, Composer, Integer, Unit>() { // from class: androidx.compose.material3.SliderKt$Slider$10
                                @Override // kotlin.jvm.functions.Function3
                                public final Object A(Object obj, Object obj2, Object obj3) {
                                    ((Number) obj3).intValue();
                                    OpaqueKey opaqueKey13 = ComposerKt.f7940a;
                                    SliderDefaults.f7235a.a(mutableInteractionSource2, null, sliderColorsD, z2, 0L, (Composer) obj2, ImageMetadata.EDGE_MODE);
                                    return Unit.f71739a;
                                }
                            }, gapComposerH);
                        }
                        if (i9 != 0) {
                            function3B2 = ComposableLambdaKt.b(-81224541, new Function3<SliderState, Composer, Integer, Unit>() { // from class: androidx.compose.material3.SliderKt$Slider$11
                                @Override // kotlin.jvm.functions.Function3
                                public final Object A(Object obj, Object obj2, Object obj3) {
                                    SliderState sliderState2 = (SliderState) obj;
                                    Composer composer2 = (Composer) obj2;
                                    int iIntValue = ((Number) obj3).intValue();
                                    OpaqueKey opaqueKey13 = ComposerKt.f7940a;
                                    SliderDefaults.f7235a.b(sliderState2, null, z2, sliderColorsD, null, null, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, composer2, (iIntValue & 14) | 100663296, 242);
                                    return Unit.f71739a;
                                }
                            }, gapComposerH);
                        } else {
                            function3B2 = function5;
                        }
                        modifier4 = dTFunctionNameModifier;
                        i11 = i11119;
                        mutableInteractionSource4 = mutableInteractionSource2;
                    } else {
                        if (i12 != 0) {
                            dTFunctionNameModifier = new DTFunctionNameModifier("Slider");
                        } else {
                            dTFunctionNameModifier = modifier2;
                        }
                        if (i13 != 0) {
                            z2 = true;
                        }
                        SliderDefaults sliderDefaults115 = SliderDefaults.f7235a;
                        sliderColorsD = SliderDefaults.d(gapComposerH);
                        int i111110 = i4 & (-7169);
                        if (i5 != 0) {
                            objX = gapComposerH.x();
                            if (objX == Composer.Companion.f7939a) {
                                objX = InteractionSourceKt.a();
                                gapComposerH.q(objX);
                            }
                            mutableInteractionSource2 = (MutableInteractionSource) objX;
                        }
                        if (i7 != 0) {
                            function3B = ComposableLambdaKt.b(-2100927368, new Function3<SliderState, Composer, Integer, Unit>() { // from class: androidx.compose.material3.SliderKt$Slider$10
                                @Override // kotlin.jvm.functions.Function3
                                public final Object A(Object obj, Object obj2, Object obj3) {
                                    ((Number) obj3).intValue();
                                    OpaqueKey opaqueKey13 = ComposerKt.f7940a;
                                    SliderDefaults.f7235a.a(mutableInteractionSource2, null, sliderColorsD, z2, 0L, (Composer) obj2, ImageMetadata.EDGE_MODE);
                                    return Unit.f71739a;
                                }
                            }, gapComposerH);
                        }
                        if (i9 != 0) {
                            function3B2 = ComposableLambdaKt.b(-81224541, new Function3<SliderState, Composer, Integer, Unit>() { // from class: androidx.compose.material3.SliderKt$Slider$11
                                @Override // kotlin.jvm.functions.Function3
                                public final Object A(Object obj, Object obj2, Object obj3) {
                                    SliderState sliderState2 = (SliderState) obj;
                                    Composer composer2 = (Composer) obj2;
                                    int iIntValue = ((Number) obj3).intValue();
                                    OpaqueKey opaqueKey13 = ComposerKt.f7940a;
                                    SliderDefaults.f7235a.b(sliderState2, null, z2, sliderColorsD, null, null, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, composer2, (iIntValue & 14) | 100663296, 242);
                                    return Unit.f71739a;
                                }
                            }, gapComposerH);
                        } else {
                            function3B2 = function5;
                        }
                        modifier4 = dTFunctionNameModifier;
                        i11 = i111110;
                        mutableInteractionSource4 = mutableInteractionSource2;
                    }
                    gapComposerH.a0();
                    OpaqueKey opaqueKey13 = ComposerKt.f7940a;
                    if (sliderState.f7262a >= 0) {
                        md.n("steps should be >= 0");
                        return;
                    }
                    int i111111 = i11 >> 3;
                    Modifier modifier17 = modifier4;
                    c(modifier17, sliderState, z2, mutableInteractionSource4, function3B, function3B2, gapComposerH, (i11 & 896) | (i111111 & 14) | ((i11 << 3) & 112) | (i111111 & 7168) | (57344 & i111111) | (i111111 & ImageMetadata.JPEG_GPS_COORDINATES));
                    function7 = function3B2;
                    mutableInteractionSource3 = mutableInteractionSource4;
                    z4 = z2;
                    modifier3 = modifier17;
                    function6 = function3B;
                    sliderColors2 = sliderColorsD;
                } else {
                    gapComposerH.D();
                    modifier3 = modifier2;
                    sliderColors2 = sliderColors;
                    z4 = z2;
                    mutableInteractionSource3 = mutableInteractionSource2;
                    function6 = function3B;
                    function7 = function5;
                }
                recomposeScopeImplB0 = gapComposerH.b0();
                if (recomposeScopeImplB0 != null) {
                    recomposeScopeImplB0.d = new bg(sliderState, modifier3, z4, sliderColors2, mutableInteractionSource3, function6, function7, i2, i3, 5);
                }
            }
            i4 |= 1572864;
            function5 = function4;
            modifier2 = modifierE;
            if ((599187 & i4) != 599186) {
                z3 = true;
            } else {
                z3 = false;
            }
            if (gapComposerH.p(i4 & 1, z3)) {
                gapComposerH.y0();
                if ((i2 & 1) != 0) {
                    if (i12 != 0) {
                        dTFunctionNameModifier = new DTFunctionNameModifier("Slider");
                    } else {
                        dTFunctionNameModifier = modifier2;
                    }
                    if (i13 != 0) {
                        z2 = true;
                    }
                    SliderDefaults sliderDefaults116 = SliderDefaults.f7235a;
                    sliderColorsD = SliderDefaults.d(gapComposerH);
                    int i111112 = i4 & (-7169);
                    if (i5 != 0) {
                        objX = gapComposerH.x();
                        if (objX == Composer.Companion.f7939a) {
                            objX = InteractionSourceKt.a();
                            gapComposerH.q(objX);
                        }
                        mutableInteractionSource2 = (MutableInteractionSource) objX;
                    }
                    if (i7 != 0) {
                        function3B = ComposableLambdaKt.b(-2100927368, new Function3<SliderState, Composer, Integer, Unit>() { // from class: androidx.compose.material3.SliderKt$Slider$10
                            @Override // kotlin.jvm.functions.Function3
                            public final Object A(Object obj, Object obj2, Object obj3) {
                                ((Number) obj3).intValue();
                                OpaqueKey opaqueKey14 = ComposerKt.f7940a;
                                SliderDefaults.f7235a.a(mutableInteractionSource2, null, sliderColorsD, z2, 0L, (Composer) obj2, ImageMetadata.EDGE_MODE);
                                return Unit.f71739a;
                            }
                        }, gapComposerH);
                    }
                    if (i9 != 0) {
                        function3B2 = ComposableLambdaKt.b(-81224541, new Function3<SliderState, Composer, Integer, Unit>() { // from class: androidx.compose.material3.SliderKt$Slider$11
                            @Override // kotlin.jvm.functions.Function3
                            public final Object A(Object obj, Object obj2, Object obj3) {
                                SliderState sliderState2 = (SliderState) obj;
                                Composer composer2 = (Composer) obj2;
                                int iIntValue = ((Number) obj3).intValue();
                                OpaqueKey opaqueKey14 = ComposerKt.f7940a;
                                SliderDefaults.f7235a.b(sliderState2, null, z2, sliderColorsD, null, null, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, composer2, (iIntValue & 14) | 100663296, 242);
                                return Unit.f71739a;
                            }
                        }, gapComposerH);
                    } else {
                        function3B2 = function5;
                    }
                    modifier4 = dTFunctionNameModifier;
                    i11 = i111112;
                    mutableInteractionSource4 = mutableInteractionSource2;
                } else {
                    if (i12 != 0) {
                        dTFunctionNameModifier = new DTFunctionNameModifier("Slider");
                    } else {
                        dTFunctionNameModifier = modifier2;
                    }
                    if (i13 != 0) {
                        z2 = true;
                    }
                    SliderDefaults sliderDefaults117 = SliderDefaults.f7235a;
                    sliderColorsD = SliderDefaults.d(gapComposerH);
                    int i111113 = i4 & (-7169);
                    if (i5 != 0) {
                        objX = gapComposerH.x();
                        if (objX == Composer.Companion.f7939a) {
                            objX = InteractionSourceKt.a();
                            gapComposerH.q(objX);
                        }
                        mutableInteractionSource2 = (MutableInteractionSource) objX;
                    }
                    if (i7 != 0) {
                        function3B = ComposableLambdaKt.b(-2100927368, new Function3<SliderState, Composer, Integer, Unit>() { // from class: androidx.compose.material3.SliderKt$Slider$10
                            @Override // kotlin.jvm.functions.Function3
                            public final Object A(Object obj, Object obj2, Object obj3) {
                                ((Number) obj3).intValue();
                                OpaqueKey opaqueKey14 = ComposerKt.f7940a;
                                SliderDefaults.f7235a.a(mutableInteractionSource2, null, sliderColorsD, z2, 0L, (Composer) obj2, ImageMetadata.EDGE_MODE);
                                return Unit.f71739a;
                            }
                        }, gapComposerH);
                    }
                    if (i9 != 0) {
                        function3B2 = ComposableLambdaKt.b(-81224541, new Function3<SliderState, Composer, Integer, Unit>() { // from class: androidx.compose.material3.SliderKt$Slider$11
                            @Override // kotlin.jvm.functions.Function3
                            public final Object A(Object obj, Object obj2, Object obj3) {
                                SliderState sliderState2 = (SliderState) obj;
                                Composer composer2 = (Composer) obj2;
                                int iIntValue = ((Number) obj3).intValue();
                                OpaqueKey opaqueKey14 = ComposerKt.f7940a;
                                SliderDefaults.f7235a.b(sliderState2, null, z2, sliderColorsD, null, null, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, composer2, (iIntValue & 14) | 100663296, 242);
                                return Unit.f71739a;
                            }
                        }, gapComposerH);
                    } else {
                        function3B2 = function5;
                    }
                    modifier4 = dTFunctionNameModifier;
                    i11 = i111113;
                    mutableInteractionSource4 = mutableInteractionSource2;
                }
                gapComposerH.a0();
                OpaqueKey opaqueKey14 = ComposerKt.f7940a;
                if (sliderState.f7262a >= 0) {
                    md.n("steps should be >= 0");
                    return;
                }
                int i111114 = i11 >> 3;
                Modifier modifier18 = modifier4;
                c(modifier18, sliderState, z2, mutableInteractionSource4, function3B, function3B2, gapComposerH, (i11 & 896) | (i111114 & 14) | ((i11 << 3) & 112) | (i111114 & 7168) | (57344 & i111114) | (i111114 & ImageMetadata.JPEG_GPS_COORDINATES));
                function7 = function3B2;
                mutableInteractionSource3 = mutableInteractionSource4;
                z4 = z2;
                modifier3 = modifier18;
                function6 = function3B;
                sliderColors2 = sliderColorsD;
            } else {
                gapComposerH.D();
                modifier3 = modifier2;
                sliderColors2 = sliderColors;
                z4 = z2;
                mutableInteractionSource3 = mutableInteractionSource2;
                function6 = function3B;
                function7 = function5;
            }
            recomposeScopeImplB0 = gapComposerH.b0();
            if (recomposeScopeImplB0 != null) {
                recomposeScopeImplB0.d = new bg(sliderState, modifier3, z4, sliderColors2, mutableInteractionSource3, function6, function7, i2, i3, 5);
            }
        }
        i4 |= ImageMetadata.EDGE_MODE;
        function3B = function3;
        i9 = i3 & 64;
        if (i9 != 0) {
            if ((1572864 & i2) == 0) {
                function5 = function4;
                if (gapComposerH.y(function5)) {
                    i10 = 1048576;
                } else {
                    i10 = 524288;
                }
                i4 |= i10;
            }
            modifier2 = modifierE;
            if ((599187 & i4) != 599186) {
                z3 = true;
            } else {
                z3 = false;
            }
            if (gapComposerH.p(i4 & 1, z3)) {
                gapComposerH.y0();
                if ((i2 & 1) != 0) {
                    if (i12 != 0) {
                        dTFunctionNameModifier = new DTFunctionNameModifier("Slider");
                    } else {
                        dTFunctionNameModifier = modifier2;
                    }
                    if (i13 != 0) {
                        z2 = true;
                    }
                    SliderDefaults sliderDefaults118 = SliderDefaults.f7235a;
                    sliderColorsD = SliderDefaults.d(gapComposerH);
                    int i111115 = i4 & (-7169);
                    if (i5 != 0) {
                        objX = gapComposerH.x();
                        if (objX == Composer.Companion.f7939a) {
                            objX = InteractionSourceKt.a();
                            gapComposerH.q(objX);
                        }
                        mutableInteractionSource2 = (MutableInteractionSource) objX;
                    }
                    if (i7 != 0) {
                        function3B = ComposableLambdaKt.b(-2100927368, new Function3<SliderState, Composer, Integer, Unit>() { // from class: androidx.compose.material3.SliderKt$Slider$10
                            @Override // kotlin.jvm.functions.Function3
                            public final Object A(Object obj, Object obj2, Object obj3) {
                                ((Number) obj3).intValue();
                                OpaqueKey opaqueKey15 = ComposerKt.f7940a;
                                SliderDefaults.f7235a.a(mutableInteractionSource2, null, sliderColorsD, z2, 0L, (Composer) obj2, ImageMetadata.EDGE_MODE);
                                return Unit.f71739a;
                            }
                        }, gapComposerH);
                    }
                    if (i9 != 0) {
                        function3B2 = ComposableLambdaKt.b(-81224541, new Function3<SliderState, Composer, Integer, Unit>() { // from class: androidx.compose.material3.SliderKt$Slider$11
                            @Override // kotlin.jvm.functions.Function3
                            public final Object A(Object obj, Object obj2, Object obj3) {
                                SliderState sliderState2 = (SliderState) obj;
                                Composer composer2 = (Composer) obj2;
                                int iIntValue = ((Number) obj3).intValue();
                                OpaqueKey opaqueKey15 = ComposerKt.f7940a;
                                SliderDefaults.f7235a.b(sliderState2, null, z2, sliderColorsD, null, null, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, composer2, (iIntValue & 14) | 100663296, 242);
                                return Unit.f71739a;
                            }
                        }, gapComposerH);
                    } else {
                        function3B2 = function5;
                    }
                    modifier4 = dTFunctionNameModifier;
                    i11 = i111115;
                    mutableInteractionSource4 = mutableInteractionSource2;
                } else {
                    if (i12 != 0) {
                        dTFunctionNameModifier = new DTFunctionNameModifier("Slider");
                    } else {
                        dTFunctionNameModifier = modifier2;
                    }
                    if (i13 != 0) {
                        z2 = true;
                    }
                    SliderDefaults sliderDefaults119 = SliderDefaults.f7235a;
                    sliderColorsD = SliderDefaults.d(gapComposerH);
                    int i111116 = i4 & (-7169);
                    if (i5 != 0) {
                        objX = gapComposerH.x();
                        if (objX == Composer.Companion.f7939a) {
                            objX = InteractionSourceKt.a();
                            gapComposerH.q(objX);
                        }
                        mutableInteractionSource2 = (MutableInteractionSource) objX;
                    }
                    if (i7 != 0) {
                        function3B = ComposableLambdaKt.b(-2100927368, new Function3<SliderState, Composer, Integer, Unit>() { // from class: androidx.compose.material3.SliderKt$Slider$10
                            @Override // kotlin.jvm.functions.Function3
                            public final Object A(Object obj, Object obj2, Object obj3) {
                                ((Number) obj3).intValue();
                                OpaqueKey opaqueKey15 = ComposerKt.f7940a;
                                SliderDefaults.f7235a.a(mutableInteractionSource2, null, sliderColorsD, z2, 0L, (Composer) obj2, ImageMetadata.EDGE_MODE);
                                return Unit.f71739a;
                            }
                        }, gapComposerH);
                    }
                    if (i9 != 0) {
                        function3B2 = ComposableLambdaKt.b(-81224541, new Function3<SliderState, Composer, Integer, Unit>() { // from class: androidx.compose.material3.SliderKt$Slider$11
                            @Override // kotlin.jvm.functions.Function3
                            public final Object A(Object obj, Object obj2, Object obj3) {
                                SliderState sliderState2 = (SliderState) obj;
                                Composer composer2 = (Composer) obj2;
                                int iIntValue = ((Number) obj3).intValue();
                                OpaqueKey opaqueKey15 = ComposerKt.f7940a;
                                SliderDefaults.f7235a.b(sliderState2, null, z2, sliderColorsD, null, null, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, composer2, (iIntValue & 14) | 100663296, 242);
                                return Unit.f71739a;
                            }
                        }, gapComposerH);
                    } else {
                        function3B2 = function5;
                    }
                    modifier4 = dTFunctionNameModifier;
                    i11 = i111116;
                    mutableInteractionSource4 = mutableInteractionSource2;
                }
                gapComposerH.a0();
                OpaqueKey opaqueKey15 = ComposerKt.f7940a;
                if (sliderState.f7262a >= 0) {
                    md.n("steps should be >= 0");
                    return;
                }
                int i111117 = i11 >> 3;
                Modifier modifier19 = modifier4;
                c(modifier19, sliderState, z2, mutableInteractionSource4, function3B, function3B2, gapComposerH, (i11 & 896) | (i111117 & 14) | ((i11 << 3) & 112) | (i111117 & 7168) | (57344 & i111117) | (i111117 & ImageMetadata.JPEG_GPS_COORDINATES));
                function7 = function3B2;
                mutableInteractionSource3 = mutableInteractionSource4;
                z4 = z2;
                modifier3 = modifier19;
                function6 = function3B;
                sliderColors2 = sliderColorsD;
            } else {
                gapComposerH.D();
                modifier3 = modifier2;
                sliderColors2 = sliderColors;
                z4 = z2;
                mutableInteractionSource3 = mutableInteractionSource2;
                function6 = function3B;
                function7 = function5;
            }
            recomposeScopeImplB0 = gapComposerH.b0();
            if (recomposeScopeImplB0 != null) {
                recomposeScopeImplB0.d = new bg(sliderState, modifier3, z4, sliderColors2, mutableInteractionSource3, function6, function7, i2, i3, 5);
            }
        }
        i4 |= 1572864;
        function5 = function4;
        modifier2 = modifierE;
        if ((599187 & i4) != 599186) {
            z3 = true;
        } else {
            z3 = false;
        }
        if (gapComposerH.p(i4 & 1, z3)) {
            gapComposerH.y0();
            if ((i2 & 1) != 0) {
                if (i12 != 0) {
                    dTFunctionNameModifier = new DTFunctionNameModifier("Slider");
                } else {
                    dTFunctionNameModifier = modifier2;
                }
                if (i13 != 0) {
                    z2 = true;
                }
                SliderDefaults sliderDefaults1110 = SliderDefaults.f7235a;
                sliderColorsD = SliderDefaults.d(gapComposerH);
                int i111118 = i4 & (-7169);
                if (i5 != 0) {
                    objX = gapComposerH.x();
                    if (objX == Composer.Companion.f7939a) {
                        objX = InteractionSourceKt.a();
                        gapComposerH.q(objX);
                    }
                    mutableInteractionSource2 = (MutableInteractionSource) objX;
                }
                if (i7 != 0) {
                    function3B = ComposableLambdaKt.b(-2100927368, new Function3<SliderState, Composer, Integer, Unit>() { // from class: androidx.compose.material3.SliderKt$Slider$10
                        @Override // kotlin.jvm.functions.Function3
                        public final Object A(Object obj, Object obj2, Object obj3) {
                            ((Number) obj3).intValue();
                            OpaqueKey opaqueKey16 = ComposerKt.f7940a;
                            SliderDefaults.f7235a.a(mutableInteractionSource2, null, sliderColorsD, z2, 0L, (Composer) obj2, ImageMetadata.EDGE_MODE);
                            return Unit.f71739a;
                        }
                    }, gapComposerH);
                }
                if (i9 != 0) {
                    function3B2 = ComposableLambdaKt.b(-81224541, new Function3<SliderState, Composer, Integer, Unit>() { // from class: androidx.compose.material3.SliderKt$Slider$11
                        @Override // kotlin.jvm.functions.Function3
                        public final Object A(Object obj, Object obj2, Object obj3) {
                            SliderState sliderState2 = (SliderState) obj;
                            Composer composer2 = (Composer) obj2;
                            int iIntValue = ((Number) obj3).intValue();
                            OpaqueKey opaqueKey16 = ComposerKt.f7940a;
                            SliderDefaults.f7235a.b(sliderState2, null, z2, sliderColorsD, null, null, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, composer2, (iIntValue & 14) | 100663296, 242);
                            return Unit.f71739a;
                        }
                    }, gapComposerH);
                } else {
                    function3B2 = function5;
                }
                modifier4 = dTFunctionNameModifier;
                i11 = i111118;
                mutableInteractionSource4 = mutableInteractionSource2;
            } else {
                if (i12 != 0) {
                    dTFunctionNameModifier = new DTFunctionNameModifier("Slider");
                } else {
                    dTFunctionNameModifier = modifier2;
                }
                if (i13 != 0) {
                    z2 = true;
                }
                SliderDefaults sliderDefaults1111 = SliderDefaults.f7235a;
                sliderColorsD = SliderDefaults.d(gapComposerH);
                int i111119 = i4 & (-7169);
                if (i5 != 0) {
                    objX = gapComposerH.x();
                    if (objX == Composer.Companion.f7939a) {
                        objX = InteractionSourceKt.a();
                        gapComposerH.q(objX);
                    }
                    mutableInteractionSource2 = (MutableInteractionSource) objX;
                }
                if (i7 != 0) {
                    function3B = ComposableLambdaKt.b(-2100927368, new Function3<SliderState, Composer, Integer, Unit>() { // from class: androidx.compose.material3.SliderKt$Slider$10
                        @Override // kotlin.jvm.functions.Function3
                        public final Object A(Object obj, Object obj2, Object obj3) {
                            ((Number) obj3).intValue();
                            OpaqueKey opaqueKey16 = ComposerKt.f7940a;
                            SliderDefaults.f7235a.a(mutableInteractionSource2, null, sliderColorsD, z2, 0L, (Composer) obj2, ImageMetadata.EDGE_MODE);
                            return Unit.f71739a;
                        }
                    }, gapComposerH);
                }
                if (i9 != 0) {
                    function3B2 = ComposableLambdaKt.b(-81224541, new Function3<SliderState, Composer, Integer, Unit>() { // from class: androidx.compose.material3.SliderKt$Slider$11
                        @Override // kotlin.jvm.functions.Function3
                        public final Object A(Object obj, Object obj2, Object obj3) {
                            SliderState sliderState2 = (SliderState) obj;
                            Composer composer2 = (Composer) obj2;
                            int iIntValue = ((Number) obj3).intValue();
                            OpaqueKey opaqueKey16 = ComposerKt.f7940a;
                            SliderDefaults.f7235a.b(sliderState2, null, z2, sliderColorsD, null, null, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, composer2, (iIntValue & 14) | 100663296, 242);
                            return Unit.f71739a;
                        }
                    }, gapComposerH);
                } else {
                    function3B2 = function5;
                }
                modifier4 = dTFunctionNameModifier;
                i11 = i111119;
                mutableInteractionSource4 = mutableInteractionSource2;
            }
            gapComposerH.a0();
            OpaqueKey opaqueKey16 = ComposerKt.f7940a;
            if (sliderState.f7262a >= 0) {
                md.n("steps should be >= 0");
                return;
            }
            int i1111110 = i11 >> 3;
            Modifier modifier110 = modifier4;
            c(modifier110, sliderState, z2, mutableInteractionSource4, function3B, function3B2, gapComposerH, (i11 & 896) | (i1111110 & 14) | ((i11 << 3) & 112) | (i1111110 & 7168) | (57344 & i1111110) | (i1111110 & ImageMetadata.JPEG_GPS_COORDINATES));
            function7 = function3B2;
            mutableInteractionSource3 = mutableInteractionSource4;
            z4 = z2;
            modifier3 = modifier110;
            function6 = function3B;
            sliderColors2 = sliderColorsD;
        } else {
            gapComposerH.D();
            modifier3 = modifier2;
            sliderColors2 = sliderColors;
            z4 = z2;
            mutableInteractionSource3 = mutableInteractionSource2;
            function6 = function3B;
            function7 = function5;
        }
        recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new bg(sliderState, modifier3, z4, sliderColors2, mutableInteractionSource3, function6, function7, i2, i3, 5);
        }
    }

    /* JADX WARN: Code duplicated, block: B:100:0x0217  */
    /* JADX WARN: Code duplicated, block: B:105:0x0238  */
    /* JADX WARN: Code duplicated, block: B:109:0x024c  */
    /* JADX WARN: Code duplicated, block: B:112:0x0275  */
    /* JADX WARN: Code duplicated, block: B:114:0x027c  */
    /* JADX WARN: Code duplicated, block: B:115:0x0280  */
    /* JADX WARN: Code duplicated, block: B:120:0x029b  */
    /* JADX WARN: Code duplicated, block: B:123:0x02d3  */
    /* JADX WARN: Code duplicated, block: B:125:0x02da  */
    /* JADX WARN: Code duplicated, block: B:126:0x02de  */
    /* JADX WARN: Code duplicated, block: B:131:0x02f9  */
    /* JADX WARN: Code duplicated, block: B:133:0x0313  */
    /* JADX WARN: Code duplicated, block: B:135:0x0317  */
    /* JADX WARN: Code duplicated, block: B:137:0x031b  */
    /* JADX WARN: Code duplicated, block: B:97:0x020c  */
    /* JADX WARN: Code duplicated, block: B:99:0x0213  */
    public static final void c(Modifier modifier, final SliderState sliderState, final boolean z, MutableInteractionSource mutableInteractionSource, Function3 function3, Function3 function4, Composer composer, int i2) {
        int i3;
        final SliderState sliderState2;
        Composer$Companion$Empty$1 composer$Companion$Empty$1;
        MeasurePolicy measurePolicy;
        int iG;
        PersistentCompositionLocalMap persistentCompositionLocalMapU;
        Modifier modifierC;
        Function0 function0;
        Function2 function2;
        Function2 function5;
        Function2 function6;
        Function2 function7;
        boolean zY;
        Object objX;
        BiasAlignment biasAlignment;
        MeasurePolicy measurePolicyD;
        int iG2;
        PersistentCompositionLocalMap persistentCompositionLocalMapU2;
        Modifier modifierC2;
        int i4;
        MeasurePolicy measurePolicyD2;
        int iG3;
        PersistentCompositionLocalMap persistentCompositionLocalMapU3;
        Modifier modifierC3;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = defpackage.a.e(modifierE, "SliderImpl");
        }
        Modifier modifier2 = modifierE;
        GapComposer gapComposerH = composer.h(898172835);
        Applier applier = gapComposerH.f7976a;
        if ((i2 & 6) == 0) {
            i3 = (gapComposerH.K(modifier2) ? 4 : 2) | i2;
        } else {
            i3 = i2;
        }
        if ((i2 & 48) == 0) {
            i3 |= gapComposerH.y(sliderState) ? 32 : 16;
        }
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i3 |= gapComposerH.b(z) ? 256 : 128;
        }
        if ((i2 & 3072) == 0) {
            i3 |= gapComposerH.K(mutableInteractionSource) ? 2048 : 1024;
        }
        if ((i2 & 24576) == 0) {
            i3 |= gapComposerH.y(function3) ? 16384 : 8192;
        }
        if ((196608 & i2) == 0) {
            i3 |= gapComposerH.y(function4) ? 131072 : 65536;
        }
        int i5 = i3;
        if (gapComposerH.p(i5 & 1, (i5 & 74899) != 74898)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            boolean z2 = gapComposerH.k(CompositionLocalsKt.n) == LayoutDirection.Rtl;
            sliderState.f7269j = z2;
            Orientation orientation = sliderState.m;
            boolean z3 = orientation == Orientation.Horizontal && z2;
            Modifier dTFunctionNameModifier = new DTFunctionNameModifier("SliderImpl");
            if (z) {
                PointerInputEventHandler pointerInputEventHandler = new PointerInputEventHandler() { // from class: androidx.compose.material3.SliderKt$sliderTapModifier$1

                    /* JADX INFO: renamed from: androidx.compose.material3.SliderKt$sliderTapModifier$1$1, reason: invalid class name */
                    @Metadata(d1 = {"\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0004H\n"}, d2 = {"<anonymous>", "", "Landroidx/compose/foundation/gestures/PressGestureScope;", "it", "Landroidx/compose/ui/geometry/Offset;"}, k = 3, mv = {2, 0, 0}, xi = 48)
                    @DebugMetadata(c = "androidx.compose.material3.SliderKt$sliderTapModifier$1$1", f = "Slider.kt", l = {}, m = "invokeSuspend")
                    final class AnonymousClass1 extends SuspendLambda implements Function3<PressGestureScope, Offset, Continuation<? super Unit>, Object> {

                        /* JADX INFO: renamed from: b, reason: collision with root package name */
                        public /* synthetic */ long f7260b;

                        /* JADX INFO: renamed from: c, reason: collision with root package name */
                        public final /* synthetic */ SliderState f7261c;

                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        public AnonymousClass1(SliderState sliderState, Continuation continuation) {
                            super(3, continuation);
                            this.f7261c = sliderState;
                        }

                        @Override // kotlin.jvm.functions.Function3
                        public final Object A(Object obj, Object obj2, Object obj3) {
                            long j2 = ((Offset) obj2).f8808a;
                            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.f7261c, (Continuation) obj3);
                            anonymousClass1.f7260b = j2;
                            return anonymousClass1.invokeSuspend(Unit.f71739a);
                        }

                        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                        public final Object invokeSuspend(Object obj) {
                            float f2;
                            CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
                            ResultKt.b(obj);
                            long j2 = this.f7260b;
                            SliderState sliderState = this.f7261c;
                            if (sliderState.m == Orientation.Vertical) {
                                f2 = Float.intBitsToFloat((int) (j2 & BodyPartID.bodyIdMax));
                            } else {
                                f2 = sliderState.f7269j ? ((SnapshotMutableIntStateImpl) sliderState.f7267h).f() - Float.intBitsToFloat((int) (j2 >> 32)) : Float.intBitsToFloat((int) (j2 >> 32));
                            }
                            ((SnapshotMutableFloatStateImpl) sliderState.q).w(f2 - ((SnapshotMutableFloatStateImpl) sliderState.p).a());
                            return Unit.f71739a;
                        }
                    }

                    @Override // androidx.compose.ui.input.pointer.PointerInputEventHandler
                    public final Object invoke(PointerInputScope pointerInputScope, Continuation continuation) {
                        SliderState sliderState3 = sliderState;
                        Object objE = TapGestureDetectorKt.e(pointerInputScope, null, null, new AnonymousClass1(sliderState3, null), new q80(sliderState3, 3), continuation, 3);
                        return objE == CoroutineSingletons.COROUTINE_SUSPENDED ? objE : Unit.f71739a;
                    }
                };
                PointerEvent pointerEvent = SuspendingPointerInputFilterKt.f9378a;
                dTFunctionNameModifier = dTFunctionNameModifier.o(new SuspendPointerInputElement(sliderState, mutableInteractionSource, null, pointerInputEventHandler, 4, null));
            }
            Orientation orientation2 = sliderState.m;
            boolean zBooleanValue = ((Boolean) ((SnapshotMutableStateImpl) sliderState.n).getF10755b()).booleanValue();
            boolean zY2 = gapComposerH.y(sliderState);
            Object objX2 = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$2 = Composer.Companion.f7939a;
            if (zY2 || objX2 == composer$Companion$Empty$2) {
                objX2 = new SliderKt$SliderImpl$drag$1$1(sliderState, null);
                gapComposerH.q(objX2);
            }
            Modifier modifier3 = dTFunctionNameModifier;
            Modifier modifierA = DraggableKt.a(Modifier.Companion.f8607b, sliderState, orientation2, z, mutableInteractionSource, zBooleanValue, (Function3) objX2, z3, 32);
            final boolean z4 = z3;
            Orientation orientation3 = Orientation.Vertical;
            int i6 = 3;
            Modifier modifierV = orientation == orientation3 ? SizeKt.v(LayoutIdKt.b(new DTFunctionNameModifier("SliderImpl"), SliderComponents.THUMB), null, 3) : SizeKt.x(LayoutIdKt.b(new DTFunctionNameModifier("SliderImpl"), SliderComponents.THUMB), null, 3);
            HorizontalAlignmentLine horizontalAlignmentLine = InteractiveComponentSizeKt.f7011a;
            Modifier modifierO = modifier2.o(MinimumInteractiveModifier.f7044b);
            float f2 = f7243b;
            float f3 = f7242a;
            float f4 = f3;
            if (orientation != orientation3) {
                f3 = f2;
            }
            if (orientation == orientation3) {
                f4 = f2;
            }
            Modifier modifierB = SemanticsModifierKt.b(SizeKt.m(modifierO, f3, f4, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 12), false, new ka(z, sliderState, i6));
            ClosedFloatingPointRange closedFloatingPointRange = sliderState.f7264c;
            Modifier modifierB2 = FocusableKt.b(SemanticsModifierKt.b(modifierB.o(orientation == orientation3 ? AccessibilityUtilKt.d : AccessibilityUtilKt.f7487c), true, new u60(sliderState.d(), RangesKt.h(closedFloatingPointRange.i().floatValue(), closedFloatingPointRange.f().floatValue()), sliderState.f7262a)), z, mutableInteractionSource);
            final int i7 = sliderState.f7262a;
            final ClosedFloatingPointRange closedFloatingPointRange2 = sliderState.f7264c;
            Modifier modifier4 = modifierV;
            final float fD = sliderState.d();
            final Function1 function1 = sliderState.f7265e;
            final Function0 function8 = sliderState.f7263b;
            if (i7 < 0) {
                md.n("steps should be >= 0");
                return;
            }
            sliderState2 = sliderState;
            Modifier modifierO2 = KeyInputModifierKt.a(modifierB2, new Function1<KeyEvent, Boolean>() { // from class: androidx.compose.material3.SliderKt$slideOnKeyEvents$2
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    Function1 function9;
                    android.view.KeyEvent keyEvent = ((KeyEvent) obj).f9235a;
                    if (z && (function9 = function1) != null) {
                        int iB = KeyEvent_androidKt.b(keyEvent);
                        KeyEventType.f9236a.getClass();
                        boolean z5 = false;
                        if (iB == KeyEventType.f9238c) {
                            ClosedFloatingPointRange closedFloatingPointRange3 = closedFloatingPointRange2;
                            float fAbs = Math.abs(closedFloatingPointRange3.f().floatValue() - closedFloatingPointRange3.i().floatValue());
                            int i8 = i7;
                            int i9 = i8 > 0 ? i8 + 1 : 100;
                            float f5 = fAbs / i9;
                            int i10 = z4 ? -1 : 1;
                            long jA = Key_androidKt.a(keyEvent.getKeyCode());
                            Key.f9226a.getClass();
                            boolean zA = Key.a(jA, Key.f9229e);
                            float f6 = fD;
                            if (zA) {
                                function9.invoke(RangesKt.f(Float.valueOf((i10 * f5) + f6), closedFloatingPointRange3));
                            } else if (Key.a(jA, Key.f9230f)) {
                                function9.invoke(RangesKt.f(Float.valueOf(f6 - (i10 * f5)), closedFloatingPointRange3));
                            } else if (Key.a(jA, Key.f9231h)) {
                                function9.invoke(RangesKt.f(Float.valueOf((i10 * f5) + f6), closedFloatingPointRange3));
                            } else if (Key.a(jA, Key.g)) {
                                function9.invoke(RangesKt.f(Float.valueOf(f6 - (i10 * f5)), closedFloatingPointRange3));
                            } else if (Key.a(jA, Key.w)) {
                                function9.invoke(closedFloatingPointRange3.i());
                            } else if (Key.a(jA, Key.x)) {
                                function9.invoke(closedFloatingPointRange3.f());
                            } else if (Key.a(jA, Key.D)) {
                                function9.invoke(RangesKt.f(Float.valueOf(f6 - (RangesKt.d(i9 / 10, 1, 10) * f5)), closedFloatingPointRange3));
                            } else if (Key.a(jA, Key.E)) {
                                function9.invoke(RangesKt.f(Float.valueOf((RangesKt.d(i9 / 10, 1, 10) * f5) + f6), closedFloatingPointRange3));
                            }
                            z5 = true;
                        } else if (iB == KeyEventType.f9237b) {
                            long jA2 = Key_androidKt.a(keyEvent.getKeyCode());
                            Key.f9226a.getClass();
                            if (Key.a(jA2, Key.f9229e) || Key.a(jA2, Key.f9230f) || Key.a(jA2, Key.f9231h) || Key.a(jA2, Key.g) || Key.a(jA2, Key.w) || Key.a(jA2, Key.x) || Key.a(jA2, Key.D) || Key.a(jA2, Key.E)) {
                                Function0 function10 = function8;
                                if (function10 != null) {
                                    function10.mo47invoke();
                                }
                                z5 = true;
                            }
                        }
                        return Boolean.valueOf(z5);
                    }
                    return Boolean.FALSE;
                }
            }).o(modifier3).o(modifierA);
            boolean zY3 = gapComposerH.y(sliderState2);
            Object objX3 = gapComposerH.x();
            if (zY3) {
                composer$Companion$Empty$1 = composer$Companion$Empty$2;
            } else {
                composer$Companion$Empty$1 = composer$Companion$Empty$2;
                if (objX3 == composer$Companion$Empty$1) {
                }
                measurePolicy = (MeasurePolicy) objX3;
                iG = gapComposerH.G();
                persistentCompositionLocalMapU = gapComposerH.U();
                modifierC = ComposedModifierKt.c(gapComposerH, modifierO2);
                ComposeUiNode.b0.getClass();
                function0 = ComposeUiNode.Companion.f9641b;
                if (applier != 0) {
                    ComposablesKt.b();
                    throw null;
                }
                gapComposerH.B();
                if (gapComposerH.S) {
                    gapComposerH.C(function0);
                } else {
                    gapComposerH.o();
                }
                function2 = ComposeUiNode.Companion.f9644f;
                Updater.c(gapComposerH, measurePolicy, function2);
                function5 = ComposeUiNode.Companion.f9643e;
                Updater.c(gapComposerH, persistentCompositionLocalMapU, function5);
                function6 = ComposeUiNode.Companion.g;
                if (gapComposerH.S || !Intrinsics.c(gapComposerH.x(), Integer.valueOf(iG))) {
                    defpackage.a.t(iG, gapComposerH, iG, function6);
                }
                function7 = ComposeUiNode.Companion.d;
                Updater.c(gapComposerH, modifierC, function7);
                zY = gapComposerH.y(sliderState2);
                objX = gapComposerH.x();
                if (zY || objX == composer$Companion$Empty$1) {
                    objX = new q80(sliderState2, 1);
                    gapComposerH.q(objX);
                }
                Modifier modifierA2 = OnRemeasuredModifierKt.a(modifier4, (Function1) objX);
                Alignment.f8582a.getClass();
                biasAlignment = Alignment.Companion.f8584b;
                measurePolicyD = BoxKt.d(biasAlignment, false);
                iG2 = gapComposerH.G();
                persistentCompositionLocalMapU2 = gapComposerH.U();
                modifierC2 = ComposedModifierKt.c(gapComposerH, modifierA2);
                if (applier != 0) {
                    ComposablesKt.b();
                    throw null;
                }
                gapComposerH.B();
                if (gapComposerH.S) {
                    gapComposerH.C(function0);
                } else {
                    gapComposerH.o();
                }
                Updater.c(gapComposerH, measurePolicyD, function2);
                Updater.c(gapComposerH, persistentCompositionLocalMapU2, function5);
                if (gapComposerH.S || !Intrinsics.c(gapComposerH.x(), Integer.valueOf(iG2))) {
                    defpackage.a.t(iG2, gapComposerH, iG2, function6);
                }
                Updater.c(gapComposerH, modifierC2, function7);
                i4 = (i5 >> 3) & 14;
                function3.A(sliderState2, gapComposerH, Integer.valueOf(((i5 >> 9) & 112) | i4));
                gapComposerH.Z(true);
                Modifier modifierB3 = LayoutIdKt.b(new DTFunctionNameModifier("SliderImpl"), SliderComponents.TRACK);
                measurePolicyD2 = BoxKt.d(biasAlignment, false);
                iG3 = gapComposerH.G();
                persistentCompositionLocalMapU3 = gapComposerH.U();
                modifierC3 = ComposedModifierKt.c(gapComposerH, modifierB3);
                if (applier != null) {
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
                Updater.c(gapComposerH, persistentCompositionLocalMapU3, function5);
                if (gapComposerH.S || !Intrinsics.c(gapComposerH.x(), Integer.valueOf(iG3))) {
                    defpackage.a.t(iG3, gapComposerH, iG3, function6);
                }
                Updater.c(gapComposerH, modifierC3, function7);
                function4.A(sliderState2, gapComposerH, Integer.valueOf(i4 | ((i5 >> 12) & 112)));
                gapComposerH.Z(true);
                gapComposerH.Z(true);
            }
            objX3 = new MeasurePolicy() { // from class: androidx.compose.material3.SliderKt$SliderImpl$2$1
                @Override // androidx.compose.ui.layout.MeasurePolicy
                /* JADX INFO: renamed from: measure-3p2s80s */
                public final MeasureResult mo1measure3p2s80s(MeasureScope measureScope, List list, long j2) {
                    int iMax;
                    int iMax2;
                    int i8;
                    int i9;
                    int iC;
                    SliderState sliderState3 = sliderState2;
                    int i10 = sliderState3.f7262a;
                    float[] fArr = sliderState3.g;
                    Orientation orientation4 = sliderState3.m;
                    int size = list.size();
                    int i11 = 0;
                    while (true) {
                        if (i11 >= size) {
                            ListUtilsKt.b("Collection contains no element matching the predicate.");
                            os.d();
                            return null;
                        }
                        Measurable measurable = (Measurable) list.get(i11);
                        if (LayoutIdKt.a(measurable) == SliderComponents.THUMB) {
                            final Placeable placeableT = measurable.T(j2);
                            int size2 = list.size();
                            for (int i12 = 0; i12 < size2; i12++) {
                                Measurable measurable2 = (Measurable) list.get(i12);
                                if (LayoutIdKt.a(measurable2) == SliderComponents.TRACK) {
                                    Orientation orientation5 = Orientation.Vertical;
                                    boolean z5 = true;
                                    Placeable placeableT2 = orientation4 == orientation5 ? measurable2.T(Constraints.a(ConstraintsKt.j(0, -placeableT.f9549c, 1, j2), 0, 0, 0, 0, 14)) : measurable2.T(Constraints.a(ConstraintsKt.j(-placeableT.f9548b, 0, 2, j2), 0, 0, 0, 0, 11));
                                    final Ref$IntRef ref$IntRef = new Ref$IntRef();
                                    float fC = sliderState3.c();
                                    fArr.getClass();
                                    if (!Intrinsics.a(fC, fArr.length != 0 ? Float.valueOf(fArr[0]) : null) && !Intrinsics.a(fC, ArraysKt.K(fArr))) {
                                        z5 = false;
                                    }
                                    int iW = placeableT2.W(SliderKt.f7246f);
                                    int i13 = iW != Integer.MIN_VALUE ? iW : 0;
                                    if (orientation4 == orientation5) {
                                        iMax = Math.max(placeableT2.f9548b, placeableT.f9548b);
                                        int i14 = placeableT.f9549c;
                                        int i15 = placeableT2.f9549c;
                                        iMax2 = i14 + i15;
                                        i8 = (iMax - placeableT2.f9548b) / 2;
                                        i9 = i14 / 2;
                                        iC = (iMax - placeableT.f9548b) / 2;
                                        ref$IntRef.f71919b = (i10 <= 0 || z5) ? MathKt.c(i15 * fC) : MathKt.c((i15 - (i13 * 2)) * fC) + i13;
                                    } else {
                                        iMax = placeableT.f9548b + placeableT2.f9548b;
                                        iMax2 = Math.max(placeableT2.f9549c, placeableT.f9549c);
                                        i8 = placeableT.f9548b / 2;
                                        i9 = (iMax2 - placeableT2.f9549c) / 2;
                                        iC = (i10 <= 0 || z5) ? MathKt.c(placeableT2.f9548b * fC) : MathKt.c((placeableT2.f9548b - (i13 * 2)) * fC) + i13;
                                        ref$IntRef.f71919b = (iMax2 - placeableT.f9549c) / 2;
                                    }
                                    final int i16 = i9;
                                    final int i17 = i8;
                                    final int i18 = iC;
                                    ((SnapshotMutableIntStateImpl) sliderState3.f7267h).i(iMax);
                                    ((SnapshotMutableIntStateImpl) sliderState3.f7268i).i(iMax2);
                                    final Placeable placeable = placeableT2;
                                    return measureScope.V0(iMax, iMax2, MapsKt.c(), new Function1() { // from class: qz0
                                        @Override // kotlin.jvm.functions.Function1
                                        public final Object invoke(Object obj) {
                                            Placeable.PlacementScope placementScope = (Placeable.PlacementScope) obj;
                                            Placeable.PlacementScope.y(placementScope, placeable, i17, i16);
                                            Placeable.PlacementScope.y(placementScope, placeableT, i18, ref$IntRef.f71919b);
                                            return Unit.f71739a;
                                        }
                                    });
                                }
                            }
                            ListUtilsKt.b("Collection contains no element matching the predicate.");
                            os.d();
                            return null;
                        }
                        i11++;
                    }
                }
            };
            gapComposerH.q(objX3);
            measurePolicy = (MeasurePolicy) objX3;
            iG = gapComposerH.G();
            persistentCompositionLocalMapU = gapComposerH.U();
            modifierC = ComposedModifierKt.c(gapComposerH, modifierO2);
            ComposeUiNode.b0.getClass();
            function0 = ComposeUiNode.Companion.f9641b;
            if (applier != 0) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function0);
            } else {
                gapComposerH.o();
            }
            function2 = ComposeUiNode.Companion.f9644f;
            Updater.c(gapComposerH, measurePolicy, function2);
            function5 = ComposeUiNode.Companion.f9643e;
            Updater.c(gapComposerH, persistentCompositionLocalMapU, function5);
            function6 = ComposeUiNode.Companion.g;
            if (gapComposerH.S) {
                defpackage.a.t(iG, gapComposerH, iG, function6);
            } else {
                defpackage.a.t(iG, gapComposerH, iG, function6);
            }
            function7 = ComposeUiNode.Companion.d;
            Updater.c(gapComposerH, modifierC, function7);
            zY = gapComposerH.y(sliderState2);
            objX = gapComposerH.x();
            if (zY) {
                objX = new q80(sliderState2, 1);
                gapComposerH.q(objX);
            } else {
                objX = new q80(sliderState2, 1);
                gapComposerH.q(objX);
            }
            Modifier modifierA3 = OnRemeasuredModifierKt.a(modifier4, (Function1) objX);
            Alignment.f8582a.getClass();
            biasAlignment = Alignment.Companion.f8584b;
            measurePolicyD = BoxKt.d(biasAlignment, false);
            iG2 = gapComposerH.G();
            persistentCompositionLocalMapU2 = gapComposerH.U();
            modifierC2 = ComposedModifierKt.c(gapComposerH, modifierA3);
            if (applier != 0) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function0);
            } else {
                gapComposerH.o();
            }
            Updater.c(gapComposerH, measurePolicyD, function2);
            Updater.c(gapComposerH, persistentCompositionLocalMapU2, function5);
            if (gapComposerH.S) {
                defpackage.a.t(iG2, gapComposerH, iG2, function6);
            } else {
                defpackage.a.t(iG2, gapComposerH, iG2, function6);
            }
            Updater.c(gapComposerH, modifierC2, function7);
            i4 = (i5 >> 3) & 14;
            function3.A(sliderState2, gapComposerH, Integer.valueOf(((i5 >> 9) & 112) | i4));
            gapComposerH.Z(true);
            Modifier modifierB4 = LayoutIdKt.b(new DTFunctionNameModifier("SliderImpl"), SliderComponents.TRACK);
            measurePolicyD2 = BoxKt.d(biasAlignment, false);
            iG3 = gapComposerH.G();
            persistentCompositionLocalMapU3 = gapComposerH.U();
            modifierC3 = ComposedModifierKt.c(gapComposerH, modifierB4);
            if (applier != null) {
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
            Updater.c(gapComposerH, persistentCompositionLocalMapU3, function5);
            if (gapComposerH.S) {
                defpackage.a.t(iG3, gapComposerH, iG3, function6);
            } else {
                defpackage.a.t(iG3, gapComposerH, iG3, function6);
            }
            Updater.c(gapComposerH, modifierC3, function7);
            function4.A(sliderState2, gapComposerH, Integer.valueOf(i4 | ((i5 >> 12) & 112)));
            gapComposerH.Z(true);
            gapComposerH.Z(true);
        } else {
            sliderState2 = sliderState;
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new p1(modifier2, sliderState2, z, mutableInteractionSource, function3, function4, i2, 15);
        }
    }

    public static final float d(float f2, float[] fArr, float f3, float f4) {
        Float fValueOf;
        if (fArr.length == 0) {
            fValueOf = null;
        } else {
            float f5 = fArr[0];
            int i2 = 1;
            int length = fArr.length - 1;
            if (length == 0) {
                fValueOf = Float.valueOf(f5);
            } else {
                float fAbs = Math.abs(MathHelpersKt.b(f3, f4, f5) - f2);
                if (1 <= length) {
                    while (true) {
                        float f6 = fArr[i2];
                        float fAbs2 = Math.abs(MathHelpersKt.b(f3, f4, f6) - f2);
                        if (Float.compare(fAbs, fAbs2) > 0) {
                            f5 = f6;
                            fAbs = fAbs2;
                        }
                        if (i2 == length) {
                            break;
                        }
                        i2++;
                    }
                }
                fValueOf = Float.valueOf(f5);
            }
        }
        return fValueOf != null ? MathHelpersKt.b(f3, f4, fValueOf.floatValue()) : f2;
    }
}
