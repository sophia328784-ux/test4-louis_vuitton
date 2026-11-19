package com.vuitton.android.presentation.screen.pdp.components;

import android.content.Context;
import androidx.compose.foundation.ImageKt;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.AspectRatioKt;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
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
import androidx.compose.ui.layout.ContentScale;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.compose.ui.res.PainterResources_androidKt;
import androidx.compose.ui.unit.Dp;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.designkit.ui.common.ModifierExtKt;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.atoms.LVTagKt;
import com.vuitton.android.presentation.extensions.ContextExtKt;
import com.vuitton.android.presentation.imageloading.compose.ImageLoaderKt;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.SkuIdUiModel;
import com.vuitton.android.presentation.utils.ImageConfiguration;
import com.vuitton.android.presentation.utils.ProductUtils;
import com.vuitton.android.presentation.utils.UrlFactory;
import com.vuitton.foundation.model.domain.model.product.universal.ProductBackground;
import defpackage.b3;
import defpackage.cj;
import defpackage.gf;
import defpackage.n00;
import defpackage.o60;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import net.rtccloud.sdk.Call;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class PdpReferencesRowKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final float f61406a;

    static {
        Dp.Companion companion = Dp.f11004c;
        f61406a = 109.0f;
    }

    public static final void a(Modifier modifier, String str, ProductBackground productBackground, String str2, String str3, List list, String str4, Composer composer, int i2, int i3) {
        int i4;
        String str5;
        int i5;
        String str6;
        String str7;
        Modifier modifier2;
        String str8;
        boolean z;
        Modifier modifierE = modifier;
        String str9 = str2;
        if (modifierE != null) {
            modifierE = defpackage.a.e(modifierE, "ProductReferencesRow-slEc73s");
        }
        list.getClass();
        GapComposer gapComposerH = composer.h(-1288134834);
        Applier applier = gapComposerH.f7976a;
        int i6 = i2 | 6 | (gapComposerH.K(str) ? 32 : 16);
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i6 |= gapComposerH.d(productBackground == null ? -1 : productBackground.ordinal()) ? 256 : 128;
        }
        int i7 = i3 & 8;
        if (i7 != 0) {
            i4 = i6 | 3072;
        } else {
            i4 = i6 | (gapComposerH.K(str9 != null ? new SkuIdUiModel(str9) : null) ? 2048 : 1024);
        }
        int i8 = i4 | (gapComposerH.K(str3) ? 16384 : 8192) | (gapComposerH.y(list) ? 131072 : 65536);
        int i9 = i3 & 64;
        if (i9 != 0) {
            i5 = i8 | 1572864;
            str5 = str4;
        } else {
            str5 = str4;
            i5 = i8 | (gapComposerH.K(str5) ? 1048576 : 524288);
        }
        if (gapComposerH.p(i5 & 1, (599187 & i5) != 599186)) {
            DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier("ProductReferencesRow-slEc73s");
            if (i7 != 0) {
                str9 = null;
            }
            String str10 = i9 != 0 ? null : str5;
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Alignment.f8582a.getClass();
            RowMeasurePolicy rowMeasurePolicyA = RowKt.a(Arrangement.f4918a, Alignment.Companion.l, gapComposerH, 48);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, dTFunctionNameModifier);
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
            Updater.c(gapComposerH, rowMeasurePolicyA, function2);
            Function2 function3 = ComposeUiNode.Companion.f9643e;
            Updater.c(gapComposerH, persistentCompositionLocalMapU, function3);
            Integer numValueOf = Integer.valueOf(iHashCode);
            Function2 function4 = ComposeUiNode.Companion.g;
            Updater.c(gapComposerH, numValueOf, function4);
            Function1 function1 = ComposeUiNode.Companion.f9645h;
            Updater.b(gapComposerH, function1);
            Function2 function5 = ComposeUiNode.Companion.d;
            Updater.c(gapComposerH, modifierC, function5);
            gapComposerH.L(1506421367);
            String str11 = str9;
            new UrlFactory(ContextExtKt.f((Context) gapComposerH.k(AndroidCompositionLocals_androidKt.f9936b)));
            String strD = UrlFactory.d(str, 109, ImageConfiguration.Background.Transparent.f65853a);
            gapComposerH.Z(false);
            if (strD == null) {
                strD = "";
            }
            String str12 = strD;
            Modifier modifierA = ClipKt.a(SizeKt.o(new DTFunctionNameModifier("ProductReferencesRow-slEc73s"), f61406a), LVAppDesignKitTheme.j(gapComposerH).f48411c);
            DTFunctionNameModifier dTFunctionNameModifier2 = new DTFunctionNameModifier("ProductReferencesRow-slEc73s");
            MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
            int iHashCode2 = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU2 = gapComposerH.U();
            Modifier modifierC2 = ComposedModifierKt.c(gapComposerH, dTFunctionNameModifier2);
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
            cj.t(iHashCode2, gapComposerH, function4, gapComposerH, function1);
            Updater.c(gapComposerH, modifierC2, function5);
            String str13 = str10;
            ImageKt.a(PainterResources_androidKt.a(ProductUtils.a(ProductUtils.ProductImageTypeItemView.FRONT, productBackground, ProductUtils.ProductImageRatio.R1_1), gapComposerH, 0), null, modifierA, null, null, Call.Parameters.DEFAULT_CAMERA_ZOOM, null, gapComposerH, 56, 120);
            Modifier modifierA2 = AspectRatioKt.a(ModifierExtKt.e(modifierA, "productPreview_productImage_image"), 1.0f, true);
            ContentScale.f9447a.getClass();
            ImageLoaderKt.b(modifierA2, str12, ContentScale.Companion.f9450c, null, null, 0, false, null, null, null, gapComposerH, KyberEngine.KyberPolyBytes, 2040);
            GapComposer gapComposer = gapComposerH;
            Modifier modifierK = PaddingKt.k(o60.f(gapComposer, true, "ProductReferencesRow-slEc73s"), LVAppDesignKitTheme.l(gapComposer).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2);
            ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(Arrangement.f4920c, Alignment.Companion.n, gapComposer, 0);
            int iHashCode3 = Long.hashCode(gapComposer.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU3 = gapComposer.U();
            Modifier modifierC3 = ComposedModifierKt.c(gapComposer, modifierK);
            if (applier == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposer.B();
            if (gapComposer.S) {
                gapComposer.C(function0);
            } else {
                gapComposer.o();
            }
            Updater.c(gapComposer, columnMeasurePolicyA, function2);
            Updater.c(gapComposer, persistentCompositionLocalMapU3, function3);
            cj.t(iHashCode3, gapComposer, function4, gapComposer, function1);
            Updater.c(gapComposer, modifierC3, function5);
            if (str13 == null) {
                gapComposer.L(1573419755);
                gapComposer.Z(false);
                str8 = str13;
            } else {
                LVTagKt.a(n00.d(gapComposer, 1573419756, "ProductReferencesRow-slEc73s", "productPreview_tag_text"), null, str13, gapComposer, 0, 26);
                str8 = str13;
                cj.x(new DTFunctionNameModifier("ProductReferencesRow-slEc73s"), LVAppDesignKitTheme.l(gapComposer).f48415c, gapComposer, false);
            }
            String str14 = str11 == null ? null : str11;
            if (str14 == null) {
                gapComposer.L(1573650829);
                gapComposer.Z(false);
                z = false;
            } else {
                gapComposer.L(1573650830);
                z = false;
                TextKt.c(str14, null, LVAppDesignKitTheme.c(gapComposer).f48361b.l, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposer).f48427h, gapComposer, 0, 0, 131066);
                gapComposer = gapComposer;
                cj.x(new DTFunctionNameModifier("ProductReferencesRow-slEc73s"), LVAppDesignKitTheme.l(gapComposer).f48415c, gapComposer, false);
            }
            GapComposer gapComposer2 = gapComposer;
            TextKt.c(str3, n00.g("ProductReferencesRow-slEc73s", "productPreview_name_text"), LVAppDesignKitTheme.c(gapComposer).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposer).f48427h, gapComposer2, 0, 0, 131064);
            gapComposerH = gapComposer2;
            if (list.isEmpty()) {
                gapComposerH.L(1574790266);
                gapComposerH.Z(z);
            } else {
                SpacerKt.a(gapComposerH, SizeKt.f(n00.i(gapComposerH, 1574311688, "ProductReferencesRow-slEc73s"), LVAppDesignKitTheme.l(gapComposerH).f48414b));
                Iterator it = list.iterator();
                while (it.hasNext()) {
                    GapComposer gapComposer3 = gapComposerH;
                    TextKt.c((String) it.next(), n00.g("ProductReferencesRow-slEc73s", "productPreview_variation_text"), LVAppDesignKitTheme.c(gapComposerH).f48361b.l, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).f48427h, gapComposer3, 0, 0, 131064);
                    gapComposerH = gapComposer3;
                }
                gapComposerH.Z(z);
            }
            gapComposerH.Z(true);
            gapComposerH.Z(true);
            OpaqueKey opaqueKey2 = ComposerKt.f7940a;
            str6 = str11;
            str7 = str8;
            modifier2 = dTFunctionNameModifier;
        } else {
            gapComposerH.D();
            str6 = str9;
            str7 = str5;
            modifier2 = modifierE;
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new gf(modifier2, str, productBackground, str6, str3, list, str7, i2, i3, 5);
        }
    }

    public static final void b(Modifier modifier, String str, ProductBackground productBackground, String str2, String str3, Composer composer, int i2) {
        int i3;
        String strD;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = defpackage.a.e(modifierE, "ProductReferencesRowLegacy");
        }
        GapComposer gapComposerH = composer.h(-439101332);
        Applier applier = gapComposerH.f7976a;
        if ((i2 & 6) == 0) {
            i3 = (gapComposerH.K(modifierE) ? 4 : 2) | i2;
        } else {
            i3 = i2;
        }
        if ((i2 & 48) == 0) {
            i3 |= gapComposerH.K(str) ? 32 : 16;
        }
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i3 |= gapComposerH.d(productBackground == null ? -1 : productBackground.ordinal()) ? 256 : 128;
        }
        if ((i2 & 3072) == 0) {
            i3 |= gapComposerH.K(str2) ? 2048 : 1024;
        }
        if ((i2 & 24576) == 0) {
            i3 |= gapComposerH.K(str3) ? 16384 : 8192;
        }
        if (gapComposerH.p(i3 & 1, (i3 & 9363) != 9362)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Alignment.f8582a.getClass();
            RowMeasurePolicy rowMeasurePolicyA = RowKt.a(Arrangement.f4918a, Alignment.Companion.l, gapComposerH, 48);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierE);
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
            Updater.c(gapComposerH, rowMeasurePolicyA, function2);
            Function2 function3 = ComposeUiNode.Companion.f9643e;
            Updater.c(gapComposerH, persistentCompositionLocalMapU, function3);
            Integer numValueOf = Integer.valueOf(iHashCode);
            Function2 function4 = ComposeUiNode.Companion.g;
            Updater.c(gapComposerH, numValueOf, function4);
            Function1 function1 = ComposeUiNode.Companion.f9645h;
            Updater.b(gapComposerH, function1);
            Function2 function5 = ComposeUiNode.Companion.d;
            Updater.c(gapComposerH, modifierC, function5);
            if (str == null) {
                gapComposerH.L(-1070383464);
                gapComposerH.Z(false);
                strD = null;
            } else {
                gapComposerH.L(-1070383463);
                new UrlFactory(ContextExtKt.f((Context) gapComposerH.k(AndroidCompositionLocals_androidKt.f9936b)));
                strD = UrlFactory.d(str, 109, ImageConfiguration.Background.Transparent.f65853a);
                gapComposerH.Z(false);
            }
            if (strD == null) {
                strD = "";
            }
            String str4 = strD;
            Modifier modifierA = ClipKt.a(SizeKt.o(new DTFunctionNameModifier("ProductReferencesRowLegacy"), f61406a), LVAppDesignKitTheme.j(gapComposerH).f48410b);
            DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier("ProductReferencesRowLegacy");
            MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
            int iHashCode2 = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU2 = gapComposerH.U();
            Modifier modifierC2 = ComposedModifierKt.c(gapComposerH, dTFunctionNameModifier);
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
            cj.t(iHashCode2, gapComposerH, function4, gapComposerH, function1);
            Updater.c(gapComposerH, modifierC2, function5);
            ImageKt.a(PainterResources_androidKt.a(ProductUtils.a(ProductUtils.ProductImageTypeItemView.FRONT, productBackground, ProductUtils.ProductImageRatio.R1_1), gapComposerH, 0), null, modifierA, null, null, Call.Parameters.DEFAULT_CAMERA_ZOOM, null, gapComposerH, 56, 120);
            Modifier modifierE2 = ModifierExtKt.e(AspectRatioKt.a(modifierA, 1.0f, true), "pdp_ProductReference_image");
            ContentScale.f9447a.getClass();
            ImageLoaderKt.b(modifierE2, str4, ContentScale.Companion.f9450c, null, null, 0, false, null, null, null, gapComposerH, KyberEngine.KyberPolyBytes, 2040);
            Modifier modifierK = PaddingKt.k(o60.f(gapComposerH, true, "ProductReferencesRowLegacy"), LVAppDesignKitTheme.l(gapComposerH).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2);
            ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(Arrangement.f4920c, Alignment.Companion.n, gapComposerH, 0);
            int iHashCode3 = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU3 = gapComposerH.U();
            Modifier modifierC3 = ComposedModifierKt.c(gapComposerH, modifierK);
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
            Updater.c(gapComposerH, columnMeasurePolicyA, function2);
            Updater.c(gapComposerH, persistentCompositionLocalMapU3, function3);
            cj.t(iHashCode3, gapComposerH, function4, gapComposerH, function1);
            Updater.c(gapComposerH, modifierC3, function5);
            TextKt.c(str2 == null ? "" : str2, n00.g("ProductReferencesRowLegacy", "pdp_ProductReferenceSku_text"), LVAppDesignKitTheme.c(gapComposerH).f48361b.l, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).l, gapComposerH, 0, 0, 131064);
            TextKt.c(str3 == null ? "" : str3, n00.g("ProductReferencesRowLegacy", "pdp_ProductReferenceName_text"), LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).f48427h, gapComposerH, 0, 0, 131064);
            gapComposerH = gapComposerH;
            gapComposerH.Z(true);
            gapComposerH.Z(true);
        } else {
            modifierE = modifierE;
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new b3(modifierE, str, productBackground, str2, str3, i2, 17);
        }
    }
}
