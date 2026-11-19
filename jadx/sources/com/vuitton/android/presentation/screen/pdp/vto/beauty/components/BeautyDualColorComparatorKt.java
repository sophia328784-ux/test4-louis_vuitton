package com.vuitton.android.presentation.screen.pdp.vto.beauty.components;

import androidx.compose.animation.AnimationModifierKt;
import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.BorderKt;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.Arrangement$SpaceBetween$1;
import androidx.compose.foundation.layout.AspectRatioKt;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.ColumnScopeInstance;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowMeasurePolicy;
import androidx.compose.foundation.layout.RowScopeInstance;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.shape.RoundedCornerShape;
import androidx.compose.foundation.shape.RoundedCornerShapeKt;
import androidx.compose.material3.IconKt;
import androidx.compose.material3.TextKt;
import androidx.compose.runtime.Applier;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.BiasAlignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.ClipKt;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.res.PainterResources_androidKt;
import androidx.compose.ui.res.StringResources_androidKt;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import androidx.compose.ui.text.style.TextAlign;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.unit.LayoutDirection;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.R;
import com.vuitton.android.designkit.components.ModifierExtKt;
import com.vuitton.android.designkit.ui.theme.IconSize;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.presentation.imageloading.compose.ImageLoaderKt;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.models.BeautyProductTypeUiModel;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.models.ColorUiModel;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.models.TryOnProductUiModel;
import defpackage.c;
import defpackage.cj;
import defpackage.f0;
import defpackage.h1;
import defpackage.n00;
import defpackage.o0;
import defpackage.t;
import defpackage.tr;
import defpackage.u5;
import defpackage.v1;
import defpackage.vd;
import defpackage.wd;
import defpackage.xd;
import defpackage.y2;
import defpackage.z;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import net.rtccloud.sdk.Call;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class BeautyDualColorComparatorKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final float f62002a;

    static {
        Dp.Companion companion = Dp.f11004c;
        f62002a = 1.5f;
    }

    /* JADX WARN: Code duplicated, block: B:34:0x0063  */
    /* JADX WARN: Code duplicated, block: B:36:0x0069  */
    /* JADX WARN: Code duplicated, block: B:37:0x006c  */
    /* JADX WARN: Code duplicated, block: B:41:0x0073  */
    /* JADX WARN: Code duplicated, block: B:43:0x0079  */
    /* JADX WARN: Code duplicated, block: B:44:0x007c  */
    /* JADX WARN: Code duplicated, block: B:48:0x0085  */
    /* JADX WARN: Code duplicated, block: B:49:0x0087  */
    /* JADX WARN: Code duplicated, block: B:52:0x0090  */
    /* JADX WARN: Code duplicated, block: B:54:0x0094  */
    /* JADX WARN: Code duplicated, block: B:55:0x0097  */
    /* JADX WARN: Code duplicated, block: B:58:0x00cc  */
    /* JADX WARN: Code duplicated, block: B:60:0x00d3  */
    /* JADX WARN: Code duplicated, block: B:61:0x00d7  */
    /* JADX WARN: Code duplicated, block: B:64:0x0199  */
    /* JADX WARN: Code duplicated, block: B:65:0x01a5  */
    /* JADX WARN: Code duplicated, block: B:67:0x01f8  */
    /* JADX WARN: Code duplicated, block: B:69:0x0221  */
    /* JADX WARN: Code duplicated, block: B:71:0x0228  */
    /* JADX WARN: Code duplicated, block: B:72:0x022c  */
    /* JADX WARN: Code duplicated, block: B:74:0x02b5  */
    /* JADX WARN: Code duplicated, block: B:76:0x02b9  */
    /* JADX WARN: Code duplicated, block: B:78:0x02c9  */
    /* JADX WARN: Code duplicated, block: B:80:0x02cd  */
    /* JADX WARN: Code duplicated, block: B:83:0x02d9  */
    /* JADX WARN: Code duplicated, block: B:85:? A[RETURN, SYNTHETIC] */
    public static final void a(Modifier modifier, String str, String str2, boolean z, ComposableLambdaImpl composableLambdaImpl, Composer composer, int i2, int i3) {
        int i4;
        String str3;
        String str4;
        boolean z2;
        String str5;
        RecomposeScopeImpl recomposeScopeImplB0;
        String str6;
        BiasAlignment.Horizontal horizontal;
        ColumnMeasurePolicy columnMeasurePolicyA;
        int iHashCode;
        PersistentCompositionLocalMap persistentCompositionLocalMapU;
        Modifier modifierC;
        Function0 function0;
        Function2 function2;
        Function2 function3;
        Function2 function4;
        Function1 function1;
        Function2 function5;
        ColumnScopeInstance columnScopeInstance;
        int i5;
        ColumnScopeInstance columnScopeInstance2;
        boolean z3;
        RowMeasurePolicy rowMeasurePolicyA;
        int iHashCode2;
        PersistentCompositionLocalMap persistentCompositionLocalMapU2;
        Modifier modifierC2;
        int i6;
        int i7;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = defpackage.a.e(modifierE, "BeautyDualColor");
        }
        str.getClass();
        GapComposer gapComposerH = composer.h(1286457330);
        Applier applier = gapComposerH.f7976a;
        if ((i2 & 6) == 0) {
            i4 = (gapComposerH.K(modifierE) ? 4 : 2) | i2;
        } else {
            i4 = i2;
        }
        if ((i2 & 48) == 0) {
            str3 = str;
            i4 |= gapComposerH.K(str3) ? 32 : 16;
        } else {
            str3 = str;
        }
        int i8 = i3 & 4;
        if (i8 == 0) {
            if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
                str4 = str2;
                i4 |= gapComposerH.K(str4) ? 256 : 128;
            }
            if ((i2 & 3072) == 0) {
                if (gapComposerH.b(z)) {
                    i7 = 2048;
                } else {
                    i7 = 1024;
                }
                i4 |= i7;
            }
            if ((i2 & 24576) == 0) {
                if (gapComposerH.y(composableLambdaImpl)) {
                    i6 = 16384;
                } else {
                    i6 = 8192;
                }
                i4 |= i6;
            }
            if ((i4 & 9363) != 9362) {
                z2 = true;
            } else {
                z2 = false;
            }
            if (gapComposerH.p(i4 & 1, z2)) {
                if (i8 != 0) {
                    str6 = null;
                } else {
                    str6 = str4;
                }
                OpaqueKey opaqueKey = ComposerKt.f7940a;
                Modifier modifierK = PaddingKt.k(modifierE, LVAppDesignKitTheme.l(gapComposerH).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2);
                Alignment.f8582a.getClass();
                horizontal = Alignment.Companion.o;
                columnMeasurePolicyA = ColumnKt.a(Arrangement.f4920c, horizontal, gapComposerH, 48);
                iHashCode = Long.hashCode(gapComposerH.T);
                persistentCompositionLocalMapU = gapComposerH.U();
                modifierC = ComposedModifierKt.c(gapComposerH, modifierK);
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
                Updater.c(gapComposerH, columnMeasurePolicyA, function2);
                function3 = ComposeUiNode.Companion.f9643e;
                Updater.c(gapComposerH, persistentCompositionLocalMapU, function3);
                Integer numValueOf = Integer.valueOf(iHashCode);
                function4 = ComposeUiNode.Companion.g;
                Updater.c(gapComposerH, numValueOf, function4);
                function1 = ComposeUiNode.Companion.f9645h;
                Updater.b(gapComposerH, function1);
                function5 = ComposeUiNode.Companion.d;
                Updater.c(gapComposerH, modifierC, function5);
                composableLambdaImpl.invoke(gapComposerH, Integer.valueOf((i4 >> 12) & 14));
                DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier("BeautyDualColor");
                columnScopeInstance = ColumnScopeInstance.f4944a;
                Modifier modifierM = PaddingKt.m(columnScopeInstance.b(dTFunctionNameModifier, horizontal), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48415c, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13);
                TextAlign.f10959b.getClass();
                i5 = TextAlign.f10961e;
                TextKt.c(str3, modifierM, LVAppDesignKitTheme.c(gapComposerH).f48361b.m, 0L, null, 0L, null, new TextAlign(i5), 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).l, gapComposerH, (i4 >> 3) & 14, 0, 130040);
                gapComposerH = gapComposerH;
                if (str6 == null) {
                    gapComposerH.L(361256911);
                    gapComposerH.Z(false);
                    columnScopeInstance2 = columnScopeInstance;
                } else {
                    gapComposerH.L(361256912);
                    columnScopeInstance2 = columnScopeInstance;
                    TextKt.c(str6, columnScopeInstance.b(new DTFunctionNameModifier("BeautyDualColor"), horizontal), LVAppDesignKitTheme.c(gapComposerH).f48361b.m, 0L, null, 0L, null, new TextAlign(i5), 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).m, gapComposerH, 0, 0, 130040);
                    gapComposerH.Z(false);
                }
                if (z) {
                    gapComposerH = gapComposerH;
                    gapComposerH.L(361662981);
                    Modifier modifierB = columnScopeInstance2.b(new DTFunctionNameModifier("BeautyDualColor"), horizontal);
                    rowMeasurePolicyA = RowKt.a(Arrangement.f4918a, Alignment.Companion.l, gapComposerH, 48);
                    iHashCode2 = Long.hashCode(gapComposerH.T);
                    persistentCompositionLocalMapU2 = gapComposerH.U();
                    modifierC2 = ComposedModifierKt.c(gapComposerH, modifierB);
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
                    IconKt.a(PainterResources_androidKt.a(LVAppDesignKitTheme.g(gapComposerH).f48394c, gapComposerH, 0), null, SizeKt.o(PaddingKt.m(tr.e(gapComposerH, modifierC2, function5, "BeautyDualColor"), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48414b, Call.Parameters.DEFAULT_CAMERA_ZOOM, 11), IconSize.f48347a), LVAppDesignKitTheme.c(gapComposerH).f48361b.m, gapComposerH, 56, 0);
                    GapComposer gapComposer = gapComposerH;
                    TextKt.c(StringResources_androidKt.c(gapComposerH, R.string.vto_limited_edition), null, LVAppDesignKitTheme.c(gapComposerH).f48361b.m, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).m, gapComposer, 0, 0, 131066);
                    gapComposerH = gapComposer;
                    z3 = true;
                    gapComposerH.Z(true);
                    gapComposerH.Z(false);
                } else {
                    gapComposerH = gapComposerH;
                    z3 = true;
                    gapComposerH.L(362513466);
                    gapComposerH.Z(false);
                }
                gapComposerH.Z(z3);
                str5 = str6;
            } else {
                gapComposerH.D();
                str5 = str4;
            }
            recomposeScopeImplB0 = gapComposerH.b0();
            if (recomposeScopeImplB0 != null) {
                recomposeScopeImplB0.d = new xd(modifierE, str, str5, z, composableLambdaImpl, i2, i3);
            }
        }
        i4 |= KyberEngine.KyberPolyBytes;
        str4 = str2;
        if ((i2 & 3072) == 0) {
            if (gapComposerH.b(z)) {
                i7 = 2048;
            } else {
                i7 = 1024;
            }
            i4 |= i7;
        }
        if ((i2 & 24576) == 0) {
            if (gapComposerH.y(composableLambdaImpl)) {
                i6 = 16384;
            } else {
                i6 = 8192;
            }
            i4 |= i6;
        }
        if ((i4 & 9363) != 9362) {
            z2 = true;
        } else {
            z2 = false;
        }
        if (gapComposerH.p(i4 & 1, z2)) {
            if (i8 != 0) {
                str6 = null;
            } else {
                str6 = str4;
            }
            OpaqueKey opaqueKey2 = ComposerKt.f7940a;
            Modifier modifierK2 = PaddingKt.k(modifierE, LVAppDesignKitTheme.l(gapComposerH).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2);
            Alignment.f8582a.getClass();
            horizontal = Alignment.Companion.o;
            columnMeasurePolicyA = ColumnKt.a(Arrangement.f4920c, horizontal, gapComposerH, 48);
            iHashCode = Long.hashCode(gapComposerH.T);
            persistentCompositionLocalMapU = gapComposerH.U();
            modifierC = ComposedModifierKt.c(gapComposerH, modifierK2);
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
            Updater.c(gapComposerH, columnMeasurePolicyA, function2);
            function3 = ComposeUiNode.Companion.f9643e;
            Updater.c(gapComposerH, persistentCompositionLocalMapU, function3);
            Integer numValueOf2 = Integer.valueOf(iHashCode);
            function4 = ComposeUiNode.Companion.g;
            Updater.c(gapComposerH, numValueOf2, function4);
            function1 = ComposeUiNode.Companion.f9645h;
            Updater.b(gapComposerH, function1);
            function5 = ComposeUiNode.Companion.d;
            Updater.c(gapComposerH, modifierC, function5);
            composableLambdaImpl.invoke(gapComposerH, Integer.valueOf((i4 >> 12) & 14));
            DTFunctionNameModifier dTFunctionNameModifier2 = new DTFunctionNameModifier("BeautyDualColor");
            columnScopeInstance = ColumnScopeInstance.f4944a;
            Modifier modifierM2 = PaddingKt.m(columnScopeInstance.b(dTFunctionNameModifier2, horizontal), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48415c, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13);
            TextAlign.f10959b.getClass();
            i5 = TextAlign.f10961e;
            TextKt.c(str3, modifierM2, LVAppDesignKitTheme.c(gapComposerH).f48361b.m, 0L, null, 0L, null, new TextAlign(i5), 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).l, gapComposerH, (i4 >> 3) & 14, 0, 130040);
            gapComposerH = gapComposerH;
            if (str6 == null) {
                gapComposerH.L(361256911);
                gapComposerH.Z(false);
                columnScopeInstance2 = columnScopeInstance;
            } else {
                gapComposerH.L(361256912);
                columnScopeInstance2 = columnScopeInstance;
                TextKt.c(str6, columnScopeInstance.b(new DTFunctionNameModifier("BeautyDualColor"), horizontal), LVAppDesignKitTheme.c(gapComposerH).f48361b.m, 0L, null, 0L, null, new TextAlign(i5), 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).m, gapComposerH, 0, 0, 130040);
                gapComposerH.Z(false);
            }
            if (z) {
                gapComposerH = gapComposerH;
                gapComposerH.L(361662981);
                Modifier modifierB2 = columnScopeInstance2.b(new DTFunctionNameModifier("BeautyDualColor"), horizontal);
                rowMeasurePolicyA = RowKt.a(Arrangement.f4918a, Alignment.Companion.l, gapComposerH, 48);
                iHashCode2 = Long.hashCode(gapComposerH.T);
                persistentCompositionLocalMapU2 = gapComposerH.U();
                modifierC2 = ComposedModifierKt.c(gapComposerH, modifierB2);
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
                IconKt.a(PainterResources_androidKt.a(LVAppDesignKitTheme.g(gapComposerH).f48394c, gapComposerH, 0), null, SizeKt.o(PaddingKt.m(tr.e(gapComposerH, modifierC2, function5, "BeautyDualColor"), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48414b, Call.Parameters.DEFAULT_CAMERA_ZOOM, 11), IconSize.f48347a), LVAppDesignKitTheme.c(gapComposerH).f48361b.m, gapComposerH, 56, 0);
                GapComposer gapComposer2 = gapComposerH;
                TextKt.c(StringResources_androidKt.c(gapComposerH, R.string.vto_limited_edition), null, LVAppDesignKitTheme.c(gapComposerH).f48361b.m, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).m, gapComposer2, 0, 0, 131066);
                gapComposerH = gapComposer2;
                z3 = true;
                gapComposerH.Z(true);
                gapComposerH.Z(false);
            } else {
                gapComposerH = gapComposerH;
                z3 = true;
                gapComposerH.L(362513466);
                gapComposerH.Z(false);
            }
            gapComposerH.Z(z3);
            str5 = str6;
        } else {
            gapComposerH.D();
            str5 = str4;
        }
        recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new xd(modifierE, str, str5, z, composableLambdaImpl, i2, i3);
        }
    }

    public static final void b(Modifier modifier, TryOnProductUiModel tryOnProductUiModel, TryOnProductUiModel tryOnProductUiModel2, Function0 function0, Composer composer, int i2) {
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = defpackage.a.e(modifierE, "BeautyDualColorComparator");
        }
        modifierE.getClass();
        tryOnProductUiModel.getClass();
        function0.getClass();
        GapComposer gapComposerH = composer.h(-1075470897);
        int i3 = i2 | (gapComposerH.K(modifierE) ? 4 : 2) | (gapComposerH.y(tryOnProductUiModel) ? 32 : 16) | (gapComposerH.y(tryOnProductUiModel2) ? 256 : 128) | (gapComposerH.y(function0) ? 2048 : 1024);
        if (gapComposerH.p(i3 & 1, (i3 & 1171) != 1170)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            boolean z = gapComposerH.k(CompositionLocalsKt.n) == LayoutDirection.Rtl;
            Modifier modifierM = PaddingKt.m(SizeKt.d(modifierE, 1.0f), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).d, 7);
            Arrangement$SpaceBetween$1 arrangement$SpaceBetween$1 = Arrangement.g;
            Alignment.f8582a.getClass();
            RowMeasurePolicy rowMeasurePolicyA = RowKt.a(arrangement$SpaceBetween$1, Alignment.Companion.f8591k, gapComposerH, 6);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierM);
            ComposeUiNode.b0.getClass();
            Function0 function1 = ComposeUiNode.Companion.f9641b;
            if (gapComposerH.f7976a == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function1);
            } else {
                gapComposerH.o();
            }
            Updater.c(gapComposerH, rowMeasurePolicyA, ComposeUiNode.Companion.f9644f);
            Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
            Updater.c(gapComposerH, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
            Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
            Updater.c(gapComposerH, modifierC, ComposeUiNode.Companion.d);
            RowScopeInstance rowScopeInstance = RowScopeInstance.f5040a;
            if (z) {
                d(rowScopeInstance.a(n00.i(gapComposerH, 2032999744, "BeautyDualColorComparator"), 0.5f, true), tryOnProductUiModel2, function0, gapComposerH, (i3 >> 3) & 1008);
                gapComposerH.Z(false);
            } else {
                e(rowScopeInstance.a(n00.i(gapComposerH, 2033240707, "BeautyDualColorComparator"), 0.5f, true), tryOnProductUiModel, false, gapComposerH, i3 & 112, 4);
                gapComposerH.Z(false);
            }
            if (z) {
                e(rowScopeInstance.a(n00.i(gapComposerH, 2033431171, "BeautyDualColorComparator"), 0.5f, true), tryOnProductUiModel, false, gapComposerH, i3 & 112, 4);
                gapComposerH.Z(false);
            } else {
                d(rowScopeInstance.a(n00.i(gapComposerH, 2033609824, "BeautyDualColorComparator"), 0.5f, true), tryOnProductUiModel2, function0, gapComposerH, (i3 >> 3) & 1008);
                gapComposerH.Z(false);
            }
            gapComposerH.Z(true);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new z(modifierE, (Object) tryOnProductUiModel, (Object) tryOnProductUiModel2, function0, i2, 11);
        }
    }

    public static final void c(String str, boolean z, Function0 function0, Composer composer, int i2, int i3) {
        Function0 function1;
        int i4;
        boolean z2;
        GapComposer gapComposerH = composer.h(-1562996450);
        int i5 = i2 | (gapComposerH.K(str) ? 4 : 2);
        int i6 = i3 & 4;
        if (i6 != 0) {
            i4 = i5 | KyberEngine.KyberPolyBytes;
            function1 = function0;
        } else {
            function1 = function0;
            i4 = i5 | (gapComposerH.y(function1) ? 256 : 128);
        }
        if (gapComposerH.p(i4 & 1, (i4 & 147) != 146)) {
            Function0 function2 = i6 != 0 ? null : function1;
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            z2 = z;
            ImageLoaderKt.b(ModifierExtKt.b(ModifierExtKt.b(AspectRatioKt.a(AnimationModifierKt.b(SizeKt.o(ClipKt.a(new DTFunctionNameModifier("BeautyDualColorItem"), RoundedCornerShapeKt.f5846a), LVAppDesignKitTheme.d(gapComposerH).t), null, 3), 1.0f, true), z2, new t(13), gapComposerH, 48), function2 != null, new o0(function2, 12), gapComposerH, 0), str, null, null, null, 0, false, null, null, null, gapComposerH, 0, 2044);
            function1 = function2;
        } else {
            z2 = z;
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new vd(str, z2, function1, i2, i3);
        }
    }

    public static final void d(Modifier modifier, TryOnProductUiModel tryOnProductUiModel, Function0 function0, Composer composer, int i2) {
        int i3;
        if (modifier != null) {
            modifier = defpackage.a.e(modifier, "BeautyDualComparedItem");
        }
        Modifier modifier2 = modifier;
        function0.getClass();
        GapComposer gapComposerH = composer.h(312186984);
        if ((i2 & 6) == 0) {
            i3 = (gapComposerH.K(modifier2) ? 4 : 2) | i2;
        } else {
            i3 = i2;
        }
        if ((i2 & 48) == 0) {
            i3 |= gapComposerH.y(tryOnProductUiModel) ? 32 : 16;
        }
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i3 |= gapComposerH.y(function0) ? 256 : 128;
        }
        if (gapComposerH.p(i3 & 1, (i3 & 147) != 146)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            if (tryOnProductUiModel == null || tryOnProductUiModel.f62185c == BeautyProductTypeUiModel.NONE) {
                gapComposerH.L(1758515167);
                boolean z = (i3 & 896) == 256;
                Object objX = gapComposerH.x();
                if (z || objX == Composer.Companion.f7939a) {
                    objX = new y2(function0, 5);
                    gapComposerH.q(objX);
                }
                a(SemanticsModifierKt.b(modifier2, true, (Function1) objX), StringResources_androidKt.c(gapComposerH, R.string.vto_dual_title_button), null, false, ComposableLambdaKt.b(-2107870863, new o0(function0, 11), gapComposerH), gapComposerH, 27648, 4);
                gapComposerH = gapComposerH;
                gapComposerH.Z(false);
            } else {
                gapComposerH.L(1758960110);
                ColorUiModel colorUiModel = tryOnProductUiModel.g;
                String str = colorUiModel != null ? colorUiModel.f62159a : null;
                if (str == null) {
                    str = "";
                }
                a(modifier2, str, null, tryOnProductUiModel.f62190j, ComposableLambdaKt.b(586393160, new f0(tryOnProductUiModel, function0, 12), gapComposerH), gapComposerH, (i3 & 14) | 24576, 4);
                gapComposerH.Z(false);
            }
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new v1(modifier2, tryOnProductUiModel, function0, i2, 3);
        }
    }

    public static final void e(Modifier modifier, TryOnProductUiModel tryOnProductUiModel, boolean z, Composer composer, int i2, int i3) {
        String str;
        if (modifier != null) {
            modifier = defpackage.a.e(modifier, "BeautyDualOriginItem");
        }
        Modifier modifier2 = modifier;
        tryOnProductUiModel.getClass();
        ColorUiModel colorUiModel = tryOnProductUiModel.g;
        GapComposer gapComposerH = composer.h(1110593311);
        int i4 = (gapComposerH.K(modifier2) ? 4 : 2) | i2 | (gapComposerH.y(tryOnProductUiModel) ? 32 : 16);
        int i5 = i3 & 4;
        if (i5 != 0) {
            i4 |= KyberEngine.KyberPolyBytes;
        } else if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i4 |= gapComposerH.b(z) ? 256 : 128;
        }
        if (gapComposerH.p(i4 & 1, (i4 & 147) != 146)) {
            if (i5 != 0) {
                z = false;
            }
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            String str2 = null;
            if (z) {
                str = tryOnProductUiModel.f62187f;
            } else {
                str = colorUiModel != null ? colorUiModel.f62159a : null;
                if (str == null) {
                    str = "";
                }
            }
            String str3 = str;
            if (z && colorUiModel != null) {
                str2 = colorUiModel.f62159a;
            }
            String str4 = str2;
            Object objX = gapComposerH.x();
            if (objX == Composer.Companion.f7939a) {
                objX = new u5(22);
                gapComposerH.q(objX);
            }
            a(SemanticsModifierKt.b(modifier2, true, (Function1) objX), str3, str4, tryOnProductUiModel.f62190j, ComposableLambdaKt.b(-2001672413, new c(tryOnProductUiModel, 7), gapComposerH), gapComposerH, 24576, 0);
        } else {
            gapComposerH.D();
        }
        boolean z2 = z;
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new wd(modifier2, tryOnProductUiModel, z2, i2, i3, 0);
        }
    }

    public static final void f(Function0 function0, Composer composer, int i2) {
        function0.getClass();
        GapComposer gapComposerH = composer.h(1090507656);
        Applier applier = gapComposerH.f7976a;
        int i3 = (gapComposerH.y(function0) ? 4 : 2) | i2;
        if (gapComposerH.p(i3 & 1, (i3 & 3) != 2)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Modifier modifierO = SizeKt.o(com.vuitton.android.presentation.extensions.ModifierExtKt.a(new DTFunctionNameModifier("BeautyPlusItem"), null, null, 7), LVAppDesignKitTheme.d(gapComposerH).t);
            long j2 = LVAppDesignKitTheme.c(gapComposerH).f48361b.y;
            RoundedCornerShape roundedCornerShape = RoundedCornerShapeKt.f5846a;
            Modifier modifierA = ClipKt.a(BorderKt.a(modifierO, f62002a, j2, roundedCornerShape), roundedCornerShape);
            boolean z = (i3 & 14) == 4;
            Object objX = gapComposerH.x();
            if (z || objX == Composer.Companion.f7939a) {
                objX = new h1(function0, 14);
                gapComposerH.q(objX);
            }
            Modifier modifierC = com.vuitton.android.designkit.ui.common.ModifierExtKt.c(modifierA, false, null, null, (Function0) objX, 31);
            Alignment.f8582a.getClass();
            BiasAlignment biasAlignment = Alignment.Companion.f8587f;
            MeasurePolicy measurePolicyD = BoxKt.d(biasAlignment, false);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC2 = ComposedModifierKt.c(gapComposerH, modifierC);
            ComposeUiNode.b0.getClass();
            Function0 function1 = ComposeUiNode.Companion.f9641b;
            if (applier == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function1);
            } else {
                gapComposerH.o();
            }
            Function2 function2 = ComposeUiNode.Companion.f9644f;
            Updater.c(gapComposerH, measurePolicyD, function2);
            Function2 function3 = ComposeUiNode.Companion.f9643e;
            Updater.c(gapComposerH, persistentCompositionLocalMapU, function3);
            Integer numValueOf = Integer.valueOf(iHashCode);
            Function2 function4 = ComposeUiNode.Companion.g;
            Updater.c(gapComposerH, numValueOf, function4);
            Function1 function5 = ComposeUiNode.Companion.f9645h;
            Updater.b(gapComposerH, function5);
            Function2 function6 = ComposeUiNode.Companion.d;
            Modifier modifierB = BackgroundKt.b(SizeKt.o(tr.e(gapComposerH, modifierC2, function6, "BeautyPlusItem"), LVAppDesignKitTheme.d(gapComposerH).q), Color.b(LVAppDesignKitTheme.h(gapComposerH).f48404e, LVAppDesignKitTheme.c(gapComposerH).f48361b.y), roundedCornerShape);
            MeasurePolicy measurePolicyD2 = BoxKt.d(biasAlignment, false);
            int iHashCode2 = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU2 = gapComposerH.U();
            Modifier modifierC3 = ComposedModifierKt.c(gapComposerH, modifierB);
            if (applier == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function1);
            } else {
                gapComposerH.o();
            }
            Updater.c(gapComposerH, measurePolicyD2, function2);
            Updater.c(gapComposerH, persistentCompositionLocalMapU2, function3);
            cj.t(iHashCode2, gapComposerH, function4, gapComposerH, function5);
            Updater.c(gapComposerH, modifierC3, function6);
            IconKt.a(PainterResources_androidKt.a(LVAppDesignKitTheme.g(gapComposerH).J, gapComposerH, 0), null, null, LVAppDesignKitTheme.c(gapComposerH).f48361b.y, gapComposerH, 56, 4);
            gapComposerH.Z(true);
            gapComposerH.Z(true);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new o0(i2, 13, function0);
        }
    }
}
