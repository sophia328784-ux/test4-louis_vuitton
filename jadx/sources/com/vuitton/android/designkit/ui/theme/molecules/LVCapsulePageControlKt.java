package com.vuitton.android.designkit.ui.theme.molecules;

import androidx.compose.animation.SingleValueAnimationKt;
import androidx.compose.animation.core.Animatable;
import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScopeInstance;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowMeasurePolicy;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.pager.PagerState;
import androidx.compose.foundation.shape.RoundedCornerShapeKt;
import androidx.compose.runtime.Applier;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.BiasAlignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.GraphicsLayerModifierKt;
import androidx.compose.ui.graphics.GraphicsLayerScope;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.util.MathHelpersKt;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.LVColorScheme;
import com.vuitton.android.designkit.ui.theme.molecules.LVCapsulePageControlKt;
import com.vuitton.android.designkit.ui.theme.molecules.PagerDotState;
import defpackage.cj;
import defpackage.d21;
import defpackage.n00;
import defpackage.oh;
import defpackage.pq0;
import defpackage.v40;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.ranges.RangesKt;
import net.rtccloud.sdk.Call;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"system"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class LVCapsulePageControlKt {

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f48650a;

        static {
            int[] iArr = new int[LVColorScheme.values().length];
            try {
                iArr[LVColorScheme.DEFAULT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[LVColorScheme.INVERT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            f48650a = iArr;
        }
    }

    /* JADX WARN: Code duplicated, block: B:100:0x0200  */
    /* JADX WARN: Code duplicated, block: B:102:0x022b  */
    /* JADX WARN: Code duplicated, block: B:104:0x0232  */
    /* JADX WARN: Code duplicated, block: B:105:0x0236  */
    /* JADX WARN: Code duplicated, block: B:108:0x0252 A[LOOP:1: B:107:0x0250->B:108:0x0252, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:111:0x0271  */
    /* JADX WARN: Code duplicated, block: B:113:0x0275  */
    /* JADX WARN: Code duplicated, block: B:115:0x0279  */
    /* JADX WARN: Code duplicated, block: B:117:0x0290  */
    /* JADX WARN: Code duplicated, block: B:120:0x029d  */
    /* JADX WARN: Code duplicated, block: B:124:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:50:0x0088  */
    /* JADX WARN: Code duplicated, block: B:51:0x008a  */
    /* JADX WARN: Code duplicated, block: B:54:0x0093 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:55:0x0095  */
    /* JADX WARN: Code duplicated, block: B:57:0x009c  */
    /* JADX WARN: Code duplicated, block: B:58:0x009f  */
    /* JADX WARN: Code duplicated, block: B:60:0x00a3  */
    /* JADX WARN: Code duplicated, block: B:61:0x00a6  */
    /* JADX WARN: Code duplicated, block: B:64:0x00b4 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:65:0x00b6  */
    /* JADX WARN: Code duplicated, block: B:67:0x00c9  */
    /* JADX WARN: Code duplicated, block: B:69:0x00d1  */
    /* JADX WARN: Code duplicated, block: B:72:0x00eb A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:73:0x00ed  */
    /* JADX WARN: Code duplicated, block: B:75:0x010a  */
    /* JADX WARN: Code duplicated, block: B:77:0x0112  */
    /* JADX WARN: Code duplicated, block: B:80:0x0134  */
    /* JADX WARN: Code duplicated, block: B:82:0x0160  */
    /* JADX WARN: Code duplicated, block: B:84:0x0169  */
    /* JADX WARN: Code duplicated, block: B:85:0x016d  */
    /* JADX WARN: Code duplicated, block: B:88:0x0191  */
    /* JADX WARN: Code duplicated, block: B:90:0x01ba  */
    /* JADX WARN: Code duplicated, block: B:92:0x01c1  */
    /* JADX WARN: Code duplicated, block: B:93:0x01c5  */
    /* JADX WARN: Code duplicated, block: B:96:0x01e1 A[LOOP:0: B:95:0x01df->B:96:0x01e1, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:98:0x01fc  */
    public static final void a(Modifier modifier, PagerState pagerState, LVColorScheme lVColorScheme, boolean z, Composer composer, int i2, int i3) {
        int i4;
        boolean z2;
        int i5;
        boolean z3;
        LVColorScheme lVColorScheme2;
        Modifier modifier2;
        boolean z4;
        RecomposeScopeImpl recomposeScopeImplB0;
        LVColorScheme lVColorScheme3;
        boolean z5;
        int i6;
        long j2;
        long j3;
        int i7;
        long jB;
        long j4;
        MeasurePolicy measurePolicyD;
        int iHashCode;
        PersistentCompositionLocalMap persistentCompositionLocalMapU;
        Modifier modifierC;
        Function0 function0;
        Function2 function2;
        Function2 function3;
        Function2 function4;
        Function1 function1;
        Function2 function5;
        RowMeasurePolicy rowMeasurePolicyA;
        int iHashCode2;
        PersistentCompositionLocalMap persistentCompositionLocalMapU2;
        Modifier modifierC2;
        int iO;
        int i8;
        boolean z6;
        boolean z7;
        ColumnMeasurePolicy columnMeasurePolicyA;
        int iHashCode3;
        PersistentCompositionLocalMap persistentCompositionLocalMapU3;
        Modifier modifierC3;
        int iO2;
        int i9;
        Modifier dTFunctionNameModifier = modifier;
        if (dTFunctionNameModifier != null) {
            dTFunctionNameModifier = defpackage.a.e(dTFunctionNameModifier, "LVCapsulePageControl");
        }
        pagerState.getClass();
        GapComposer gapComposerH = composer.h(-191244368);
        Applier applier = gapComposerH.f7976a;
        int i10 = i3 & 1;
        if (i10 != 0) {
            i4 = i2 | 6;
        } else if ((i2 & 6) == 0) {
            i4 = (gapComposerH.K(dTFunctionNameModifier) ? 4 : 2) | i2;
        } else {
            i4 = i2;
        }
        if ((i2 & 48) == 0) {
            i4 |= gapComposerH.K(pagerState) ? 32 : 16;
        }
        int i11 = i3 & 4;
        if (i11 != 0) {
            i4 |= KyberEngine.KyberPolyBytes;
        } else if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i4 |= gapComposerH.d(lVColorScheme == null ? -1 : lVColorScheme.ordinal()) ? 256 : 128;
        }
        int i12 = i3 & 8;
        if (i12 == 0) {
            if ((i2 & 3072) == 0) {
                z2 = z;
                i4 |= gapComposerH.b(z2) ? 2048 : 1024;
            }
            i5 = i4;
            if ((i5 & 1171) != 1170) {
                z3 = true;
            } else {
                z3 = false;
            }
            if (gapComposerH.p(i5 & 1, z3)) {
                if (i10 != 0) {
                    dTFunctionNameModifier = new DTFunctionNameModifier("LVCapsulePageControl");
                }
                if (i11 != 0) {
                    lVColorScheme3 = LVColorScheme.INVERT;
                } else {
                    lVColorScheme3 = lVColorScheme;
                }
                if (i12 != 0) {
                    z5 = false;
                } else {
                    z5 = z2;
                }
                OpaqueKey opaqueKey = ComposerKt.f7940a;
                int[] iArr = WhenMappings.f48650a;
                i6 = iArr[lVColorScheme3.ordinal()];
                if (i6 != 1) {
                    gapComposerH.L(897765406);
                    j2 = LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k;
                    gapComposerH.Z(false);
                } else {
                    if (i6 == 2) {
                        throw d21.u(gapComposerH, 897762861, false);
                    }
                    gapComposerH.L(897767908);
                    j2 = LVAppDesignKitTheme.c(gapComposerH).f48361b.m;
                    gapComposerH.Z(false);
                }
                j3 = j2;
                i7 = iArr[lVColorScheme3.ordinal()];
                if (i7 != 1) {
                    gapComposerH.L(897772591);
                    jB = Color.b(LVAppDesignKitTheme.h(gapComposerH).d, LVAppDesignKitTheme.c(gapComposerH).f48361b.u);
                    gapComposerH.Z(false);
                } else {
                    if (i7 == 2) {
                        throw d21.u(gapComposerH, 897769853, false);
                    }
                    gapComposerH.L(897776047);
                    jB = Color.b(LVAppDesignKitTheme.h(gapComposerH).d, LVAppDesignKitTheme.c(gapComposerH).f48361b.y);
                    gapComposerH.Z(false);
                }
                j4 = jB;
                if (pagerState.o() > 1) {
                    gapComposerH.L(2061376784);
                    Alignment.f8582a.getClass();
                    measurePolicyD = BoxKt.d(Alignment.Companion.f8586e, false);
                    iHashCode = Long.hashCode(gapComposerH.T);
                    persistentCompositionLocalMapU = gapComposerH.U();
                    modifierC = ComposedModifierKt.c(gapComposerH, dTFunctionNameModifier);
                    ComposeUiNode.b0.getClass();
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
                    function2 = ComposeUiNode.Companion.f9644f;
                    Updater.c(gapComposerH, measurePolicyD, function2);
                    function3 = ComposeUiNode.Companion.f9643e;
                    Updater.c(gapComposerH, persistentCompositionLocalMapU, function3);
                    Integer numValueOf = Integer.valueOf(iHashCode);
                    function4 = ComposeUiNode.Companion.g;
                    Updater.c(gapComposerH, numValueOf, function4);
                    function1 = ComposeUiNode.Companion.f9645h;
                    Updater.b(gapComposerH, function1);
                    function5 = ComposeUiNode.Companion.d;
                    Updater.c(gapComposerH, modifierC, function5);
                    if (z5) {
                        gapComposerH.L(197928415);
                        BiasAlignment.Horizontal horizontal = Alignment.Companion.o;
                        DTFunctionNameModifier dTFunctionNameModifier2 = new DTFunctionNameModifier("LVCapsulePageControl");
                        columnMeasurePolicyA = ColumnKt.a(Arrangement.f4920c, horizontal, gapComposerH, 48);
                        iHashCode3 = Long.hashCode(gapComposerH.T);
                        persistentCompositionLocalMapU3 = gapComposerH.U();
                        modifierC3 = ComposedModifierKt.c(gapComposerH, dTFunctionNameModifier2);
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
                        Updater.c(gapComposerH, columnMeasurePolicyA, function2);
                        Updater.c(gapComposerH, persistentCompositionLocalMapU3, function3);
                        cj.t(iHashCode3, gapComposerH, function4, gapComposerH, function1);
                        Updater.c(gapComposerH, modifierC3, function5);
                        gapComposerH.L(-1441194390);
                        iO2 = pagerState.o();
                        for (i9 = 0; i9 < iO2; i9++) {
                            b(d(pagerState, i9, gapComposerH, (i5 >> 3) & 14), i9, j4, j3, true, gapComposerH, 24576);
                        }
                        z6 = false;
                        z7 = true;
                        pq0.x(gapComposerH, false, true, false);
                    } else {
                        gapComposerH.L(198682149);
                        BiasAlignment.Vertical vertical = Alignment.Companion.l;
                        DTFunctionNameModifier dTFunctionNameModifier3 = new DTFunctionNameModifier("LVCapsulePageControl");
                        rowMeasurePolicyA = RowKt.a(Arrangement.f4918a, vertical, gapComposerH, 48);
                        iHashCode2 = Long.hashCode(gapComposerH.T);
                        persistentCompositionLocalMapU2 = gapComposerH.U();
                        modifierC2 = ComposedModifierKt.c(gapComposerH, dTFunctionNameModifier3);
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
                        Updater.c(gapComposerH, rowMeasurePolicyA, function2);
                        Updater.c(gapComposerH, persistentCompositionLocalMapU2, function3);
                        cj.t(iHashCode2, gapComposerH, function4, gapComposerH, function1);
                        Updater.c(gapComposerH, modifierC2, function5);
                        gapComposerH.L(1918010850);
                        iO = pagerState.o();
                        for (i8 = 0; i8 < iO; i8++) {
                            b(d(pagerState, i8, gapComposerH, (i5 >> 3) & 14), i8, j4, j3, false, gapComposerH, 24576);
                        }
                        z6 = false;
                        z7 = true;
                        pq0.x(gapComposerH, false, true, false);
                    }
                    gapComposerH.Z(z7);
                    gapComposerH.Z(z6);
                } else {
                    lVColorScheme3 = lVColorScheme3;
                    gapComposerH.L(2062977810);
                    gapComposerH.Z(false);
                }
                OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                z4 = z5;
                modifier2 = dTFunctionNameModifier;
                lVColorScheme2 = lVColorScheme3;
            } else {
                gapComposerH.D();
                lVColorScheme2 = lVColorScheme;
                modifier2 = dTFunctionNameModifier;
                z4 = z2;
            }
            recomposeScopeImplB0 = gapComposerH.b0();
            if (recomposeScopeImplB0 != null) {
                recomposeScopeImplB0.d = new oh(modifier2, pagerState, lVColorScheme2, z4, i2, i3);
            }
        }
        i4 |= 3072;
        z2 = z;
        i5 = i4;
        if ((i5 & 1171) != 1170) {
            z3 = true;
        } else {
            z3 = false;
        }
        if (gapComposerH.p(i5 & 1, z3)) {
            if (i10 != 0) {
                dTFunctionNameModifier = new DTFunctionNameModifier("LVCapsulePageControl");
            }
            if (i11 != 0) {
                lVColorScheme3 = LVColorScheme.INVERT;
            } else {
                lVColorScheme3 = lVColorScheme;
            }
            if (i12 != 0) {
                z5 = false;
            } else {
                z5 = z2;
            }
            OpaqueKey opaqueKey3 = ComposerKt.f7940a;
            int[] iArr2 = WhenMappings.f48650a;
            i6 = iArr2[lVColorScheme3.ordinal()];
            if (i6 != 1) {
                gapComposerH.L(897765406);
                j2 = LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k;
                gapComposerH.Z(false);
            } else {
                if (i6 == 2) {
                    throw d21.u(gapComposerH, 897762861, false);
                }
                gapComposerH.L(897767908);
                j2 = LVAppDesignKitTheme.c(gapComposerH).f48361b.m;
                gapComposerH.Z(false);
            }
            j3 = j2;
            i7 = iArr2[lVColorScheme3.ordinal()];
            if (i7 != 1) {
                gapComposerH.L(897772591);
                jB = Color.b(LVAppDesignKitTheme.h(gapComposerH).d, LVAppDesignKitTheme.c(gapComposerH).f48361b.u);
                gapComposerH.Z(false);
            } else {
                if (i7 == 2) {
                    throw d21.u(gapComposerH, 897769853, false);
                }
                gapComposerH.L(897776047);
                jB = Color.b(LVAppDesignKitTheme.h(gapComposerH).d, LVAppDesignKitTheme.c(gapComposerH).f48361b.y);
                gapComposerH.Z(false);
            }
            j4 = jB;
            if (pagerState.o() > 1) {
                gapComposerH.L(2061376784);
                Alignment.f8582a.getClass();
                measurePolicyD = BoxKt.d(Alignment.Companion.f8586e, false);
                iHashCode = Long.hashCode(gapComposerH.T);
                persistentCompositionLocalMapU = gapComposerH.U();
                modifierC = ComposedModifierKt.c(gapComposerH, dTFunctionNameModifier);
                ComposeUiNode.b0.getClass();
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
                function2 = ComposeUiNode.Companion.f9644f;
                Updater.c(gapComposerH, measurePolicyD, function2);
                function3 = ComposeUiNode.Companion.f9643e;
                Updater.c(gapComposerH, persistentCompositionLocalMapU, function3);
                Integer numValueOf2 = Integer.valueOf(iHashCode);
                function4 = ComposeUiNode.Companion.g;
                Updater.c(gapComposerH, numValueOf2, function4);
                function1 = ComposeUiNode.Companion.f9645h;
                Updater.b(gapComposerH, function1);
                function5 = ComposeUiNode.Companion.d;
                Updater.c(gapComposerH, modifierC, function5);
                if (z5) {
                    gapComposerH.L(197928415);
                    BiasAlignment.Horizontal horizontal2 = Alignment.Companion.o;
                    DTFunctionNameModifier dTFunctionNameModifier4 = new DTFunctionNameModifier("LVCapsulePageControl");
                    columnMeasurePolicyA = ColumnKt.a(Arrangement.f4920c, horizontal2, gapComposerH, 48);
                    iHashCode3 = Long.hashCode(gapComposerH.T);
                    persistentCompositionLocalMapU3 = gapComposerH.U();
                    modifierC3 = ComposedModifierKt.c(gapComposerH, dTFunctionNameModifier4);
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
                    Updater.c(gapComposerH, columnMeasurePolicyA, function2);
                    Updater.c(gapComposerH, persistentCompositionLocalMapU3, function3);
                    cj.t(iHashCode3, gapComposerH, function4, gapComposerH, function1);
                    Updater.c(gapComposerH, modifierC3, function5);
                    gapComposerH.L(-1441194390);
                    iO2 = pagerState.o();
                    while (i9 < iO2) {
                        b(d(pagerState, i9, gapComposerH, (i5 >> 3) & 14), i9, j4, j3, true, gapComposerH, 24576);
                    }
                    z6 = false;
                    z7 = true;
                    pq0.x(gapComposerH, false, true, false);
                } else {
                    gapComposerH.L(198682149);
                    BiasAlignment.Vertical vertical2 = Alignment.Companion.l;
                    DTFunctionNameModifier dTFunctionNameModifier5 = new DTFunctionNameModifier("LVCapsulePageControl");
                    rowMeasurePolicyA = RowKt.a(Arrangement.f4918a, vertical2, gapComposerH, 48);
                    iHashCode2 = Long.hashCode(gapComposerH.T);
                    persistentCompositionLocalMapU2 = gapComposerH.U();
                    modifierC2 = ComposedModifierKt.c(gapComposerH, dTFunctionNameModifier5);
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
                    Updater.c(gapComposerH, rowMeasurePolicyA, function2);
                    Updater.c(gapComposerH, persistentCompositionLocalMapU2, function3);
                    cj.t(iHashCode2, gapComposerH, function4, gapComposerH, function1);
                    Updater.c(gapComposerH, modifierC2, function5);
                    gapComposerH.L(1918010850);
                    iO = pagerState.o();
                    while (i8 < iO) {
                        b(d(pagerState, i8, gapComposerH, (i5 >> 3) & 14), i8, j4, j3, false, gapComposerH, 24576);
                    }
                    z6 = false;
                    z7 = true;
                    pq0.x(gapComposerH, false, true, false);
                }
                gapComposerH.Z(z7);
                gapComposerH.Z(z6);
            } else {
                lVColorScheme3 = lVColorScheme3;
                gapComposerH.L(2062977810);
                gapComposerH.Z(false);
            }
            OpaqueKey opaqueKey4 = ComposerKt.f7940a;
            z4 = z5;
            modifier2 = dTFunctionNameModifier;
            lVColorScheme2 = lVColorScheme3;
        } else {
            gapComposerH.D();
            lVColorScheme2 = lVColorScheme;
            modifier2 = dTFunctionNameModifier;
            z4 = z2;
        }
        recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new oh(modifier2, pagerState, lVColorScheme2, z4, i2, i3);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r6v10 */
    /* JADX WARN: Type inference failed for: r6v12, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r6v16 */
    public static final void b(PagerDotState pagerDotState, final int i2, final long j2, final long j3, final boolean z, Composer composer, final int i3) {
        Object lVCapsulePageControlKt$LVPagerDot$1$1;
        int i4;
        float size;
        float fB;
        Modifier modifierG;
        ?? r6;
        final PagerDotState pagerDotState2 = pagerDotState;
        GapComposer gapComposerH = composer.h(-1715285564);
        int i5 = i3 | (gapComposerH.K(pagerDotState2) ? 4 : 2) | (gapComposerH.d(i2) ? 32 : 16) | (gapComposerH.e(j2) ? 256 : 128) | (gapComposerH.e(j3) ? 2048 : 1024);
        if (gapComposerH.p(i5 & 1, (i5 & 9363) != 9362)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Object objX = gapComposerH.x();
            Object obj = Composer.Companion.f7939a;
            if (objX == obj) {
                objX = SingleValueAnimationKt.a(j2);
                gapComposerH.q(objX);
            }
            Animatable animatable = (Animatable) objX;
            PagerState pagerState = pagerDotState2.f48687a;
            int i6 = pagerDotState2.f48688b;
            PagerState pagerState2 = pagerDotState2.f48687a;
            Integer numValueOf = Integer.valueOf(pagerState.k());
            int i7 = i5 & 14;
            boolean zY = ((i5 & 896) == 256) | ((i5 & 7168) == 2048) | gapComposerH.y(animatable) | (i7 == 4) | ((i5 & 112) == 32);
            Object objX2 = gapComposerH.x();
            if (zY || objX2 == obj) {
                i4 = i7;
                lVCapsulePageControlKt$LVPagerDot$1$1 = new LVCapsulePageControlKt$LVPagerDot$1$1(animatable, pagerDotState, i2, j3, j2, null);
                animatable = animatable;
                pagerDotState2 = pagerDotState;
                gapComposerH.q(lVCapsulePageControlKt$LVPagerDot$1$1);
            } else {
                lVCapsulePageControlKt$LVPagerDot$1$1 = objX2;
                i4 = i7;
                pagerDotState2 = pagerDotState;
            }
            EffectsKt.e(gapComposerH, numValueOf, (Function2) lVCapsulePageControlKt$LVPagerDot$1$1);
            if (pagerDotState2.b() != PagerDotState.State.Invisible) {
                gapComposerH.L(1449137076);
                int iK = pagerState2.k() - 1;
                int iK2 = pagerState2.k() + 1;
                float f2 = Call.Parameters.DEFAULT_CAMERA_ZOOM;
                if (iK > i6 || i6 > iK2) {
                    if (c(pagerState2, pagerState2.k()) != PagerDotState.Placement.InBetween) {
                        fB = pagerDotState2.b().getSize();
                    } else {
                        if (i6 > pagerState2.k() && pagerState2.l() > Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                            size = pagerDotState2.b().getNextSize();
                        } else if (i6 > pagerState2.k() && pagerState2.l() < Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                            size = pagerDotState2.b().getPreviousSize();
                        } else if (i6 >= pagerState2.k() || pagerState2.l() >= Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                            size = (i6 >= pagerState2.k() || pagerState2.l() <= Call.Parameters.DEFAULT_CAMERA_ZOOM) ? pagerDotState2.b().getSize() : pagerDotState2.b().getPreviousSize();
                        } else {
                            size = pagerDotState2.b().getNextSize();
                        }
                        int iAbs = Math.abs(pagerState2.k() - i6);
                        float size2 = pagerDotState2.b().getSize();
                        Dp.Companion companion = Dp.f11004c;
                        fB = MathHelpersKt.b(size2, size, Math.abs(iAbs - pagerDotState2.a()));
                    }
                    Dp.Companion companion2 = Dp.f11004c;
                } else {
                    fB = pagerDotState2.b().getSize();
                    Dp.Companion companion3 = Dp.f11004c;
                }
                float fC = (pagerState2.k() + (-1) > i6 || i6 > pagerState2.k() + 1) ? fB : (((RangesKt.c(pagerDotState2.a(), Call.Parameters.DEFAULT_CAMERA_ZOOM, 1.0f) - 1.0f) / (-1.0f)) * 14.0f) + 6.0f;
                DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier("LVPagerDot-eaDK9VM");
                float f3 = LVAppDesignKitTheme.l(gapComposerH).f48414b;
                int i8 = PagerDotState.WhenMappings.f48690b[pagerDotState2.b().ordinal()];
                if (i8 != 1) {
                    if (i8 == 2) {
                        f2 = 2.0f;
                    } else if (i8 == 3) {
                        f2 = 1.0f;
                    } else if (i8 != 4 && i8 != 5) {
                        v40.g();
                        return;
                    }
                }
                Modifier modifierI = PaddingKt.i(dTFunctionNameModifier, f3 + f2);
                Alignment.f8582a.getClass();
                MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
                int iHashCode = Long.hashCode(gapComposerH.T);
                PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
                Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierI);
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
                Updater.c(gapComposerH, measurePolicyD, ComposeUiNode.Companion.f9644f);
                Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
                Updater.c(gapComposerH, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
                Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
                Updater.c(gapComposerH, modifierC, ComposeUiNode.Companion.d);
                BoxScopeInstance boxScopeInstance = BoxScopeInstance.f4938a;
                if (z) {
                    DTFunctionNameModifier dTFunctionNameModifierI = n00.i(gapComposerH, -98719864, "LVPagerDot-eaDK9VM");
                    boolean z2 = i4 == 4;
                    Object objX3 = gapComposerH.x();
                    if (z2 || objX3 == obj) {
                        final int i9 = 0;
                        objX3 = new Function1() { // from class: l50
                            @Override // kotlin.jvm.functions.Function1
                            public final Object invoke(Object obj2) {
                                int i10 = i9;
                                PagerDotState pagerDotState3 = pagerDotState2;
                                GraphicsLayerScope graphicsLayerScope = (GraphicsLayerScope) obj2;
                                switch (i10) {
                                    case 0:
                                        graphicsLayerScope.getClass();
                                        graphicsLayerScope.g(pagerDotState3.c());
                                        break;
                                    default:
                                        graphicsLayerScope.getClass();
                                        graphicsLayerScope.D(pagerDotState3.c());
                                        break;
                                }
                                return Unit.f71739a;
                            }
                        };
                        gapComposerH.q(objX3);
                    }
                    modifierG = boxScopeInstance.g(BackgroundKt.b(SizeKt.s(SizeKt.f(GraphicsLayerModifierKt.a(dTFunctionNameModifierI, (Function1) objX3), fC), fB), ((Color) animatable.d()).f8872a, RoundedCornerShapeKt.f5846a), Alignment.Companion.f8587f);
                    r6 = 0;
                    gapComposerH.Z(false);
                } else {
                    DTFunctionNameModifier dTFunctionNameModifierI2 = n00.i(gapComposerH, -98375640, "LVPagerDot-eaDK9VM");
                    boolean z3 = i4 == 4;
                    Object objX4 = gapComposerH.x();
                    if (z3 || objX4 == obj) {
                        final int i10 = 1;
                        objX4 = new Function1() { // from class: l50
                            @Override // kotlin.jvm.functions.Function1
                            public final Object invoke(Object obj2) {
                                int i11 = i10;
                                PagerDotState pagerDotState3 = pagerDotState2;
                                GraphicsLayerScope graphicsLayerScope = (GraphicsLayerScope) obj2;
                                switch (i11) {
                                    case 0:
                                        graphicsLayerScope.getClass();
                                        graphicsLayerScope.g(pagerDotState3.c());
                                        break;
                                    default:
                                        graphicsLayerScope.getClass();
                                        graphicsLayerScope.D(pagerDotState3.c());
                                        break;
                                }
                                return Unit.f71739a;
                            }
                        };
                        gapComposerH.q(objX4);
                    }
                    modifierG = boxScopeInstance.g(BackgroundKt.b(SizeKt.s(SizeKt.f(GraphicsLayerModifierKt.a(dTFunctionNameModifierI2, (Function1) objX4), fB), fC), ((Color) animatable.d()).f8872a, RoundedCornerShapeKt.f5846a), Alignment.Companion.f8587f);
                    r6 = 0;
                    gapComposerH.Z(false);
                }
                BoxKt.a(modifierG, gapComposerH, r6);
                gapComposerH.Z(true);
                gapComposerH.Z(r6);
            } else {
                gapComposerH.L(1450315262);
                gapComposerH.Z(false);
            }
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new Function2(i2, j2, j3, z, i3) { // from class: m50

                /* JADX INFO: renamed from: c, reason: collision with root package name */
                public final /* synthetic */ int f76182c;
                public final /* synthetic */ long d;

                /* JADX INFO: renamed from: e, reason: collision with root package name */
                public final /* synthetic */ long f76183e;

                /* JADX INFO: renamed from: f, reason: collision with root package name */
                public final /* synthetic */ boolean f76184f;

                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj2, Object obj3) {
                    ((Integer) obj3).getClass();
                    int iA = RecomposeScopeImplKt.a(24577);
                    LVCapsulePageControlKt.b(this.f76181b, this.f76182c, this.d, this.f76183e, this.f76184f, (Composer) obj2, iA);
                    return Unit.f71739a;
                }
            };
        }
    }

    public static final PagerDotState.Placement c(PagerState pagerState, int i2) {
        pagerState.getClass();
        if (i2 == 0) {
            return PagerDotState.Placement.First;
        }
        if (i2 == 1) {
            return PagerDotState.Placement.Second;
        }
        if (i2 == pagerState.o() - 2) {
            return PagerDotState.Placement.SecondToLast;
        }
        return i2 == pagerState.o() - 1 ? PagerDotState.Placement.Last : PagerDotState.Placement.InBetween;
    }

    public static final PagerDotState d(PagerState pagerState, int i2, Composer composer, int i3) {
        pagerState.getClass();
        OpaqueKey opaqueKey = ComposerKt.f7940a;
        boolean z = (((i3 & 14) ^ 6) > 4 && composer.K(pagerState)) || (i3 & 6) == 4;
        Object objX = composer.x();
        if (z || objX == Composer.Companion.f7939a) {
            objX = new PagerDotState(pagerState, i2);
            composer.q(objX);
        }
        return (PagerDotState) objX;
    }
}
