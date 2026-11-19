package com.vuitton.android.presentation.screen.spotlight.components;

import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.Arrangement$Start$1;
import androidx.compose.foundation.layout.AspectRatioKt;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.ColumnScopeInstance;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowMeasurePolicy;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.layout.SpacerKt;
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
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.ClipKt;
import androidx.compose.ui.graphics.RectangleShapeKt;
import androidx.compose.ui.graphics.RectangleShapeKt$RectangleShape$1;
import androidx.compose.ui.layout.ContentScale;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.text.style.TextOverflow;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.google.ar.core.ImageMetadata;
import com.vuitton.android.designkit.ui.common.ModifierExtKt;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.atoms.LVLinkKt;
import com.vuitton.android.presentation.imageloading.compose.ImageLoaderKt;
import defpackage.cj;
import defpackage.o60;
import defpackage.pq0;
import defpackage.tr;
import defpackage.zs0;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class SpotlightDataItemKt {
    public static final void a(Modifier modifier, String str, String str2, String str3, String str4, Function0 function0, Composer composer, int i2) {
        Modifier modifier2;
        String str5;
        Function2 function2;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = defpackage.a.e(modifierE, "SpotlightDataItem");
        }
        str.getClass();
        str3.getClass();
        str4.getClass();
        function0.getClass();
        GapComposer gapComposerH = composer.h(699558562);
        Applier applier = gapComposerH.f7976a;
        int i3 = i2 | 6 | (gapComposerH.K(str) ? 32 : 16) | (gapComposerH.K(str2) ? 256 : 128) | (gapComposerH.K(str3) ? 2048 : 1024) | (gapComposerH.K(str4) ? 16384 : 8192) | (gapComposerH.y(function0) ? 131072 : 65536);
        if (gapComposerH.p(i3 & 1, (i3 & 74899) != 74898)) {
            DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier("SpotlightDataItem");
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Modifier modifierA = ClipKt.a(ModifierExtKt.c(SizeKt.f(SizeKt.d(dTFunctionNameModifier, 1.0f), SpotlightSkuPagerKt.f64617a), false, null, null, function0, 31), LVAppDesignKitTheme.j(gapComposerH).f48410b);
            long j2 = LVAppDesignKitTheme.c(gapComposerH).f48361b.f48374a;
            RectangleShapeKt$RectangleShape$1 rectangleShapeKt$RectangleShape$1 = RectangleShapeKt.f8913a;
            Modifier modifierB = BackgroundKt.b(modifierA, j2, rectangleShapeKt$RectangleShape$1);
            Arrangement$Start$1 arrangement$Start$1 = Arrangement.f4918a;
            Alignment.f8582a.getClass();
            RowMeasurePolicy rowMeasurePolicyA = RowKt.a(arrangement$Start$1, Alignment.Companion.f8591k, gapComposerH, 0);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierB);
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
            Function2 function3 = ComposeUiNode.Companion.f9644f;
            Updater.c(gapComposerH, rowMeasurePolicyA, function3);
            Function2 function4 = ComposeUiNode.Companion.f9643e;
            Updater.c(gapComposerH, persistentCompositionLocalMapU, function4);
            Integer numValueOf = Integer.valueOf(iHashCode);
            Function2 function5 = ComposeUiNode.Companion.g;
            Updater.c(gapComposerH, numValueOf, function5);
            Function1 function6 = ComposeUiNode.Companion.f9645h;
            Updater.b(gapComposerH, function6);
            Function2 function7 = ComposeUiNode.Companion.d;
            Modifier modifierA2 = AspectRatioKt.a(tr.e(gapComposerH, modifierC, function7, "SpotlightDataItem"), 1.0f, true);
            ContentScale.f9447a.getClass();
            ImageLoaderKt.b(modifierA2, str3, ContentScale.Companion.d, null, null, 0, false, null, null, null, gapComposerH, 390, 2040);
            Modifier modifierJ = PaddingKt.j(BackgroundKt.b(new DTFunctionNameModifier("SpotlightDataItem"), LVAppDesignKitTheme.c(gapComposerH).f48361b.f48374a, rectangleShapeKt$RectangleShape$1), LVAppDesignKitTheme.l(gapComposerH).f48416e, LVAppDesignKitTheme.l(gapComposerH).d);
            ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(Arrangement.g, Alignment.Companion.n, gapComposerH, 6);
            int iHashCode2 = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU2 = gapComposerH.U();
            Modifier modifierC2 = ComposedModifierKt.c(gapComposerH, modifierJ);
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
            Updater.c(gapComposerH, columnMeasurePolicyA, function3);
            Updater.c(gapComposerH, persistentCompositionLocalMapU2, function4);
            cj.t(iHashCode2, gapComposerH, function5, gapComposerH, function6);
            Updater.c(gapComposerH, modifierC2, function7);
            Modifier modifierD = tr.d("SpotlightDataItem", 1.0f);
            TextOverflow.f10989a.getClass();
            int i4 = TextOverflow.f10991c;
            TextKt.c(str, modifierD, LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k, 0L, null, 0L, null, null, 0L, i4, false, 2, 0, null, LVAppDesignKitTheme.n(gapComposerH).f48427h, gapComposerH, ((i3 >> 3) & 14) | 48, 24960, 110584);
            gapComposerH = gapComposerH;
            if (str2 == null) {
                gapComposerH.L(1964786202);
                gapComposerH.Z(false);
                str5 = "SpotlightDataItem";
                function2 = function3;
            } else {
                str5 = "SpotlightDataItem";
                function2 = function3;
                TextKt.c(str2, o60.c(gapComposerH, 1964786203, "SpotlightDataItem", 1.0f), LVAppDesignKitTheme.c(gapComposerH).f48361b.l, 0L, null, 0L, null, null, 0L, i4, false, 2, 0, null, LVAppDesignKitTheme.n(gapComposerH).m, gapComposerH, 48, 24960, 110584);
                gapComposerH = gapComposerH;
                gapComposerH.Z(false);
            }
            String str6 = str5;
            SpacerKt.a(gapComposerH, ColumnScopeInstance.f4944a.a(SizeKt.f(new DTFunctionNameModifier(str6), LVAppDesignKitTheme.d(gapComposerH).f48390j), 1.0f, true));
            Modifier modifierD2 = tr.d(str6, 1.0f);
            RowMeasurePolicy rowMeasurePolicyA2 = RowKt.a(Arrangement.f4919b, Alignment.Companion.m, gapComposerH, 54);
            int iHashCode3 = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU3 = gapComposerH.U();
            Modifier modifierC3 = ComposedModifierKt.c(gapComposerH, modifierD2);
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
            Updater.c(gapComposerH, rowMeasurePolicyA2, function2);
            Updater.c(gapComposerH, persistentCompositionLocalMapU3, function4);
            cj.t(iHashCode3, gapComposerH, function5, gapComposerH, function6);
            Updater.c(gapComposerH, modifierC3, function7);
            LVLinkKt.a(null, str4, false, null, false, function0, gapComposerH, ((i3 >> 9) & 112) | (i3 & ImageMetadata.JPEG_GPS_COORDINATES), 29);
            pq0.x(gapComposerH, true, true, true);
            modifier2 = dTFunctionNameModifier;
        } else {
            gapComposerH.D();
            modifier2 = modifierE;
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new zs0(modifier2, str, str2, str3, str4, function0, i2);
        }
    }
}
