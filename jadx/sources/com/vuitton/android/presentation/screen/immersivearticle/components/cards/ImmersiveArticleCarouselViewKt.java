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
import androidx.compose.foundation.layout.ColumnScopeInstance;
import androidx.compose.foundation.layout.FillElement;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.pager.PagerState;
import androidx.compose.foundation.pager.PagerStateKt;
import androidx.compose.material3.TextKt;
import androidx.compose.runtime.Applier;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.BiasAlignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.RectangleShapeKt;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.compose.ui.text.TextStyle;
import androidx.media3.exoplayer.ExoPlayer;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.google.ar.core.ImageMetadata;
import com.vuitton.android.designkit.components.components.LVZoomableContentComponentKt;
import com.vuitton.android.designkit.ui.theme.GradientKt;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.LVColorScheme;
import com.vuitton.android.designkit.ui.theme.molecules.LVCapsulePageControlKt;
import com.vuitton.android.platform.extensions.StringExtKt;
import com.vuitton.android.presentation.compose.LVPlayPauseButtonKt;
import com.vuitton.android.presentation.compose.LvExoPlayer;
import com.vuitton.android.presentation.compose.LvVideoPlayerKt;
import com.vuitton.android.presentation.compose.components.ShowOnDragPageNumberIndicatorKt;
import com.vuitton.android.presentation.extensions.ModifierExtKt;
import com.vuitton.android.presentation.imageloading.compose.ImageLoaderKt;
import com.vuitton.android.presentation.model.common.AssetImageUiModel;
import com.vuitton.android.presentation.model.common.AssetVideoUiModel;
import com.vuitton.android.presentation.screen.immersivearticle.components.cards.ImmersiveArticleCarouselViewKt;
import com.vuitton.android.presentation.screen.immersivearticle.models.CarouselArticleSectionUiModel;
import com.vuitton.android.presentation.screen.immersivearticle.models.ImmersiveArticleAssetUiModel;
import com.vuitton.android.presentation.screen.immersivearticle.models.SectionThemeUiModel;
import defpackage.a;
import defpackage.c30;
import defpackage.cj;
import defpackage.gj;
import defpackage.j6;
import defpackage.md;
import defpackage.n00;
import defpackage.ss;
import defpackage.u00;
import defpackage.x3;
import defpackage.z20;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.text.StringsKt;
import net.rtccloud.sdk.Call;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003¨\u0006\u0006²\u0006\u000e\u0010\u0001\u001a\u00020\u00008\n@\nX\u008a\u008e\u0002²\u0006\u000e\u0010\u0002\u001a\u00020\u00008\n@\nX\u008a\u008e\u0002²\u0006\u000e\u0010\u0004\u001a\u00020\u00038\n@\nX\u008a\u008e\u0002²\u0006\u000e\u0010\u0005\u001a\u00020\u00008\n@\nX\u008a\u008e\u0002²\u0006\u000e\u0010\u0005\u001a\u00020\u00008\n@\nX\u008a\u008e\u0002²\u0006\u000e\u0010\u0001\u001a\u00020\u00008\n@\nX\u008a\u008e\u0002"}, d2 = {"", "shouldSwipe", "isCarouselZoomed", "", "captionText", "isVisible", "presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class ImmersiveArticleCarouselViewKt {
    public static final void a(Modifier modifier, final float f2, final ImmersiveArticleAssetUiModel immersiveArticleAssetUiModel, final boolean z, final Function1 function1, Composer composer, final int i2) {
        GapComposer gapComposer;
        String str;
        boolean z2;
        String str2;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = a.e(modifierE, "CreateArticleComposable");
        }
        GapComposer gapComposerH = composer.h(-1398937329);
        int i3 = i2 | (gapComposerH.K(modifierE) ? 4 : 2) | (gapComposerH.c(f2) ? 32 : 16) | (gapComposerH.y(immersiveArticleAssetUiModel) ? 256 : 128) | (gapComposerH.b(z) ? 2048 : 1024) | (gapComposerH.y(function1) ? 16384 : 8192);
        if (gapComposerH.p(i3 & 1, (i3 & 9363) != 9362)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Context context = (Context) gapComposerH.k(AndroidCompositionLocals_androidKt.f9936b);
            AssetImageUiModel assetImageUiModel = immersiveArticleAssetUiModel.f58639a;
            AssetVideoUiModel assetVideoUiModel = immersiveArticleAssetUiModel.f58640b;
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (assetImageUiModel != null && (str2 = assetImageUiModel.f51778b) != null && StringExtKt.a(str2)) {
                gapComposerH.L(-1673950615);
                Object objX = gapComposerH.x();
                if (objX == composer$Companion$Empty$1) {
                    objX = SnapshotStateKt.g(Boolean.FALSE);
                    gapComposerH.q(objX);
                }
                MutableState mutableState = (MutableState) objX;
                Boolean bool = (Boolean) mutableState.getF10755b();
                bool.getClass();
                boolean zY = gapComposerH.y(function1);
                Object objX2 = gapComposerH.x();
                if (zY || objX2 == composer$Companion$Empty$1) {
                    objX2 = new ImmersiveArticleCarouselViewKt$CreateArticleComposable$1$1(function1, mutableState, null);
                    gapComposerH.q(objX2);
                }
                EffectsKt.e(gapComposerH, bool, (Function2) objX2);
                Modifier modifierA = AspectRatioKt.a(modifierE.o(SizeKt.f5052c), f2, true);
                Object objX3 = gapComposerH.x();
                if (objX3 == composer$Companion$Empty$1) {
                    objX3 = new j6(29, mutableState);
                    gapComposerH.q(objX3);
                }
                Modifier modifierC = GradientKt.c(ModifierExtKt.b(modifierA, (Function1) objX3));
                String str3 = immersiveArticleAssetUiModel.f58639a.f51778b;
                str3.getClass();
                ImageLoaderKt.b(modifierC, str3, null, null, null, 0, false, null, null, null, gapComposerH, 0, 2044);
                gapComposer = gapComposerH;
                gapComposer.Z(false);
            } else {
                if (assetVideoUiModel == null || (str = assetVideoUiModel.f51783c) == null || !StringExtKt.a(str)) {
                    gapComposerH.L(-53925749);
                    gapComposerH.Z(false);
                    md.k("Unhandled view type");
                    return;
                }
                gapComposerH.L(-1673210335);
                Object objX4 = gapComposerH.x();
                if (objX4 == composer$Companion$Empty$1) {
                    objX4 = SnapshotStateKt.g(Boolean.FALSE);
                    gapComposerH.q(objX4);
                }
                MutableState mutableState2 = (MutableState) objX4;
                Object objX5 = gapComposerH.x();
                if (objX5 == composer$Companion$Empty$1) {
                    objX5 = SnapshotStateKt.g(Boolean.FALSE);
                    gapComposerH.q(objX5);
                }
                MutableState mutableState3 = (MutableState) objX5;
                Boolean bool2 = (Boolean) mutableState2.getF10755b();
                bool2.getClass();
                Boolean bool3 = (Boolean) mutableState3.getF10755b();
                bool3.getClass();
                boolean zY2 = gapComposerH.y(function1);
                Object objX6 = gapComposerH.x();
                if (zY2 || objX6 == composer$Companion$Empty$1) {
                    objX6 = new ImmersiveArticleCarouselViewKt$CreateArticleComposable$3$1(function1, mutableState2, mutableState3, null);
                    gapComposerH.q(objX6);
                }
                EffectsKt.g(bool2, bool3, (Function2) objX6, gapComposerH);
                Object objX7 = gapComposerH.x();
                if (objX7 == composer$Companion$Empty$1) {
                    objX7 = new LvExoPlayer(context);
                    gapComposerH.q(objX7);
                }
                LvExoPlayer lvExoPlayer = (LvExoPlayer) objX7;
                DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier("CreateArticleComposable");
                FillElement fillElement = SizeKt.f5052c;
                Modifier modifierO = dTFunctionNameModifier.o(fillElement);
                Alignment.f8582a.getClass();
                MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
                int iHashCode = Long.hashCode(gapComposerH.T);
                PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
                Modifier modifierC2 = ComposedModifierKt.c(gapComposerH, modifierO);
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
                Updater.c(gapComposerH, modifierC2, ComposeUiNode.Companion.d);
                Modifier modifierO2 = modifierE.o(fillElement);
                Object objX8 = gapComposerH.x();
                if (objX8 == composer$Companion$Empty$1) {
                    objX8 = new c30(0, mutableState2);
                    gapComposerH.q(objX8);
                }
                Modifier modifierC3 = GradientKt.c(ModifierExtKt.b(modifierO2, (Function1) objX8));
                ExoPlayer exoPlayer = lvExoPlayer.f50900a;
                String str4 = assetVideoUiModel.f51783c;
                Float fValueOf = Float.valueOf(f2);
                Object objX9 = gapComposerH.x();
                if (objX9 == composer$Companion$Empty$1) {
                    z2 = true;
                    objX9 = new u00(1, mutableState3);
                    gapComposerH.q(objX9);
                } else {
                    z2 = true;
                }
                int i4 = (i3 << 9) & 57344;
                int i5 = (i3 >> 6) & 112;
                boolean z3 = z2;
                LvVideoPlayerKt.b(modifierC3, exoPlayer, str4, null, fValueOf, false, null, null, false, false, false, z, null, false, 0, null, null, null, null, null, (Function0) objX9, gapComposerH, i4, i5, 6, 1046504);
                gapComposer = gapComposerH;
                Modifier modifierG = BoxScopeInstance.f4938a.g(new DTFunctionNameModifier("CreateArticleComposable"), Alignment.Companion.f8590j);
                boolean zBooleanValue = ((Boolean) ((SnapshotMutableStateImpl) lvExoPlayer.f50901b).getF10755b()).booleanValue();
                boolean zY3 = gapComposer.y(lvExoPlayer);
                Object objX10 = gapComposer.x();
                if (zY3 || objX10 == composer$Companion$Empty$1) {
                    objX10 = new gj(lvExoPlayer, 5);
                    gapComposer.q(objX10);
                }
                LVPlayPauseButtonKt.a(0, gapComposer, modifierG, (Function0) objX10, zBooleanValue);
                gapComposer.Z(z3);
                gapComposer.Z(false);
            }
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            final Modifier modifier2 = modifierE;
            recomposeScopeImplB0.d = new Function2(f2, immersiveArticleAssetUiModel, z, function1, i2) { // from class: y20

                /* JADX INFO: renamed from: c, reason: collision with root package name */
                public final /* synthetic */ float f81261c;
                public final /* synthetic */ ImmersiveArticleAssetUiModel d;

                /* JADX INFO: renamed from: e, reason: collision with root package name */
                public final /* synthetic */ boolean f81262e;

                /* JADX INFO: renamed from: f, reason: collision with root package name */
                public final /* synthetic */ Function1 f81263f;

                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    ((Integer) obj2).getClass();
                    int iA = RecomposeScopeImplKt.a(1);
                    ImmersiveArticleCarouselViewKt.a(this.f81260b, this.f81261c, this.d, this.f81262e, this.f81263f, (Composer) obj, iA);
                    return Unit.f71739a;
                }
            };
        }
    }

    public static final void b(Modifier modifier, final CarouselArticleSectionUiModel carouselArticleSectionUiModel, final float f2, final boolean z, Function1 function1, final boolean z2, final boolean z3, final Function0 function0, Composer composer, final int i2) {
        GapComposer gapComposer;
        final Modifier modifier2;
        boolean z4;
        Color color;
        long j2;
        Object immersiveArticleCarouselViewKt$ImmersiveArticleCarousel$3$1$1$1;
        Function1 function2;
        Composer$Companion$Empty$1 composer$Companion$Empty$1;
        Object obj;
        Function0 function3;
        String str;
        boolean z5;
        long j3;
        String str2;
        String str3;
        Modifier modifierE = modifier;
        Function1 function4 = function1;
        List list = carouselArticleSectionUiModel.d;
        if (modifierE != null) {
            modifierE = a.e(modifierE, "ImmersiveArticleCarousel");
        }
        function4.getClass();
        function0.getClass();
        GapComposer gapComposerH = composer.h(597503206);
        Applier applier = gapComposerH.f7976a;
        int i3 = i2 | 6 | (gapComposerH.y(carouselArticleSectionUiModel) ? 32 : 16) | (gapComposerH.c(f2) ? 256 : 128) | (gapComposerH.b(z) ? 2048 : 1024) | (gapComposerH.y(function4) ? 16384 : 8192) | (gapComposerH.b(z2) ? 131072 : 65536) | (gapComposerH.b(z3) ? 1048576 : 524288) | (gapComposerH.y(function0) ? 8388608 : 4194304);
        if (gapComposerH.p(i3 & 1, (i3 & 4793491) != 4793490)) {
            DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier("ImmersiveArticleCarousel");
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Context context = (Context) gapComposerH.k(AndroidCompositionLocals_androidKt.f9936b);
            SectionThemeUiModel sectionThemeUiModel = carouselArticleSectionUiModel.f58632e;
            List list2 = list;
            if (!(list2 instanceof Collection) || !list2.isEmpty()) {
                Iterator it = list2.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        z4 = false;
                        break;
                    } else if (!StringsKt.w(((ImmersiveArticleAssetUiModel) it.next()).f58641c)) {
                        z4 = true;
                        break;
                    }
                }
            } else {
                z4 = false;
                break;
            }
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$2 = Composer.Companion.f7939a;
            if (objX == composer$Companion$Empty$2) {
                objX = SnapshotStateKt.g(Boolean.FALSE);
                gapComposerH.q(objX);
            }
            MutableState mutableState = (MutableState) objX;
            Object objX2 = gapComposerH.x();
            if (objX2 == composer$Companion$Empty$2) {
                objX2 = new ImmersiveArticleCarouselViewKt$ImmersiveArticleCarousel$onShouldSwipe$1$1(mutableState, null);
                gapComposerH.q(objX2);
            }
            Function1 function5 = (Function1) objX2;
            boolean zY = gapComposerH.y(carouselArticleSectionUiModel);
            Object objX3 = gapComposerH.x();
            if (zY || objX3 == composer$Companion$Empty$2) {
                objX3 = new ss(carouselArticleSectionUiModel, 20);
                gapComposerH.q(objX3);
            }
            PagerState pagerStateB = PagerStateKt.b(0, (Function0) objX3, gapComposerH, 0, 3);
            Object objX4 = gapComposerH.x();
            if (objX4 == composer$Companion$Empty$2) {
                objX4 = SnapshotStateKt.g(Boolean.TRUE);
                gapComposerH.q(objX4);
            }
            MutableState mutableState2 = (MutableState) objX4;
            Unit unit = Unit.f71739a;
            boolean zK = gapComposerH.K(pagerStateB) | ((i3 & 29360128) == 8388608);
            Object objX5 = gapComposerH.x();
            if (zK || objX5 == composer$Companion$Empty$2) {
                objX5 = new ImmersiveArticleCarouselViewKt$ImmersiveArticleCarousel$1$1(pagerStateB, function0, null);
                gapComposerH.q(objX5);
            }
            EffectsKt.e(gapComposerH, unit, (Function2) objX5);
            Object objX6 = gapComposerH.x();
            if (objX6 == composer$Companion$Empty$2) {
                objX6 = SnapshotStateKt.g("");
                gapComposerH.q(objX6);
            }
            MutableState mutableState3 = (MutableState) objX6;
            boolean zK2 = gapComposerH.K(pagerStateB) | gapComposerH.y(carouselArticleSectionUiModel);
            Object objX7 = gapComposerH.x();
            if (zK2 || objX7 == composer$Companion$Empty$2) {
                color = null;
                objX7 = new ImmersiveArticleCarouselViewKt$ImmersiveArticleCarousel$2$1(pagerStateB, carouselArticleSectionUiModel, mutableState3, null);
                gapComposerH.q(objX7);
            } else {
                color = null;
            }
            EffectsKt.e(gapComposerH, pagerStateB, (Function2) objX7);
            Color colorA = (sectionThemeUiModel == null || (str3 = sectionThemeUiModel.f58825a) == null) ? color : com.vuitton.android.presentation.compose.StringExtKt.a(str3);
            if (colorA == null) {
                gapComposerH.L(-1324989225);
                j2 = LVAppDesignKitTheme.c(gapComposerH).f48361b.f48374a;
                gapComposerH.Z(false);
            } else {
                gapComposerH.L(-1324992201);
                gapComposerH.Z(false);
                j2 = colorA.f8872a;
            }
            Modifier modifierB = BackgroundKt.b(dTFunctionNameModifier, j2, RectangleShapeKt.f8913a);
            Arrangement$Top$1 arrangement$Top$1 = Arrangement.f4920c;
            Alignment.f8582a.getClass();
            ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(arrangement$Top$1, Alignment.Companion.n, gapComposerH, 0);
            OpaqueKey opaqueKey2 = ComposerKt.f7940a;
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierB);
            ComposeUiNode.b0.getClass();
            Function0 function6 = ComposeUiNode.Companion.f9641b;
            if (applier == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function6);
            } else {
                gapComposerH.o();
            }
            Function2 function7 = ComposeUiNode.Companion.f9644f;
            Updater.c(gapComposerH, columnMeasurePolicyA, function7);
            Function2 function8 = ComposeUiNode.Companion.f9643e;
            Updater.c(gapComposerH, persistentCompositionLocalMapU, function8);
            Integer numValueOf = Integer.valueOf(iHashCode);
            Function2 function9 = ComposeUiNode.Companion.g;
            Updater.c(gapComposerH, numValueOf, function9);
            Function1 function10 = ComposeUiNode.Companion.f9645h;
            Updater.b(gapComposerH, function10);
            Function2 function11 = ComposeUiNode.Companion.d;
            Updater.c(gapComposerH, modifierC, function11);
            DTFunctionNameModifier dTFunctionNameModifier2 = new DTFunctionNameModifier("ImmersiveArticleCarousel");
            BiasAlignment biasAlignment = Alignment.Companion.f8584b;
            MeasurePolicy measurePolicyD = BoxKt.d(biasAlignment, false);
            int iHashCode2 = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU2 = gapComposerH.U();
            Modifier modifierC2 = ComposedModifierKt.c(gapComposerH, dTFunctionNameModifier2);
            if (applier == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function6);
            } else {
                gapComposerH.o();
            }
            Updater.c(gapComposerH, measurePolicyD, function7);
            Updater.c(gapComposerH, persistentCompositionLocalMapU2, function8);
            cj.t(iHashCode2, gapComposerH, function9, gapComposerH, function10);
            Updater.c(gapComposerH, modifierC2, function11);
            Boolean boolValueOf = Boolean.valueOf(z2);
            Boolean bool = (Boolean) mutableState.getF10755b();
            bool.getClass();
            boolean zK3 = ((i3 & ImageMetadata.JPEG_GPS_COORDINATES) == 131072) | gapComposerH.K(pagerStateB) | gapComposerH.y(carouselArticleSectionUiModel);
            Object objX8 = gapComposerH.x();
            if (zK3 || objX8 == composer$Companion$Empty$2) {
                function2 = function10;
                composer$Companion$Empty$1 = composer$Companion$Empty$2;
                obj = null;
                immersiveArticleCarouselViewKt$ImmersiveArticleCarousel$3$1$1$1 = new ImmersiveArticleCarouselViewKt$ImmersiveArticleCarousel$3$1$1$1(z2, pagerStateB, carouselArticleSectionUiModel, mutableState, null);
                gapComposerH.q(immersiveArticleCarouselViewKt$ImmersiveArticleCarousel$3$1$1$1);
            } else {
                function2 = function10;
                composer$Companion$Empty$1 = composer$Companion$Empty$2;
                immersiveArticleCarouselViewKt$ImmersiveArticleCarousel$3$1$1$1 = objX8;
                obj = null;
            }
            EffectsKt.g(boolValueOf, bool, (Function2) immersiveArticleCarouselViewKt$ImmersiveArticleCarousel$3$1$1$1, gapComposerH);
            boolean z6 = (i3 & 57344) == 16384;
            Object objX9 = gapComposerH.x();
            if (z6 || objX9 == composer$Companion$Empty$1) {
                function4 = function1;
                objX9 = new x3(function4, mutableState2, 10);
                gapComposerH.q(objX9);
            } else {
                function4 = function1;
            }
            gapComposer = gapComposerH;
            LVZoomableContentComponentKt.a(null, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, (Function1) objX9, true, ComposableLambdaKt.b(143293573, new z20(f2, pagerStateB, z3, mutableState2, context, carouselArticleSectionUiModel, z, function5, mutableState3), gapComposerH), gapComposer, 221184, 7);
            if (list.size() <= 1 || ((Boolean) mutableState2.getF10755b()).booleanValue()) {
                function3 = function6;
                str = "ImmersiveArticleCarousel";
                gapComposer.L(-2134787840);
                gapComposer.Z(false);
            } else {
                str = "ImmersiveArticleCarousel";
                DTFunctionNameModifier dTFunctionNameModifierI = n00.i(gapComposer, -2135763255, str);
                BiasAlignment biasAlignment2 = Alignment.Companion.f8589i;
                BoxScopeInstance boxScopeInstance = BoxScopeInstance.f4938a;
                function3 = function6;
                LVCapsulePageControlKt.a(PaddingKt.l(boxScopeInstance.g(dTFunctionNameModifierI, biasAlignment2), LVAppDesignKitTheme.d(gapComposer).f48383a, LVAppDesignKitTheme.d(gapComposer).f48383a, LVAppDesignKitTheme.d(gapComposer).f48383a, LVAppDesignKitTheme.l(gapComposer).f48415c), pagerStateB, LVColorScheme.INVERT, false, gapComposer, KyberEngine.KyberPolyBytes, 8);
                ShowOnDragPageNumberIndicatorKt.a(boxScopeInstance.g(PaddingKt.i(ModifierExtKt.a(new DTFunctionNameModifier(str), null, null, 7), LVAppDesignKitTheme.l(gapComposer).f48416e), Alignment.Companion.d), pagerStateB, z2, gapComposer, (i3 >> 9) & 896, 0);
                gapComposer = gapComposer;
                gapComposer.Z(false);
            }
            gapComposer.Z(true);
            if (z4) {
                Modifier modifierI = PaddingKt.i(ColumnScopeInstance.f4944a.b(n00.i(gapComposer, -316924087, str), Alignment.Companion.o), LVAppDesignKitTheme.l(gapComposer).f48416e);
                MeasurePolicy measurePolicyD2 = BoxKt.d(biasAlignment, false);
                int iHashCode3 = Long.hashCode(gapComposer.T);
                PersistentCompositionLocalMap persistentCompositionLocalMapU3 = gapComposer.U();
                Modifier modifierC3 = ComposedModifierKt.c(gapComposer, modifierI);
                if (applier == null) {
                    ComposablesKt.b();
                    throw null;
                }
                gapComposer.B();
                if (gapComposer.S) {
                    gapComposer.C(function3);
                } else {
                    gapComposer.o();
                }
                Updater.c(gapComposer, measurePolicyD2, function7);
                Updater.c(gapComposer, persistentCompositionLocalMapU3, function8);
                cj.t(iHashCode3, gapComposer, function9, gapComposer, function2);
                Updater.c(gapComposer, modifierC3, function11);
                if (((Boolean) mutableState2.getF10755b()).booleanValue()) {
                    z5 = false;
                    gapComposer.L(465923077);
                    gapComposer.Z(false);
                } else {
                    Modifier modifierA = ModifierExtKt.a(n00.i(gapComposer, 465551573, str), null, null, 7);
                    String str4 = (String) mutableState3.getF10755b();
                    TextStyle textStyle = LVAppDesignKitTheme.n(gapComposer).g;
                    Color colorA2 = (sectionThemeUiModel == 0 || (str2 = sectionThemeUiModel.f58826b) == null) ? null : com.vuitton.android.presentation.compose.StringExtKt.a(str2);
                    if (colorA2 == null) {
                        gapComposer.L(430670027);
                        j3 = LVAppDesignKitTheme.c(gapComposer).f48361b.f48382k;
                        z5 = false;
                        gapComposer.Z(false);
                    } else {
                        z5 = false;
                        gapComposer.L(430666989);
                        gapComposer.Z(false);
                        j3 = colorA2.f8872a;
                    }
                    TextKt.c(str4, modifierA, j3, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, textStyle, gapComposer, 0, 0, 131064);
                    gapComposer.Z(z5);
                }
                gapComposer.Z(true);
                gapComposer.Z(z5);
            } else {
                gapComposer.L(-316281178);
                gapComposer.Z(false);
            }
            gapComposer.Z(true);
            modifier2 = dTFunctionNameModifier;
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
            modifier2 = modifierE;
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            final Function1 function12 = function4;
            recomposeScopeImplB0.d = new Function2(carouselArticleSectionUiModel, f2, z, function12, z2, z3, function0, i2) { // from class: a30

                /* JADX INFO: renamed from: c, reason: collision with root package name */
                public final /* synthetic */ CarouselArticleSectionUiModel f383c;
                public final /* synthetic */ float d;

                /* JADX INFO: renamed from: e, reason: collision with root package name */
                public final /* synthetic */ boolean f384e;

                /* JADX INFO: renamed from: f, reason: collision with root package name */
                public final /* synthetic */ Function1 f385f;
                public final /* synthetic */ boolean g;

                /* JADX INFO: renamed from: h, reason: collision with root package name */
                public final /* synthetic */ boolean f386h;

                /* JADX INFO: renamed from: i, reason: collision with root package name */
                public final /* synthetic */ Function0 f387i;

                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj2, Object obj3) {
                    ((Integer) obj3).getClass();
                    int iA = RecomposeScopeImplKt.a(1);
                    ImmersiveArticleCarouselViewKt.b(this.f382b, this.f383c, this.d, this.f384e, this.f385f, this.g, this.f386h, this.f387i, (Composer) obj2, iA);
                    return Unit.f71739a;
                }
            };
        }
    }
}
