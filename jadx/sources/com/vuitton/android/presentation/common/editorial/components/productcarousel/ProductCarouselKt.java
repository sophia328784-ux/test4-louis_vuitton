package com.vuitton.android.presentation.common.editorial.components.productcarousel;

import androidx.compose.foundation.lazy.LazyListState;
import androidx.compose.foundation.lazy.LazyListStateKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Modifier;
import com.google.ar.core.ImageMetadata;
import com.vuitton.android.designkit.components.components.LVFreeCarouselWithHintKt;
import com.vuitton.android.designkit.ui.common.ModifierExtKt;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.LVColorScheme;
import com.vuitton.android.presentation.common.editorial.models.EditorialModuleUiModel;
import defpackage.a;
import defpackage.c60;
import defpackage.s8;
import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class ProductCarouselKt {
    public static final void a(Modifier modifier, EditorialModuleUiModel.ProductCarouselUiModel productCarouselUiModel, LVColorScheme lVColorScheme, float f2, float f3, Function2 function2, Function2 function3, Composer composer, int i2) {
        GapComposer gapComposer;
        LVColorScheme lVColorScheme2;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = a.e(modifierE, "ProductCarousel--b7W0Lw");
        }
        Modifier modifier2 = modifierE;
        productCarouselUiModel.getClass();
        function2.getClass();
        function3.getClass();
        GapComposer gapComposerH = composer.h(613067369);
        int i3 = (i2 & 6) == 0 ? (gapComposerH.K(modifier2) ? 4 : 2) | i2 : i2;
        if ((i2 & 48) == 0) {
            i3 |= gapComposerH.y(productCarouselUiModel) ? 32 : 16;
        }
        int i4 = i3 | KyberEngine.KyberPolyBytes;
        if ((i2 & 3072) == 0) {
            i4 |= gapComposerH.c(f2) ? 2048 : 1024;
        }
        if ((i2 & 24576) == 0) {
            i4 |= gapComposerH.c(f3) ? 16384 : 8192;
        }
        if ((196608 & i2) == 0) {
            i4 |= gapComposerH.y(function2) ? 131072 : 65536;
        }
        if ((1572864 & i2) == 0) {
            i4 |= gapComposerH.y(function3) ? 1048576 : 524288;
        }
        if (gapComposerH.p(i4 & 1, (599187 & i4) != 599186)) {
            lVColorScheme2 = LVColorScheme.DEFAULT;
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            LazyListState lazyListStateA = LazyListStateKt.a(0, gapComposerH, 3);
            if (productCarouselUiModel.f50846c) {
                gapComposerH.L(1689480173);
                int i5 = 0;
                ArrayList arrayList = new ArrayList(2);
                for (int i6 = 2; i5 < i6; i6 = 2) {
                    arrayList.add(Unit.f71739a);
                    i5++;
                }
                float f4 = LVAppDesignKitTheme.l(gapComposerH).f48415c;
                ComposableSingletons$ProductCarouselKt.f50765a.getClass();
                LVFreeCarouselWithHintKt.a(modifier2, lazyListStateA, arrayList, 1, f3, f2, f4, ComposableSingletons$ProductCarouselKt.f50766b, gapComposerH, (i4 & 14) | 12585984 | (57344 & i4) | ((i4 << 6) & ImageMetadata.JPEG_GPS_COORDINATES), 0);
                gapComposer = gapComposerH;
                gapComposer.Z(false);
            } else {
                gapComposer = gapComposerH;
                gapComposer.L(1689953264);
                LVFreeCarouselWithHintKt.a(ModifierExtKt.e(modifier2, "carousel_container_view"), lazyListStateA, productCarouselUiModel.f50845b, 1, f3, f2, LVAppDesignKitTheme.l(gapComposer).f48415c, ComposableLambdaKt.b(-899670818, new s8(lVColorScheme2, function2, function3, 7), gapComposer), gapComposer, (i4 & 57344) | 12585984 | ((i4 << 6) & ImageMetadata.JPEG_GPS_COORDINATES), 0);
                gapComposer.Z(false);
            }
            OpaqueKey opaqueKey2 = ComposerKt.f7940a;
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
            lVColorScheme2 = lVColorScheme;
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new c60(modifier2, productCarouselUiModel, lVColorScheme2, f2, f3, function2, function3, i2);
        }
    }
}
