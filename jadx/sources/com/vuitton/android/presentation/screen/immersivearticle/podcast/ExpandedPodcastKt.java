package com.vuitton.android.presentation.screen.immersivearticle.podcast;

import android.content.Context;
import androidx.compose.animation.AnimatedVisibilityScope;
import androidx.compose.animation.ScaleToBoundsImpl;
import androidx.compose.animation.SharedTransitionScope;
import androidx.compose.foundation.BasicMarqueeKt;
import androidx.compose.foundation.FocusableKt;
import androidx.compose.foundation.gestures.DragGestureDetectorKt;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.Arrangement$Center$1;
import androidx.compose.foundation.layout.AspectRatioKt;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowMeasurePolicy;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.material3.RippleKt;
import androidx.compose.material3.TextKt;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.CompositionLocalKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.BiasAlignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.ClipKt;
import androidx.compose.ui.input.pointer.PointerInputEventHandler;
import androidx.compose.ui.input.pointer.PointerInputScope;
import androidx.compose.ui.input.pointer.SuspendingPointerInputFilterKt;
import androidx.compose.ui.layout.ContentScale;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.style.TextAlign;
import androidx.compose.ui.unit.Dp;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.designkit.components.ModifierExtKt;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.presentation.imageloading.compose.ImageLoaderKt;
import com.vuitton.android.presentation.screen.audioplayer.model.AudioPlayerControllerUiState;
import com.vuitton.android.presentation.screen.audioplayer.model.AudioPlayerItemUiModel;
import com.vuitton.android.presentation.screen.immersivearticle.podcast.components.PodcastDraggableIndicatorKt;
import com.vuitton.android.presentation.screen.immersivearticle.podcast.components.PodcastPlayerKt;
import com.vuitton.foundation.model.domain.model.common.AssetImage;
import defpackage.cj;
import defpackage.f3;
import defpackage.iv;
import defpackage.j3;
import defpackage.n00;
import defpackage.tr;
import defpackage.v9;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import net.rtccloud.sdk.Call;
import org.bouncycastle.asn1.cmp.PKIFailureInfo;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class ExpandedPodcastKt {
    public static final void a(Modifier modifier, AudioPlayerControllerUiState audioPlayerControllerUiState, AudioPlayerItemUiModel audioPlayerItemUiModel, AnimatedVisibilityScope animatedVisibilityScope, final SharedTransitionScope sharedTransitionScope, Function1 function1, Function1 function2, Function0 function0, Function0 function3, Function0 function4, final Function1 function5, Composer composer, int i2) {
        int i3;
        AudioPlayerControllerUiState audioPlayerControllerUiState2;
        AudioPlayerItemUiModel audioPlayerItemUiModel2;
        AnimatedVisibilityScope animatedVisibilityScope2;
        Function1 function6;
        Function1 function7;
        Function0 function8;
        Function0 function9;
        Function0 function10;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = defpackage.a.e(modifierE, "ExpandedPodcast");
        }
        final Modifier modifier2 = modifierE;
        audioPlayerControllerUiState.getClass();
        audioPlayerItemUiModel.getClass();
        animatedVisibilityScope.getClass();
        sharedTransitionScope.getClass();
        function1.getClass();
        function2.getClass();
        function0.getClass();
        function3.getClass();
        function4.getClass();
        function5.getClass();
        GapComposer gapComposerH = composer.h(-564673552);
        if ((i2 & 6) == 0) {
            i3 = (gapComposerH.K(modifier2) ? 4 : 2) | i2;
        } else {
            i3 = i2;
        }
        if ((i2 & 48) == 0) {
            audioPlayerControllerUiState2 = audioPlayerControllerUiState;
            i3 |= gapComposerH.y(audioPlayerControllerUiState2) ? 32 : 16;
        } else {
            audioPlayerControllerUiState2 = audioPlayerControllerUiState;
        }
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            audioPlayerItemUiModel2 = audioPlayerItemUiModel;
            i3 |= gapComposerH.y(audioPlayerItemUiModel2) ? 256 : 128;
        } else {
            audioPlayerItemUiModel2 = audioPlayerItemUiModel;
        }
        if ((i2 & 3072) == 0) {
            animatedVisibilityScope2 = animatedVisibilityScope;
            i3 |= gapComposerH.y(animatedVisibilityScope2) ? 2048 : 1024;
        } else {
            animatedVisibilityScope2 = animatedVisibilityScope;
        }
        if ((i2 & 24576) == 0) {
            i3 |= gapComposerH.K(sharedTransitionScope) ? 16384 : 8192;
        }
        if ((196608 & i2) == 0) {
            function6 = function1;
            i3 |= gapComposerH.y(function6) ? 131072 : 65536;
        } else {
            function6 = function1;
        }
        if ((1572864 & i2) == 0) {
            function7 = function2;
            i3 |= gapComposerH.y(function7) ? 1048576 : 524288;
        } else {
            function7 = function2;
        }
        if ((12582912 & i2) == 0) {
            function8 = function0;
            i3 |= gapComposerH.y(function8) ? 8388608 : 4194304;
        } else {
            function8 = function0;
        }
        if ((100663296 & i2) == 0) {
            function9 = function3;
            i3 |= gapComposerH.y(function9) ? 67108864 : 33554432;
        } else {
            function9 = function3;
        }
        if ((805306368 & i2) == 0) {
            function10 = function4;
            i3 |= gapComposerH.y(function10) ? PKIFailureInfo.duplicateCertReq : 268435456;
        } else {
            function10 = function4;
        }
        if (gapComposerH.p(i3 & 1, ((i3 & 306783379) == 306783378 && ((gapComposerH.y(function5) ? (char) 4 : (char) 2) & 3) == 2) ? false : true)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            final Context context = (Context) gapComposerH.k(AndroidCompositionLocals_androidKt.f9936b);
            final AudioPlayerControllerUiState audioPlayerControllerUiState3 = audioPlayerControllerUiState2;
            final AudioPlayerItemUiModel audioPlayerItemUiModel3 = audioPlayerItemUiModel2;
            final AnimatedVisibilityScope animatedVisibilityScope3 = animatedVisibilityScope2;
            final Function1 function11 = function6;
            final Function1 function12 = function7;
            final Function0 function13 = function8;
            final Function0 function14 = function9;
            final Function0 function15 = function10;
            CompositionLocalKt.a(RippleKt.f7164a.c(PodcastComposableKt.b(gapComposerH)), ComposableLambdaKt.b(-1277651152, new Function2() { // from class: com.vuitton.android.presentation.screen.immersivearticle.podcast.a
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    Function0 function16;
                    Composer composer2 = (Composer) obj;
                    int iIntValue = ((Integer) obj2).intValue();
                    Modifier modifierE2 = modifier2;
                    if (modifierE2 != null) {
                        modifierE2 = defpackage.a.e(modifierE2, "ExpandedPodcast$lambda$0");
                    }
                    if (composer2.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                        OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                        Modifier modifierO = modifierE2.o(SizeKt.f5052c);
                        SharedTransitionScope sharedTransitionScope2 = sharedTransitionScope;
                        sharedTransitionScope2.getClass();
                        SharedTransitionScope.SharedContentState sharedContentStateB = SharedTransitionScope.B("bounds", composer2, 6);
                        ScaleToBoundsImpl scaleToBoundsImplA = SharedTransitionScope.ResizeMode.Companion.a();
                        AnimatedVisibilityScope animatedVisibilityScope4 = animatedVisibilityScope3;
                        Modifier modifierU = SharedTransitionScope.u(sharedTransitionScope2, modifierO, sharedContentStateB, animatedVisibilityScope4, null, null, scaleToBoundsImplA, 988);
                        Unit unit = Unit.f71739a;
                        final Function0 function17 = function13;
                        boolean zK = composer2.K(function17);
                        final Function1 function18 = function12;
                        boolean zK2 = zK | composer2.K(function18);
                        Object objX = composer2.x();
                        Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
                        if (zK2 || objX == composer$Companion$Empty$1) {
                            objX = new PointerInputEventHandler() { // from class: com.vuitton.android.presentation.screen.immersivearticle.podcast.ExpandedPodcastKt$ExpandedPodcast$1$1$1$1
                                @Override // androidx.compose.ui.input.pointer.PointerInputEventHandler
                                public final Object invoke(PointerInputScope pointerInputScope, Continuation continuation) {
                                    Object objF = DragGestureDetectorKt.f(pointerInputScope, function17, new v9(function18, 2), continuation, 5);
                                    return objF == CoroutineSingletons.COROUTINE_SUSPENDED ? objF : Unit.f71739a;
                                }
                            };
                            composer2.q(objX);
                        }
                        Modifier modifierA = SuspendingPointerInputFilterKt.a(modifierU, unit, (PointerInputEventHandler) objX);
                        Object objX2 = composer2.x();
                        if (objX2 == composer$Companion$Empty$1) {
                            objX2 = new iv(19);
                            composer2.q(objX2);
                        }
                        Modifier modifierB = SemanticsModifierKt.b(modifierA, false, (Function1) objX2);
                        Arrangement$Center$1 arrangement$Center$1 = Arrangement.f4921e;
                        Alignment.f8582a.getClass();
                        BiasAlignment.Horizontal horizontal = Alignment.Companion.o;
                        ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(arrangement$Center$1, horizontal, composer2, 54);
                        int iHashCode = Long.hashCode(composer2.getT());
                        PersistentCompositionLocalMap persistentCompositionLocalMapN = composer2.n();
                        Modifier modifierC = ComposedModifierKt.c(composer2, modifierB);
                        ComposeUiNode.b0.getClass();
                        Function0 function19 = ComposeUiNode.Companion.f9641b;
                        if (composer2.getF7976a() == null) {
                            ComposablesKt.b();
                            throw null;
                        }
                        composer2.B();
                        if (composer2.getS()) {
                            composer2.C(function19);
                        } else {
                            composer2.o();
                        }
                        Function2 function20 = ComposeUiNode.Companion.f9644f;
                        Updater.c(composer2, columnMeasurePolicyA, function20);
                        Function2 function21 = ComposeUiNode.Companion.f9643e;
                        Updater.c(composer2, persistentCompositionLocalMapN, function21);
                        Integer numValueOf = Integer.valueOf(iHashCode);
                        Function2 function22 = ComposeUiNode.Companion.g;
                        Updater.c(composer2, numValueOf, function22);
                        Function1 function23 = ComposeUiNode.Companion.f9645h;
                        Updater.b(composer2, function23);
                        Function2 function24 = ComposeUiNode.Companion.d;
                        Modifier modifierC2 = FocusableKt.c(PaddingKt.m(defpackage.a.f(composer2, modifierC, function24, "ExpandedPodcast$lambda$0"), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer2).f48419i, 7), null, 3);
                        Context context2 = context;
                        boolean zY = composer2.y(context2);
                        Function0 function25 = function14;
                        boolean zK3 = zY | composer2.K(function25);
                        Object objX3 = composer2.x();
                        if (zK3 || objX3 == composer$Companion$Empty$1) {
                            objX3 = new j3(context2, function25, 2);
                            composer2.q(objX3);
                        }
                        PodcastDraggableIndicatorKt.a(SemanticsModifierKt.b(modifierC2, false, (Function1) objX3), composer2, 0);
                        Modifier modifierA2 = ClipKt.a(SharedTransitionScope.f(sharedTransitionScope2, AspectRatioKt.a(PaddingKt.k(new DTFunctionNameModifier("ExpandedPodcast$lambda$0"), LVAppDesignKitTheme.l(composer2).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2), 1.0f, false), SharedTransitionScope.B("image", composer2, 6), animatedVisibilityScope4), LVAppDesignKitTheme.j(composer2).f48411c);
                        AudioPlayerItemUiModel audioPlayerItemUiModel4 = audioPlayerItemUiModel3;
                        AssetImage assetImage = audioPlayerItemUiModel4.f53258c;
                        String str = assetImage != null ? assetImage.f67108a : null;
                        if (str == null) {
                            str = "";
                        }
                        ContentScale.f9447a.getClass();
                        ImageLoaderKt.b(modifierA2, str, ContentScale.Companion.f9449b, null, null, 0, false, null, null, null, composer2, 3456, 2032);
                        Modifier modifierC3 = ModifierExtKt.c(PaddingKt.m(tr.d("ExpandedPodcast$lambda$0", 1.0f), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer2).g, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer2).g, 5), new Dp(LVAppDesignKitTheme.d(composer2).n), new Dp(LVAppDesignKitTheme.d(composer2).t), null, null, new Dp(LVAppDesignKitTheme.d(composer2).t), new Dp(LVAppDesignKitTheme.d(composer2).n), null, null, false, 460);
                        RowMeasurePolicy rowMeasurePolicyA = RowKt.a(Arrangement.f4918a, Alignment.Companion.f8591k, composer2, 0);
                        int iHashCode2 = Long.hashCode(composer2.getT());
                        PersistentCompositionLocalMap persistentCompositionLocalMapN2 = composer2.n();
                        Modifier modifierC4 = ComposedModifierKt.c(composer2, modifierC3);
                        if (composer2.getF7976a() == null) {
                            ComposablesKt.b();
                            throw null;
                        }
                        composer2.B();
                        if (composer2.getS()) {
                            function16 = function19;
                            composer2.C(function16);
                        } else {
                            function16 = function19;
                            composer2.o();
                        }
                        Updater.c(composer2, rowMeasurePolicyA, function20);
                        Updater.c(composer2, persistentCompositionLocalMapN2, function21);
                        cj.s(iHashCode2, composer2, function22, composer2, function23);
                        Modifier modifierC5 = n00.c(composer2, modifierC4, function24, "ExpandedPodcast$lambda$0", 1.0f);
                        ColumnMeasurePolicy columnMeasurePolicyA2 = ColumnKt.a(Arrangement.f4920c, horizontal, composer2, 48);
                        int iHashCode3 = Long.hashCode(composer2.getT());
                        PersistentCompositionLocalMap persistentCompositionLocalMapN3 = composer2.n();
                        Modifier modifierC6 = ComposedModifierKt.c(composer2, modifierC5);
                        if (composer2.getF7976a() == null) {
                            ComposablesKt.b();
                            throw null;
                        }
                        composer2.B();
                        if (composer2.getS()) {
                            composer2.C(function16);
                        } else {
                            composer2.o();
                        }
                        Updater.c(composer2, columnMeasurePolicyA2, function20);
                        Updater.c(composer2, persistentCompositionLocalMapN3, function21);
                        cj.s(iHashCode3, composer2, function22, composer2, function23);
                        Updater.c(composer2, modifierC6, function24);
                        String str2 = audioPlayerItemUiModel4.d;
                        TextStyle textStyle = LVAppDesignKitTheme.n(composer2).f48425e;
                        long j2 = LVAppDesignKitTheme.c(composer2).f48361b.m;
                        TextAlign.f10959b.getClass();
                        int i4 = TextAlign.f10961e;
                        TextKt.c(str2, BasicMarqueeKt.a(PaddingKt.k(new DTFunctionNameModifier("ExpandedPodcast$lambda$0"), LVAppDesignKitTheme.l(composer2).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2), null, 63), j2, 0L, null, 0L, null, new TextAlign(i4), 0L, 0, false, 1, 0, null, textStyle, composer2, 0, 24576, 113656);
                        TextKt.c(audioPlayerItemUiModel4.f53259e, BasicMarqueeKt.a(PaddingKt.k(new DTFunctionNameModifier("ExpandedPodcast$lambda$0"), LVAppDesignKitTheme.l(composer2).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2), null, 63), LVAppDesignKitTheme.c(composer2).f48361b.n, 0L, null, 0L, null, new TextAlign(i4), 0L, 0, false, 1, 0, null, LVAppDesignKitTheme.n(composer2).g, composer2, 0, 24576, 113656);
                        composer2.r();
                        composer2.r();
                        Modifier modifierD = SizeKt.d(new DTFunctionNameModifier("ExpandedPodcast$lambda$0"), 1.0f);
                        AudioPlayerControllerUiState audioPlayerControllerUiState4 = audioPlayerControllerUiState3;
                        Long l = audioPlayerControllerUiState4.f53247e;
                        PodcastPlayerKt.a(modifierD, audioPlayerControllerUiState4, l != null ? l.longValue() : audioPlayerItemUiModel4.f53256a, function11, function15, function5, composer2, 6);
                        composer2.r();
                    } else {
                        composer2.D();
                    }
                    return Unit.f71739a;
                }
            }, gapComposerH), gapComposerH, 56);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new f3(modifier2, audioPlayerControllerUiState, audioPlayerItemUiModel, animatedVisibilityScope, sharedTransitionScope, function1, function2, function0, function3, function4, function5, i2);
        }
    }
}
