package com.vuitton.android.presentation.screen.story.components;

import android.content.Context;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScopeInstance;
import androidx.compose.foundation.layout.SizeKt;
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
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.StaticProvidableCompositionLocal;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.ClipKt;
import androidx.compose.ui.graphics.LinearGradient;
import androidx.compose.ui.layout.ContentScale;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.media3.exoplayer.ExoPlayer;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.designkit.ui.theme.GradientKt;
import com.vuitton.android.platform.extensions.StringExtKt;
import com.vuitton.android.presentation.compose.LvExoPlayer;
import com.vuitton.android.presentation.compose.LvVideoPlayerKt;
import com.vuitton.android.presentation.extensions.ContextExtKt;
import com.vuitton.android.presentation.imageloading.compose.ImageLoaderKt;
import com.vuitton.android.presentation.model.common.AssetImageUiModel;
import com.vuitton.android.presentation.model.common.AssetVideoUiModel;
import com.vuitton.android.presentation.screen.story.components.StorySlideComposableKt;
import com.vuitton.android.presentation.screen.story.models.StoryAssetUiModel;
import com.vuitton.android.presentation.screen.story.models.StorySlideUiModel;
import com.vuitton.android.presentation.utils.ImageConfiguration;
import com.vuitton.android.presentation.utils.UrlFactory;
import defpackage.v11;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002¨\u0006\u0005²\u0006\u000e\u0010\u0001\u001a\u00020\u00008\n@\nX\u008a\u008e\u0002²\u0006\u000e\u0010\u0002\u001a\u00020\u00008\n@\nX\u008a\u008e\u0002²\u0006\f\u0010\u0004\u001a\u00020\u00038\nX\u008a\u0084\u0002"}, d2 = {"", "shouldRestartFromBeginning", "isPlayerReady", "", "storyPosition", "presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class StorySlideComposableKt {
    public static final void a(Modifier modifier, final int i2, final boolean z, final int i3, final StorySlideUiModel storySlideUiModel, final boolean z2, final Function1 function1, final Function1 function2, Composer composer, final int i4) {
        int i5;
        GapComposer gapComposer;
        LvExoPlayer lvExoPlayer;
        Function1 function3;
        StoryAssetUiModel storyAssetUiModel;
        MutableState mutableState;
        MutableState mutableState2;
        int i6;
        boolean z3;
        AssetVideoUiModel assetVideoUiModel;
        String str;
        AssetImageUiModel assetImageUiModel;
        String str2;
        Object storySlideComposableKt$StorySlideComposable$1$1;
        AssetVideoUiModel assetVideoUiModel2;
        Modifier modifierE = modifier;
        String str3 = "StorySlideComposable";
        if (modifierE != null) {
            modifierE = defpackage.a.e(modifierE, "StorySlideComposable");
        }
        storySlideUiModel.getClass();
        function1.getClass();
        function2.getClass();
        GapComposer gapComposerH = composer.h(1059189102);
        if ((i4 & 6) == 0) {
            i5 = (gapComposerH.K(modifierE) ? 4 : 2) | i4;
        } else {
            i5 = i4;
        }
        if ((i4 & 48) == 0) {
            i5 |= gapComposerH.d(i2) ? 32 : 16;
        }
        if ((i4 & KyberEngine.KyberPolyBytes) == 0) {
            i5 |= gapComposerH.b(z) ? 256 : 128;
        }
        if ((i4 & 3072) == 0) {
            i5 |= gapComposerH.d(i3) ? 2048 : 1024;
        }
        if ((i4 & 24576) == 0) {
            i5 |= gapComposerH.y(storySlideUiModel) ? 16384 : 8192;
        }
        if ((196608 & i4) == 0) {
            i5 |= gapComposerH.b(z2) ? 131072 : 65536;
        }
        if ((1572864 & i4) == 0) {
            i5 |= gapComposerH.y(function1) ? 1048576 : 524288;
        }
        if ((12582912 & i4) == 0) {
            i5 |= gapComposerH.y(function2) ? 8388608 : 4194304;
        }
        if (gapComposerH.p(i5 & 1, (4793491 & i5) != 4793490)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            StaticProvidableCompositionLocal staticProvidableCompositionLocal = AndroidCompositionLocals_androidKt.f9936b;
            Context context = (Context) gapComposerH.k(staticProvidableCompositionLocal);
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (objX == composer$Companion$Empty$1) {
                objX = SnapshotStateKt.g(Boolean.FALSE);
                gapComposerH.q(objX);
            }
            MutableState mutableState3 = (MutableState) objX;
            Object objX2 = gapComposerH.x();
            if (objX2 == composer$Companion$Empty$1) {
                objX2 = SnapshotStateKt.g(Boolean.FALSE);
                gapComposerH.q(objX2);
            }
            MutableState mutableState4 = (MutableState) objX2;
            StoryAssetUiModel storyAssetUiModel2 = storySlideUiModel.f65171e;
            if (((storyAssetUiModel2 == null || (assetVideoUiModel2 = storyAssetUiModel2.f65163b) == null) ? null : assetVideoUiModel2.f51783c) == null) {
                gapComposerH.L(-821686464);
                gapComposerH.Z(false);
                lvExoPlayer = null;
            } else {
                gapComposerH.L(-821686463);
                Object objX3 = gapComposerH.x();
                if (objX3 == composer$Companion$Empty$1) {
                    objX3 = new LvExoPlayer(context);
                    gapComposerH.q(objX3);
                }
                gapComposerH.Z(false);
                lvExoPlayer = (LvExoPlayer) objX3;
            }
            if (i2 == i3) {
                gapComposerH.L(-821584566);
                Boolean bool = (Boolean) mutableState4.getF10755b();
                bool.getClass();
                i6 = i5;
                boolean zY = gapComposerH.y(storySlideUiModel) | ((i6 & 29360128) == 8388608);
                Object objX4 = gapComposerH.x();
                if (zY || objX4 == composer$Companion$Empty$1) {
                    storyAssetUiModel = storyAssetUiModel2;
                    mutableState = mutableState4;
                    mutableState2 = mutableState3;
                    storySlideComposableKt$StorySlideComposable$1$1 = new StorySlideComposableKt$StorySlideComposable$1$1(storySlideUiModel, function2, mutableState2, mutableState, null);
                    function3 = function2;
                    gapComposerH.q(storySlideComposableKt$StorySlideComposable$1$1);
                } else {
                    storySlideComposableKt$StorySlideComposable$1$1 = objX4;
                    storyAssetUiModel = storyAssetUiModel2;
                    mutableState = mutableState4;
                    function3 = function2;
                    mutableState2 = mutableState3;
                }
                EffectsKt.g(storyAssetUiModel, bool, (Function2) storySlideComposableKt$StorySlideComposable$1$1, gapComposerH);
                gapComposerH.Z(false);
            } else {
                function3 = function2;
                composer$Companion$Empty$1 = composer$Companion$Empty$1;
                storyAssetUiModel = storyAssetUiModel2;
                lvExoPlayer = lvExoPlayer;
                mutableState = mutableState4;
                mutableState2 = mutableState3;
                i6 = i5;
                gapComposerH.L(-820990668);
                gapComposerH.Z(false);
            }
            Boolean boolValueOf = Boolean.valueOf(z);
            boolean z4 = (i6 & 896) == 256;
            Object objX5 = gapComposerH.x();
            if (z4 || objX5 == composer$Companion$Empty$1) {
                objX5 = new StorySlideComposableKt$StorySlideComposable$2$1(z, mutableState2, null);
                gapComposerH.q(objX5);
            }
            EffectsKt.e(gapComposerH, boolValueOf, (Function2) objX5);
            Modifier modifierB = ClipKt.b(new DTFunctionNameModifier("StorySlideComposable").o(SizeKt.f5052c));
            Alignment.f8582a.getClass();
            MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierB);
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
            if (storyAssetUiModel == null || (assetImageUiModel = storyAssetUiModel.f65162a) == null || (str2 = assetImageUiModel.f51778b) == null || !StringExtKt.a(str2)) {
                gapComposer = gapComposerH;
                if (storyAssetUiModel == null || (assetVideoUiModel = storyAssetUiModel.f65163b) == null || (str = assetVideoUiModel.f51783c) == null) {
                    z3 = true;
                } else if (!StringExtKt.a(str) || lvExoPlayer == null) {
                    z3 = true;
                } else {
                    gapComposer.L(-886125364);
                    LinearGradient linearGradient = GradientKt.f48342a;
                    modifierE.getClass();
                    Modifier modifierA = GradientKt.a(modifierE, GradientKt.f48345e);
                    ExoPlayer exoPlayer = lvExoPlayer.f50900a;
                    String str4 = assetVideoUiModel.f51783c;
                    String str5 = assetVideoUiModel.d;
                    Boolean boolValueOf2 = Boolean.valueOf(i2 == i3 && !z);
                    Object objX6 = gapComposer.x();
                    if (objX6 == composer$Companion$Empty$1) {
                        objX6 = new v11(2, mutableState);
                        gapComposer.q(objX6);
                    }
                    i6 = i6;
                    z3 = true;
                    modifierE = modifierE;
                    str3 = "StorySlideComposable";
                    LvVideoPlayerKt.b(modifierA, exoPlayer, str4, null, null, true, str5, null, false, true, false, z, boolValueOf2, false, 4, null, null, null, null, (Function0) objX6, null, gapComposer, 906166272, ((i6 >> 3) & 112) | 805330950, 0, 1548440);
                    gapComposer = gapComposer;
                    gapComposer.Z(false);
                }
                gapComposer.L(-885475852);
                gapComposer.Z(false);
            } else {
                gapComposerH.L(-886878633);
                LinearGradient linearGradient2 = GradientKt.f48342a;
                modifierE.getClass();
                Modifier modifierA2 = GradientKt.a(modifierE, GradientKt.f48345e);
                String strB = new UrlFactory(ContextExtKt.f((Context) gapComposerH.k(staticProvidableCompositionLocal))).b(assetImageUiModel.f51778b, new ImageConfiguration.Background.Opaque(null, 1, null));
                strB.getClass();
                ContentScale.f9447a.getClass();
                ImageLoaderKt.b(modifierA2, strB, ContentScale.Companion.f9449b, null, null, 0, false, null, null, null, gapComposerH, KyberEngine.KyberPolyBytes, 2040);
                if (i2 == i3) {
                    function3.invoke(15000L);
                }
                gapComposerH.Z(false);
                modifierE = modifierE;
                gapComposer = gapComposerH;
                str3 = "StorySlideComposable";
                i6 = i6;
                z3 = true;
            }
            StoryFooterKt.a(BoxScopeInstance.f4938a.g(new DTFunctionNameModifier(str3), Alignment.Companion.f8589i), storySlideUiModel, z2, function1, gapComposer, (i6 >> 9) & 8176);
            gapComposer.Z(z3);
        } else {
            modifierE = modifierE;
            gapComposer = gapComposerH;
            gapComposer.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            final Modifier modifier2 = modifierE;
            recomposeScopeImplB0.d = new Function2() { // from class: z11
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    ((Integer) obj2).getClass();
                    StorySlideComposableKt.a(modifier2, i2, z, i3, storySlideUiModel, z2, function1, function2, (Composer) obj, RecomposeScopeImplKt.a(i4 | 1));
                    return Unit.f71739a;
                }
            };
        }
    }
}
