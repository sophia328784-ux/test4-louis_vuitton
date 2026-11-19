package com.vuitton.android.presentation.common.editorial.components.carousels;

import android.content.Context;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.Arrangement$Start$1;
import androidx.compose.foundation.layout.Arrangement$Top$1;
import androidx.compose.foundation.layout.AspectRatioKt;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.PaddingKt;
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
import androidx.compose.ui.draw.PainterModifierKt;
import androidx.compose.ui.graphics.painter.Painter;
import androidx.compose.ui.layout.ContentScale;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.compose.ui.res.PainterResources_androidKt;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.style.TextOverflow;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.R;
import com.vuitton.android.designkit.ui.common.ModifierExtKt;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.LVColorScheme;
import com.vuitton.android.designkit.ui.theme.atoms.LVSkeletonKt;
import com.vuitton.android.presentation.common.editorial.models.CarouselSItemUiModel;
import com.vuitton.android.presentation.extensions.ContextExtKt;
import com.vuitton.android.presentation.imageloading.compose.ImageLoaderKt;
import com.vuitton.android.presentation.screen.plp.models.productshortlist.ProductShortPriceUiModel;
import com.vuitton.android.presentation.utils.ImageConfiguration;
import com.vuitton.android.presentation.utils.UrlFactory;
import defpackage.a;
import defpackage.cj;
import defpackage.d21;
import defpackage.j8;
import defpackage.n00;
import defpackage.o60;
import defpackage.qj;
import defpackage.t;
import defpackage.tr;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import net.rtccloud.sdk.Call;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class CarouselSItemKt {

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f50745a;

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
            f50745a = iArr;
        }
    }

    public static final void a(Modifier modifier, CarouselSItemUiModel carouselSItemUiModel, boolean z, LVColorScheme lVColorScheme, Function1 function1, Composer composer, int i2) {
        int i3;
        GapComposer gapComposer;
        long j2;
        long j3;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = a.e(modifierE, "CarouselSItem");
        }
        Modifier modifier2 = modifierE;
        carouselSItemUiModel.getClass();
        lVColorScheme.getClass();
        function1.getClass();
        GapComposer gapComposerH = composer.h(362984679);
        Applier applier = gapComposerH.f7976a;
        if ((i2 & 6) == 0) {
            i3 = (gapComposerH.K(modifier2) ? 4 : 2) | i2;
        } else {
            i3 = i2;
        }
        if ((i2 & 48) == 0) {
            i3 |= gapComposerH.K(carouselSItemUiModel) ? 32 : 16;
        }
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i3 |= gapComposerH.b(z) ? 256 : 128;
        }
        if ((i2 & 3072) == 0) {
            i3 |= gapComposerH.d(lVColorScheme.ordinal()) ? 2048 : 1024;
        }
        if ((i2 & 24576) == 0) {
            i3 |= gapComposerH.y(function1) ? 16384 : 8192;
        }
        if (gapComposerH.p(i3 & 1, (i3 & 9363) != 9362)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            boolean z2 = ((i3 & 112) == 32) | ((57344 & i3) == 16384);
            Object objX = gapComposerH.x();
            if (z2 || objX == Composer.Companion.f7939a) {
                objX = new qj(function1, carouselSItemUiModel, 0);
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
            if (applier == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function0);
            } else {
                gapComposerH.o();
            }
            Function2 function2 = ComposeUiNode.Companion.f9644f;
            Updater.c(gapComposerH, columnMeasurePolicyA, function2);
            Function2 function3 = ComposeUiNode.Companion.f9643e;
            Updater.c(gapComposerH, persistentCompositionLocalMapU, function3);
            Integer numValueOf = Integer.valueOf(iHashCode);
            Function2 function4 = ComposeUiNode.Companion.g;
            Updater.c(gapComposerH, numValueOf, function4);
            Function1 function5 = ComposeUiNode.Companion.f9645h;
            Updater.b(gapComposerH, function5);
            Function2 function6 = ComposeUiNode.Companion.d;
            Modifier modifierA = ClipKt.a(AspectRatioKt.a(tr.e(gapComposerH, modifierC2, function6, "CarouselSItem"), 1.0f, false), LVAppDesignKitTheme.j(gapComposerH).f48410b);
            int i4 = carouselSItemUiModel.d;
            ProductShortPriceUiModel productShortPriceUiModel = carouselSItemUiModel.f50799e;
            Painter painterA = PainterResources_androidKt.a(i4, gapComposerH, 0);
            ContentScale.f9447a.getClass();
            Modifier modifierA2 = PainterModifierKt.a(modifierA, painterA, null, ContentScale.Companion.f9453h, Call.Parameters.DEFAULT_CAMERA_ZOOM, null, 54);
            MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
            int iHashCode2 = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU2 = gapComposerH.U();
            Modifier modifierC3 = ComposedModifierKt.c(gapComposerH, modifierA2);
            if (applier == null) {
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
            Updater.c(gapComposerH, persistentCompositionLocalMapU2, function3);
            cj.t(iHashCode2, gapComposerH, function4, gapComposerH, function5);
            Modifier modifierE2 = ModifierExtKt.e(ClipKt.a(AspectRatioKt.a(tr.e(gapComposerH, modifierC3, function6, "CarouselSItem"), 1.0f, false), LVAppDesignKitTheme.j(gapComposerH).f48410b), "carousel_asset");
            String strB = new UrlFactory(ContextExtKt.f((Context) gapComposerH.k(AndroidCompositionLocals_androidKt.f9936b))).b(carouselSItemUiModel.f50798c, ImageConfiguration.Background.Transparent.f65853a);
            strB.getClass();
            ImageLoaderKt.b(modifierE2, strB, ContentScale.Companion.f9449b, null, null, 0, false, null, null, null, gapComposerH, KyberEngine.KyberPolyBytes, 2040);
            gapComposer = gapComposerH;
            Modifier modifierE3 = ModifierExtKt.e(PaddingKt.m(o60.f(gapComposer, true, "CarouselSItem"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposer).f48415c, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), "carousel_productName_text");
            String str = carouselSItemUiModel.f50797b;
            TextOverflow.f10989a.getClass();
            int i5 = TextOverflow.f10991c;
            TextStyle textStyle = LVAppDesignKitTheme.n(gapComposer).f48427h;
            int[] iArr = WhenMappings.f50745a;
            int i6 = iArr[lVColorScheme.ordinal()];
            if (i6 == 1) {
                gapComposer.L(-1564790319);
                j2 = LVAppDesignKitTheme.c(gapComposer).f48361b.m;
                gapComposer.Z(false);
            } else {
                if (i6 != 2) {
                    throw d21.u(gapComposer, -1564792884, false);
                }
                gapComposer.L(-1564787349);
                j2 = LVAppDesignKitTheme.c(gapComposer).f48361b.f48382k;
                gapComposer.Z(false);
            }
            TextKt.c(str, modifierE3, j2, 0L, null, 0L, null, null, 0L, i5, false, 1, 0, null, textStyle, gapComposer, 0, 24960, 110584);
            if (productShortPriceUiModel != null || z) {
                Modifier modifierE4 = ModifierExtKt.e(PaddingKt.m(n00.i(gapComposer, -1263636524, "CarouselSItem"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposer).f48414b, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), "carousel_productPrice_text");
                String strF = productShortPriceUiModel != null ? productShortPriceUiModel.f62982b : null;
                if (strF == null) {
                    strF = cj.f(gapComposer, -1564775630, R.string.no_price_on_product, gapComposer, false);
                } else {
                    gapComposer.L(-1564776560);
                    gapComposer.Z(false);
                }
                String str2 = strF;
                TextStyle textStyle2 = LVAppDesignKitTheme.n(gapComposer).f48427h;
                int i7 = iArr[lVColorScheme.ordinal()];
                if (i7 == 1) {
                    gapComposer.L(-1564768272);
                    j3 = LVAppDesignKitTheme.c(gapComposer).f48361b.n;
                    gapComposer.Z(false);
                } else {
                    if (i7 != 2) {
                        throw d21.u(gapComposer, -1564770954, false);
                    }
                    gapComposer.L(-1564765206);
                    j3 = LVAppDesignKitTheme.c(gapComposer).f48361b.l;
                    gapComposer.Z(false);
                }
                TextKt.c(str2, modifierE4, j3, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, textStyle2, gapComposer, 0, 0, 131064);
                gapComposer.Z(false);
            } else {
                gapComposer.L(-1263025979);
                gapComposer.Z(false);
            }
            gapComposer.Z(true);
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new j8(modifier2, carouselSItemUiModel, z, lVColorScheme, function1, i2, 2);
        }
    }

    public static final void b(Composer composer, int i2) {
        GapComposer gapComposerH = composer.h(997005723);
        if (gapComposerH.p(i2 & 1, i2 != 0)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Arrangement$Start$1 arrangement$Start$1 = Arrangement.f4918a;
            Arrangement.SpacedAligned spacedAlignedF = Arrangement.f(LVAppDesignKitTheme.l(gapComposerH).d);
            DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier("CarouselSSkeletonItem");
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
            LVSkeletonKt.c(null, Call.Parameters.DEFAULT_CAMERA_ZOOM, null, null, gapComposerH, 0, 15);
            gapComposerH = gapComposerH;
            LVSkeletonKt.e(tr.d("CarouselSSkeletonItem", 1.0f), null, null, gapComposerH, 6, 6);
            LVSkeletonKt.e(tr.d("CarouselSSkeletonItem", 1.0f), null, null, gapComposerH, 6, 6);
            gapComposerH.Z(true);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new t(i2, 27);
        }
    }
}
