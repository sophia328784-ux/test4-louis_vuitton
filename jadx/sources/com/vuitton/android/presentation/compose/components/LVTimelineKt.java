package com.vuitton.android.presentation.compose.components;

import androidx.compose.animation.core.AnimateAsStateKt;
import androidx.compose.animation.core.AnimationSpec;
import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.ScrollKt;
import androidx.compose.foundation.ScrollState;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.Arrangement$Top$1;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.ColumnScopeInstance;
import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowMeasurePolicy;
import androidx.compose.foundation.layout.RowScopeInstance;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.layout.SpacerKt;
import androidx.compose.foundation.shape.RoundedCornerShape;
import androidx.compose.foundation.shape.RoundedCornerShapeKt;
import androidx.compose.material3.SliderKt;
import androidx.compose.material3.SliderState;
import androidx.compose.runtime.Applier;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableIntState;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.SnapshotIntStateKt;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.AlphaKt;
import androidx.compose.ui.draw.ClipKt;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.RectangleShapeKt;
import androidx.compose.ui.graphics.RectangleShapeKt$RectangleShape$1;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.layout.OnRemeasuredModifierKt;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.unit.IntOffset;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.google.ar.core.ImageMetadata;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.presentation.compose.components.LVTimelineKt;
import com.vuitton.android.presentation.extensions.ModifierExtKt;
import defpackage.cj;
import defpackage.lt;
import defpackage.md;
import defpackage.n60;
import defpackage.q1;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.functions.Function4;
import kotlin.random.Random;
import kotlin.ranges.RangesKt;
import kotlinx.coroutines.CoroutineScope;
import net.rtccloud.sdk.Call;
import org.bouncycastle.asn1.cmc.BodyPartID;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0004¨\u0006\b²\u0006\u000e\u0010\u0001\u001a\u00020\u00008\n@\nX\u008a\u008e\u0002²\u0006\u000e\u0010\u0003\u001a\u00020\u00028\n@\nX\u008a\u008e\u0002²\u0006\f\u0010\u0005\u001a\u00020\u00048\nX\u008a\u0084\u0002²\u0006\u000e\u0010\u0006\u001a\u00020\u00028\n@\nX\u008a\u008e\u0002²\u0006\u000e\u0010\u0007\u001a\u00020\u00028\n@\nX\u008a\u008e\u0002"}, d2 = {"", "firstComposition", "", "width", "", "sliderValue", "fullHeight", "inactiveWidth", "presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class LVTimelineKt {
    /* JADX WARN: Code duplicated, block: B:102:0x0135  */
    /* JADX WARN: Code duplicated, block: B:105:0x0143  */
    /* JADX WARN: Code duplicated, block: B:108:0x015d  */
    /* JADX WARN: Code duplicated, block: B:111:0x016f  */
    /* JADX WARN: Code duplicated, block: B:112:0x017c  */
    /* JADX WARN: Code duplicated, block: B:116:0x019c  */
    /* JADX WARN: Code duplicated, block: B:117:0x019e A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:188:0x0472  */
    /* JADX WARN: Code duplicated, block: B:190:0x0478  */
    /* JADX WARN: Code duplicated, block: B:193:0x048f  */
    /* JADX WARN: Code duplicated, block: B:195:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:26:0x004c  */
    /* JADX WARN: Code duplicated, block: B:28:0x0052  */
    /* JADX WARN: Code duplicated, block: B:29:0x0055  */
    /* JADX WARN: Code duplicated, block: B:33:0x005c  */
    /* JADX WARN: Code duplicated, block: B:35:0x0062  */
    /* JADX WARN: Code duplicated, block: B:36:0x0065  */
    /* JADX WARN: Code duplicated, block: B:40:0x006c  */
    /* JADX WARN: Code duplicated, block: B:42:0x0072  */
    /* JADX WARN: Code duplicated, block: B:43:0x0075  */
    /* JADX WARN: Code duplicated, block: B:47:0x007e  */
    /* JADX WARN: Code duplicated, block: B:49:0x0082  */
    /* JADX WARN: Code duplicated, block: B:51:0x0085  */
    /* JADX WARN: Code duplicated, block: B:53:0x008d  */
    /* JADX WARN: Code duplicated, block: B:54:0x0090  */
    /* JADX WARN: Code duplicated, block: B:58:0x009a  */
    /* JADX WARN: Code duplicated, block: B:60:0x00a0  */
    /* JADX WARN: Code duplicated, block: B:63:0x00a9  */
    /* JADX WARN: Code duplicated, block: B:65:0x00ae  */
    /* JADX WARN: Code duplicated, block: B:68:0x00b6  */
    /* JADX WARN: Code duplicated, block: B:70:0x00bc  */
    /* JADX WARN: Code duplicated, block: B:73:0x00c5  */
    /* JADX WARN: Code duplicated, block: B:75:0x00ca  */
    /* JADX WARN: Code duplicated, block: B:78:0x00dc  */
    /* JADX WARN: Code duplicated, block: B:79:0x00de  */
    /* JADX WARN: Code duplicated, block: B:82:0x00e7  */
    /* JADX WARN: Code duplicated, block: B:84:0x00f8  */
    /* JADX WARN: Code duplicated, block: B:94:0x0122 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:95:0x0124  */
    /* JADX WARN: Code duplicated, block: B:96:0x0127  */
    /* JADX WARN: Code duplicated, block: B:98:0x012b  */
    /* JADX WARN: Code duplicated, block: B:99:0x012f  */
    public static final void a(Modifier modifier, String str, final int i2, final int i3, float f2, long j2, long j3, long j4, Function1 function1, Function1 function2, final ComposableLambdaImpl composableLambdaImpl, Composer composer, final int i4, final int i5) {
        int i6;
        int i7;
        int i8;
        final long j5;
        long jB;
        int i9;
        Modifier modifier2;
        boolean z;
        Modifier modifier3;
        final String str2;
        final float f3;
        final Function1 function3;
        final long j6;
        GapComposer gapComposer;
        final long j7;
        final Function1 function4;
        RecomposeScopeImpl recomposeScopeImplB0;
        int i10;
        Composer$Companion$Empty$1 composer$Companion$Empty$1;
        String str3;
        float f4;
        Object objX;
        Object objX2;
        long j8;
        long j9;
        int i11;
        float f5;
        Function1 function5;
        long j10;
        String str4;
        Function1 function6;
        float f6;
        Object lVTimelineKt$LVTimeline$7$1;
        Integer num;
        Composer$Companion$Empty$1 composer$Companion$Empty$2;
        GapComposer gapComposer2;
        float f7;
        ScrollState scrollState;
        MutableIntState mutableIntState;
        Density density;
        long j11;
        final float f8;
        String str5;
        int i12;
        int i13;
        int i14;
        int i15;
        int i16;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = defpackage.a.e(modifierE, "LVTimeline-KlO9mzU");
        }
        GapComposer gapComposerH = composer.h(407934941);
        if ((i4 & 6) == 0) {
            i6 = (gapComposerH.K(modifierE) ? 4 : 2) | i4;
        } else {
            i6 = i4;
        }
        int i17 = i5 & 2;
        if (i17 == 0) {
            if ((i4 & 48) == 0) {
                i6 |= gapComposerH.K(str) ? 32 : 16;
            }
            if ((i4 & KyberEngine.KyberPolyBytes) == 0) {
                if (gapComposerH.c(152.0f)) {
                    i16 = 256;
                } else {
                    i16 = 128;
                }
                i6 |= i16;
            }
            if ((i4 & 3072) == 0) {
                if (gapComposerH.d(i2)) {
                    i15 = 2048;
                } else {
                    i15 = 1024;
                }
                i6 |= i15;
            }
            if ((i4 & 24576) == 0) {
                if (gapComposerH.d(i3)) {
                    i14 = 16384;
                } else {
                    i14 = 8192;
                }
                i6 |= i14;
            }
            i7 = i5 & 32;
            if (i7 != 0) {
                if ((196608 & i4) == 0) {
                    if (gapComposerH.c(f2)) {
                        i8 = 131072;
                    } else {
                        i8 = 65536;
                    }
                    i6 |= i8;
                }
                if ((i4 & 1572864) == 0) {
                    j5 = j2;
                    if ((i5 & 64) == 0 || !gapComposerH.e(j5)) {
                        i13 = 524288;
                    } else {
                        i13 = 1048576;
                    }
                    i6 |= i13;
                } else {
                    j5 = j2;
                }
                if ((i4 & 12582912) == 0) {
                    jB = j3;
                    if ((i5 & 128) == 0 || !gapComposerH.e(jB)) {
                        i12 = 4194304;
                    } else {
                        i12 = 8388608;
                    }
                    i6 |= i12;
                } else {
                    jB = j3;
                }
                i9 = i6 | 905969664;
                modifier2 = modifierE;
                if ((i9 & 306783379) == 306783378) {
                    z = false;
                } else {
                    z = true;
                }
                if (gapComposerH.p(i9 & 1, z)) {
                    gapComposerH.y0();
                    i10 = i4 & 1;
                    composer$Companion$Empty$1 = Composer.Companion.f7939a;
                    if (i10 != 0 || gapComposerH.h0()) {
                        if (i17 != 0) {
                            str3 = "";
                        } else {
                            str3 = str;
                        }
                        if (i7 != 0) {
                            Dp.Companion companion = Dp.f11004c;
                            f4 = Call.Parameters.DEFAULT_CAMERA_ZOOM;
                        } else {
                            f4 = f2;
                        }
                        if ((i5 & 64) != 0) {
                            j5 = LVAppDesignKitTheme.c(gapComposerH).f48361b.z;
                            i9 &= -3670017;
                        }
                        if ((i5 & 128) != 0) {
                            jB = Color.b(LVAppDesignKitTheme.h(gapComposerH).f48404e, LVAppDesignKitTheme.c(gapComposerH).f48361b.v);
                            i9 &= -29360129;
                        }
                        objX = gapComposerH.x();
                        if (objX == composer$Companion$Empty$1) {
                            objX = new n60(13);
                            gapComposerH.q(objX);
                        }
                        Function1 function7 = (Function1) objX;
                        objX2 = gapComposerH.x();
                        if (objX2 == composer$Companion$Empty$1) {
                            objX2 = new n60(14);
                            gapComposerH.q(objX2);
                        }
                        j8 = 500;
                        j9 = j5;
                        i11 = i9;
                        f5 = f4;
                        function5 = function7;
                        j10 = jB;
                        str4 = str3;
                        function6 = (Function1) objX2;
                    } else {
                        gapComposerH.D();
                        if ((i5 & 64) != 0) {
                            i9 &= -3670017;
                        }
                        if ((i5 & 128) != 0) {
                            i9 &= -29360129;
                        }
                        f5 = f2;
                        function5 = function1;
                        j9 = j5;
                        j10 = jB;
                        function6 = function2;
                        i11 = i9;
                        str4 = str;
                        j8 = j4;
                    }
                    gapComposerH.a0();
                    OpaqueKey opaqueKey = ComposerKt.f7940a;
                    if (i3 >= 1) {
                        md.n("Max must be strictly greater than 0");
                        return;
                    }
                    if (i2 >= 0 || i2 >= i3) {
                        md.n("target must be between 0 (inclusive) and max (exclusive)");
                        return;
                    }
                    if (j8 < 0) {
                        md.n("Delay first animation must be positive");
                        return;
                    }
                    if (Color.d(j9) < 1.0f) {
                        md.n("Active color must be fully opaque");
                        return;
                    }
                    final int i18 = i3 - 1;
                    final float f9 = LVAppDesignKitTheme.d(gapComposerH).d;
                    float f10 = LVAppDesignKitTheme.d(gapComposerH).g;
                    final float f11 = LVAppDesignKitTheme.d(gapComposerH).f48390j;
                    Dp.Companion companion2 = Dp.f11004c;
                    float f12 = f5 - (f11 / 2.0f);
                    Object objX3 = gapComposerH.x();
                    if (objX3 == composer$Companion$Empty$1) {
                        objX3 = EffectsKt.j(EmptyCoroutineContext.f71840b, gapComposerH);
                        gapComposerH.q(objX3);
                    }
                    CoroutineScope coroutineScope = (CoroutineScope) objX3;
                    long j12 = j8;
                    Density density2 = (Density) gapComposerH.k(CompositionLocalsKt.f10031h);
                    Object objX4 = gapComposerH.x();
                    if (objX4 == composer$Companion$Empty$1) {
                        objX4 = new SliderState(Call.Parameters.DEFAULT_CAMERA_ZOOM, 0, null, RangesKt.h(Call.Parameters.DEFAULT_CAMERA_ZOOM, i3), 7, null);
                        gapComposerH.q(objX4);
                    }
                    SliderState sliderState = (SliderState) objX4;
                    ScrollState scrollStateB = ScrollKt.b(gapComposerH);
                    Object objX5 = gapComposerH.x();
                    if (objX5 == composer$Companion$Empty$1) {
                        objX5 = SnapshotStateKt.g(Boolean.TRUE);
                        gapComposerH.q(objX5);
                    }
                    MutableState mutableState = (MutableState) objX5;
                    Object objX6 = gapComposerH.x();
                    if (objX6 == composer$Companion$Empty$1) {
                        objX6 = SnapshotIntStateKt.a(0);
                        gapComposerH.q(objX6);
                    }
                    MutableIntState mutableIntState2 = (MutableIntState) objX6;
                    float f13 = i2;
                    float fAbs = Math.abs(f13 - sliderState.d());
                    sliderState.e(((Number) AnimateAsStateKt.b(((Boolean) mutableState.getF10755b()).booleanValue() ? Call.Parameters.DEFAULT_CAMERA_ZOOM : f13, (AnimationSpec) function5.invoke(Float.valueOf(fAbs)), "Slider progress", gapComposerH, 3072, 20).getF10755b()).floatValue());
                    Integer numValueOf = Integer.valueOf(i2);
                    Function1 function8 = function5;
                    boolean zK = ((i11 & 7168) == 2048) | ((i11 & 234881024) == 67108864) | gapComposerH.K(density2) | ((i11 & 896) == 256) | gapComposerH.c(f10) | gapComposerH.c(f12) | gapComposerH.y(coroutineScope) | gapComposerH.K(scrollStateB) | gapComposerH.c(fAbs);
                    Object objX7 = gapComposerH.x();
                    if (zK || objX7 == composer$Companion$Empty$1) {
                        f6 = f12;
                        num = numValueOf;
                        composer$Companion$Empty$2 = composer$Companion$Empty$1;
                        gapComposer2 = gapComposerH;
                        f7 = 152.0f;
                        scrollState = scrollStateB;
                        mutableIntState = mutableIntState2;
                        density = density2;
                        lVTimelineKt$LVTimeline$7$1 = new LVTimelineKt$LVTimeline$7$1(j12, density, mutableState, i2, f10, f6, coroutineScope, mutableIntState, scrollState, function6, fAbs, null);
                        j11 = j12;
                        f8 = f10;
                        gapComposer2.q(lVTimelineKt$LVTimeline$7$1);
                    } else {
                        density = density2;
                        lVTimelineKt$LVTimeline$7$1 = objX7;
                        num = numValueOf;
                        f6 = f12;
                        f8 = f10;
                        gapComposer2 = gapComposerH;
                        composer$Companion$Empty$2 = composer$Companion$Empty$1;
                        f7 = 152.0f;
                        scrollState = scrollStateB;
                        mutableIntState = mutableIntState2;
                        j11 = j12;
                    }
                    EffectsKt.e(gapComposer2, num, (Function2) lVTimelineKt$LVTimeline$7$1);
                    Object objX8 = gapComposer2.x();
                    Composer$Companion$Empty$1 composer$Companion$Empty$3 = composer$Companion$Empty$2;
                    if (objX8 == composer$Companion$Empty$3) {
                        objX8 = new q1(mutableIntState, 8);
                        gapComposer2.q(objX8);
                    }
                    modifier3 = modifier2;
                    Modifier modifierA = ScrollKt.a(OnRemeasuredModifierKt.a(modifier3, (Function1) objX8), scrollState, false, 14);
                    Alignment.f8582a.getClass();
                    RowMeasurePolicy rowMeasurePolicyA = RowKt.a(Arrangement.f4918a, Alignment.Companion.l, gapComposer2, 48);
                    int iHashCode = Long.hashCode(gapComposer2.T);
                    PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposer2.U();
                    Modifier modifierC = ComposedModifierKt.c(gapComposer2, modifierA);
                    ComposeUiNode.b0.getClass();
                    Function0 function0 = ComposeUiNode.Companion.f9641b;
                    if (gapComposer2.f7976a == null) {
                        ComposablesKt.b();
                        throw null;
                    }
                    gapComposer2.B();
                    if (gapComposer2.S) {
                        gapComposer2.C(function0);
                    } else {
                        gapComposer2.o();
                    }
                    Updater.c(gapComposer2, rowMeasurePolicyA, ComposeUiNode.Companion.f9644f);
                    Updater.c(gapComposer2, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
                    Updater.c(gapComposer2, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
                    Updater.b(gapComposer2, ComposeUiNode.Companion.f9645h);
                    Updater.c(gapComposer2, modifierC, ComposeUiNode.Companion.d);
                    Object objX9 = gapComposer2.x();
                    if (objX9 == composer$Companion$Empty$3) {
                        objX9 = SnapshotIntStateKt.a(0);
                        gapComposer2.q(objX9);
                    }
                    final MutableIntState mutableIntState3 = (MutableIntState) objX9;
                    DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier("LVTimeline-KlO9mzU");
                    boolean z2 = (i11 & 112) == 32;
                    Object objX10 = gapComposer2.x();
                    if (z2 || objX10 == composer$Companion$Empty$3) {
                        str5 = str4;
                        objX10 = new lt(str5, 19);
                        gapComposer2.q(objX10);
                    } else {
                        str5 = str4;
                    }
                    Modifier modifierS = SizeKt.s(PaddingKt.m(ModifierExtKt.a(dTFunctionNameModifier, null, (Function1) objX10, 3), f6, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 14), f7 * i3);
                    final Density density3 = density;
                    final long j13 = j9;
                    final long j14 = j10;
                    String str6 = str5;
                    GapComposer gapComposer3 = gapComposer2;
                    SliderKt.b(sliderState, modifierS, false, null, null, ComposableLambdaKt.b(224873594, new Function3() { // from class: s80
                        @Override // kotlin.jvm.functions.Function3
                        public final Object A(Object obj, Object obj2, Object obj3) {
                            Composer composer2 = (Composer) obj2;
                            int iIntValue = ((Integer) obj3).intValue();
                            ((SliderState) obj).getClass();
                            if (composer2.p(iIntValue & 1, (iIntValue & 17) != 16)) {
                                OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                                DTFunctionNameModifier dTFunctionNameModifier2 = new DTFunctionNameModifier("LVTimeline_KlO9mzU$lambda$16$4");
                                final Density density4 = density3;
                                boolean zK2 = composer2.K(density4);
                                final float f14 = f11;
                                boolean zC = zK2 | composer2.c(f14);
                                final float f15 = f9;
                                boolean zC2 = zC | composer2.c(f15);
                                Object objX11 = composer2.x();
                                if (zC2 || objX11 == Composer.Companion.f7939a) {
                                    final MutableIntState mutableIntState4 = mutableIntState3;
                                    objX11 = new Function1() { // from class: v80
                                        @Override // kotlin.jvm.functions.Function1
                                        public final Object invoke(Object obj4) {
                                            Density density5 = (Density) obj4;
                                            density5.getClass();
                                            float fK1 = density4.k1((-mutableIntState4.f()) / 2);
                                            float f16 = f14 / 2.0f;
                                            Dp.Companion companion3 = Dp.f11004c;
                                            return new IntOffset(((long) ((int) density5.u1((fK1 + f16) - (f15 / 2.0f)))) & BodyPartID.bodyIdMax);
                                        }
                                    };
                                    composer2.q(objX11);
                                }
                                Modifier modifierA2 = OffsetKt.a(dTFunctionNameModifier2, (Function1) objX11);
                                RoundedCornerShape roundedCornerShape = RoundedCornerShapeKt.f5846a;
                                Modifier modifierO = SizeKt.o(ClipKt.a(modifierA2, roundedCornerShape), f14);
                                long j15 = LVAppDesignKitTheme.c(composer2).f48361b.y;
                                RectangleShapeKt$RectangleShape$1 rectangleShapeKt$RectangleShape$1 = RectangleShapeKt.f8913a;
                                Modifier modifierB = BackgroundKt.b(modifierO, j15, rectangleShapeKt$RectangleShape$1);
                                Alignment.f8582a.getClass();
                                MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8587f, false);
                                int iHashCode2 = Long.hashCode(composer2.getT());
                                PersistentCompositionLocalMap persistentCompositionLocalMapN = composer2.n();
                                Modifier modifierC2 = ComposedModifierKt.c(composer2, modifierB);
                                ComposeUiNode.b0.getClass();
                                Function0 function9 = ComposeUiNode.Companion.f9641b;
                                if (composer2.getF7976a() == null) {
                                    ComposablesKt.b();
                                    throw null;
                                }
                                composer2.B();
                                if (composer2.getS()) {
                                    composer2.C(function9);
                                } else {
                                    composer2.o();
                                }
                                Updater.c(composer2, measurePolicyD, ComposeUiNode.Companion.f9644f);
                                Updater.c(composer2, persistentCompositionLocalMapN, ComposeUiNode.Companion.f9643e);
                                Updater.c(composer2, Integer.valueOf(iHashCode2), ComposeUiNode.Companion.g);
                                Updater.b(composer2, ComposeUiNode.Companion.f9645h);
                                Updater.c(composer2, modifierC2, ComposeUiNode.Companion.d);
                                Modifier modifierA3 = ClipKt.a(new DTFunctionNameModifier("LVTimeline_KlO9mzU$lambda$16$4"), roundedCornerShape);
                                float f16 = f14 - LVAppDesignKitTheme.d(composer2).d;
                                Dp.Companion companion3 = Dp.f11004c;
                                BoxKt.a(BackgroundKt.b(SizeKt.o(modifierA3, f16), j13, rectangleShapeKt$RectangleShape$1), composer2, 0);
                                composer2.r();
                            } else {
                                composer2.D();
                            }
                            return Unit.f71739a;
                        }
                    }, gapComposer2), ComposableLambdaKt.b(-2122363269, new Function3() { // from class: t80
                        @Override // kotlin.jvm.functions.Function3
                        public final Object A(Object obj, Object obj2, Object obj3) {
                            float fL1;
                            SliderState sliderState2 = (SliderState) obj;
                            Composer composer2 = (Composer) obj2;
                            int iIntValue = ((Integer) obj3).intValue();
                            sliderState2.getClass();
                            if ((iIntValue & 6) == 0) {
                                iIntValue |= (iIntValue & 8) == 0 ? composer2.K(sliderState2) : composer2.y(sliderState2) ? 4 : 2;
                            }
                            int i19 = iIntValue;
                            if (composer2.p(i19 & 1, (i19 & 19) != 18)) {
                                OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                                Object objX11 = composer2.x();
                                Composer$Companion$Empty$1 composer$Companion$Empty$4 = Composer.Companion.f7939a;
                                if (objX11 == composer$Companion$Empty$4) {
                                    objX11 = SnapshotIntStateKt.a(0);
                                    composer2.q(objX11);
                                }
                                MutableIntState mutableIntState4 = (MutableIntState) objX11;
                                Modifier modifierD = tr.d("LVTimeline_KlO9mzU$lambda$16$5", 1.0f);
                                Object objX12 = composer2.x();
                                if (objX12 == composer$Companion$Empty$4) {
                                    objX12 = new q1(mutableIntState3, 6);
                                    composer2.q(objX12);
                                }
                                Modifier modifierA2 = OnRemeasuredModifierKt.a(modifierD, (Function1) objX12);
                                Alignment.f8582a.getClass();
                                MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
                                int iHashCode2 = Long.hashCode(composer2.getT());
                                PersistentCompositionLocalMap persistentCompositionLocalMapN = composer2.n();
                                Modifier modifierC2 = ComposedModifierKt.c(composer2, modifierA2);
                                ComposeUiNode.b0.getClass();
                                Function0 function9 = ComposeUiNode.Companion.f9641b;
                                if (composer2.getF7976a() == null) {
                                    ComposablesKt.b();
                                    throw null;
                                }
                                composer2.B();
                                if (composer2.getS()) {
                                    composer2.C(function9);
                                } else {
                                    composer2.o();
                                }
                                Updater.c(composer2, measurePolicyD, ComposeUiNode.Companion.f9644f);
                                Updater.c(composer2, persistentCompositionLocalMapN, ComposeUiNode.Companion.f9643e);
                                Updater.c(composer2, Integer.valueOf(iHashCode2), ComposeUiNode.Companion.g);
                                Updater.b(composer2, ComposeUiNode.Companion.f9645h);
                                Updater.c(composer2, modifierC2, ComposeUiNode.Companion.d);
                                float f14 = f8;
                                float f15 = f9;
                                Dp.Companion companion3 = Dp.f11004c;
                                float f16 = f14 / 2.0f;
                                Modifier modifierF = SizeKt.f(PaddingKt.m(Modifier.Companion.f8607b, f16, (f14 - f15) / 2.0f, f16, Call.Parameters.DEFAULT_CAMERA_ZOOM, 8), f15);
                                DTFunctionNameModifier dTFunctionNameModifier2 = new DTFunctionNameModifier("LVTimeline_KlO9mzU$lambda$16$5");
                                long j15 = j14;
                                Modifier modifierA3 = AlphaKt.a(dTFunctionNameModifier2, Color.d(j15));
                                int i20 = i18;
                                int i21 = i3;
                                Modifier modifierD2 = SizeKt.d(modifierF, i20 / i21);
                                Object objX13 = composer2.x();
                                if (objX13 == composer$Companion$Empty$4) {
                                    objX13 = new q1(mutableIntState4, 7);
                                    composer2.q(objX13);
                                }
                                Modifier modifierA4 = OnRemeasuredModifierKt.a(modifierD2, (Function1) objX13);
                                Object objX14 = composer2.x();
                                if (objX14 == composer$Companion$Empty$4) {
                                    objX14 = new Color(Color.b(1.0f, j15));
                                    composer2.q(objX14);
                                }
                                LVTimelineKt.b(modifierA3, modifierA4, null, ((Color) objX14).f8872a, i21, f14, null, null, composer2, 3072, 196);
                                Density density4 = (Density) composer2.k(CompositionLocalsKt.f10031h);
                                if (i20 == 0) {
                                    fL1 = Call.Parameters.DEFAULT_CAMERA_ZOOM;
                                } else {
                                    fL1 = density4.l1(sliderState2.d() * (mutableIntState4.f() / i20));
                                }
                                Modifier modifierS2 = SizeKt.s(modifierF, fL1);
                                boolean z3 = (i19 & 14) == 4 || ((i19 & 8) != 0 && composer2.y(sliderState2));
                                Object objX15 = composer2.x();
                                if (z3 || objX15 == composer$Companion$Empty$4) {
                                    objX15 = new q80(sliderState2, 0);
                                    composer2.q(objX15);
                                }
                                LVTimelineKt.b(null, modifierS2, null, j13, i21, f14, (Function1) objX15, ComposableLambdaKt.b(-1716746872, new cf(composableLambdaImpl, sliderState2, 7), composer2), composer2, 12582912, 5);
                                composer2.r();
                            } else {
                                composer2.D();
                            }
                            return Unit.f71739a;
                        }
                    }, gapComposer2), gapComposer3, 1769856 | SliderState.t, 24);
                    gapComposer3.Z(true);
                    j5 = j13;
                    j6 = j14;
                    gapComposer = gapComposer3;
                    function4 = function8;
                    f3 = f5;
                    j7 = j11;
                    function3 = function6;
                    str2 = str6;
                } else {
                    modifier3 = modifier2;
                    gapComposerH.D();
                    str2 = str;
                    f3 = f2;
                    function3 = function2;
                    j6 = jB;
                    gapComposer = gapComposerH;
                    j7 = j4;
                    function4 = function1;
                }
                recomposeScopeImplB0 = gapComposer.b0();
                if (recomposeScopeImplB0 != null) {
                    final Modifier modifier4 = modifier3;
                    recomposeScopeImplB0.d = new Function2() { // from class: u80
                        @Override // kotlin.jvm.functions.Function2
                        public final Object invoke(Object obj, Object obj2) {
                            ((Integer) obj2).getClass();
                            int iA = RecomposeScopeImplKt.a(i4 | 1);
                            LVTimelineKt.a(modifier4, str2, i2, i3, f3, j5, j6, j7, function4, function3, composableLambdaImpl, (Composer) obj, iA, i5);
                            return Unit.f71739a;
                        }
                    };
                }
            }
            i6 |= ImageMetadata.EDGE_MODE;
            if ((i4 & 1572864) == 0) {
                j5 = j2;
                if ((i5 & 64) == 0) {
                    i13 = 524288;
                } else {
                    i13 = 524288;
                }
                i6 |= i13;
            } else {
                j5 = j2;
            }
            if ((i4 & 12582912) == 0) {
                jB = j3;
                if ((i5 & 128) == 0) {
                    i12 = 4194304;
                } else {
                    i12 = 4194304;
                }
                i6 |= i12;
            } else {
                jB = j3;
            }
            i9 = i6 | 905969664;
            modifier2 = modifierE;
            if ((i9 & 306783379) == 306783378) {
                z = false;
            } else {
                z = true;
            }
            if (gapComposerH.p(i9 & 1, z)) {
                gapComposerH.y0();
                i10 = i4 & 1;
                composer$Companion$Empty$1 = Composer.Companion.f7939a;
                if (i10 != 0) {
                    if (i17 != 0) {
                        str3 = "";
                    } else {
                        str3 = str;
                    }
                    if (i7 != 0) {
                        Dp.Companion companion3 = Dp.f11004c;
                        f4 = Call.Parameters.DEFAULT_CAMERA_ZOOM;
                    } else {
                        f4 = f2;
                    }
                    if ((i5 & 64) != 0) {
                        j5 = LVAppDesignKitTheme.c(gapComposerH).f48361b.z;
                        i9 &= -3670017;
                    }
                    if ((i5 & 128) != 0) {
                        jB = Color.b(LVAppDesignKitTheme.h(gapComposerH).f48404e, LVAppDesignKitTheme.c(gapComposerH).f48361b.v);
                        i9 &= -29360129;
                    }
                    objX = gapComposerH.x();
                    if (objX == composer$Companion$Empty$1) {
                        objX = new n60(13);
                        gapComposerH.q(objX);
                    }
                    Function1 function9 = (Function1) objX;
                    objX2 = gapComposerH.x();
                    if (objX2 == composer$Companion$Empty$1) {
                        objX2 = new n60(14);
                        gapComposerH.q(objX2);
                    }
                    j8 = 500;
                    j9 = j5;
                    i11 = i9;
                    f5 = f4;
                    function5 = function9;
                    j10 = jB;
                    str4 = str3;
                    function6 = (Function1) objX2;
                } else {
                    if (i17 != 0) {
                        str3 = "";
                    } else {
                        str3 = str;
                    }
                    if (i7 != 0) {
                        Dp.Companion companion4 = Dp.f11004c;
                        f4 = Call.Parameters.DEFAULT_CAMERA_ZOOM;
                    } else {
                        f4 = f2;
                    }
                    if ((i5 & 64) != 0) {
                        j5 = LVAppDesignKitTheme.c(gapComposerH).f48361b.z;
                        i9 &= -3670017;
                    }
                    if ((i5 & 128) != 0) {
                        jB = Color.b(LVAppDesignKitTheme.h(gapComposerH).f48404e, LVAppDesignKitTheme.c(gapComposerH).f48361b.v);
                        i9 &= -29360129;
                    }
                    objX = gapComposerH.x();
                    if (objX == composer$Companion$Empty$1) {
                        objX = new n60(13);
                        gapComposerH.q(objX);
                    }
                    Function1 function10 = (Function1) objX;
                    objX2 = gapComposerH.x();
                    if (objX2 == composer$Companion$Empty$1) {
                        objX2 = new n60(14);
                        gapComposerH.q(objX2);
                    }
                    j8 = 500;
                    j9 = j5;
                    i11 = i9;
                    f5 = f4;
                    function5 = function10;
                    j10 = jB;
                    str4 = str3;
                    function6 = (Function1) objX2;
                }
                gapComposerH.a0();
                OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                if (i3 >= 1) {
                    md.n("Max must be strictly greater than 0");
                    return;
                } else {
                    if (i2 >= 0) {
                    }
                    md.n("target must be between 0 (inclusive) and max (exclusive)");
                    return;
                }
            }
            modifier3 = modifier2;
            gapComposerH.D();
            str2 = str;
            f3 = f2;
            function3 = function2;
            j6 = jB;
            gapComposer = gapComposerH;
            j7 = j4;
            function4 = function1;
            recomposeScopeImplB0 = gapComposer.b0();
            if (recomposeScopeImplB0 != null) {
                final Modifier modifier5 = modifier3;
                recomposeScopeImplB0.d = new Function2() { // from class: u80
                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj, Object obj2) {
                        ((Integer) obj2).getClass();
                        int iA = RecomposeScopeImplKt.a(i4 | 1);
                        LVTimelineKt.a(modifier5, str2, i2, i3, f3, j5, j6, j7, function4, function3, composableLambdaImpl, (Composer) obj, iA, i5);
                        return Unit.f71739a;
                    }
                };
            }
        }
        i6 |= 48;
        if ((i4 & KyberEngine.KyberPolyBytes) == 0) {
            if (gapComposerH.c(152.0f)) {
                i16 = 256;
            } else {
                i16 = 128;
            }
            i6 |= i16;
        }
        if ((i4 & 3072) == 0) {
            if (gapComposerH.d(i2)) {
                i15 = 2048;
            } else {
                i15 = 1024;
            }
            i6 |= i15;
        }
        if ((i4 & 24576) == 0) {
            if (gapComposerH.d(i3)) {
                i14 = 16384;
            } else {
                i14 = 8192;
            }
            i6 |= i14;
        }
        i7 = i5 & 32;
        if (i7 != 0) {
            if ((196608 & i4) == 0) {
                if (gapComposerH.c(f2)) {
                    i8 = 131072;
                } else {
                    i8 = 65536;
                }
                i6 |= i8;
            }
            if ((i4 & 1572864) == 0) {
                j5 = j2;
                if ((i5 & 64) == 0) {
                    i13 = 524288;
                } else {
                    i13 = 524288;
                }
                i6 |= i13;
            } else {
                j5 = j2;
            }
            if ((i4 & 12582912) == 0) {
                jB = j3;
                if ((i5 & 128) == 0) {
                    i12 = 4194304;
                } else {
                    i12 = 4194304;
                }
                i6 |= i12;
            } else {
                jB = j3;
            }
            i9 = i6 | 905969664;
            modifier2 = modifierE;
            if ((i9 & 306783379) == 306783378) {
                z = false;
            } else {
                z = true;
            }
            if (gapComposerH.p(i9 & 1, z)) {
                gapComposerH.y0();
                i10 = i4 & 1;
                composer$Companion$Empty$1 = Composer.Companion.f7939a;
                if (i10 != 0) {
                    if (i17 != 0) {
                        str3 = "";
                    } else {
                        str3 = str;
                    }
                    if (i7 != 0) {
                        Dp.Companion companion5 = Dp.f11004c;
                        f4 = Call.Parameters.DEFAULT_CAMERA_ZOOM;
                    } else {
                        f4 = f2;
                    }
                    if ((i5 & 64) != 0) {
                        j5 = LVAppDesignKitTheme.c(gapComposerH).f48361b.z;
                        i9 &= -3670017;
                    }
                    if ((i5 & 128) != 0) {
                        jB = Color.b(LVAppDesignKitTheme.h(gapComposerH).f48404e, LVAppDesignKitTheme.c(gapComposerH).f48361b.v);
                        i9 &= -29360129;
                    }
                    objX = gapComposerH.x();
                    if (objX == composer$Companion$Empty$1) {
                        objX = new n60(13);
                        gapComposerH.q(objX);
                    }
                    Function1 function11 = (Function1) objX;
                    objX2 = gapComposerH.x();
                    if (objX2 == composer$Companion$Empty$1) {
                        objX2 = new n60(14);
                        gapComposerH.q(objX2);
                    }
                    j8 = 500;
                    j9 = j5;
                    i11 = i9;
                    f5 = f4;
                    function5 = function11;
                    j10 = jB;
                    str4 = str3;
                    function6 = (Function1) objX2;
                } else {
                    if (i17 != 0) {
                        str3 = "";
                    } else {
                        str3 = str;
                    }
                    if (i7 != 0) {
                        Dp.Companion companion6 = Dp.f11004c;
                        f4 = Call.Parameters.DEFAULT_CAMERA_ZOOM;
                    } else {
                        f4 = f2;
                    }
                    if ((i5 & 64) != 0) {
                        j5 = LVAppDesignKitTheme.c(gapComposerH).f48361b.z;
                        i9 &= -3670017;
                    }
                    if ((i5 & 128) != 0) {
                        jB = Color.b(LVAppDesignKitTheme.h(gapComposerH).f48404e, LVAppDesignKitTheme.c(gapComposerH).f48361b.v);
                        i9 &= -29360129;
                    }
                    objX = gapComposerH.x();
                    if (objX == composer$Companion$Empty$1) {
                        objX = new n60(13);
                        gapComposerH.q(objX);
                    }
                    Function1 function12 = (Function1) objX;
                    objX2 = gapComposerH.x();
                    if (objX2 == composer$Companion$Empty$1) {
                        objX2 = new n60(14);
                        gapComposerH.q(objX2);
                    }
                    j8 = 500;
                    j9 = j5;
                    i11 = i9;
                    f5 = f4;
                    function5 = function12;
                    j10 = jB;
                    str4 = str3;
                    function6 = (Function1) objX2;
                }
                gapComposerH.a0();
                OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                if (i3 >= 1) {
                    md.n("Max must be strictly greater than 0");
                    return;
                } else {
                    if (i2 >= 0) {
                    }
                    md.n("target must be between 0 (inclusive) and max (exclusive)");
                    return;
                }
            }
            modifier3 = modifier2;
            gapComposerH.D();
            str2 = str;
            f3 = f2;
            function3 = function2;
            j6 = jB;
            gapComposer = gapComposerH;
            j7 = j4;
            function4 = function1;
            recomposeScopeImplB0 = gapComposer.b0();
            if (recomposeScopeImplB0 != null) {
                final Modifier modifier6 = modifier3;
                recomposeScopeImplB0.d = new Function2() { // from class: u80
                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj, Object obj2) {
                        ((Integer) obj2).getClass();
                        int iA = RecomposeScopeImplKt.a(i4 | 1);
                        LVTimelineKt.a(modifier6, str2, i2, i3, f3, j5, j6, j7, function4, function3, composableLambdaImpl, (Composer) obj, iA, i5);
                        return Unit.f71739a;
                    }
                };
            }
        }
        i6 |= ImageMetadata.EDGE_MODE;
        if ((i4 & 1572864) == 0) {
            j5 = j2;
            if ((i5 & 64) == 0) {
                i13 = 524288;
            } else {
                i13 = 524288;
            }
            i6 |= i13;
        } else {
            j5 = j2;
        }
        if ((i4 & 12582912) == 0) {
            jB = j3;
            if ((i5 & 128) == 0) {
                i12 = 4194304;
            } else {
                i12 = 4194304;
            }
            i6 |= i12;
        } else {
            jB = j3;
        }
        i9 = i6 | 905969664;
        modifier2 = modifierE;
        if ((i9 & 306783379) == 306783378) {
            z = false;
        } else {
            z = true;
        }
        if (gapComposerH.p(i9 & 1, z)) {
            gapComposerH.y0();
            i10 = i4 & 1;
            composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (i10 != 0) {
                if (i17 != 0) {
                    str3 = "";
                } else {
                    str3 = str;
                }
                if (i7 != 0) {
                    Dp.Companion companion7 = Dp.f11004c;
                    f4 = Call.Parameters.DEFAULT_CAMERA_ZOOM;
                } else {
                    f4 = f2;
                }
                if ((i5 & 64) != 0) {
                    j5 = LVAppDesignKitTheme.c(gapComposerH).f48361b.z;
                    i9 &= -3670017;
                }
                if ((i5 & 128) != 0) {
                    jB = Color.b(LVAppDesignKitTheme.h(gapComposerH).f48404e, LVAppDesignKitTheme.c(gapComposerH).f48361b.v);
                    i9 &= -29360129;
                }
                objX = gapComposerH.x();
                if (objX == composer$Companion$Empty$1) {
                    objX = new n60(13);
                    gapComposerH.q(objX);
                }
                Function1 function13 = (Function1) objX;
                objX2 = gapComposerH.x();
                if (objX2 == composer$Companion$Empty$1) {
                    objX2 = new n60(14);
                    gapComposerH.q(objX2);
                }
                j8 = 500;
                j9 = j5;
                i11 = i9;
                f5 = f4;
                function5 = function13;
                j10 = jB;
                str4 = str3;
                function6 = (Function1) objX2;
            } else {
                if (i17 != 0) {
                    str3 = "";
                } else {
                    str3 = str;
                }
                if (i7 != 0) {
                    Dp.Companion companion8 = Dp.f11004c;
                    f4 = Call.Parameters.DEFAULT_CAMERA_ZOOM;
                } else {
                    f4 = f2;
                }
                if ((i5 & 64) != 0) {
                    j5 = LVAppDesignKitTheme.c(gapComposerH).f48361b.z;
                    i9 &= -3670017;
                }
                if ((i5 & 128) != 0) {
                    jB = Color.b(LVAppDesignKitTheme.h(gapComposerH).f48404e, LVAppDesignKitTheme.c(gapComposerH).f48361b.v);
                    i9 &= -29360129;
                }
                objX = gapComposerH.x();
                if (objX == composer$Companion$Empty$1) {
                    objX = new n60(13);
                    gapComposerH.q(objX);
                }
                Function1 function14 = (Function1) objX;
                objX2 = gapComposerH.x();
                if (objX2 == composer$Companion$Empty$1) {
                    objX2 = new n60(14);
                    gapComposerH.q(objX2);
                }
                j8 = 500;
                j9 = j5;
                i11 = i9;
                f5 = f4;
                function5 = function14;
                j10 = jB;
                str4 = str3;
                function6 = (Function1) objX2;
            }
            gapComposerH.a0();
            OpaqueKey opaqueKey4 = ComposerKt.f7940a;
            if (i3 >= 1) {
                md.n("Max must be strictly greater than 0");
                return;
            } else {
                if (i2 >= 0) {
                }
                md.n("target must be between 0 (inclusive) and max (exclusive)");
                return;
            }
        }
        modifier3 = modifier2;
        gapComposerH.D();
        str2 = str;
        f3 = f2;
        function3 = function2;
        j6 = jB;
        gapComposer = gapComposerH;
        j7 = j4;
        function4 = function1;
        recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            final Modifier modifier7 = modifier3;
            recomposeScopeImplB0.d = new Function2() { // from class: u80
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    ((Integer) obj2).getClass();
                    int iA = RecomposeScopeImplKt.a(i4 | 1);
                    LVTimelineKt.a(modifier7, str2, i2, i3, f3, j5, j6, j7, function4, function3, composableLambdaImpl, (Composer) obj, iA, i5);
                    return Unit.f71739a;
                }
            };
        }
    }

    /* JADX WARN: Code duplicated, block: B:101:0x026d  */
    /* JADX WARN: Code duplicated, block: B:103:0x0271  */
    /* JADX WARN: Code duplicated, block: B:106:0x0281  */
    /* JADX WARN: Code duplicated, block: B:109:0x0242 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:112:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:53:0x00b1  */
    /* JADX WARN: Code duplicated, block: B:54:0x00b3  */
    /* JADX WARN: Code duplicated, block: B:57:0x00bc A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:58:0x00be  */
    /* JADX WARN: Code duplicated, block: B:59:0x00c4  */
    /* JADX WARN: Code duplicated, block: B:62:0x00cd  */
    /* JADX WARN: Code duplicated, block: B:64:0x00d5  */
    /* JADX WARN: Code duplicated, block: B:66:0x00e2  */
    /* JADX WARN: Code duplicated, block: B:68:0x00e5  */
    /* JADX WARN: Code duplicated, block: B:69:0x00ed  */
    /* JADX WARN: Code duplicated, block: B:72:0x0119  */
    /* JADX WARN: Code duplicated, block: B:74:0x0120  */
    /* JADX WARN: Code duplicated, block: B:75:0x0124  */
    /* JADX WARN: Code duplicated, block: B:78:0x0176  */
    /* JADX WARN: Code duplicated, block: B:80:0x017f  */
    /* JADX WARN: Code duplicated, block: B:81:0x0183  */
    /* JADX WARN: Code duplicated, block: B:84:0x019b  */
    /* JADX WARN: Code duplicated, block: B:86:0x01cb  */
    /* JADX WARN: Code duplicated, block: B:88:0x01d2  */
    /* JADX WARN: Code duplicated, block: B:89:0x01d6  */
    /* JADX WARN: Code duplicated, block: B:92:0x0206  */
    /* JADX WARN: Code duplicated, block: B:93:0x0208  */
    /* JADX WARN: Code duplicated, block: B:99:0x0269  */
    public static final void b(Modifier modifier, final Modifier modifier2, Modifier modifier3, final long j2, final int i2, float f2, Function1 function1, Function4 function4, Composer composer, final int i3, final int i4) {
        Function1 function2;
        int i5;
        boolean z;
        Modifier dTFunctionNameModifier;
        final Function4 function5;
        Function1 function3;
        final Modifier modifier4;
        RecomposeScopeImpl recomposeScopeImplB0;
        Modifier dTFunctionNameModifier2;
        Function4 function6;
        MeasurePolicy measurePolicyD;
        int iHashCode;
        PersistentCompositionLocalMap persistentCompositionLocalMapU;
        Modifier modifierC;
        Function0 function0;
        Function2 function7;
        Function2 function8;
        int i6;
        Function2 function9;
        Function1 function10;
        Function4 function11;
        Function2 function12;
        RectangleShapeKt$RectangleShape$1 rectangleShapeKt$RectangleShape$1;
        RowMeasurePolicy rowMeasurePolicyA;
        int iHashCode2;
        PersistentCompositionLocalMap persistentCompositionLocalMapU2;
        Modifier modifierC2;
        int i7;
        ColumnMeasurePolicy columnMeasurePolicyA;
        int iHashCode3;
        PersistentCompositionLocalMap persistentCompositionLocalMapU3;
        Modifier modifierC3;
        Function0 function13;
        float f3;
        Object objX;
        Modifier modifierE = modifier;
        final float f4 = f2;
        if (modifierE != null) {
            modifierE = defpackage.a.e(modifierE, "TrackLine-oL2erpo");
        }
        GapComposer gapComposerH = composer.h(-1727017514);
        Applier applier = gapComposerH.f7976a;
        int i8 = i4 & 1;
        int i9 = (i8 != 0 ? i3 | 6 : (gapComposerH.K(modifierE) ? 4 : 2) | i3) | (gapComposerH.K(modifier2) ? 32 : 16) | KyberEngine.KyberPolyBytes;
        if ((i3 & 3072) == 0) {
            i9 |= gapComposerH.e(j2) ? 2048 : 1024;
        }
        int i10 = i9 | (gapComposerH.d(i2) ? 16384 : 8192) | (gapComposerH.c(f4) ? 131072 : 65536);
        int i11 = i4 & 64;
        if (i11 != 0) {
            i5 = i10 | 1572864;
            function2 = function1;
        } else {
            function2 = function1;
            i5 = i10 | (gapComposerH.y(function2) ? 1048576 : 524288);
        }
        int i12 = i4 & 128;
        if (i12 == 0) {
            if ((i3 & 12582912) == 0) {
                i5 |= gapComposerH.y(function4) ? 8388608 : 4194304;
            }
            if ((i5 & 4793491) != 4793490) {
                z = true;
            } else {
                z = false;
            }
            if (gapComposerH.p(i5 & 1, z)) {
                if (i8 != 0) {
                    dTFunctionNameModifier2 = new DTFunctionNameModifier("TrackLine-oL2erpo");
                } else {
                    dTFunctionNameModifier2 = modifierE;
                }
                dTFunctionNameModifier = new DTFunctionNameModifier("TrackLine-oL2erpo");
                if (i11 != 0) {
                    objX = gapComposerH.x();
                    if (objX == Composer.Companion.f7939a) {
                        objX = new n60(12);
                        gapComposerH.q(objX);
                    }
                    function3 = (Function1) objX;
                } else {
                    function3 = function2;
                }
                if (i12 != 0) {
                    ComposableSingletons$LVTimelineKt.f50952a.getClass();
                    function6 = ComposableSingletons$LVTimelineKt.f50953b;
                } else {
                    function6 = function4;
                }
                OpaqueKey opaqueKey = ComposerKt.f7940a;
                Alignment.f8582a.getClass();
                measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
                iHashCode = Long.hashCode(gapComposerH.T);
                persistentCompositionLocalMapU = gapComposerH.U();
                modifierC = ComposedModifierKt.c(gapComposerH, dTFunctionNameModifier2);
                ComposeUiNode.b0.getClass();
                modifierE = dTFunctionNameModifier2;
                function0 = ComposeUiNode.Companion.f9641b;
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
                function7 = ComposeUiNode.Companion.f9644f;
                Updater.c(gapComposerH, measurePolicyD, function7);
                function8 = ComposeUiNode.Companion.f9643e;
                Updater.c(gapComposerH, persistentCompositionLocalMapU, function8);
                Integer numValueOf = Integer.valueOf(iHashCode);
                i6 = i5;
                function9 = ComposeUiNode.Companion.g;
                Updater.c(gapComposerH, numValueOf, function9);
                function10 = ComposeUiNode.Companion.f9645h;
                Updater.b(gapComposerH, function10);
                function11 = function6;
                function12 = ComposeUiNode.Companion.d;
                Updater.c(gapComposerH, modifierC, function12);
                rectangleShapeKt$RectangleShape$1 = RectangleShapeKt.f8913a;
                BoxKt.a(BackgroundKt.b(modifier2, j2, rectangleShapeKt$RectangleShape$1), gapComposerH, 0);
                Modifier modifierD = SizeKt.d(new DTFunctionNameModifier("TrackLine-oL2erpo"), 1.0f);
                rowMeasurePolicyA = RowKt.a(Arrangement.f4918a, Alignment.Companion.f8591k, gapComposerH, 0);
                iHashCode2 = Long.hashCode(gapComposerH.T);
                persistentCompositionLocalMapU2 = gapComposerH.U();
                modifierC2 = ComposedModifierKt.c(gapComposerH, modifierD);
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
                Updater.c(gapComposerH, rowMeasurePolicyA, function7);
                Updater.c(gapComposerH, persistentCompositionLocalMapU2, function8);
                cj.t(iHashCode2, gapComposerH, function9, gapComposerH, function10);
                Updater.c(gapComposerH, modifierC2, function12);
                gapComposerH.L(532974469);
                for (i7 = 0; i7 < i2; i7++) {
                    Modifier modifierB = cj.b("TrackLine-oL2erpo", RowScopeInstance.f5040a, 1.0f, true);
                    Arrangement$Top$1 arrangement$Top$1 = Arrangement.f4920c;
                    Alignment.f8582a.getClass();
                    columnMeasurePolicyA = ColumnKt.a(arrangement$Top$1, Alignment.Companion.n, gapComposerH, 0);
                    OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                    iHashCode3 = Long.hashCode(gapComposerH.T);
                    persistentCompositionLocalMapU3 = gapComposerH.U();
                    modifierC3 = ComposedModifierKt.c(gapComposerH, modifierB);
                    ComposeUiNode.b0.getClass();
                    function13 = ComposeUiNode.Companion.f9641b;
                    if (applier != null) {
                        ComposablesKt.b();
                        throw null;
                    }
                    gapComposerH.B();
                    if (gapComposerH.S) {
                        gapComposerH.C(function13);
                    } else {
                        gapComposerH.o();
                    }
                    Updater.c(gapComposerH, columnMeasurePolicyA, ComposeUiNode.Companion.f9644f);
                    Updater.c(gapComposerH, persistentCompositionLocalMapU3, ComposeUiNode.Companion.f9643e);
                    Updater.c(gapComposerH, Integer.valueOf(iHashCode3), ComposeUiNode.Companion.g);
                    Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
                    Updater.c(gapComposerH, modifierC3, ComposeUiNode.Companion.d);
                    if (((Boolean) function3.invoke(Integer.valueOf(i7))).booleanValue()) {
                        f3 = 1.0f;
                    } else {
                        f3 = Call.Parameters.DEFAULT_CAMERA_ZOOM;
                    }
                    BoxKt.a(BackgroundKt.b(SizeKt.o(ClipKt.a(AlphaKt.a(dTFunctionNameModifier, f3), RoundedCornerShapeKt.f5846a), f2), j2, rectangleShapeKt$RectangleShape$1), gapComposerH, 0);
                    function11.g(ColumnScopeInstance.f4944a, Integer.valueOf(i7), gapComposerH, Integer.valueOf(((i6 >> 15) & 896) | 6));
                    gapComposerH.Z(true);
                }
                f4 = f2;
                gapComposerH.Z(false);
                SpacerKt.a(gapComposerH, SizeKt.s(new DTFunctionNameModifier("TrackLine-oL2erpo"), f4));
                gapComposerH.Z(true);
                gapComposerH.Z(true);
                OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                function5 = function11;
            } else {
                gapComposerH.D();
                dTFunctionNameModifier = modifier3;
                function5 = function4;
                function3 = function2;
            }
            modifier4 = modifierE;
            recomposeScopeImplB0 = gapComposerH.b0();
            if (recomposeScopeImplB0 != null) {
                final Modifier modifier5 = dTFunctionNameModifier;
                final Function1 function14 = function3;
                recomposeScopeImplB0.d = new Function2() { // from class: r80
                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj, Object obj2) {
                        ((Integer) obj2).getClass();
                        LVTimelineKt.b(modifier4, modifier2, modifier5, j2, i2, f4, function14, function5, (Composer) obj, RecomposeScopeImplKt.a(i3 | 1), i4);
                        return Unit.f71739a;
                    }
                };
            }
        }
        i5 |= 12582912;
        if ((i5 & 4793491) != 4793490) {
            z = true;
        } else {
            z = false;
        }
        if (gapComposerH.p(i5 & 1, z)) {
            if (i8 != 0) {
                dTFunctionNameModifier2 = new DTFunctionNameModifier("TrackLine-oL2erpo");
            } else {
                dTFunctionNameModifier2 = modifierE;
            }
            dTFunctionNameModifier = new DTFunctionNameModifier("TrackLine-oL2erpo");
            if (i11 != 0) {
                objX = gapComposerH.x();
                if (objX == Composer.Companion.f7939a) {
                    objX = new n60(12);
                    gapComposerH.q(objX);
                }
                function3 = (Function1) objX;
            } else {
                function3 = function2;
            }
            if (i12 != 0) {
                ComposableSingletons$LVTimelineKt.f50952a.getClass();
                function6 = ComposableSingletons$LVTimelineKt.f50953b;
            } else {
                function6 = function4;
            }
            OpaqueKey opaqueKey4 = ComposerKt.f7940a;
            Alignment.f8582a.getClass();
            measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
            iHashCode = Long.hashCode(gapComposerH.T);
            persistentCompositionLocalMapU = gapComposerH.U();
            modifierC = ComposedModifierKt.c(gapComposerH, dTFunctionNameModifier2);
            ComposeUiNode.b0.getClass();
            modifierE = dTFunctionNameModifier2;
            function0 = ComposeUiNode.Companion.f9641b;
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
            function7 = ComposeUiNode.Companion.f9644f;
            Updater.c(gapComposerH, measurePolicyD, function7);
            function8 = ComposeUiNode.Companion.f9643e;
            Updater.c(gapComposerH, persistentCompositionLocalMapU, function8);
            Integer numValueOf2 = Integer.valueOf(iHashCode);
            i6 = i5;
            function9 = ComposeUiNode.Companion.g;
            Updater.c(gapComposerH, numValueOf2, function9);
            function10 = ComposeUiNode.Companion.f9645h;
            Updater.b(gapComposerH, function10);
            function11 = function6;
            function12 = ComposeUiNode.Companion.d;
            Updater.c(gapComposerH, modifierC, function12);
            rectangleShapeKt$RectangleShape$1 = RectangleShapeKt.f8913a;
            BoxKt.a(BackgroundKt.b(modifier2, j2, rectangleShapeKt$RectangleShape$1), gapComposerH, 0);
            Modifier modifierD2 = SizeKt.d(new DTFunctionNameModifier("TrackLine-oL2erpo"), 1.0f);
            rowMeasurePolicyA = RowKt.a(Arrangement.f4918a, Alignment.Companion.f8591k, gapComposerH, 0);
            iHashCode2 = Long.hashCode(gapComposerH.T);
            persistentCompositionLocalMapU2 = gapComposerH.U();
            modifierC2 = ComposedModifierKt.c(gapComposerH, modifierD2);
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
            Updater.c(gapComposerH, rowMeasurePolicyA, function7);
            Updater.c(gapComposerH, persistentCompositionLocalMapU2, function8);
            cj.t(iHashCode2, gapComposerH, function9, gapComposerH, function10);
            Updater.c(gapComposerH, modifierC2, function12);
            gapComposerH.L(532974469);
            while (i7 < i2) {
                Modifier modifierB2 = cj.b("TrackLine-oL2erpo", RowScopeInstance.f5040a, 1.0f, true);
                Arrangement$Top$1 arrangement$Top$2 = Arrangement.f4920c;
                Alignment.f8582a.getClass();
                columnMeasurePolicyA = ColumnKt.a(arrangement$Top$2, Alignment.Companion.n, gapComposerH, 0);
                OpaqueKey opaqueKey5 = ComposerKt.f7940a;
                iHashCode3 = Long.hashCode(gapComposerH.T);
                persistentCompositionLocalMapU3 = gapComposerH.U();
                modifierC3 = ComposedModifierKt.c(gapComposerH, modifierB2);
                ComposeUiNode.b0.getClass();
                function13 = ComposeUiNode.Companion.f9641b;
                if (applier != null) {
                    ComposablesKt.b();
                    throw null;
                }
                gapComposerH.B();
                if (gapComposerH.S) {
                    gapComposerH.C(function13);
                } else {
                    gapComposerH.o();
                }
                Updater.c(gapComposerH, columnMeasurePolicyA, ComposeUiNode.Companion.f9644f);
                Updater.c(gapComposerH, persistentCompositionLocalMapU3, ComposeUiNode.Companion.f9643e);
                Updater.c(gapComposerH, Integer.valueOf(iHashCode3), ComposeUiNode.Companion.g);
                Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
                Updater.c(gapComposerH, modifierC3, ComposeUiNode.Companion.d);
                if (((Boolean) function3.invoke(Integer.valueOf(i7))).booleanValue()) {
                    f3 = 1.0f;
                } else {
                    f3 = Call.Parameters.DEFAULT_CAMERA_ZOOM;
                }
                BoxKt.a(BackgroundKt.b(SizeKt.o(ClipKt.a(AlphaKt.a(dTFunctionNameModifier, f3), RoundedCornerShapeKt.f5846a), f2), j2, rectangleShapeKt$RectangleShape$1), gapComposerH, 0);
                function11.g(ColumnScopeInstance.f4944a, Integer.valueOf(i7), gapComposerH, Integer.valueOf(((i6 >> 15) & 896) | 6));
                gapComposerH.Z(true);
            }
            f4 = f2;
            gapComposerH.Z(false);
            SpacerKt.a(gapComposerH, SizeKt.s(new DTFunctionNameModifier("TrackLine-oL2erpo"), f4));
            gapComposerH.Z(true);
            gapComposerH.Z(true);
            OpaqueKey opaqueKey6 = ComposerKt.f7940a;
            function5 = function11;
        } else {
            gapComposerH.D();
            dTFunctionNameModifier = modifier3;
            function5 = function4;
            function3 = function2;
        }
        modifier4 = modifierE;
        recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            final Modifier modifier6 = dTFunctionNameModifier;
            final Function1 function15 = function3;
            recomposeScopeImplB0.d = new Function2() { // from class: r80
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    ((Integer) obj2).getClass();
                    LVTimelineKt.b(modifier4, modifier2, modifier6, j2, i2, f4, function15, function5, (Composer) obj, RecomposeScopeImplKt.a(i3 | 1), i4);
                    return Unit.f71739a;
                }
            };
        }
    }

    public static final int c(int i2) {
        Random.INSTANCE.getClass();
        int iE = Random.f71941c.e(0, 6);
        return iE == i2 ? c(i2) : iE;
    }
}
