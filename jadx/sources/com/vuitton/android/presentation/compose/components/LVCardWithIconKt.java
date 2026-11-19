package com.vuitton.android.presentation.compose.components;

import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.BorderKt;
import androidx.compose.foundation.CanvasKt;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.Arrangement$Top$1;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowMeasurePolicy;
import androidx.compose.foundation.layout.RowScopeInstance;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.material3.IconKt;
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
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.BiasAlignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.ClipKt;
import androidx.compose.ui.graphics.RectangleShapeKt;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.res.PainterResources_androidKt;
import androidx.compose.ui.text.style.TextOverflow;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.google.ar.core.ImageMetadata;
import com.vuitton.android.designkit.components.ModifierExtKt;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.ShadowKt;
import com.vuitton.android.presentation.compose.components.LVCardWithIconKt;
import defpackage.cj;
import defpackage.n50;
import defpackage.py;
import defpackage.r5;
import defpackage.tr;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import net.rtccloud.sdk.Call;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class LVCardWithIconKt {
    /* JADX WARN: Code duplicated, block: B:100:0x038a  */
    /* JADX WARN: Code duplicated, block: B:102:0x038e  */
    /* JADX WARN: Code duplicated, block: B:104:0x0392  */
    /* JADX WARN: Code duplicated, block: B:107:0x03a3  */
    /* JADX WARN: Code duplicated, block: B:109:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:41:0x0090  */
    /* JADX WARN: Code duplicated, block: B:43:0x0094  */
    /* JADX WARN: Code duplicated, block: B:45:0x0098  */
    /* JADX WARN: Code duplicated, block: B:47:0x00a0  */
    /* JADX WARN: Code duplicated, block: B:48:0x00a3  */
    /* JADX WARN: Code duplicated, block: B:52:0x00b2  */
    /* JADX WARN: Code duplicated, block: B:53:0x00b4  */
    /* JADX WARN: Code duplicated, block: B:56:0x00bd A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:57:0x00bf  */
    /* JADX WARN: Code duplicated, block: B:58:0x00c2  */
    /* JADX WARN: Code duplicated, block: B:60:0x00c6  */
    /* JADX WARN: Code duplicated, block: B:61:0x00c8  */
    /* JADX WARN: Code duplicated, block: B:64:0x00f5  */
    /* JADX WARN: Code duplicated, block: B:66:0x00fe  */
    /* JADX WARN: Code duplicated, block: B:67:0x0102  */
    /* JADX WARN: Code duplicated, block: B:70:0x015d  */
    /* JADX WARN: Code duplicated, block: B:71:0x015f  */
    /* JADX WARN: Code duplicated, block: B:74:0x0168 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:75:0x016a  */
    /* JADX WARN: Code duplicated, block: B:78:0x01dc  */
    /* JADX WARN: Code duplicated, block: B:80:0x01e5  */
    /* JADX WARN: Code duplicated, block: B:81:0x01e9  */
    /* JADX WARN: Code duplicated, block: B:84:0x025f  */
    /* JADX WARN: Code duplicated, block: B:86:0x0266  */
    /* JADX WARN: Code duplicated, block: B:87:0x026a  */
    /* JADX WARN: Code duplicated, block: B:90:0x02f6  */
    /* JADX WARN: Code duplicated, block: B:92:0x031d  */
    /* JADX WARN: Code duplicated, block: B:94:0x0321  */
    /* JADX WARN: Code duplicated, block: B:96:0x0333  */
    /* JADX WARN: Code duplicated, block: B:98:0x0386  */
    public static final void a(Modifier modifier, final int i2, final String str, final String str2, int i3, final Function0 function0, boolean z, boolean z2, Composer composer, final int i4, final int i5) {
        int i6;
        boolean z3;
        int i7;
        boolean z4;
        GapComposer gapComposer;
        final int i8;
        final boolean z5;
        final boolean z6;
        RecomposeScopeImpl recomposeScopeImplB0;
        boolean z7;
        boolean z8;
        Arrangement$Top$1 arrangement$Top$1;
        BiasAlignment.Horizontal horizontal;
        ColumnMeasurePolicy columnMeasurePolicyA;
        int iHashCode;
        PersistentCompositionLocalMap persistentCompositionLocalMapU;
        Modifier modifierC;
        Function0 function1;
        Function2 function2;
        Function2 function3;
        Function2 function4;
        Function1 function5;
        int i9;
        Function2 function6;
        boolean z9;
        boolean z10;
        Object objX;
        boolean z11;
        BiasAlignment.Vertical vertical;
        RowMeasurePolicy rowMeasurePolicyA;
        int iHashCode2;
        PersistentCompositionLocalMap persistentCompositionLocalMapU2;
        Modifier modifierC2;
        ColumnMeasurePolicy columnMeasurePolicyA2;
        int iHashCode3;
        PersistentCompositionLocalMap persistentCompositionLocalMapU3;
        Modifier modifierC3;
        long j2;
        boolean zE;
        Object objX2;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = defpackage.a.e(modifierE, "LVCardWithIcon");
        }
        str.getClass();
        str2.getClass();
        function0.getClass();
        GapComposer gapComposerH = composer.h(1026553715);
        Applier applier = gapComposerH.f7976a;
        int i10 = i4 | (gapComposerH.K(modifierE) ? 4 : 2) | (gapComposerH.d(i2) ? 32 : 16) | KyberEngine.KyberPolyBytes | (gapComposerH.K(str) ? 2048 : 1024) | (gapComposerH.K(str2) ? 16384 : 8192) | ImageMetadata.EDGE_MODE;
        if ((i4 & 1572864) == 0) {
            i10 |= gapComposerH.y(function0) ? 1048576 : 524288;
        }
        int i11 = i5 & 128;
        if (i11 == 0) {
            if ((i4 & 12582912) == 0) {
                i10 |= gapComposerH.b(z) ? 8388608 : 4194304;
            }
            i6 = i5 & 256;
            if (i6 != 0) {
                if ((i4 & 100663296) == 0) {
                    z3 = z2;
                    if (gapComposerH.b(z3)) {
                        i7 = 67108864;
                    } else {
                        i7 = 33554432;
                    }
                    i10 |= i7;
                }
                if ((i10 & 38347923) != 38347922) {
                    z4 = true;
                } else {
                    z4 = false;
                }
                if (gapComposerH.p(i10 & 1, z4)) {
                    if (i11 != 0) {
                        z7 = true;
                    } else {
                        z7 = z;
                    }
                    if (i6 != 0) {
                        z8 = false;
                    } else {
                        z8 = z3;
                    }
                    OpaqueKey opaqueKey = ComposerKt.f7940a;
                    arrangement$Top$1 = Arrangement.f4920c;
                    Alignment.f8582a.getClass();
                    horizontal = Alignment.Companion.n;
                    columnMeasurePolicyA = ColumnKt.a(arrangement$Top$1, horizontal, gapComposerH, 0);
                    iHashCode = Long.hashCode(gapComposerH.T);
                    persistentCompositionLocalMapU = gapComposerH.U();
                    modifierC = ComposedModifierKt.c(gapComposerH, modifierE);
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
                    Updater.c(gapComposerH, columnMeasurePolicyA, function2);
                    function3 = ComposeUiNode.Companion.f9643e;
                    Updater.c(gapComposerH, persistentCompositionLocalMapU, function3);
                    Integer numValueOf = Integer.valueOf(iHashCode);
                    function4 = ComposeUiNode.Companion.g;
                    Updater.c(gapComposerH, numValueOf, function4);
                    function5 = ComposeUiNode.Companion.f9645h;
                    Updater.b(gapComposerH, function5);
                    i9 = i10;
                    function6 = ComposeUiNode.Companion.d;
                    z9 = z8;
                    Modifier modifierA = ClipKt.a(ShadowKt.b(PaddingKt.m(tr.e(gapComposerH, modifierC, function6, "LVCardWithIcon"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), LVAppDesignKitTheme.d(gapComposerH).f48388h, gapComposerH, 0, 1), LVAppDesignKitTheme.j(gapComposerH).f48411c);
                    if ((i9 & 3670016) == 1048576) {
                        z10 = true;
                    } else {
                        z10 = false;
                    }
                    objX = gapComposerH.x();
                    Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
                    if (z10 || objX == composer$Companion$Empty$1) {
                        objX = new py(function0, 13);
                        gapComposerH.q(objX);
                    }
                    z11 = z7;
                    Modifier modifierB = ModifierExtKt.b(PaddingKt.i(BackgroundKt.b(BorderKt.a(com.vuitton.android.designkit.ui.common.ModifierExtKt.c(modifierA, z7, null, null, (Function0) objX, 30), LVAppDesignKitTheme.d(gapComposerH).f48385c, LVAppDesignKitTheme.c(gapComposerH).f48361b.q, LVAppDesignKitTheme.j(gapComposerH).f48411c), LVAppDesignKitTheme.c(gapComposerH).f48361b.f48374a, RectangleShapeKt.f8913a), LVAppDesignKitTheme.l(gapComposerH).f48416e), !z11, new n50(0), gapComposerH, 0);
                    vertical = Alignment.Companion.l;
                    rowMeasurePolicyA = RowKt.a(Arrangement.f4918a, vertical, gapComposerH, 48);
                    iHashCode2 = Long.hashCode(gapComposerH.T);
                    persistentCompositionLocalMapU2 = gapComposerH.U();
                    modifierC2 = ComposedModifierKt.c(gapComposerH, modifierB);
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
                    Updater.c(gapComposerH, rowMeasurePolicyA, function2);
                    Updater.c(gapComposerH, persistentCompositionLocalMapU2, function3);
                    cj.t(iHashCode2, gapComposerH, function4, gapComposerH, function5);
                    Updater.c(gapComposerH, modifierC2, function6);
                    IconKt.a(PainterResources_androidKt.a(i2, gapComposerH, (i9 >> 3) & 14), null, null, LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k, gapComposerH, 56, 4);
                    DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier("LVCardWithIcon");
                    RowScopeInstance rowScopeInstance = RowScopeInstance.f5040a;
                    Modifier modifierA2 = rowScopeInstance.a(PaddingKt.m(rowScopeInstance.b(dTFunctionNameModifier, vertical), LVAppDesignKitTheme.l(gapComposerH).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 14), 1.0f, true);
                    columnMeasurePolicyA2 = ColumnKt.a(arrangement$Top$1, horizontal, gapComposerH, 0);
                    iHashCode3 = Long.hashCode(gapComposerH.T);
                    persistentCompositionLocalMapU3 = gapComposerH.U();
                    modifierC3 = ComposedModifierKt.c(gapComposerH, modifierA2);
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
                    Updater.c(gapComposerH, columnMeasurePolicyA2, function2);
                    Updater.c(gapComposerH, persistentCompositionLocalMapU3, function3);
                    cj.t(iHashCode3, gapComposerH, function4, gapComposerH, function5);
                    Updater.c(gapComposerH, modifierC3, function6);
                    TextKt.c(str, null, LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).g, gapComposerH, (i9 >> 9) & 14, 0, 131066);
                    Modifier modifierM = PaddingKt.m(new DTFunctionNameModifier("LVCardWithIcon"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48415c, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13);
                    TextOverflow.f10989a.getClass();
                    TextKt.c(str2, modifierM, LVAppDesignKitTheme.c(gapComposerH).f48361b.l, 0L, null, 0L, null, null, 0L, TextOverflow.f10991c, false, 2, 0, null, LVAppDesignKitTheme.n(gapComposerH).l, gapComposerH, (i9 >> 12) & 14, 24960, 110584);
                    gapComposerH.Z(true);
                    if (z9) {
                        gapComposerH.L(1118582777);
                        j2 = LVAppDesignKitTheme.c(gapComposerH).f48361b.w;
                        Modifier modifierO = SizeKt.o(new DTFunctionNameModifier("LVCardWithIcon"), LVAppDesignKitTheme.d(gapComposerH).f48388h);
                        zE = gapComposerH.e(j2);
                        objX2 = gapComposerH.x();
                        if (zE || objX2 == composer$Companion$Empty$1) {
                            objX2 = new r5(j2, 4);
                            gapComposerH.q(objX2);
                        }
                        CanvasKt.a(modifierO, (Function1) objX2, gapComposerH, 0);
                        gapComposerH.Z(false);
                    } else {
                        gapComposerH.L(1118813417);
                        gapComposerH.Z(false);
                    }
                    IconKt.a(PainterResources_androidKt.a(LVAppDesignKitTheme.g(gapComposerH).I, gapComposerH, 0), null, SizeKt.o(PaddingKt.m(new DTFunctionNameModifier("LVCardWithIcon"), LVAppDesignKitTheme.l(gapComposerH).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 14), LVAppDesignKitTheme.d(gapComposerH).m), LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k, gapComposerH, 56, 0);
                    gapComposer = gapComposerH;
                    gapComposer.Z(true);
                    gapComposer.Z(true);
                    z6 = z9;
                    z5 = z11;
                    i8 = 2;
                } else {
                    gapComposer = gapComposerH;
                    gapComposer.D();
                    i8 = i3;
                    z5 = z;
                    z6 = z3;
                }
                recomposeScopeImplB0 = gapComposer.b0();
                if (recomposeScopeImplB0 != null) {
                    final Modifier modifier2 = modifierE;
                    recomposeScopeImplB0.d = new Function2() { // from class: o50
                        @Override // kotlin.jvm.functions.Function2
                        public final Object invoke(Object obj, Object obj2) {
                            ((Integer) obj2).getClass();
                            LVCardWithIconKt.a(modifier2, i2, str, str2, i8, function0, z5, z6, (Composer) obj, RecomposeScopeImplKt.a(i4 | 1), i5);
                            return Unit.f71739a;
                        }
                    };
                }
            }
            i10 |= 100663296;
            z3 = z2;
            if ((i10 & 38347923) != 38347922) {
                z4 = true;
            } else {
                z4 = false;
            }
            if (gapComposerH.p(i10 & 1, z4)) {
                if (i11 != 0) {
                    z7 = true;
                } else {
                    z7 = z;
                }
                if (i6 != 0) {
                    z8 = false;
                } else {
                    z8 = z3;
                }
                OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                arrangement$Top$1 = Arrangement.f4920c;
                Alignment.f8582a.getClass();
                horizontal = Alignment.Companion.n;
                columnMeasurePolicyA = ColumnKt.a(arrangement$Top$1, horizontal, gapComposerH, 0);
                iHashCode = Long.hashCode(gapComposerH.T);
                persistentCompositionLocalMapU = gapComposerH.U();
                modifierC = ComposedModifierKt.c(gapComposerH, modifierE);
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
                Updater.c(gapComposerH, columnMeasurePolicyA, function2);
                function3 = ComposeUiNode.Companion.f9643e;
                Updater.c(gapComposerH, persistentCompositionLocalMapU, function3);
                Integer numValueOf2 = Integer.valueOf(iHashCode);
                function4 = ComposeUiNode.Companion.g;
                Updater.c(gapComposerH, numValueOf2, function4);
                function5 = ComposeUiNode.Companion.f9645h;
                Updater.b(gapComposerH, function5);
                i9 = i10;
                function6 = ComposeUiNode.Companion.d;
                z9 = z8;
                Modifier modifierA3 = ClipKt.a(ShadowKt.b(PaddingKt.m(tr.e(gapComposerH, modifierC, function6, "LVCardWithIcon"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), LVAppDesignKitTheme.d(gapComposerH).f48388h, gapComposerH, 0, 1), LVAppDesignKitTheme.j(gapComposerH).f48411c);
                if ((i9 & 3670016) == 1048576) {
                    z10 = true;
                } else {
                    z10 = false;
                }
                objX = gapComposerH.x();
                Composer$Companion$Empty$1 composer$Companion$Empty$2 = Composer.Companion.f7939a;
                if (z10) {
                    objX = new py(function0, 13);
                    gapComposerH.q(objX);
                } else {
                    objX = new py(function0, 13);
                    gapComposerH.q(objX);
                }
                z11 = z7;
                Modifier modifierB2 = ModifierExtKt.b(PaddingKt.i(BackgroundKt.b(BorderKt.a(com.vuitton.android.designkit.ui.common.ModifierExtKt.c(modifierA3, z7, null, null, (Function0) objX, 30), LVAppDesignKitTheme.d(gapComposerH).f48385c, LVAppDesignKitTheme.c(gapComposerH).f48361b.q, LVAppDesignKitTheme.j(gapComposerH).f48411c), LVAppDesignKitTheme.c(gapComposerH).f48361b.f48374a, RectangleShapeKt.f8913a), LVAppDesignKitTheme.l(gapComposerH).f48416e), !z11, new n50(0), gapComposerH, 0);
                vertical = Alignment.Companion.l;
                rowMeasurePolicyA = RowKt.a(Arrangement.f4918a, vertical, gapComposerH, 48);
                iHashCode2 = Long.hashCode(gapComposerH.T);
                persistentCompositionLocalMapU2 = gapComposerH.U();
                modifierC2 = ComposedModifierKt.c(gapComposerH, modifierB2);
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
                Updater.c(gapComposerH, rowMeasurePolicyA, function2);
                Updater.c(gapComposerH, persistentCompositionLocalMapU2, function3);
                cj.t(iHashCode2, gapComposerH, function4, gapComposerH, function5);
                Updater.c(gapComposerH, modifierC2, function6);
                IconKt.a(PainterResources_androidKt.a(i2, gapComposerH, (i9 >> 3) & 14), null, null, LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k, gapComposerH, 56, 4);
                DTFunctionNameModifier dTFunctionNameModifier2 = new DTFunctionNameModifier("LVCardWithIcon");
                RowScopeInstance rowScopeInstance2 = RowScopeInstance.f5040a;
                Modifier modifierA4 = rowScopeInstance2.a(PaddingKt.m(rowScopeInstance2.b(dTFunctionNameModifier2, vertical), LVAppDesignKitTheme.l(gapComposerH).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 14), 1.0f, true);
                columnMeasurePolicyA2 = ColumnKt.a(arrangement$Top$1, horizontal, gapComposerH, 0);
                iHashCode3 = Long.hashCode(gapComposerH.T);
                persistentCompositionLocalMapU3 = gapComposerH.U();
                modifierC3 = ComposedModifierKt.c(gapComposerH, modifierA4);
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
                Updater.c(gapComposerH, columnMeasurePolicyA2, function2);
                Updater.c(gapComposerH, persistentCompositionLocalMapU3, function3);
                cj.t(iHashCode3, gapComposerH, function4, gapComposerH, function5);
                Updater.c(gapComposerH, modifierC3, function6);
                TextKt.c(str, null, LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).g, gapComposerH, (i9 >> 9) & 14, 0, 131066);
                Modifier modifierM2 = PaddingKt.m(new DTFunctionNameModifier("LVCardWithIcon"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48415c, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13);
                TextOverflow.f10989a.getClass();
                TextKt.c(str2, modifierM2, LVAppDesignKitTheme.c(gapComposerH).f48361b.l, 0L, null, 0L, null, null, 0L, TextOverflow.f10991c, false, 2, 0, null, LVAppDesignKitTheme.n(gapComposerH).l, gapComposerH, (i9 >> 12) & 14, 24960, 110584);
                gapComposerH.Z(true);
                if (z9) {
                    gapComposerH.L(1118582777);
                    j2 = LVAppDesignKitTheme.c(gapComposerH).f48361b.w;
                    Modifier modifierO2 = SizeKt.o(new DTFunctionNameModifier("LVCardWithIcon"), LVAppDesignKitTheme.d(gapComposerH).f48388h);
                    zE = gapComposerH.e(j2);
                    objX2 = gapComposerH.x();
                    if (zE) {
                        objX2 = new r5(j2, 4);
                        gapComposerH.q(objX2);
                    } else {
                        objX2 = new r5(j2, 4);
                        gapComposerH.q(objX2);
                    }
                    CanvasKt.a(modifierO2, (Function1) objX2, gapComposerH, 0);
                    gapComposerH.Z(false);
                } else {
                    gapComposerH.L(1118813417);
                    gapComposerH.Z(false);
                }
                IconKt.a(PainterResources_androidKt.a(LVAppDesignKitTheme.g(gapComposerH).I, gapComposerH, 0), null, SizeKt.o(PaddingKt.m(new DTFunctionNameModifier("LVCardWithIcon"), LVAppDesignKitTheme.l(gapComposerH).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 14), LVAppDesignKitTheme.d(gapComposerH).m), LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k, gapComposerH, 56, 0);
                gapComposer = gapComposerH;
                gapComposer.Z(true);
                gapComposer.Z(true);
                z6 = z9;
                z5 = z11;
                i8 = 2;
            } else {
                gapComposer = gapComposerH;
                gapComposer.D();
                i8 = i3;
                z5 = z;
                z6 = z3;
            }
            recomposeScopeImplB0 = gapComposer.b0();
            if (recomposeScopeImplB0 != null) {
                final Modifier modifier3 = modifierE;
                recomposeScopeImplB0.d = new Function2() { // from class: o50
                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj, Object obj2) {
                        ((Integer) obj2).getClass();
                        LVCardWithIconKt.a(modifier3, i2, str, str2, i8, function0, z5, z6, (Composer) obj, RecomposeScopeImplKt.a(i4 | 1), i5);
                        return Unit.f71739a;
                    }
                };
            }
        }
        i10 |= 12582912;
        i6 = i5 & 256;
        if (i6 != 0) {
            if ((i4 & 100663296) == 0) {
                z3 = z2;
                if (gapComposerH.b(z3)) {
                    i7 = 67108864;
                } else {
                    i7 = 33554432;
                }
                i10 |= i7;
            }
            if ((i10 & 38347923) != 38347922) {
                z4 = true;
            } else {
                z4 = false;
            }
            if (gapComposerH.p(i10 & 1, z4)) {
                if (i11 != 0) {
                    z7 = true;
                } else {
                    z7 = z;
                }
                if (i6 != 0) {
                    z8 = false;
                } else {
                    z8 = z3;
                }
                OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                arrangement$Top$1 = Arrangement.f4920c;
                Alignment.f8582a.getClass();
                horizontal = Alignment.Companion.n;
                columnMeasurePolicyA = ColumnKt.a(arrangement$Top$1, horizontal, gapComposerH, 0);
                iHashCode = Long.hashCode(gapComposerH.T);
                persistentCompositionLocalMapU = gapComposerH.U();
                modifierC = ComposedModifierKt.c(gapComposerH, modifierE);
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
                Updater.c(gapComposerH, columnMeasurePolicyA, function2);
                function3 = ComposeUiNode.Companion.f9643e;
                Updater.c(gapComposerH, persistentCompositionLocalMapU, function3);
                Integer numValueOf3 = Integer.valueOf(iHashCode);
                function4 = ComposeUiNode.Companion.g;
                Updater.c(gapComposerH, numValueOf3, function4);
                function5 = ComposeUiNode.Companion.f9645h;
                Updater.b(gapComposerH, function5);
                i9 = i10;
                function6 = ComposeUiNode.Companion.d;
                z9 = z8;
                Modifier modifierA5 = ClipKt.a(ShadowKt.b(PaddingKt.m(tr.e(gapComposerH, modifierC, function6, "LVCardWithIcon"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), LVAppDesignKitTheme.d(gapComposerH).f48388h, gapComposerH, 0, 1), LVAppDesignKitTheme.j(gapComposerH).f48411c);
                if ((i9 & 3670016) == 1048576) {
                    z10 = true;
                } else {
                    z10 = false;
                }
                objX = gapComposerH.x();
                Composer$Companion$Empty$1 composer$Companion$Empty$3 = Composer.Companion.f7939a;
                if (z10) {
                    objX = new py(function0, 13);
                    gapComposerH.q(objX);
                } else {
                    objX = new py(function0, 13);
                    gapComposerH.q(objX);
                }
                z11 = z7;
                Modifier modifierB3 = ModifierExtKt.b(PaddingKt.i(BackgroundKt.b(BorderKt.a(com.vuitton.android.designkit.ui.common.ModifierExtKt.c(modifierA5, z7, null, null, (Function0) objX, 30), LVAppDesignKitTheme.d(gapComposerH).f48385c, LVAppDesignKitTheme.c(gapComposerH).f48361b.q, LVAppDesignKitTheme.j(gapComposerH).f48411c), LVAppDesignKitTheme.c(gapComposerH).f48361b.f48374a, RectangleShapeKt.f8913a), LVAppDesignKitTheme.l(gapComposerH).f48416e), !z11, new n50(0), gapComposerH, 0);
                vertical = Alignment.Companion.l;
                rowMeasurePolicyA = RowKt.a(Arrangement.f4918a, vertical, gapComposerH, 48);
                iHashCode2 = Long.hashCode(gapComposerH.T);
                persistentCompositionLocalMapU2 = gapComposerH.U();
                modifierC2 = ComposedModifierKt.c(gapComposerH, modifierB3);
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
                Updater.c(gapComposerH, rowMeasurePolicyA, function2);
                Updater.c(gapComposerH, persistentCompositionLocalMapU2, function3);
                cj.t(iHashCode2, gapComposerH, function4, gapComposerH, function5);
                Updater.c(gapComposerH, modifierC2, function6);
                IconKt.a(PainterResources_androidKt.a(i2, gapComposerH, (i9 >> 3) & 14), null, null, LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k, gapComposerH, 56, 4);
                DTFunctionNameModifier dTFunctionNameModifier3 = new DTFunctionNameModifier("LVCardWithIcon");
                RowScopeInstance rowScopeInstance3 = RowScopeInstance.f5040a;
                Modifier modifierA6 = rowScopeInstance3.a(PaddingKt.m(rowScopeInstance3.b(dTFunctionNameModifier3, vertical), LVAppDesignKitTheme.l(gapComposerH).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 14), 1.0f, true);
                columnMeasurePolicyA2 = ColumnKt.a(arrangement$Top$1, horizontal, gapComposerH, 0);
                iHashCode3 = Long.hashCode(gapComposerH.T);
                persistentCompositionLocalMapU3 = gapComposerH.U();
                modifierC3 = ComposedModifierKt.c(gapComposerH, modifierA6);
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
                Updater.c(gapComposerH, columnMeasurePolicyA2, function2);
                Updater.c(gapComposerH, persistentCompositionLocalMapU3, function3);
                cj.t(iHashCode3, gapComposerH, function4, gapComposerH, function5);
                Updater.c(gapComposerH, modifierC3, function6);
                TextKt.c(str, null, LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).g, gapComposerH, (i9 >> 9) & 14, 0, 131066);
                Modifier modifierM3 = PaddingKt.m(new DTFunctionNameModifier("LVCardWithIcon"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48415c, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13);
                TextOverflow.f10989a.getClass();
                TextKt.c(str2, modifierM3, LVAppDesignKitTheme.c(gapComposerH).f48361b.l, 0L, null, 0L, null, null, 0L, TextOverflow.f10991c, false, 2, 0, null, LVAppDesignKitTheme.n(gapComposerH).l, gapComposerH, (i9 >> 12) & 14, 24960, 110584);
                gapComposerH.Z(true);
                if (z9) {
                    gapComposerH.L(1118582777);
                    j2 = LVAppDesignKitTheme.c(gapComposerH).f48361b.w;
                    Modifier modifierO3 = SizeKt.o(new DTFunctionNameModifier("LVCardWithIcon"), LVAppDesignKitTheme.d(gapComposerH).f48388h);
                    zE = gapComposerH.e(j2);
                    objX2 = gapComposerH.x();
                    if (zE) {
                        objX2 = new r5(j2, 4);
                        gapComposerH.q(objX2);
                    } else {
                        objX2 = new r5(j2, 4);
                        gapComposerH.q(objX2);
                    }
                    CanvasKt.a(modifierO3, (Function1) objX2, gapComposerH, 0);
                    gapComposerH.Z(false);
                } else {
                    gapComposerH.L(1118813417);
                    gapComposerH.Z(false);
                }
                IconKt.a(PainterResources_androidKt.a(LVAppDesignKitTheme.g(gapComposerH).I, gapComposerH, 0), null, SizeKt.o(PaddingKt.m(new DTFunctionNameModifier("LVCardWithIcon"), LVAppDesignKitTheme.l(gapComposerH).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 14), LVAppDesignKitTheme.d(gapComposerH).m), LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k, gapComposerH, 56, 0);
                gapComposer = gapComposerH;
                gapComposer.Z(true);
                gapComposer.Z(true);
                z6 = z9;
                z5 = z11;
                i8 = 2;
            } else {
                gapComposer = gapComposerH;
                gapComposer.D();
                i8 = i3;
                z5 = z;
                z6 = z3;
            }
            recomposeScopeImplB0 = gapComposer.b0();
            if (recomposeScopeImplB0 != null) {
                final Modifier modifier4 = modifierE;
                recomposeScopeImplB0.d = new Function2() { // from class: o50
                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj, Object obj2) {
                        ((Integer) obj2).getClass();
                        LVCardWithIconKt.a(modifier4, i2, str, str2, i8, function0, z5, z6, (Composer) obj, RecomposeScopeImplKt.a(i4 | 1), i5);
                        return Unit.f71739a;
                    }
                };
            }
        }
        i10 |= 100663296;
        z3 = z2;
        if ((i10 & 38347923) != 38347922) {
            z4 = true;
        } else {
            z4 = false;
        }
        if (gapComposerH.p(i10 & 1, z4)) {
            if (i11 != 0) {
                z7 = true;
            } else {
                z7 = z;
            }
            if (i6 != 0) {
                z8 = false;
            } else {
                z8 = z3;
            }
            OpaqueKey opaqueKey4 = ComposerKt.f7940a;
            arrangement$Top$1 = Arrangement.f4920c;
            Alignment.f8582a.getClass();
            horizontal = Alignment.Companion.n;
            columnMeasurePolicyA = ColumnKt.a(arrangement$Top$1, horizontal, gapComposerH, 0);
            iHashCode = Long.hashCode(gapComposerH.T);
            persistentCompositionLocalMapU = gapComposerH.U();
            modifierC = ComposedModifierKt.c(gapComposerH, modifierE);
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
            Updater.c(gapComposerH, columnMeasurePolicyA, function2);
            function3 = ComposeUiNode.Companion.f9643e;
            Updater.c(gapComposerH, persistentCompositionLocalMapU, function3);
            Integer numValueOf4 = Integer.valueOf(iHashCode);
            function4 = ComposeUiNode.Companion.g;
            Updater.c(gapComposerH, numValueOf4, function4);
            function5 = ComposeUiNode.Companion.f9645h;
            Updater.b(gapComposerH, function5);
            i9 = i10;
            function6 = ComposeUiNode.Companion.d;
            z9 = z8;
            Modifier modifierA7 = ClipKt.a(ShadowKt.b(PaddingKt.m(tr.e(gapComposerH, modifierC, function6, "LVCardWithIcon"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), LVAppDesignKitTheme.d(gapComposerH).f48388h, gapComposerH, 0, 1), LVAppDesignKitTheme.j(gapComposerH).f48411c);
            if ((i9 & 3670016) == 1048576) {
                z10 = true;
            } else {
                z10 = false;
            }
            objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$4 = Composer.Companion.f7939a;
            if (z10) {
                objX = new py(function0, 13);
                gapComposerH.q(objX);
            } else {
                objX = new py(function0, 13);
                gapComposerH.q(objX);
            }
            z11 = z7;
            Modifier modifierB4 = ModifierExtKt.b(PaddingKt.i(BackgroundKt.b(BorderKt.a(com.vuitton.android.designkit.ui.common.ModifierExtKt.c(modifierA7, z7, null, null, (Function0) objX, 30), LVAppDesignKitTheme.d(gapComposerH).f48385c, LVAppDesignKitTheme.c(gapComposerH).f48361b.q, LVAppDesignKitTheme.j(gapComposerH).f48411c), LVAppDesignKitTheme.c(gapComposerH).f48361b.f48374a, RectangleShapeKt.f8913a), LVAppDesignKitTheme.l(gapComposerH).f48416e), !z11, new n50(0), gapComposerH, 0);
            vertical = Alignment.Companion.l;
            rowMeasurePolicyA = RowKt.a(Arrangement.f4918a, vertical, gapComposerH, 48);
            iHashCode2 = Long.hashCode(gapComposerH.T);
            persistentCompositionLocalMapU2 = gapComposerH.U();
            modifierC2 = ComposedModifierKt.c(gapComposerH, modifierB4);
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
            Updater.c(gapComposerH, rowMeasurePolicyA, function2);
            Updater.c(gapComposerH, persistentCompositionLocalMapU2, function3);
            cj.t(iHashCode2, gapComposerH, function4, gapComposerH, function5);
            Updater.c(gapComposerH, modifierC2, function6);
            IconKt.a(PainterResources_androidKt.a(i2, gapComposerH, (i9 >> 3) & 14), null, null, LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k, gapComposerH, 56, 4);
            DTFunctionNameModifier dTFunctionNameModifier4 = new DTFunctionNameModifier("LVCardWithIcon");
            RowScopeInstance rowScopeInstance4 = RowScopeInstance.f5040a;
            Modifier modifierA8 = rowScopeInstance4.a(PaddingKt.m(rowScopeInstance4.b(dTFunctionNameModifier4, vertical), LVAppDesignKitTheme.l(gapComposerH).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 14), 1.0f, true);
            columnMeasurePolicyA2 = ColumnKt.a(arrangement$Top$1, horizontal, gapComposerH, 0);
            iHashCode3 = Long.hashCode(gapComposerH.T);
            persistentCompositionLocalMapU3 = gapComposerH.U();
            modifierC3 = ComposedModifierKt.c(gapComposerH, modifierA8);
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
            Updater.c(gapComposerH, columnMeasurePolicyA2, function2);
            Updater.c(gapComposerH, persistentCompositionLocalMapU3, function3);
            cj.t(iHashCode3, gapComposerH, function4, gapComposerH, function5);
            Updater.c(gapComposerH, modifierC3, function6);
            TextKt.c(str, null, LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).g, gapComposerH, (i9 >> 9) & 14, 0, 131066);
            Modifier modifierM4 = PaddingKt.m(new DTFunctionNameModifier("LVCardWithIcon"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48415c, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13);
            TextOverflow.f10989a.getClass();
            TextKt.c(str2, modifierM4, LVAppDesignKitTheme.c(gapComposerH).f48361b.l, 0L, null, 0L, null, null, 0L, TextOverflow.f10991c, false, 2, 0, null, LVAppDesignKitTheme.n(gapComposerH).l, gapComposerH, (i9 >> 12) & 14, 24960, 110584);
            gapComposerH.Z(true);
            if (z9) {
                gapComposerH.L(1118582777);
                j2 = LVAppDesignKitTheme.c(gapComposerH).f48361b.w;
                Modifier modifierO4 = SizeKt.o(new DTFunctionNameModifier("LVCardWithIcon"), LVAppDesignKitTheme.d(gapComposerH).f48388h);
                zE = gapComposerH.e(j2);
                objX2 = gapComposerH.x();
                if (zE) {
                    objX2 = new r5(j2, 4);
                    gapComposerH.q(objX2);
                } else {
                    objX2 = new r5(j2, 4);
                    gapComposerH.q(objX2);
                }
                CanvasKt.a(modifierO4, (Function1) objX2, gapComposerH, 0);
                gapComposerH.Z(false);
            } else {
                gapComposerH.L(1118813417);
                gapComposerH.Z(false);
            }
            IconKt.a(PainterResources_androidKt.a(LVAppDesignKitTheme.g(gapComposerH).I, gapComposerH, 0), null, SizeKt.o(PaddingKt.m(new DTFunctionNameModifier("LVCardWithIcon"), LVAppDesignKitTheme.l(gapComposerH).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 14), LVAppDesignKitTheme.d(gapComposerH).m), LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k, gapComposerH, 56, 0);
            gapComposer = gapComposerH;
            gapComposer.Z(true);
            gapComposer.Z(true);
            z6 = z9;
            z5 = z11;
            i8 = 2;
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
            i8 = i3;
            z5 = z;
            z6 = z3;
        }
        recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            final Modifier modifier5 = modifierE;
            recomposeScopeImplB0.d = new Function2() { // from class: o50
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    ((Integer) obj2).getClass();
                    LVCardWithIconKt.a(modifier5, i2, str, str2, i8, function0, z5, z6, (Composer) obj, RecomposeScopeImplKt.a(i4 | 1), i5);
                    return Unit.f71739a;
                }
            };
        }
    }
}
