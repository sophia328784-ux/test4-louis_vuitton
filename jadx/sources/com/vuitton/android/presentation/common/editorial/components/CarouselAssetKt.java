package com.vuitton.android.presentation.common.editorial.components;

import android.content.Context;
import androidx.compose.foundation.layout.AspectRatioKt;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScopeInstance;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.ClipKt;
import androidx.compose.ui.graphics.Shape;
import androidx.compose.ui.layout.ContentScale;
import androidx.compose.ui.layout.ContentScale$Companion$Crop$1;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.media3.exoplayer.ExoPlayer;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.google.ar.core.ImageMetadata;
import com.vuitton.android.designkit.components.ModifierExtKt;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.platform.extensions.StringExtKt;
import com.vuitton.android.presentation.common.editorial.components.CarouselAssetKt;
import com.vuitton.android.presentation.compose.LVPlayPauseButtonKt;
import com.vuitton.android.presentation.compose.LvExoPlayer;
import com.vuitton.android.presentation.compose.LvVideoPlayerKt;
import com.vuitton.android.presentation.imageloading.compose.ImageLoaderKt;
import com.vuitton.android.presentation.model.common.AssetImageUiModel;
import com.vuitton.android.presentation.model.common.AssetUiModel;
import com.vuitton.android.presentation.model.common.AssetVideoUiModel;
import defpackage.a;
import defpackage.gj;
import defpackage.t;
import defpackage.y2;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class CarouselAssetKt {
    public static final void a(Modifier modifier, AssetUiModel assetUiModel, final float f2, final Shape shape, final boolean z, final Function0 function0, Composer composer, final int i2, final int i3) {
        int i4;
        GapComposer gapComposer;
        String str;
        String str2;
        boolean z2;
        Modifier dTFunctionNameModifier = modifier;
        final AssetUiModel assetUiModel2 = assetUiModel;
        if (dTFunctionNameModifier != null) {
            dTFunctionNameModifier = a.e(dTFunctionNameModifier, "CarouselAsset");
        }
        assetUiModel2.getClass();
        AssetVideoUiModel assetVideoUiModel = assetUiModel2.f51781c;
        shape.getClass();
        function0.getClass();
        GapComposer gapComposerH = composer.h(-1877711158);
        int i5 = i3 & 1;
        if (i5 != 0) {
            i4 = i2 | 6;
        } else if ((i2 & 6) == 0) {
            i4 = (gapComposerH.K(dTFunctionNameModifier) ? 4 : 2) | i2;
        } else {
            i4 = i2;
        }
        if ((i2 & 48) == 0) {
            i4 |= gapComposerH.y(assetUiModel2) ? 32 : 16;
        }
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i4 |= gapComposerH.c(f2) ? 256 : 128;
        }
        if ((i2 & 3072) == 0) {
            i4 |= gapComposerH.K(shape) ? 2048 : 1024;
        }
        if ((i2 & 24576) == 0) {
            i4 |= gapComposerH.b(z) ? 16384 : 8192;
        }
        if ((196608 & i2) == 0) {
            i4 |= gapComposerH.y(function0) ? 131072 : 65536;
        }
        if (gapComposerH.p(i4 & 1, (74899 & i4) != 74898)) {
            if (i5 != 0) {
                dTFunctionNameModifier = new DTFunctionNameModifier("CarouselAsset");
            }
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Context context = (Context) gapComposerH.k(AndroidCompositionLocals_androidKt.f9936b);
            if (assetVideoUiModel == null || (str2 = assetVideoUiModel.f51783c) == null || !StringExtKt.a(str2)) {
                gapComposer = gapComposerH;
                gapComposer.L(-1237271982);
                Modifier modifierA = ClipKt.a(AspectRatioKt.a(dTFunctionNameModifier, f2, false), shape);
                assetUiModel2 = assetUiModel;
                AssetImageUiModel assetImageUiModel = assetUiModel2.f51780b;
                String str3 = (assetImageUiModel == null || (str = assetImageUiModel.f51778b) == null) ? null : str;
                ContentScale.f9447a.getClass();
                ImageLoaderKt.b(modifierA, str3, ContentScale.Companion.f9449b, null, null, 0, false, null, null, null, gapComposer, 3456, 2032);
                gapComposer.Z(false);
            } else {
                gapComposerH.L(-1238722782);
                Alignment.f8582a.getClass();
                MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
                int i6 = i4;
                int iHashCode = Long.hashCode(gapComposerH.T);
                PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
                Modifier modifierC = ComposedModifierKt.c(gapComposerH, dTFunctionNameModifier);
                ComposeUiNode.b0.getClass();
                Function0 function1 = ComposeUiNode.Companion.f9641b;
                if (gapComposerH.f7976a == null) {
                    ComposablesKt.b();
                    throw null;
                }
                gapComposerH.B();
                if (gapComposerH.S) {
                    gapComposerH.C(function1);
                } else {
                    gapComposerH.o();
                }
                Updater.c(gapComposerH, measurePolicyD, ComposeUiNode.Companion.f9644f);
                Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
                Updater.c(gapComposerH, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
                Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
                Updater.c(gapComposerH, modifierC, ComposeUiNode.Companion.d);
                Object objX = gapComposerH.x();
                Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
                if (objX == composer$Companion$Empty$1) {
                    objX = new LvExoPlayer(context);
                    gapComposerH.q(objX);
                }
                LvExoPlayer lvExoPlayer = (LvExoPlayer) objX;
                int i7 = (i6 >> 9) & 112;
                Modifier modifierB = ModifierExtKt.b(ClipKt.a(AspectRatioKt.a(new DTFunctionNameModifier("CarouselAsset"), f2, false), shape), z, new t(26), gapComposerH, i7);
                ExoPlayer exoPlayer = lvExoPlayer.f50900a;
                String str4 = assetVideoUiModel.f51783c;
                String str5 = assetVideoUiModel.d;
                ContentScale.f9447a.getClass();
                ContentScale$Companion$Crop$1 contentScale$Companion$Crop$1 = ContentScale.Companion.f9449b;
                boolean z3 = (i6 & ImageMetadata.JPEG_GPS_COORDINATES) == 131072;
                Object objX2 = gapComposerH.x();
                if (z3 || objX2 == composer$Companion$Empty$1) {
                    objX2 = new y2(function0, 7);
                    gapComposerH.q(objX2);
                }
                LvVideoPlayerKt.b(modifierB, exoPlayer, str4, null, null, true, str5, contentScale$Companion$Crop$1, false, false, false, z, null, false, 4, null, null, null, (Function1) objX2, null, null, gapComposerH, 12779520, i7 | 24576, 0, 1816344);
                gapComposer = gapComposerH;
                if (z) {
                    gapComposer.L(-1483013557);
                    Modifier modifierI = PaddingKt.i(BoxScopeInstance.f4938a.g(dTFunctionNameModifier, Alignment.Companion.f8590j), LVAppDesignKitTheme.l(gapComposer).f48415c);
                    boolean zBooleanValue = ((Boolean) ((SnapshotMutableStateImpl) lvExoPlayer.f50901b).getF10755b()).booleanValue();
                    boolean zY = gapComposer.y(lvExoPlayer);
                    Object objX3 = gapComposer.x();
                    if (zY || objX3 == composer$Companion$Empty$1) {
                        z2 = false;
                        objX3 = new gj(lvExoPlayer, 0);
                        gapComposer.q(objX3);
                    } else {
                        z2 = false;
                    }
                    LVPlayPauseButtonKt.a(z2 ? 1 : 0, gapComposer, modifierI, (Function0) objX3, zBooleanValue);
                    gapComposer.Z(z2);
                } else {
                    z2 = false;
                    gapComposer.L(-1482448489);
                    gapComposer.Z(false);
                }
                gapComposer.Z(true);
                gapComposer.Z(z2);
                assetUiModel2 = assetUiModel;
            }
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
        }
        final Modifier modifier2 = dTFunctionNameModifier;
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new Function2() { // from class: hj
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    ((Integer) obj2).getClass();
                    CarouselAssetKt.a(modifier2, assetUiModel2, f2, shape, z, function0, (Composer) obj, RecomposeScopeImplKt.a(i2 | 1), i3);
                    return Unit.f71739a;
                }
            };
        }
    }
}
