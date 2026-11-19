package com.vuitton.android.presentation.screen.immersivearticle.components.cards;

import android.content.Context;
import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.Arrangement$Top$1;
import androidx.compose.foundation.layout.AspectRatioKt;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScopeInstance;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.lazy.LazyListState;
import androidx.compose.foundation.lazy.LazyListStateKt;
import androidx.compose.material3.TextKt;
import androidx.compose.runtime.Applier;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.ClipKt;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.RectangleShapeKt;
import androidx.compose.ui.layout.ContentScale;
import androidx.compose.ui.layout.ContentScale$Companion$Crop$1;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.compose.ui.text.TextStyle;
import androidx.media3.exoplayer.ExoPlayer;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.designkit.components.components.LVFreeCarouselWithHintKt;
import com.vuitton.android.designkit.ui.common.ModifierExtKt;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.platform.extensions.StringExtKt;
import com.vuitton.android.presentation.compose.LVPlayPauseButtonKt;
import com.vuitton.android.presentation.compose.LvExoPlayer;
import com.vuitton.android.presentation.compose.LvVideoPlayerKt;
import com.vuitton.android.presentation.imageloading.compose.ImageLoaderKt;
import com.vuitton.android.presentation.model.common.AssetImageUiModel;
import com.vuitton.android.presentation.model.common.AssetUiModel;
import com.vuitton.android.presentation.model.common.AssetVideoUiModel;
import com.vuitton.android.presentation.screen.immersivearticle.ImmersiveArticleHelper;
import com.vuitton.android.presentation.screen.immersivearticle.components.cards.ImmersiveArticleSliderKt;
import com.vuitton.android.presentation.screen.immersivearticle.models.ImmersiveArticleSizeCardUiModel;
import com.vuitton.android.presentation.screen.immersivearticle.models.ImmersiveArticleSlideUiModel;
import com.vuitton.android.presentation.screen.immersivearticle.models.ImmersiveArticleSliderUiModel;
import com.vuitton.android.presentation.screen.immersivearticle.models.ImmersiveArticleType;
import com.vuitton.android.presentation.screen.immersivearticle.models.SectionThemeUiModel;
import defpackage.cj;
import defpackage.gj;
import defpackage.gv;
import defpackage.j8;
import defpackage.n00;
import defpackage.od;
import defpackage.t30;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function4;
import net.rtccloud.sdk.Call;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class ImmersiveArticleSliderKt {
    /* JADX WARN: Code duplicated, block: B:88:0x021b  */
    /* JADX WARN: Code duplicated, block: B:91:0x0244  */
    /* JADX WARN: Code duplicated, block: B:94:0x0259  */
    public static final void a(ImmersiveArticleSlideUiModel immersiveArticleSlideUiModel, SectionThemeUiModel sectionThemeUiModel, ImmersiveArticleSizeCardUiModel immersiveArticleSizeCardUiModel, boolean z, Function1 function1, Composer composer, int i2) {
        int i3;
        SectionThemeUiModel sectionThemeUiModel2;
        ImmersiveArticleSlideUiModel immersiveArticleSlideUiModel2;
        String str;
        boolean z2;
        String str2;
        long j2;
        String str3;
        long j3;
        String str4;
        String str5;
        Composer$Companion$Empty$1 composer$Companion$Empty$1;
        boolean zY;
        Object objX;
        GapComposer gapComposerH = composer.h(-1243630297);
        Applier applier = gapComposerH.f7976a;
        if ((i2 & 6) == 0) {
            i3 = (gapComposerH.y(immersiveArticleSlideUiModel) ? 4 : 2) | i2;
        } else {
            i3 = i2;
        }
        if ((i2 & 48) == 0) {
            i3 |= gapComposerH.K(sectionThemeUiModel) ? 32 : 16;
        }
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i3 |= gapComposerH.d(immersiveArticleSizeCardUiModel.ordinal()) ? 256 : 128;
        }
        if ((i2 & 3072) == 0) {
            i3 |= gapComposerH.b(z) ? 2048 : 1024;
        }
        if ((i2 & 24576) == 0) {
            i3 |= gapComposerH.y(function1) ? 16384 : 8192;
        }
        if (gapComposerH.p(i3 & 1, (i3 & 9363) != 9362)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Context context = (Context) gapComposerH.k(AndroidCompositionLocals_androidKt.f9936b);
            DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier("ImmersiveArticleSlide");
            int i4 = 57344 & i3;
            boolean zY2 = (i4 == 16384) | gapComposerH.y(immersiveArticleSlideUiModel);
            Object objX2 = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$2 = Composer.Companion.f7939a;
            if (zY2 || objX2 == composer$Companion$Empty$2) {
                objX2 = new t30(function1, immersiveArticleSlideUiModel, 0);
                gapComposerH.q(objX2);
            }
            Modifier modifierC = ModifierExtKt.c(dTFunctionNameModifier, false, null, null, (Function0) objX2, 27);
            Arrangement$Top$1 arrangement$Top$1 = Arrangement.f4920c;
            Alignment.f8582a.getClass();
            ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(arrangement$Top$1, Alignment.Companion.n, gapComposerH, 0);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC2 = ComposedModifierKt.c(gapComposerH, modifierC);
            ComposeUiNode.b0.getClass();
            Function0 function0 = ComposeUiNode.Companion.f9641b;
            Color colorA = null;
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
            Updater.c(gapComposerH, modifierC2, function6);
            AssetUiModel assetUiModel = immersiveArticleSlideUiModel.f58712c;
            int i5 = i3;
            AssetVideoUiModel assetVideoUiModel = assetUiModel.f51781c;
            if (assetVideoUiModel == null || (str5 = assetVideoUiModel.f51783c) == null || !StringExtKt.a(str5)) {
                str = "ImmersiveArticleSlide";
                z2 = false;
                Modifier modifierA = ClipKt.a(AspectRatioKt.a(n00.i(gapComposerH, 103445083, str), ImmersiveArticleHelper.a(immersiveArticleSizeCardUiModel), false), LVAppDesignKitTheme.j(gapComposerH).f48411c);
                AssetImageUiModel assetImageUiModel = assetUiModel.f51780b;
                String str6 = (assetImageUiModel == null || (str2 = assetImageUiModel.f51778b) == null) ? null : str2;
                ContentScale.f9447a.getClass();
                ImageLoaderKt.b(modifierA, str6, ContentScale.Companion.f9449b, null, null, 0, false, null, null, null, gapComposerH, KyberEngine.KyberPolyBytes, 2040);
                gapComposerH.Z(false);
            } else {
                gapComposerH.L(101985107);
                Object objX3 = gapComposerH.x();
                if (objX3 == composer$Companion$Empty$2) {
                    objX3 = new LvExoPlayer(context);
                    gapComposerH.q(objX3);
                }
                LvExoPlayer lvExoPlayer = (LvExoPlayer) objX3;
                Modifier modifierO = new DTFunctionNameModifier("ImmersiveArticleSlide").o(SizeKt.f5052c);
                MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
                int iHashCode2 = Long.hashCode(gapComposerH.T);
                PersistentCompositionLocalMap persistentCompositionLocalMapU2 = gapComposerH.U();
                Modifier modifierC3 = ComposedModifierKt.c(gapComposerH, modifierO);
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
                Updater.c(gapComposerH, modifierC3, function6);
                Modifier modifierA2 = ClipKt.a(AspectRatioKt.a(new DTFunctionNameModifier("ImmersiveArticleSlide"), ImmersiveArticleHelper.a(immersiveArticleSizeCardUiModel), false), LVAppDesignKitTheme.j(gapComposerH).f48411c);
                ExoPlayer exoPlayer = lvExoPlayer.f50900a;
                AssetVideoUiModel assetVideoUiModel2 = assetUiModel.f51781c;
                String str7 = assetVideoUiModel2.f51783c;
                String str8 = assetVideoUiModel2.d;
                ContentScale.f9447a.getClass();
                ContentScale$Companion$Crop$1 contentScale$Companion$Crop$1 = ContentScale.Companion.f9449b;
                boolean zY3 = (i4 == 16384) | gapComposerH.y(immersiveArticleSlideUiModel);
                Object objX4 = gapComposerH.x();
                if (zY3) {
                    composer$Companion$Empty$1 = composer$Companion$Empty$2;
                } else {
                    composer$Companion$Empty$1 = composer$Companion$Empty$2;
                    if (objX4 == composer$Companion$Empty$1) {
                    }
                    str = "ImmersiveArticleSlide";
                    LvVideoPlayerKt.b(modifierA2, exoPlayer, str7, null, null, true, str8, contentScale$Companion$Crop$1, false, false, false, z, null, false, 4, null, null, null, (Function1) objX4, null, null, gapComposerH, 12779520, ((i5 >> 6) & 112) | 24576, 0, 1816344);
                    gapComposerH = gapComposerH;
                    if (z) {
                        Modifier modifierG = BoxScopeInstance.f4938a.g(n00.i(gapComposerH, -1301563229, str), Alignment.Companion.f8590j);
                        boolean zBooleanValue = ((Boolean) ((SnapshotMutableStateImpl) lvExoPlayer.f50901b).getF10755b()).booleanValue();
                        zY = gapComposerH.y(lvExoPlayer);
                        objX = gapComposerH.x();
                        if (zY || objX == composer$Companion$Empty$1) {
                            objX = new gj(lvExoPlayer, 8);
                            gapComposerH.q(objX);
                        }
                        z2 = false;
                        LVPlayPauseButtonKt.a(0, gapComposerH, modifierG, (Function0) objX, zBooleanValue);
                        gapComposerH.Z(false);
                    } else {
                        z2 = false;
                        gapComposerH.L(-1301056782);
                        gapComposerH.Z(false);
                    }
                    gapComposerH.Z(true);
                    gapComposerH.Z(z2);
                }
                objX4 = new gv(function1, immersiveArticleSlideUiModel, 23);
                gapComposerH.q(objX4);
                str = "ImmersiveArticleSlide";
                LvVideoPlayerKt.b(modifierA2, exoPlayer, str7, null, null, true, str8, contentScale$Companion$Crop$1, false, false, false, z, null, false, 4, null, null, null, (Function1) objX4, null, null, gapComposerH, 12779520, ((i5 >> 6) & 112) | 24576, 0, 1816344);
                gapComposerH = gapComposerH;
                if (z) {
                    Modifier modifierG2 = BoxScopeInstance.f4938a.g(n00.i(gapComposerH, -1301563229, str), Alignment.Companion.f8590j);
                    boolean zBooleanValue2 = ((Boolean) ((SnapshotMutableStateImpl) lvExoPlayer.f50901b).getF10755b()).booleanValue();
                    zY = gapComposerH.y(lvExoPlayer);
                    objX = gapComposerH.x();
                    if (zY) {
                        objX = new gj(lvExoPlayer, 8);
                        gapComposerH.q(objX);
                    } else {
                        objX = new gj(lvExoPlayer, 8);
                        gapComposerH.q(objX);
                    }
                    z2 = false;
                    LVPlayPauseButtonKt.a(0, gapComposerH, modifierG2, (Function0) objX, zBooleanValue2);
                    gapComposerH.Z(false);
                } else {
                    z2 = false;
                    gapComposerH.L(-1301056782);
                    gapComposerH.Z(false);
                }
                gapComposerH.Z(true);
                gapComposerH.Z(z2);
            }
            immersiveArticleSlideUiModel2 = immersiveArticleSlideUiModel;
            String str9 = immersiveArticleSlideUiModel2.f58711b;
            if (str9 == null) {
                gapComposerH.L(103810417);
                gapComposerH.Z(z2);
                sectionThemeUiModel2 = sectionThemeUiModel;
            } else {
                Modifier modifierM = PaddingKt.m(n00.i(gapComposerH, 103810418, str), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48415c, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13);
                TextStyle textStyle = LVAppDesignKitTheme.n(gapComposerH).l;
                sectionThemeUiModel2 = sectionThemeUiModel;
                Color colorA2 = (sectionThemeUiModel == null || (str3 = sectionThemeUiModel2.f58826b) == null) ? null : com.vuitton.android.presentation.compose.StringExtKt.a(str3);
                if (colorA2 == null) {
                    gapComposerH.L(-2019017828);
                    j2 = LVAppDesignKitTheme.c(gapComposerH).f48361b.l;
                    gapComposerH.Z(z2);
                } else {
                    gapComposerH.L(-2019020246);
                    gapComposerH.Z(z2);
                    j2 = colorA2.f8872a;
                }
                GapComposer gapComposer = gapComposerH;
                TextKt.c(str9, modifierM, j2, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, textStyle, gapComposer, 0, 0, 131064);
                gapComposerH = gapComposer;
                gapComposerH.Z(z2);
            }
            Modifier modifierM2 = PaddingKt.m(new DTFunctionNameModifier(str), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48415c, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13);
            String str10 = immersiveArticleSlideUiModel2.f58710a;
            TextStyle textStyle2 = LVAppDesignKitTheme.n(gapComposerH).f48426f;
            if (sectionThemeUiModel2 != null && (str4 = sectionThemeUiModel2.f58826b) != null) {
                colorA = com.vuitton.android.presentation.compose.StringExtKt.a(str4);
            }
            Color color = colorA;
            if (color == null) {
                gapComposerH.L(973200159);
                j3 = LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k;
                gapComposerH.Z(z2);
            } else {
                gapComposerH.L(973197865);
                gapComposerH.Z(z2);
                j3 = color.f8872a;
            }
            GapComposer gapComposer2 = gapComposerH;
            TextKt.c(str10, modifierM2, j3, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, textStyle2, gapComposer2, 0, 0, 131064);
            gapComposerH = gapComposer2;
            gapComposerH.Z(true);
        } else {
            sectionThemeUiModel2 = sectionThemeUiModel;
            immersiveArticleSlideUiModel2 = immersiveArticleSlideUiModel;
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new j8(immersiveArticleSlideUiModel2, sectionThemeUiModel2, immersiveArticleSizeCardUiModel, z, function1, i2, 5);
        }
    }

    public static final void b(ImmersiveArticleSliderUiModel immersiveArticleSliderUiModel, final boolean z, final Function1 function1, final Function1 function2, final ImmersiveArticleType immersiveArticleType, Composer composer, int i2) {
        LazyListState lazyListState;
        long j2;
        String str;
        final ImmersiveArticleSliderUiModel immersiveArticleSliderUiModel2 = immersiveArticleSliderUiModel;
        function2.getClass();
        immersiveArticleType.getClass();
        GapComposer gapComposerH = composer.h(289228301);
        int i3 = i2 | (gapComposerH.y(immersiveArticleSliderUiModel2) ? 4 : 2) | (gapComposerH.b(z) ? 32 : 16) | (gapComposerH.y(function1) ? 256 : 128) | (gapComposerH.y(function2) ? 2048 : 1024) | (gapComposerH.d(immersiveArticleType.ordinal()) ? 16384 : 8192);
        if (gapComposerH.p(i3 & 1, (i3 & 9363) != 9362)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            LazyListState lazyListStateA = LazyListStateKt.a(0, gapComposerH, 3);
            Unit unit = Unit.f71739a;
            boolean zK = ((i3 & 57344) == 16384) | ((i3 & 7168) == 2048) | gapComposerH.K(lazyListStateA) | gapComposerH.y(immersiveArticleSliderUiModel2);
            Object objX = gapComposerH.x();
            if (zK || objX == Composer.Companion.f7939a) {
                ImmersiveArticleSliderKt$ImmersiveArticleSlider$2$1 immersiveArticleSliderKt$ImmersiveArticleSlider$2$1 = new ImmersiveArticleSliderKt$ImmersiveArticleSlider$2$1(lazyListStateA, immersiveArticleSliderUiModel2, immersiveArticleType, null, function2);
                lazyListState = lazyListStateA;
                immersiveArticleSliderUiModel2 = immersiveArticleSliderUiModel2;
                gapComposerH.q(immersiveArticleSliderKt$ImmersiveArticleSlider$2$1);
                objX = immersiveArticleSliderKt$ImmersiveArticleSlider$2$1;
            } else {
                lazyListState = lazyListStateA;
            }
            EffectsKt.e(gapComposerH, unit, (Function2) objX);
            DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier("ImmersiveArticleSlider");
            SectionThemeUiModel sectionThemeUiModel = immersiveArticleSliderUiModel2.f58717e;
            Color colorA = (sectionThemeUiModel == null || (str = sectionThemeUiModel.f58825a) == null) ? null : com.vuitton.android.presentation.compose.StringExtKt.a(str);
            if (colorA == null) {
                gapComposerH.L(-1224444642);
                j2 = LVAppDesignKitTheme.c(gapComposerH).f48361b.f48374a;
                gapComposerH.Z(false);
            } else {
                gapComposerH.L(-1224447618);
                gapComposerH.Z(false);
                j2 = colorA.f8872a;
            }
            Modifier modifierK = PaddingKt.k(BackgroundKt.b(dTFunctionNameModifier, j2, RectangleShapeKt.f8913a), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48418h, 1);
            Arrangement$Top$1 arrangement$Top$1 = Arrangement.f4920c;
            Alignment.f8582a.getClass();
            ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(arrangement$Top$1, Alignment.Companion.n, gapComposerH, 0);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierK);
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
            if (immersiveArticleSliderUiModel2.f58716c == null) {
                gapComposerH.L(-433540757);
                gapComposerH.Z(false);
            } else {
                TextKt.c(immersiveArticleSliderUiModel2.f58716c, PaddingKt.m(n00.i(gapComposerH, -433540756, "ImmersiveArticleSlider"), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48415c, 7), 0L, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).f48426f, gapComposerH, 0, 0, 131068);
                gapComposerH = gapComposerH;
                gapComposerH.Z(false);
                immersiveArticleSliderUiModel2 = immersiveArticleSliderUiModel;
            }
            LVFreeCarouselWithHintKt.a(null, lazyListState, immersiveArticleSliderUiModel2.d, 1, 0.2f, LVAppDesignKitTheme.l(gapComposerH).f48417f, LVAppDesignKitTheme.l(gapComposerH).f48415c, ComposableLambdaKt.b(679141214, new Function4() { // from class: s30
                @Override // kotlin.jvm.functions.Function4
                public final Object g(Object obj, Object obj2, Object obj3, Object obj4) {
                    ((Integer) obj).getClass();
                    ImmersiveArticleSlideUiModel immersiveArticleSlideUiModel = (ImmersiveArticleSlideUiModel) obj2;
                    Composer composer2 = (Composer) obj3;
                    int iIntValue = ((Integer) obj4).intValue();
                    immersiveArticleSlideUiModel.getClass();
                    OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                    ImmersiveArticleSliderUiModel immersiveArticleSliderUiModel3 = immersiveArticleSliderUiModel2;
                    SectionThemeUiModel sectionThemeUiModel2 = immersiveArticleSliderUiModel3.f58717e;
                    ImmersiveArticleSizeCardUiModel immersiveArticleSizeCardUiModel = ((ImmersiveArticleSlideUiModel) CollectionsKt.B(immersiveArticleSliderUiModel3.d)).d;
                    Function1 function3 = function2;
                    boolean zK2 = composer2.K(function3);
                    ImmersiveArticleType immersiveArticleType2 = immersiveArticleType;
                    boolean zD = zK2 | composer2.d(immersiveArticleType2.ordinal()) | composer2.y(immersiveArticleSlideUiModel);
                    Function1 function4 = function1;
                    boolean zK3 = zD | composer2.K(function4);
                    Object objX2 = composer2.x();
                    if (zK3 || objX2 == Composer.Companion.f7939a) {
                        objX2 = new k3(function3, immersiveArticleType2, immersiveArticleSlideUiModel, function4);
                        composer2.q(objX2);
                    }
                    ImmersiveArticleSliderKt.a(immersiveArticleSlideUiModel, sectionThemeUiModel2, immersiveArticleSizeCardUiModel, z, (Function1) objX2, composer2, (iIntValue >> 3) & 14);
                    return Unit.f71739a;
                }
            }, gapComposerH), gapComposerH, 12610560, 1);
            gapComposerH.Z(true);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new od(immersiveArticleSliderUiModel, z, function1, function2, immersiveArticleType, i2, 3);
        }
    }
}
