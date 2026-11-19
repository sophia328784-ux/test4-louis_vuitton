package com.vuitton.android.presentation.screen.catalog.thematicplp.components;

import android.content.Context;
import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.ImageKt;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.Arrangement$Center$1;
import androidx.compose.foundation.layout.AspectRatioKt;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScopeInstance;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.ColumnScopeInstance;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.SizeKt;
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
import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.BiasAlignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.AlphaKt;
import androidx.compose.ui.draw.ClipKt;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.RectangleShapeKt;
import androidx.compose.ui.graphics.RectangleShapeKt$RectangleShape$1;
import androidx.compose.ui.hapticfeedback.HapticFeedback;
import androidx.compose.ui.layout.ContentScale;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.res.PainterResources_androidKt;
import androidx.compose.ui.res.StringResources_androidKt;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.style.TextAlign;
import androidx.compose.ui.text.style.TextOverflow;
import androidx.compose.ui.unit.Dp;
import androidx.media3.exoplayer.ExoPlayer;
import com.airbnb.lottie.compose.AnimateLottieCompositionAsStateKt;
import com.airbnb.lottie.compose.LottieAnimationKt;
import com.airbnb.lottie.compose.LottieCompositionResultImpl;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.google.ar.core.ImageMetadata;
import com.vuitton.android.R;
import com.vuitton.android.designkit.ui.common.ModifierExtKt;
import com.vuitton.android.designkit.ui.theme.GradientKt;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.presentation.compose.LVPlayPauseButtonKt;
import com.vuitton.android.presentation.compose.LvExoPlayer;
import com.vuitton.android.presentation.compose.LvVideoPlayerKt;
import com.vuitton.android.presentation.imageloading.compose.ImageLoaderKt;
import com.vuitton.android.presentation.model.common.AssetImageUiModel;
import com.vuitton.android.presentation.model.common.AssetUiModel;
import com.vuitton.android.presentation.model.common.AssetVideoUiModel;
import com.vuitton.android.presentation.screen.catalog.thematicplp.models.ThemeItemUiModel;
import com.vuitton.android.presentation.screen.plp.models.productshortlist.ProductShortPriceUiModel;
import com.vuitton.android.presentation.screen.plp.models.productshortlist.ProductShortUiModel;
import defpackage.b70;
import defpackage.cj;
import defpackage.di0;
import defpackage.gj;
import defpackage.kr0;
import defpackage.l01;
import defpackage.n00;
import defpackage.nj0;
import defpackage.p01;
import defpackage.p1;
import defpackage.tr;
import defpackage.xo0;
import defpackage.zr;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import net.rtccloud.sdk.Call;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0002¨\u0006\u0004²\u0006\u000e\u0010\u0001\u001a\u0004\u0018\u00010\u00008\nX\u008a\u0084\u0002²\u0006\f\u0010\u0003\u001a\u00020\u00028\nX\u008a\u0084\u0002"}, d2 = {"Lcom/airbnb/lottie/LottieComposition;", "composition", "", "progress", "presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class StaggeredGridItemKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final float f55396a;

    static {
        Dp.Companion companion = Dp.f11004c;
        f55396a = 280.0f;
    }

    public static final void a(boolean z, AssetUiModel assetUiModel, String str, Function0 function0, Composer composer, int i2) {
        int i3;
        GapComposer gapComposer;
        GapComposer gapComposerH = composer.h(1446385775);
        if ((i2 & 6) == 0) {
            i3 = (gapComposerH.b(z) ? 4 : 2) | i2;
        } else {
            i3 = i2;
        }
        if ((i2 & 48) == 0) {
            i3 |= gapComposerH.y(assetUiModel) ? 32 : 16;
        }
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i3 |= gapComposerH.K(str) ? 256 : 128;
        }
        if ((i2 & 3072) == 0) {
            i3 |= gapComposerH.y(function0) ? 2048 : 1024;
        }
        if (gapComposerH.p(i3 & 1, (i3 & 1171) != 1170)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Context context = (Context) gapComposerH.k(AndroidCompositionLocals_androidKt.f9936b);
            AssetImageUiModel assetImageUiModel = assetUiModel.f51780b;
            AssetVideoUiModel assetVideoUiModel = assetUiModel.f51781c;
            if (assetImageUiModel != null) {
                Modifier modifierD = n00.d(gapComposerH, -2128023567, "BrandContentItem", "thematicPlp_brandContent_image");
                String str2 = assetUiModel.f51780b.f51778b;
                str2.getClass();
                ContentScale.f9447a.getClass();
                ImageLoaderKt.b(modifierD, str2, ContentScale.Companion.f9449b, str, null, 0, false, null, null, null, gapComposerH, ((i3 << 3) & 7168) | KyberEngine.KyberPolyBytes, 2032);
                gapComposer = gapComposerH;
                gapComposer.Z(false);
            } else {
                gapComposer = gapComposerH;
                if (assetVideoUiModel != null) {
                    gapComposer.L(-2127667470);
                    LvExoPlayer lvExoPlayer = new LvExoPlayer(context);
                    Modifier modifierO = new DTFunctionNameModifier("BrandContentItem").o(SizeKt.f5052c);
                    Alignment.f8582a.getClass();
                    MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
                    int iHashCode = Long.hashCode(gapComposer.T);
                    PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposer.U();
                    Modifier modifierC = ComposedModifierKt.c(gapComposer, modifierO);
                    ComposeUiNode.b0.getClass();
                    Function0 function1 = ComposeUiNode.Companion.f9641b;
                    if (gapComposer.f7976a == null) {
                        ComposablesKt.b();
                        throw null;
                    }
                    gapComposer.B();
                    if (gapComposer.S) {
                        gapComposer.C(function1);
                    } else {
                        gapComposer.o();
                    }
                    Updater.c(gapComposer, measurePolicyD, ComposeUiNode.Companion.f9644f);
                    Updater.c(gapComposer, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
                    Updater.c(gapComposer, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
                    Updater.b(gapComposer, ComposeUiNode.Companion.f9645h);
                    Updater.c(gapComposer, modifierC, ComposeUiNode.Companion.d);
                    Modifier modifierE = ModifierExtKt.e(GradientKt.a(new DTFunctionNameModifier("BrandContentItem"), GradientKt.f48343b), "thematicPlp_brandContent_video");
                    String str3 = assetVideoUiModel.f51783c;
                    Object objX = gapComposer.x();
                    Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
                    if (objX == composer$Companion$Empty$1) {
                        objX = new LvExoPlayer(context).f50900a;
                        gapComposer.q(objX);
                    }
                    ExoPlayer exoPlayer = (ExoPlayer) objX;
                    boolean z2 = ((i3 & 7168) == 2048) | ((i3 & 14) == 4);
                    Object objX2 = gapComposer.x();
                    if (z2 || objX2 == composer$Companion$Empty$1) {
                        objX2 = new b70(z, function0, 3);
                        gapComposer.q(objX2);
                    }
                    LvVideoPlayerKt.b(modifierE, exoPlayer, str3, null, null, true, null, null, false, false, false, false, null, false, 4, null, null, null, (Function1) objX2, null, null, gapComposer, ImageMetadata.EDGE_MODE, 24582, 0, 1817560);
                    gapComposer = gapComposer;
                    Modifier modifierE2 = ModifierExtKt.e(BoxScopeInstance.f4938a.g(new DTFunctionNameModifier("BrandContentItem"), Alignment.Companion.f8588h), "thematicPlp_brandContentPlayPause_button");
                    boolean zBooleanValue = ((Boolean) ((SnapshotMutableStateImpl) lvExoPlayer.f50901b).getF10755b()).booleanValue();
                    boolean zY = gapComposer.y(lvExoPlayer);
                    Object objX3 = gapComposer.x();
                    if (zY || objX3 == composer$Companion$Empty$1) {
                        objX3 = new gj(lvExoPlayer, 15);
                        gapComposer.q(objX3);
                    }
                    LVPlayPauseButtonKt.a(0, gapComposer, modifierE2, (Function0) objX3, zBooleanValue);
                    gapComposer.Z(true);
                    gapComposer.Z(false);
                } else {
                    gapComposer.L(-2126436429);
                    gapComposer.Z(false);
                }
            }
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new zr(z, assetUiModel, str, function0, i2);
        }
    }

    public static final void b(Modifier modifier, boolean z, ThemeItemUiModel themeItemUiModel, String str, Function2 function2, Function2 function3, Composer composer, int i2) {
        int i3;
        Function0 function0;
        String str2;
        BoxScopeInstance boxScopeInstance;
        Composer$Companion$Empty$1 composer$Companion$Empty$1;
        boolean z2;
        int i4;
        Modifier modifierE = modifier;
        ThemeItemUiModel themeItemUiModel2 = themeItemUiModel;
        Function2 function4 = function2;
        if (modifierE != null) {
            modifierE = defpackage.a.e(modifierE, "ProductGiftItem");
        }
        GapComposer gapComposerH = composer.h(970177240);
        Applier applier = gapComposerH.f7976a;
        int i5 = i2 & 6;
        BoxScopeInstance boxScopeInstance2 = BoxScopeInstance.f4938a;
        if (i5 == 0) {
            i3 = (gapComposerH.K(boxScopeInstance2) ? 4 : 2) | i2;
        } else {
            i3 = i2;
        }
        if ((i2 & 48) == 0) {
            i3 |= gapComposerH.K(modifierE) ? 32 : 16;
        }
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i3 |= gapComposerH.b(z) ? 256 : 128;
        }
        if ((i2 & 3072) == 0) {
            i3 |= gapComposerH.y(themeItemUiModel2) ? 2048 : 1024;
        }
        if ((i2 & 24576) == 0) {
            i3 |= gapComposerH.K(str) ? 16384 : 8192;
        }
        if ((196608 & i2) == 0) {
            i3 |= gapComposerH.y(function4) ? 131072 : 65536;
        }
        if ((1572864 & i2) == 0) {
            i3 |= gapComposerH.y(function3) ? 1048576 : 524288;
        }
        int i6 = i3;
        if (gapComposerH.p(i6 & 1, (i6 & 599187) != 599186)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            HapticFeedback hapticFeedback = (HapticFeedback) gapComposerH.k(CompositionLocalsKt.l);
            Color.f8866b.getClass();
            long j2 = Color.f8868e;
            RectangleShapeKt$RectangleShape$1 rectangleShapeKt$RectangleShape$1 = RectangleShapeKt.f8913a;
            Modifier modifierB = BackgroundKt.b(modifierE, j2, rectangleShapeKt$RectangleShape$1);
            boolean z3 = (i6 & 57344) == 16384;
            Object objX = gapComposerH.x();
            boolean z4 = z3;
            Composer$Companion$Empty$1 composer$Companion$Empty$2 = Composer.Companion.f7939a;
            if (z4 || objX == composer$Companion$Empty$2) {
                objX = new nj0(str, 19);
                gapComposerH.q(objX);
            }
            Modifier modifierA = com.vuitton.android.presentation.extensions.ModifierExtKt.a(modifierB, null, (Function1) objX, 3);
            Arrangement$Center$1 arrangement$Center$1 = Arrangement.f4921e;
            Alignment.f8582a.getClass();
            BiasAlignment.Horizontal horizontal = Alignment.Companion.o;
            ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(arrangement$Center$1, horizontal, gapComposerH, 54);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierA);
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
            Function2 function5 = ComposeUiNode.Companion.f9644f;
            Updater.c(gapComposerH, columnMeasurePolicyA, function5);
            Function2 function6 = ComposeUiNode.Companion.f9643e;
            Updater.c(gapComposerH, persistentCompositionLocalMapU, function6);
            Integer numValueOf = Integer.valueOf(iHashCode);
            Function2 function7 = ComposeUiNode.Companion.g;
            Updater.c(gapComposerH, numValueOf, function7);
            Function1 function8 = ComposeUiNode.Companion.f9645h;
            Updater.b(gapComposerH, function8);
            Function2 function9 = ComposeUiNode.Companion.d;
            Updater.c(gapComposerH, modifierC, function9);
            Modifier modifierB2 = BackgroundKt.b(AspectRatioKt.a(SizeKt.d(new DTFunctionNameModifier("ProductGiftItem"), 1.0f), 1.0f, false), LVAppDesignKitTheme.c(gapComposerH).f48361b.f48374a, rectangleShapeKt$RectangleShape$1);
            ColumnScopeInstance columnScopeInstance = ColumnScopeInstance.f4944a;
            Modifier modifierE2 = ModifierExtKt.e(columnScopeInstance.a(modifierB2, 0.7f, true), "thematicPlp_product_image");
            ProductShortUiModel productShortUiModel = themeItemUiModel2.f55432a;
            AssetImageUiModel assetImageUiModel = productShortUiModel.f62986c.f51780b;
            String str3 = assetImageUiModel != null ? assetImageUiModel.f51778b : null;
            if (str3 == null) {
                str3 = "";
            }
            ImageLoaderKt.b(modifierE2, str3, null, null, null, 0, false, null, null, null, gapComposerH, 24576, 2028);
            Modifier modifierA2 = columnScopeInstance.a(SizeKt.d(new DTFunctionNameModifier("ProductGiftItem"), 1.0f), 0.3f, true);
            ColumnMeasurePolicy columnMeasurePolicyA2 = ColumnKt.a(arrangement$Center$1, horizontal, gapComposerH, 54);
            int iHashCode2 = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU2 = gapComposerH.U();
            Modifier modifierC2 = ComposedModifierKt.c(gapComposerH, modifierA2);
            if (applier == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                function0 = function1;
                gapComposerH.C(function0);
            } else {
                function0 = function1;
                gapComposerH.o();
            }
            Updater.c(gapComposerH, columnMeasurePolicyA2, function5);
            Updater.c(gapComposerH, persistentCompositionLocalMapU2, function6);
            cj.t(iHashCode2, gapComposerH, function7, gapComposerH, function8);
            Modifier modifierE3 = ModifierExtKt.e(PaddingKt.m(PaddingKt.k(tr.e(gapComposerH, modifierC2, function9, "ProductGiftItem"), LVAppDesignKitTheme.l(gapComposerH).d, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48415c, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), "thematicPlp_productName_text");
            String str4 = productShortUiModel.f62985b;
            long j3 = LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k;
            TextStyle textStyle = LVAppDesignKitTheme.n(gapComposerH).m;
            TextOverflow.f10989a.getClass();
            int i7 = TextOverflow.f10991c;
            TextAlign.f10959b.getClass();
            Function0 function10 = function0;
            TextKt.c(str4, modifierE3, j3, 0L, null, 0L, null, new TextAlign(TextAlign.f10961e), 0L, i7, false, 2, 0, null, textStyle, gapComposerH, 0, 24960, 109560);
            Modifier modifierE4 = ModifierExtKt.e(PaddingKt.k(new DTFunctionNameModifier("ProductGiftItem"), LVAppDesignKitTheme.l(gapComposerH).d, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2), "thematicPlp_productPrice_text");
            ProductShortPriceUiModel productShortPriceUiModel = productShortUiModel.o;
            if (productShortPriceUiModel == null || (str2 = productShortPriceUiModel.f62982b) == null) {
                str2 = new String();
            }
            TextKt.c(str2, modifierE4, LVAppDesignKitTheme.c(gapComposerH).f48361b.l, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).n, gapComposerH, 0, 0, 131064);
            GapComposer gapComposer = gapComposerH;
            gapComposer.Z(true);
            gapComposer.Z(true);
            if (productShortUiModel.p) {
                Modifier modifierO = SizeKt.o(n00.i(gapComposer, 1717773172, "ProductGiftItem"), LVAppDesignKitTheme.d(gapComposer).t);
                BiasAlignment biasAlignment = Alignment.Companion.f8584b;
                Modifier modifierG = boxScopeInstance2.g(modifierO, biasAlignment);
                Object objX2 = gapComposer.x();
                if (objX2 == composer$Companion$Empty$2) {
                    objX2 = new l01(5);
                    gapComposer.q(objX2);
                }
                Modifier modifierE5 = ModifierExtKt.e(SemanticsModifierKt.b(modifierG, false, (Function1) objX2), "thematicPlp_productPersonalization_image");
                MeasurePolicy measurePolicyD = BoxKt.d(biasAlignment, false);
                int iHashCode3 = Long.hashCode(gapComposer.T);
                PersistentCompositionLocalMap persistentCompositionLocalMapU3 = gapComposer.U();
                Modifier modifierC3 = ComposedModifierKt.c(gapComposer, modifierE5);
                if (applier == null) {
                    ComposablesKt.b();
                    throw null;
                }
                gapComposer.B();
                if (gapComposer.S) {
                    gapComposer.C(function10);
                } else {
                    gapComposer.o();
                }
                Updater.c(gapComposer, measurePolicyD, function5);
                Updater.c(gapComposer, persistentCompositionLocalMapU3, function6);
                cj.t(iHashCode3, gapComposer, function7, gapComposer, function8);
                Modifier modifierO2 = SizeKt.o(boxScopeInstance2.g(tr.e(gapComposer, modifierC3, function9, "ProductGiftItem"), Alignment.Companion.f8587f), LVAppDesignKitTheme.d(gapComposer).m);
                boxScopeInstance = boxScopeInstance2;
                composer$Companion$Empty$1 = composer$Companion$Empty$2;
                z2 = false;
                ImageKt.a(PainterResources_androidKt.a(LVAppDesignKitTheme.g(gapComposer).o0, gapComposer, 0), null, modifierO2, null, null, Call.Parameters.DEFAULT_CAMERA_ZOOM, null, gapComposer, 56, 120);
                gapComposer = gapComposer;
                gapComposer.Z(true);
                gapComposer.Z(false);
            } else {
                boxScopeInstance = boxScopeInstance2;
                composer$Companion$Empty$1 = composer$Companion$Empty$2;
                z2 = false;
                gapComposer.L(1718378602);
                gapComposer.Z(false);
            }
            Modifier modifierG2 = boxScopeInstance.g(SizeKt.o(new DTFunctionNameModifier("ProductGiftItem"), LVAppDesignKitTheme.d(gapComposer).t), Alignment.Companion.d);
            boolean z5 = !z;
            boolean zY = gapComposer.y(hapticFeedback) | ((i6 & 3670016) == 1048576 ? true : z2) | gapComposer.y(themeItemUiModel);
            Object objX3 = gapComposer.x();
            if (zY || objX3 == composer$Companion$Empty$1) {
                objX3 = new kr0(hapticFeedback, function3, themeItemUiModel, 1);
                gapComposer.q(objX3);
            }
            Modifier modifierE6 = ModifierExtKt.e(ModifierExtKt.c(modifierG2, z5, null, null, (Function0) objX3, 30), "thematicPlp_productWishlist_image");
            MeasurePolicy measurePolicyD2 = BoxKt.d(Alignment.Companion.f8584b, z2);
            int iHashCode4 = Long.hashCode(gapComposer.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU4 = gapComposer.U();
            Modifier modifierC4 = ComposedModifierKt.c(gapComposer, modifierE6);
            if (applier == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposer.B();
            if (gapComposer.S) {
                gapComposer.C(function10);
            } else {
                gapComposer.o();
            }
            Updater.c(gapComposer, measurePolicyD2, function5);
            Updater.c(gapComposer, persistentCompositionLocalMapU4, function6);
            cj.t(iHashCode4, gapComposer, function7, gapComposer, function8);
            Modifier modifierO3 = SizeKt.o(boxScopeInstance.g(tr.e(gapComposer, modifierC4, function9, "ProductGiftItem"), Alignment.Companion.f8587f), LVAppDesignKitTheme.d(gapComposer).m);
            boolean zY2 = gapComposer.y(themeItemUiModel);
            Object objX4 = gapComposer.x();
            if (zY2 || objX4 == composer$Companion$Empty$1) {
                objX4 = new xo0(themeItemUiModel, 29);
                gapComposer.q(objX4);
            }
            Modifier modifierB3 = SemanticsModifierKt.b(modifierO3, false, (Function1) objX4);
            if (themeItemUiModel.d) {
                gapComposer.L(1628790580);
                i4 = LVAppDesignKitTheme.g(gapComposer).V;
                gapComposer.Z(false);
            } else {
                gapComposer.L(1628875706);
                i4 = LVAppDesignKitTheme.g(gapComposer).U;
                gapComposer.Z(false);
            }
            GapComposer gapComposer2 = gapComposer;
            themeItemUiModel2 = themeItemUiModel;
            ImageKt.a(PainterResources_androidKt.a(i4, gapComposer, 0), tr.h(productShortUiModel.f62985b, " ", StringResources_androidKt.c(gapComposer, R.string.alt_button_wishlist)), modifierB3, null, null, Call.Parameters.DEFAULT_CAMERA_ZOOM, null, gapComposer2, 8, 120);
            gapComposerH = gapComposer2;
            gapComposerH.Z(true);
            if (themeItemUiModel2.f55434c) {
                gapComposerH.L(1719593988);
                LottieCompositionResultImpl lottieCompositionResultImplH = n00.h(LVAppDesignKitTheme.a(gapComposerH).E, gapComposerH, 0);
                if (((Number) AnimateLottieCompositionAsStateKt.a(lottieCompositionResultImplH.getF10755b(), false, null, 0, gapComposerH, 1022).getF10755b()).floatValue() == 1.0f) {
                    function4 = function2;
                    function4.invoke(themeItemUiModel2, Boolean.FALSE);
                } else {
                    function4 = function2;
                }
                LottieAnimationKt.a(lottieCompositionResultImplH.getF10755b(), null, false, 0, null, gapComposerH, 0, 0, 4194302);
                gapComposerH = gapComposerH;
                gapComposerH.Z(false);
            } else {
                function4 = function2;
                gapComposerH.L(1719968778);
                gapComposerH.Z(false);
            }
        } else {
            modifierE = modifierE;
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new p1(modifierE, z, themeItemUiModel2, str, function4, function3, i2);
        }
    }

    public static final void c(Modifier modifier, ThemeItemUiModel themeItemUiModel, float f2, boolean z, Function2 function2, Function2 function3, Function2 function4, Composer composer, int i2) {
        String str;
        boolean z2;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = defpackage.a.e(modifierE, "StaggeredGridItem");
        }
        themeItemUiModel.getClass();
        function2.getClass();
        function3.getClass();
        function4.getClass();
        GapComposer gapComposerH = composer.h(1841837527);
        int i3 = i2 | (gapComposerH.K(modifierE) ? 4 : 2) | (gapComposerH.y(themeItemUiModel) ? 32 : 16) | (gapComposerH.c(f2) ? 256 : 128) | (gapComposerH.b(z) ? 2048 : 1024) | (gapComposerH.y(function2) ? 16384 : 8192) | (gapComposerH.y(function3) ? 131072 : 65536) | (gapComposerH.y(function4) ? 1048576 : 524288);
        if (gapComposerH.p(i3 & 1, (599187 & i3) != 599186)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            ProductShortUiModel productShortUiModel = themeItemUiModel.f55432a;
            String str2 = productShortUiModel.f62985b;
            ProductShortPriceUiModel productShortPriceUiModel = productShortUiModel.o;
            String str3 = productShortPriceUiModel != null ? productShortPriceUiModel.f62982b : null;
            if (str3 == null) {
                str3 = "";
            }
            if (productShortUiModel.p) {
                str = cj.f(gapComposerH, 1975204298, R.string.alert_product_custom, gapComposerH, false);
            } else {
                gapComposerH.L(1975273459);
                gapComposerH.Z(false);
                str = new String();
            }
            String str4 = str2 + " " + str3 + " " + str;
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (objX == composer$Companion$Empty$1) {
                objX = new l01(4);
                gapComposerH.q(objX);
            }
            Modifier modifierA = AlphaKt.a(com.vuitton.android.designkit.components.ModifierExtKt.b(BackgroundKt.b(ClipKt.a(SizeKt.h(SizeKt.c(SizeKt.x(SemanticsModifierKt.b(modifierE, true, (Function1) objX), null, 3), 1.0f), Call.Parameters.DEFAULT_CAMERA_ZOOM, f55396a, 1), LVAppDesignKitTheme.j(gapComposerH).d), LVAppDesignKitTheme.c(gapComposerH).f48361b.f48374a, RectangleShapeKt.f8913a), !z, new a(z, themeItemUiModel, function3, function4), gapComposerH, 0), f2);
            Alignment.f8582a.getClass();
            MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8587f, false);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierA);
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
            if (themeItemUiModel.f55433b != null) {
                gapComposerH.L(139426627);
                AssetUiModel assetUiModel = themeItemUiModel.f55433b;
                boolean zY = ((i3 & 3670016) == 1048576) | gapComposerH.y(themeItemUiModel);
                Object objX2 = gapComposerH.x();
                if (zY || objX2 == composer$Companion$Empty$1) {
                    objX2 = new p01(function4, themeItemUiModel, 2);
                    gapComposerH.q(objX2);
                }
                a(z, assetUiModel, str4, (Function0) objX2, gapComposerH, (i3 >> 9) & 14);
                gapComposerH.Z(false);
                z2 = true;
            } else {
                int i4 = ((i3 >> 3) & 896) | 54 | ((i3 << 6) & 7168);
                int i5 = i3 << 3;
                z2 = true;
                b(n00.i(gapComposerH, 139733713, "StaggeredGridItem").o(SizeKt.f5052c), z, themeItemUiModel, str4, function2, function3, gapComposerH, i4 | (458752 & i5) | (i5 & 3670016));
                gapComposerH.Z(false);
            }
            gapComposerH.Z(z2);
        } else {
            modifierE = modifierE;
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new di0(modifierE, themeItemUiModel, f2, z, function2, function3, function4, i2);
        }
    }
}
