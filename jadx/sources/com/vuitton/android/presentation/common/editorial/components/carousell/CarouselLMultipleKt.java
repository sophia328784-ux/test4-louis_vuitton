package com.vuitton.android.presentation.common.editorial.components.carousell;

import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.Arrangement$Top$1;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.ColumnScopeInstance;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.lazy.LazyListState;
import androidx.compose.foundation.lazy.LazyListStateKt;
import androidx.compose.foundation.shape.RoundedCornerShape;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.ComposeUiNode;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.google.ar.core.ImageMetadata;
import com.vuitton.android.designkit.components.components.LVFreeCarouselWithHintKt;
import com.vuitton.android.designkit.ui.common.ModifierExtKt;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.LVColorScheme;
import com.vuitton.android.presentation.common.editorial.components.CarouselAssetKt;
import com.vuitton.android.presentation.common.editorial.models.CarouselItemTitlesUiModel;
import com.vuitton.android.presentation.contributionlink.ContributionLinkUiModel;
import com.vuitton.android.presentation.model.common.AssetUiModel;
import defpackage.a;
import defpackage.jj;
import defpackage.kj;
import defpackage.lj;
import defpackage.mj;
import defpackage.n00;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import net.rtccloud.sdk.Call;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class CarouselLMultipleKt {
    public static final void a(Modifier modifier, LVColorScheme lVColorScheme, AssetUiModel assetUiModel, String str, String str2, ContributionLinkUiModel contributionLinkUiModel, RoundedCornerShape roundedCornerShape, boolean z, Function1 function1, Composer composer, int i2) {
        GapComposer gapComposer;
        boolean z2;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = a.e(modifierE, "CarouselLItem");
        }
        Modifier modifier2 = modifierE;
        GapComposer gapComposerH = composer.h(736818175);
        int i3 = i2 | (gapComposerH.K(modifier2) ? 4 : 2) | (gapComposerH.d(lVColorScheme.ordinal()) ? 32 : 16) | (gapComposerH.y(assetUiModel) ? 256 : 128) | (gapComposerH.K(str) ? 2048 : 1024) | (gapComposerH.K(str2) ? 16384 : 8192) | (gapComposerH.K(contributionLinkUiModel) ? 131072 : 65536) | (gapComposerH.K(roundedCornerShape) ? 1048576 : 524288) | (gapComposerH.b(z) ? 8388608 : 4194304) | (gapComposerH.y(function1) ? 67108864 : 33554432);
        if (gapComposerH.p(i3 & 1, (38347923 & i3) != 38347922)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            int i4 = 234881024 & i3;
            boolean z3 = i4 == 67108864;
            int i5 = i3 & ImageMetadata.JPEG_GPS_COORDINATES;
            boolean z4 = z3 | (i5 == 131072);
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (z4 || objX == composer$Companion$Empty$1) {
                objX = new lj(function1, contributionLinkUiModel, 0);
                gapComposerH.q(objX);
            }
            Modifier modifierC = ModifierExtKt.c(modifier2, false, null, null, (Function0) objX, 31);
            Arrangement$Top$1 arrangement$Top$1 = Arrangement.f4920c;
            Alignment.f8582a.getClass();
            ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(arrangement$Top$1, Alignment.Companion.n, gapComposerH, 0);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC2 = ComposedModifierKt.c(gapComposerH, modifierC);
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
            Updater.c(gapComposerH, columnMeasurePolicyA, ComposeUiNode.Companion.f9644f);
            Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
            Updater.c(gapComposerH, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
            Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
            Updater.c(gapComposerH, modifierC2, ComposeUiNode.Companion.d);
            boolean z5 = (i4 == 67108864) | (i5 == 131072);
            Object objX2 = gapComposerH.x();
            if (z5 || objX2 == composer$Companion$Empty$1) {
                z2 = true;
                objX2 = new lj(function1, contributionLinkUiModel, 1);
                gapComposerH.q(objX2);
            } else {
                z2 = true;
            }
            Function0 function2 = (Function0) objX2;
            int i6 = i3 >> 9;
            CarouselAssetKt.a(null, assetUiModel, 0.6666667f, roundedCornerShape, z, function2, gapComposerH, ((i3 >> 3) & 112) | KyberEngine.KyberPolyBytes | (i6 & 7168) | (i6 & 57344), 1);
            gapComposer = gapComposerH;
            CarouselLItemTitlesKt.a(((i3 >> 6) & 1008) | ((i3 << 6) & 7168), gapComposer, PaddingKt.m(new DTFunctionNameModifier("CarouselLItem"), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposer).f48418h, Call.Parameters.DEFAULT_CAMERA_ZOOM, 11), lVColorScheme, str, str2);
            gapComposer.Z(z2);
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new mj(modifier2, lVColorScheme, assetUiModel, str, str2, contributionLinkUiModel, roundedCornerShape, z, function1, i2);
        }
    }

    public static final void b(Modifier modifier, CarouselItemTitlesUiModel carouselItemTitlesUiModel, List list, LVColorScheme lVColorScheme, boolean z, boolean z2, Function1 function1, Function0 function0, Composer composer, int i2) {
        int i3;
        LVColorScheme lVColorScheme2;
        LazyListState lazyListState;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = a.e(modifierE, "CarouselLMultiple");
        }
        list.getClass();
        lVColorScheme.getClass();
        function1.getClass();
        function0.getClass();
        GapComposer gapComposerH = composer.h(-855124452);
        if ((i2 & 6) == 0) {
            i3 = (gapComposerH.K(modifierE) ? 4 : 2) | i2;
        } else {
            i3 = i2;
        }
        if ((i2 & 48) == 0) {
            i3 |= gapComposerH.K(carouselItemTitlesUiModel) ? 32 : 16;
        }
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i3 |= gapComposerH.y(list) ? 256 : 128;
        }
        if ((i2 & 3072) == 0) {
            i3 |= gapComposerH.d(lVColorScheme.ordinal()) ? 2048 : 1024;
        }
        if ((i2 & 24576) == 0) {
            i3 |= gapComposerH.b(z) ? 16384 : 8192;
        }
        if ((196608 & i2) == 0) {
            i3 |= gapComposerH.b(z2) ? 131072 : 65536;
        }
        if ((1572864 & i2) == 0) {
            i3 |= gapComposerH.y(function1) ? 1048576 : 524288;
        }
        if ((12582912 & i2) == 0) {
            i3 |= gapComposerH.y(function0) ? 8388608 : 4194304;
        }
        if (gapComposerH.p(i3 & 1, (4793491 & i3) != 4793490)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            LazyListState lazyListStateA = LazyListStateKt.a(0, gapComposerH, 3);
            Boolean boolValueOf = Boolean.valueOf(z2);
            boolean zK = ((i3 & ImageMetadata.JPEG_GPS_COORDINATES) == 131072) | gapComposerH.K(lazyListStateA) | ((29360128 & i3) == 8388608);
            Object objX = gapComposerH.x();
            if (zK || objX == Composer.Companion.f7939a) {
                objX = new CarouselLMultipleKt$CarouselLMultiple$1$1(z2, lazyListStateA, function0, null);
                gapComposerH.q(objX);
            }
            EffectsKt.e(gapComposerH, boolValueOf, (Function2) objX);
            Arrangement$Top$1 arrangement$Top$1 = Arrangement.f4920c;
            Alignment.f8582a.getClass();
            ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(arrangement$Top$1, Alignment.Companion.n, gapComposerH, 0);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierE);
            ComposeUiNode.b0.getClass();
            Function0 function2 = ComposeUiNode.Companion.f9641b;
            if (gapComposerH.f7976a == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function2);
            } else {
                gapComposerH.o();
            }
            Updater.c(gapComposerH, columnMeasurePolicyA, ComposeUiNode.Companion.f9644f);
            Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
            Updater.c(gapComposerH, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
            Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
            Updater.c(gapComposerH, modifierC, ComposeUiNode.Companion.d);
            if (carouselItemTitlesUiModel == null) {
                gapComposerH.L(1516665492);
                gapComposerH.Z(false);
                lazyListState = lazyListStateA;
            } else {
                lazyListState = lazyListStateA;
                CarouselLGlobalTitlesKt.a((i3 >> 6) & 112, gapComposerH, PaddingKt.m(PaddingKt.k(ColumnScopeInstance.f4944a.b(n00.i(gapComposerH, 1516665493, "CarouselLMultiple"), Alignment.Companion.o), LVAppDesignKitTheme.l(gapComposerH).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).g, 7), lVColorScheme, carouselItemTitlesUiModel.f50783a, carouselItemTitlesUiModel.f50784b);
                gapComposerH.Z(false);
            }
            lVColorScheme2 = lVColorScheme;
            LVFreeCarouselWithHintKt.a(new DTFunctionNameModifier("CarouselLMultiple"), lazyListState, list, 1, 0.33f, LVAppDesignKitTheme.l(gapComposerH).f48416e, LVAppDesignKitTheme.d(gapComposerH).d, ComposableLambdaKt.b(-54387258, new jj(lVColorScheme2, z, function1), gapComposerH), gapComposerH, (i3 & 896) | 12610566, 0);
            gapComposerH = gapComposerH;
            gapComposerH.Z(true);
        } else {
            lVColorScheme2 = lVColorScheme;
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new kj(modifierE, carouselItemTitlesUiModel, list, lVColorScheme2, z, z2, function1, function0, i2);
        }
    }
}
