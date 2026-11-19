package com.vuitton.android.presentation.common.editorial.components.grids;

import android.content.res.Configuration;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.Arrangement$Top$1;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.PaddingValuesImpl;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.lazy.grid.GridCells;
import androidx.compose.foundation.lazy.grid.LazyGridDslKt;
import androidx.compose.runtime.Applier;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.compose.ui.unit.Dp;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.google.ar.core.ImageMetadata;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.LVColorScheme;
import com.vuitton.android.presentation.common.editorial.components.header.HeaderKt;
import com.vuitton.android.presentation.model.common.AssetImageUiModel;
import defpackage.a;
import defpackage.a10;
import defpackage.cj;
import defpackage.n00;
import defpackage.s5;
import defpackage.tr;
import defpackage.z00;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import net.rtccloud.sdk.Call;
import org.bouncycastle.asn1.cmp.PKIFailureInfo;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class GridSKt {
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r14v1, types: [androidx.compose.runtime.GapComposer] */
    /* JADX WARN: Type inference failed for: r14v10 */
    /* JADX WARN: Type inference failed for: r14v3, types: [androidx.compose.runtime.GapComposer] */
    /* JADX WARN: Type inference failed for: r14v4, types: [androidx.compose.runtime.GapComposer] */
    /* JADX WARN: Type inference failed for: r14v6, types: [androidx.compose.runtime.GapComposer] */
    /* JADX WARN: Type inference failed for: r14v7 */
    /* JADX WARN: Type inference failed for: r14v8 */
    /* JADX WARN: Type inference failed for: r14v9 */
    /* JADX WARN: Type inference failed for: r2v19 */
    /* JADX WARN: Type inference failed for: r5v10 */
    /* JADX WARN: Type inference failed for: r5v11 */
    /* JADX WARN: Type inference failed for: r5v15 */
    /* JADX WARN: Type inference failed for: r7v2 */
    /* JADX WARN: Type inference failed for: r7v3, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r7v4 */
    public static final void a(Modifier modifier, String str, String str2, AssetImageUiModel assetImageUiModel, List list, boolean z, LVColorScheme lVColorScheme, float f2, Function2 function2, Function0 function0, Composer composer, int i2) {
        int i3;
        String str3;
        Function0 function1;
        Modifier modifier2;
        float f3;
        Function2 function3;
        ?? r14;
        RecomposeScopeImpl recomposeScopeImplB0;
        z00 z00Var;
        Object obj;
        Function2 function4;
        Function2 function5;
        Function2 function6;
        Function2 function7;
        int i4;
        int i5;
        ?? r7;
        boolean z2;
        Object obj2;
        ?? r15;
        Object obj3;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = a.e(modifierE, "GridS-f8-ukHw");
        }
        Modifier modifier3 = modifierE;
        list.getClass();
        function2.getClass();
        GapComposer gapComposerH = composer.h(-1039276989);
        Applier applier = gapComposerH.f7976a;
        if ((i2 & 6) == 0) {
            i3 = (gapComposerH.K(modifier3) ? 4 : 2) | i2;
        } else {
            i3 = i2;
        }
        if ((i2 & 48) == 0) {
            i3 |= gapComposerH.K(str) ? 32 : 16;
        }
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            str3 = str2;
            i3 |= gapComposerH.K(str3) ? 256 : 128;
        } else {
            str3 = str2;
        }
        if ((i2 & 3072) == 0) {
            i3 |= gapComposerH.K(assetImageUiModel) ? 2048 : 1024;
        }
        if ((i2 & 24576) == 0) {
            i3 |= gapComposerH.y(list) ? 16384 : 8192;
        }
        if ((196608 & i2) == 0) {
            i3 |= gapComposerH.b(z) ? 131072 : 65536;
        }
        if ((1572864 & i2) == 0) {
            i3 |= gapComposerH.d(lVColorScheme == null ? -1 : lVColorScheme.ordinal()) ? 1048576 : 524288;
        }
        if ((12582912 & i2) == 0) {
            i3 |= gapComposerH.c(f2) ? 8388608 : 4194304;
        }
        if ((100663296 & i2) == 0) {
            i3 |= gapComposerH.y(function2) ? 67108864 : 33554432;
        }
        if ((805306368 & i2) == 0) {
            function1 = function0;
            i3 |= gapComposerH.y(function1) ? PKIFailureInfo.duplicateCertReq : 268435456;
        } else {
            function1 = function0;
        }
        if (gapComposerH.p(i3 & 1, (i3 & 306783379) != 306783378)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            boolean zK = gapComposerH.K(list);
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (zK || objX == composer$Companion$Empty$1) {
                obj = objX;
                List listQ0 = CollectionsKt.q0(list, 20);
                gapComposerH.q(listQ0);
                obj = listQ0;
            }
            List list2 = (List) obj;
            boolean z3 = z || list2.size() >= 6;
            int i6 = i3;
            if (list2.size() < 8) {
                function1 = null;
            }
            if (z3) {
                modifier2 = modifier3;
                float f4 = ((Configuration) gapComposerH.k(AndroidCompositionLocals_androidKt.f9935a)).screenWidthDp;
                Dp.Companion companion = Dp.f11004c;
                float f5 = LVAppDesignKitTheme.l(gapComposerH).f48415c;
                boolean zC = gapComposerH.c(f4) | ((i6 & 29360128) == 8388608) | gapComposerH.c(f5);
                Object objX2 = gapComposerH.x();
                Object obj4 = objX2;
                if (zC || objX2 == composer$Companion$Empty$1) {
                    Dp dp = new Dp(((f4 - f2) - (f5 * 3.0f)) / 3.1f);
                    gapComposerH.q(dp);
                    obj4 = dp;
                }
                float f6 = ((Dp) obj4).f11006b;
                float f7 = LVAppDesignKitTheme.l(gapComposerH).f48415c;
                float f8 = (2.0f * f6) + f7;
                Arrangement$Top$1 arrangement$Top$1 = Arrangement.f4920c;
                Alignment.f8582a.getClass();
                ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(arrangement$Top$1, Alignment.Companion.n, gapComposerH, 0);
                int iHashCode = Long.hashCode(gapComposerH.T);
                PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
                Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifier2);
                ComposeUiNode.b0.getClass();
                Function0 function8 = ComposeUiNode.Companion.f9641b;
                if (applier == null) {
                    ComposablesKt.b();
                    throw null;
                }
                gapComposerH.B();
                if (gapComposerH.S) {
                    gapComposerH.C(function8);
                } else {
                    gapComposerH.o();
                }
                Function2 function9 = ComposeUiNode.Companion.f9644f;
                Updater.c(gapComposerH, columnMeasurePolicyA, function9);
                Function2 function10 = ComposeUiNode.Companion.f9643e;
                Updater.c(gapComposerH, persistentCompositionLocalMapU, function10);
                Integer numValueOf = Integer.valueOf(iHashCode);
                Function2 function11 = ComposeUiNode.Companion.g;
                Updater.c(gapComposerH, numValueOf, function11);
                Function1 function12 = ComposeUiNode.Companion.f9645h;
                Updater.b(gapComposerH, function12);
                Function2 function13 = ComposeUiNode.Companion.d;
                Updater.c(gapComposerH, modifierC, function13);
                if (str.length() > 0) {
                    i4 = i6;
                    function4 = function10;
                    function7 = function11;
                    function6 = function9;
                    function5 = function13;
                    r7 = 0;
                    f3 = f2;
                    i5 = 2;
                    HeaderKt.a(PaddingKt.m(PaddingKt.m(n00.i(gapComposerH, -1287351885, "GridS-f8-ukHw"), f3, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48418h, Call.Parameters.DEFAULT_CAMERA_ZOOM, 10), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48415c, 7), lVColorScheme, str2, str, assetImageUiModel, function1, gapComposerH, ((i4 >> 15) & 112) | (i4 & 896) | ((i4 << 6) & 7168) | ((i4 << 3) & 57344));
                    gapComposerH.Z(false);
                } else {
                    function4 = function10;
                    function5 = function13;
                    function6 = function9;
                    function7 = function11;
                    i4 = i6;
                    i5 = 2;
                    r7 = 0;
                    f3 = f2;
                    gapComposerH.L(-1286919435);
                    gapComposerH.Z(false);
                }
                Modifier modifierD = tr.d("GridS-f8-ukHw", 1.0f);
                MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, r7);
                int iHashCode2 = Long.hashCode(gapComposerH.T);
                PersistentCompositionLocalMap persistentCompositionLocalMapU2 = gapComposerH.U();
                Modifier modifierC2 = ComposedModifierKt.c(gapComposerH, modifierD);
                if (applier == null) {
                    ComposablesKt.b();
                    throw null;
                }
                gapComposerH.B();
                if (gapComposerH.S) {
                    gapComposerH.C(function8);
                } else {
                    gapComposerH.o();
                }
                Updater.c(gapComposerH, measurePolicyD, function6);
                Updater.c(gapComposerH, persistentCompositionLocalMapU2, function4);
                cj.t(iHashCode2, gapComposerH, function7, gapComposerH, function12);
                Updater.c(gapComposerH, modifierC2, function5);
                if (z) {
                    gapComposerH.L(1611579819);
                    Modifier modifierF = SizeKt.f(new DTFunctionNameModifier("GridS-f8-ukHw"), f8);
                    GridCells.Fixed fixed = new GridCells.Fixed(i5);
                    Arrangement.SpacedAligned spacedAlignedF = Arrangement.f(Call.Parameters.DEFAULT_CAMERA_ZOOM);
                    Arrangement.SpacedAligned spacedAlignedF2 = Arrangement.f(f7);
                    PaddingValuesImpl paddingValuesImplE = PaddingKt.e(f3, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, 10);
                    boolean zC2 = gapComposerH.c(f6);
                    Object objX3 = gapComposerH.x();
                    if (zC2 || objX3 == composer$Companion$Empty$1) {
                        obj3 = objX3;
                        a10 a10Var = new a10(f6, r7);
                        gapComposerH.q(a10Var);
                        obj3 = a10Var;
                    }
                    obj3 = objX3;
                    LazyGridDslKt.a(fixed, modifierF, null, paddingValuesImplE, spacedAlignedF, spacedAlignedF2, null, false, null, (Function1) obj3, gapComposerH, ImageMetadata.EDGE_MODE);
                    ?? r16 = gapComposerH;
                    r16.Z(r7);
                    function3 = function2;
                    z2 = true;
                    r15 = r16;
                } else {
                    gapComposerH.L(1612339071);
                    Modifier modifierF2 = SizeKt.f(new DTFunctionNameModifier("GridS-f8-ukHw"), f8);
                    GridCells.Fixed fixed2 = new GridCells.Fixed(i5);
                    Arrangement.SpacedAligned spacedAlignedF3 = Arrangement.f(Call.Parameters.DEFAULT_CAMERA_ZOOM);
                    Arrangement.SpacedAligned spacedAlignedF4 = Arrangement.f(f7);
                    PaddingValuesImpl paddingValuesImplE2 = PaddingKt.e(f3, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, 10);
                    ?? r2 = (gapComposerH.y(list2) ? 1 : 0) | (gapComposerH.c(f6) ? 1 : 0) | ((234881024 & i4) == 67108864 ? 1 : r7);
                    Object objX4 = gapComposerH.x();
                    if (r2 != 0 || objX4 == r17) {
                        function3 = function2;
                        z2 = true;
                        s5 s5Var = new s5(list2, f6, function3, 1);
                        gapComposerH.q(s5Var);
                        obj2 = s5Var;
                    } else {
                        function3 = function2;
                        z2 = true;
                        obj2 = objX4;
                    }
                    LazyGridDslKt.a(fixed2, modifierF2, null, paddingValuesImplE2, spacedAlignedF3, spacedAlignedF4, null, false, null, (Function1) obj2, gapComposerH, ImageMetadata.EDGE_MODE);
                    ?? r17 = gapComposerH;
                    r17.Z(r7);
                    r15 = r17;
                }
                r15.Z(z2);
                r15.Z(z2);
                r14 = r15;
            } else {
                recomposeScopeImplB0 = gapComposerH.b0();
                if (recomposeScopeImplB0 == null) {
                    return;
                } else {
                    z00Var = new z00(modifier3, str, str3, assetImageUiModel, list, z, lVColorScheme, f2, function2, function0, i2, 0);
                }
            }
            recomposeScopeImplB0.d = z00Var;
        }
        modifier2 = modifier3;
        f3 = f2;
        function3 = function2;
        gapComposerH.D();
        r14 = gapComposerH;
        recomposeScopeImplB0 = r14.b0();
        if (recomposeScopeImplB0 != null) {
            z00Var = new z00(modifier2, str, str2, assetImageUiModel, list, z, lVColorScheme, f3, function3, function0, i2, 1);
            recomposeScopeImplB0.d = z00Var;
        }
    }
}
