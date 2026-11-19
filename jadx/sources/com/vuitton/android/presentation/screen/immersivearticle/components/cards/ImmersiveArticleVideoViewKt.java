package com.vuitton.android.presentation.screen.immersivearticle.components.cards;

import android.content.Context;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScopeInstance;
import androidx.compose.foundation.layout.SizeKt;
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
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.ClipKt;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.media3.exoplayer.ExoPlayer;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.google.ar.core.ImageMetadata;
import com.vuitton.android.designkit.ui.theme.GradientKt;
import com.vuitton.android.platform.extensions.StringExtKt;
import com.vuitton.android.presentation.compose.LVPlayPauseButtonKt;
import com.vuitton.android.presentation.compose.LvExoPlayer;
import com.vuitton.android.presentation.compose.LvVideoPlayerKt;
import com.vuitton.android.presentation.model.common.AssetUiModel;
import com.vuitton.android.presentation.model.common.AssetVideoUiModel;
import com.vuitton.android.presentation.screen.immersivearticle.ImmersiveArticleHelper;
import com.vuitton.android.presentation.screen.immersivearticle.models.ImmersiveArticleSizeCardUiModel;
import com.vuitton.android.presentation.screen.immersivearticle.models.VideoArticleSectionUiModel;
import defpackage.a;
import defpackage.gj;
import defpackage.rg;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class ImmersiveArticleVideoViewKt {
    public static final void a(Modifier modifier, VideoArticleSectionUiModel videoArticleSectionUiModel, boolean z, Composer composer, int i2) {
        GapComposer gapComposer;
        boolean z2;
        boolean z3;
        Modifier modifierE = modifier;
        AssetUiModel assetUiModel = videoArticleSectionUiModel.f58840c;
        if (modifierE != null) {
            modifierE = a.e(modifierE, "ImmersiveArticleVideoView");
        }
        GapComposer gapComposerH = composer.h(1913923909);
        int i3 = i2 | (gapComposerH.K(modifierE) ? 4 : 2) | (gapComposerH.y(videoArticleSectionUiModel) ? 32 : 16) | (gapComposerH.b(z) ? 256 : 128);
        if (gapComposerH.p(i3 & 1, (i3 & 147) != 146)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Context context = (Context) gapComposerH.k(AndroidCompositionLocals_androidKt.f9936b);
            Alignment.f8582a.getClass();
            MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8589i, false);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierE);
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
            AssetVideoUiModel assetVideoUiModel = assetUiModel != null ? assetUiModel.f51781c : null;
            if (assetVideoUiModel == null) {
                gapComposerH.L(1951606516);
                gapComposerH.Z(false);
                gapComposer = gapComposerH;
                z3 = true;
            } else {
                gapComposerH.L(1951606517);
                if (StringExtKt.a(assetVideoUiModel.f51783c)) {
                    gapComposerH.L(-1209897797);
                    Object objX = gapComposerH.x();
                    Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
                    if (objX == composer$Companion$Empty$1) {
                        objX = new LvExoPlayer(context);
                        gapComposerH.q(objX);
                    }
                    LvExoPlayer lvExoPlayer = (LvExoPlayer) objX;
                    Modifier modifierC2 = GradientKt.c(ClipKt.b(SizeKt.d(new DTFunctionNameModifier("ImmersiveArticleVideoView"), 1.0f)));
                    ExoPlayer exoPlayer = lvExoPlayer.f50900a;
                    AssetVideoUiModel assetVideoUiModel2 = assetUiModel.f51781c;
                    String str = assetVideoUiModel2.f51783c;
                    String str2 = assetVideoUiModel2.f51784e;
                    ImmersiveArticleSizeCardUiModel immersiveArticleSizeCardUiModel = videoArticleSectionUiModel.f58839b;
                    LvVideoPlayerKt.b(modifierC2, exoPlayer, str, str2, immersiveArticleSizeCardUiModel != ImmersiveArticleSizeCardUiModel.FULLSCREEN ? Float.valueOf(ImmersiveArticleHelper.a(immersiveArticleSizeCardUiModel)) : null, true, null, null, false, false, false, z, null, false, 4, null, null, null, null, null, null, gapComposerH, ImageMetadata.EDGE_MODE, ((i3 >> 3) & 112) | 24576, 0, 2078656);
                    gapComposer = gapComposerH;
                    Modifier modifierG = BoxScopeInstance.f4938a.g(new DTFunctionNameModifier("ImmersiveArticleVideoView"), Alignment.Companion.f8590j);
                    boolean zBooleanValue = ((Boolean) ((SnapshotMutableStateImpl) lvExoPlayer.f50901b).getF10755b()).booleanValue();
                    boolean zY = gapComposer.y(lvExoPlayer);
                    Object objX2 = gapComposer.x();
                    if (zY || objX2 == composer$Companion$Empty$1) {
                        objX2 = new gj(lvExoPlayer, 10);
                        gapComposer.q(objX2);
                    }
                    z2 = false;
                    LVPlayPauseButtonKt.a(0, gapComposer, modifierG, (Function0) objX2, zBooleanValue);
                    gapComposer.Z(false);
                } else {
                    gapComposer = gapComposerH;
                    z2 = false;
                    gapComposer.L(-1208532216);
                    gapComposer.Z(false);
                }
                gapComposer.Z(z2);
                z3 = true;
            }
            gapComposer.Z(z3);
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new rg(modifierE, videoArticleSectionUiModel, z, i2, 4);
        }
    }
}
