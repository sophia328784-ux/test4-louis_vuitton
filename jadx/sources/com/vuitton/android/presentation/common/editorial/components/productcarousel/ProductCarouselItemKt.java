package com.vuitton.android.presentation.common.editorial.components.productcarousel;

import android.content.Context;
import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.Arrangement$Start$1;
import androidx.compose.foundation.layout.Arrangement$Top$1;
import androidx.compose.foundation.layout.AspectRatioKt;
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
import androidx.compose.runtime.Updater;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.BiasAlignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.RectangleShapeKt;
import androidx.compose.ui.layout.ContentScale;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.compose.ui.res.PainterResources_androidKt;
import androidx.compose.ui.res.StringResources_androidKt;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.style.TextOverflow;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.R;
import com.vuitton.android.designkit.ui.common.ModifierExtKt;
import com.vuitton.android.designkit.ui.theme.IconSize;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.LVColorScheme;
import com.vuitton.android.designkit.ui.theme.atoms.LVSkeletonKt;
import com.vuitton.android.presentation.common.editorial.models.ProductCarouselItemUiModel;
import com.vuitton.android.presentation.extensions.ContextExtKt;
import com.vuitton.android.presentation.imageloading.compose.ImageLoaderKt;
import com.vuitton.android.presentation.model.common.AssetImageUiModel;
import com.vuitton.android.presentation.screen.plp.models.productshortlist.ProductShortPriceUiModel;
import com.vuitton.android.presentation.utils.ImageConfiguration;
import com.vuitton.android.presentation.utils.UrlFactory;
import defpackage.a;
import defpackage.aj0;
import defpackage.b3;
import defpackage.cj;
import defpackage.d21;
import defpackage.ee0;
import defpackage.n00;
import defpackage.o60;
import defpackage.tr;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import net.rtccloud.sdk.Call;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class ProductCarouselItemKt {

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f50767a;

        static {
            int[] iArr = new int[LVColorScheme.values().length];
            try {
                iArr[LVColorScheme.INVERT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[LVColorScheme.DEFAULT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            f50767a = iArr;
        }
    }

    /* JADX WARN: Type inference failed for: r10v21 */
    /* JADX WARN: Type inference failed for: r10v8 */
    /* JADX WARN: Type inference failed for: r10v9, types: [boolean, int] */
    public static final void a(Modifier modifier, ProductCarouselItemUiModel productCarouselItemUiModel, LVColorScheme lVColorScheme, Function0 function0, Function0 function1, Composer composer, int i2) {
        Modifier modifier2;
        long j2;
        ?? r10;
        int i3;
        long j3;
        boolean z;
        Modifier modifierE = modifier;
        ProductCarouselItemUiModel productCarouselItemUiModel2 = productCarouselItemUiModel;
        if (modifierE != null) {
            modifierE = a.e(modifierE, "ProductCarouselItem");
        }
        productCarouselItemUiModel2.getClass();
        lVColorScheme.getClass();
        function0.getClass();
        function1.getClass();
        GapComposer gapComposerH = composer.h(-141949674);
        Applier applier = gapComposerH.f7976a;
        int i4 = i2 | 6;
        if ((i2 & 48) == 0) {
            i4 |= gapComposerH.K(productCarouselItemUiModel2) ? 32 : 16;
        }
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i4 |= gapComposerH.d(lVColorScheme.ordinal()) ? 256 : 128;
        }
        if ((i2 & 3072) == 0) {
            i4 |= gapComposerH.y(function0) ? 2048 : 1024;
        }
        if ((i2 & 24576) == 0) {
            i4 |= gapComposerH.y(function1) ? 16384 : 8192;
        }
        if (gapComposerH.p(i4 & 1, (i4 & 9363) != 9362)) {
            DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier("ProductCarouselItem");
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            boolean z2 = (i4 & 7168) == 2048;
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (z2 || objX == composer$Companion$Empty$1) {
                objX = new ee0(function0, 24);
                gapComposerH.q(objX);
            }
            Modifier modifierC = ModifierExtKt.c(dTFunctionNameModifier, false, null, null, (Function0) objX, 31);
            Arrangement$Top$1 arrangement$Top$1 = Arrangement.f4920c;
            Alignment.f8582a.getClass();
            ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(arrangement$Top$1, Alignment.Companion.n, gapComposerH, 0);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC2 = ComposedModifierKt.c(gapComposerH, modifierC);
            ComposeUiNode.b0.getClass();
            Function0 function2 = ComposeUiNode.Companion.f9641b;
            if (applier == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function2);
            } else {
                gapComposerH.o();
            }
            Function2 function3 = ComposeUiNode.Companion.f9644f;
            Updater.c(gapComposerH, columnMeasurePolicyA, function3);
            Function2 function4 = ComposeUiNode.Companion.f9643e;
            Updater.c(gapComposerH, persistentCompositionLocalMapU, function4);
            Integer numValueOf = Integer.valueOf(iHashCode);
            Function2 function5 = ComposeUiNode.Companion.g;
            Updater.c(gapComposerH, numValueOf, function5);
            Function1 function6 = ComposeUiNode.Companion.f9645h;
            Updater.b(gapComposerH, function6);
            Function2 function7 = ComposeUiNode.Companion.d;
            Modifier modifierE2 = ModifierExtKt.e(AspectRatioKt.a(BackgroundKt.b(tr.e(gapComposerH, modifierC2, function7, "ProductCarouselItem"), LVAppDesignKitTheme.c(gapComposerH).f48361b.f48377e, RectangleShapeKt.f8913a), 0.8f, false), "productCarousel_asset");
            UrlFactory urlFactory = new UrlFactory(ContextExtKt.f((Context) gapComposerH.k(AndroidCompositionLocals_androidKt.f9936b)));
            AssetImageUiModel assetImageUiModel = productCarouselItemUiModel2.f50869c;
            ProductShortPriceUiModel productShortPriceUiModel = productCarouselItemUiModel2.f50870e;
            boolean z3 = productCarouselItemUiModel2.g;
            String strB = urlFactory.b(assetImageUiModel.f51778b, ImageConfiguration.Background.Transparent.f65853a);
            strB.getClass();
            ContentScale.f9447a.getClass();
            int i5 = i4;
            ImageLoaderKt.b(modifierE2, strB, ContentScale.Companion.f9450c, null, null, 0, false, null, null, null, gapComposerH, KyberEngine.KyberPolyBytes, 2040);
            Modifier modifierM = PaddingKt.m(tr.d("ProductCarouselItem", 1.0f), LVAppDesignKitTheme.l(gapComposerH).d, LVAppDesignKitTheme.l(gapComposerH).f48416e, LVAppDesignKitTheme.l(gapComposerH).d, Call.Parameters.DEFAULT_CAMERA_ZOOM, 8);
            Arrangement$Start$1 arrangement$Start$1 = Arrangement.f4918a;
            BiasAlignment.Vertical vertical = Alignment.Companion.f8591k;
            RowMeasurePolicy rowMeasurePolicyA = RowKt.a(arrangement$Start$1, vertical, gapComposerH, 0);
            int iHashCode2 = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU2 = gapComposerH.U();
            Modifier modifierC3 = ComposedModifierKt.c(gapComposerH, modifierM);
            if (applier == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function2);
            } else {
                gapComposerH.o();
            }
            Updater.c(gapComposerH, rowMeasurePolicyA, function3);
            Updater.c(gapComposerH, persistentCompositionLocalMapU2, function4);
            cj.t(iHashCode2, gapComposerH, function5, gapComposerH, function6);
            Updater.c(gapComposerH, modifierC3, function7);
            Modifier modifierE3 = ModifierExtKt.e(RowScopeInstance.f5040a.a(new DTFunctionNameModifier("ProductCarouselItem"), 1.0f, true), "productCarousel_productName_text");
            String str = productCarouselItemUiModel.f50868b;
            TextOverflow.f10989a.getClass();
            int i6 = TextOverflow.f10991c;
            TextStyle textStyle = LVAppDesignKitTheme.n(gapComposerH).l;
            int[] iArr = WhenMappings.f50767a;
            int i7 = iArr[lVColorScheme.ordinal()];
            if (i7 == 1) {
                gapComposerH.L(-284093244);
                j2 = LVAppDesignKitTheme.c(gapComposerH).f48361b.m;
                gapComposerH.Z(false);
            } else {
                if (i7 != 2) {
                    throw d21.u(gapComposerH, -284095925, false);
                }
                gapComposerH.L(-284090146);
                j2 = LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k;
                gapComposerH.Z(false);
            }
            TextKt.c(str, modifierE3, j2, 0L, null, 0L, null, null, 0L, i6, false, 1, 0, null, textStyle, gapComposerH, 0, 24960, 110584);
            gapComposerH = gapComposerH;
            Modifier modifierO = SizeKt.o(PaddingKt.m(new DTFunctionNameModifier("ProductCarouselItem"), LVAppDesignKitTheme.l(gapComposerH).d, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 14), IconSize.f48348b);
            boolean z4 = (i5 & 57344) == 16384;
            Object objX2 = gapComposerH.x();
            if (z4 || objX2 == composer$Companion$Empty$1) {
                objX2 = new ee0(function1, 25);
                gapComposerH.q(objX2);
            }
            Modifier modifierC4 = ModifierExtKt.c(modifierO, false, null, null, (Function0) objX2, 31);
            if (z3) {
                gapComposerH.L(-216492582);
                i3 = LVAppDesignKitTheme.g(gapComposerH).V;
                r10 = 0;
                gapComposerH.Z(false);
            } else {
                r10 = 0;
                gapComposerH.L(-216399520);
                i3 = LVAppDesignKitTheme.g(gapComposerH).U;
                gapComposerH.Z(false);
            }
            IconKt.a(PainterResources_androidKt.a(i3, gapComposerH, r10), z3 ? cj.f(gapComposerH, -216236026, R.string.alt_remove_from_wishlist, gapComposerH, r10) : cj.f(gapComposerH, -216091349, R.string.alt_add_to_wishlist, gapComposerH, r10), modifierC4, LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k, gapComposerH, 8, 0);
            Modifier modifierM2 = PaddingKt.m(o60.d(gapComposerH, true, "ProductCarouselItem", 1.0f), LVAppDesignKitTheme.l(gapComposerH).d, LVAppDesignKitTheme.l(gapComposerH).f48415c, LVAppDesignKitTheme.l(gapComposerH).d, Call.Parameters.DEFAULT_CAMERA_ZOOM, 8);
            RowMeasurePolicy rowMeasurePolicyA2 = RowKt.a(arrangement$Start$1, vertical, gapComposerH, 0);
            int iHashCode3 = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU3 = gapComposerH.U();
            Modifier modifierC5 = ComposedModifierKt.c(gapComposerH, modifierM2);
            if (applier == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function2);
            } else {
                gapComposerH.o();
            }
            Updater.c(gapComposerH, rowMeasurePolicyA2, function3);
            Updater.c(gapComposerH, persistentCompositionLocalMapU3, function4);
            cj.t(iHashCode3, gapComposerH, function5, gapComposerH, function6);
            Updater.c(gapComposerH, modifierC5, function7);
            if (productShortPriceUiModel != null) {
                Modifier modifierE4 = ModifierExtKt.e(PaddingKt.m(n00.i(gapComposerH, 368669390, "ProductCarouselItem"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48414b, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), "productCarousel_productPrice_text");
                String str2 = productShortPriceUiModel.f62982b;
                TextStyle textStyle2 = LVAppDesignKitTheme.n(gapComposerH).l;
                int i8 = iArr[lVColorScheme.ordinal()];
                if (i8 == 1) {
                    gapComposerH.L(-957924326);
                    j3 = LVAppDesignKitTheme.c(gapComposerH).f48361b.n;
                    gapComposerH.Z(false);
                } else {
                    if (i8 != 2) {
                        throw d21.u(gapComposerH, -957927124, false);
                    }
                    gapComposerH.L(-957921132);
                    j3 = LVAppDesignKitTheme.c(gapComposerH).f48361b.l;
                    gapComposerH.Z(false);
                }
                TextKt.c(str2, modifierE4, j3, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, textStyle2, gapComposerH, 0, 0, 131064);
                productCarouselItemUiModel2 = productCarouselItemUiModel;
                gapComposerH = gapComposerH;
                if (productCarouselItemUiModel2.f50872h) {
                    TextKt.c(StringResources_androidKt.c(gapComposerH, R.string.global_vat_included), PaddingKt.m(n00.i(gapComposerH, 369343020, "ProductCarouselItem"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48415c, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), LVAppDesignKitTheme.c(gapComposerH).f48361b.l, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).l, gapComposerH, 0, 0, 131064);
                    gapComposerH = gapComposerH;
                    z = false;
                    gapComposerH.Z(false);
                } else {
                    z = false;
                    gapComposerH.L(369713563);
                    gapComposerH.Z(false);
                }
                gapComposerH.Z(z);
            } else {
                productCarouselItemUiModel2 = productCarouselItemUiModel;
                gapComposerH.L(369727451);
                gapComposerH.Z(false);
            }
            gapComposerH.Z(true);
            gapComposerH.Z(true);
            modifier2 = dTFunctionNameModifier;
        } else {
            gapComposerH.D();
            modifier2 = modifierE;
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new b3((Object) modifier2, (Object) productCarouselItemUiModel2, (Object) lVColorScheme, (Object) function0, (Object) function1, i2, 21);
        }
    }

    public static final void b(Composer composer, int i2) {
        GapComposer gapComposerH = composer.h(1807356447);
        if (gapComposerH.p(i2 & 1, i2 != 0)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Arrangement$Start$1 arrangement$Start$1 = Arrangement.f4918a;
            Arrangement.SpacedAligned spacedAlignedF = Arrangement.f(LVAppDesignKitTheme.l(gapComposerH).d);
            DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier("ProductCarouselSkeletonItem");
            Alignment.f8582a.getClass();
            ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(spacedAlignedF, Alignment.Companion.n, gapComposerH, 0);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, dTFunctionNameModifier);
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
            Updater.c(gapComposerH, modifierC, ComposeUiNode.Companion.d);
            LVSkeletonKt.c(null, 0.8f, null, null, gapComposerH, 48, 13);
            gapComposerH = gapComposerH;
            LVSkeletonKt.e(tr.d("ProductCarouselSkeletonItem", 1.0f), null, null, gapComposerH, 6, 6);
            LVSkeletonKt.e(tr.d("ProductCarouselSkeletonItem", 1.0f), null, null, gapComposerH, 6, 6);
            gapComposerH.Z(true);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new aj0(i2, 26);
        }
    }
}
