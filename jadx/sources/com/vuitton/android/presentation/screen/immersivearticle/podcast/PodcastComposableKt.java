package com.vuitton.android.presentation.screen.immersivearticle.podcast;

import android.content.res.Configuration;
import androidx.compose.animation.AnimatedContentKt;
import androidx.compose.animation.AnimatedContentScope;
import androidx.compose.animation.SharedTransitionScope;
import androidx.compose.animation.SharedTransitionScopeKt;
import androidx.compose.animation.core.Animatable;
import androidx.compose.animation.core.AnimatableKt;
import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.gestures.DragGestureDetectorKt;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.material3.RippleConfiguration;
import androidx.compose.material3.RippleDefaults;
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
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.ClipKt;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.RectangleShapeKt;
import androidx.compose.ui.graphics.RectangleShapeKt$RectangleShape$1;
import androidx.compose.ui.input.pointer.PointerInputChange;
import androidx.compose.ui.input.pointer.PointerInputEventHandler;
import androidx.compose.ui.input.pointer.PointerInputScope;
import androidx.compose.ui.input.pointer.SuspendingPointerInputFilterKt;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.compose.ui.unit.Dp;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.designkit.ui.common.ModifierExtKt;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.presentation.extensions.ResourcesExtKt;
import com.vuitton.android.presentation.screen.audioplayer.model.AudioPlayerControllerUiState;
import com.vuitton.android.presentation.screen.audioplayer.model.AudioPlayerEvent;
import com.vuitton.android.presentation.screen.audioplayer.model.AudioPlayerItemUiModel;
import com.vuitton.android.presentation.screen.immersivearticle.models.ImmersiveArticleType;
import com.vuitton.foundation.model.domain.model.audioplayer.PlayerState;
import defpackage.a90;
import defpackage.jo0;
import defpackage.sa;
import defpackage.sm0;
import defpackage.tf0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.functions.Function4;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import net.rtccloud.sdk.Call;
import org.bouncycastle.asn1.cmc.BodyPartID;
import org.bouncycastle.asn1.cmp.PKIFailureInfo;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\b\n\u0002\u0010\u000b\n\u0002\b\u0002¨\u0006\u0002²\u0006\u000e\u0010\u0001\u001a\u00020\u00008\n@\nX\u008a\u008e\u0002"}, d2 = {"", "isPodcastExpansionTriggered", "presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class PodcastComposableKt {
    public static final void a(Modifier modifier, final boolean z, final String str, final ImmersiveArticleType immersiveArticleType, final AudioPlayerControllerUiState audioPlayerControllerUiState, final AudioPlayerItemUiModel audioPlayerItemUiModel, final Function1 function1, final Function0 function0, final Function0 function2, final Function1 function3, Composer composer, int i2) {
        Modifier modifier2;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = defpackage.a.e(modifierE, "PodcastComposable");
        }
        immersiveArticleType.getClass();
        audioPlayerControllerUiState.getClass();
        audioPlayerItemUiModel.getClass();
        function1.getClass();
        function0.getClass();
        function2.getClass();
        function3.getClass();
        GapComposer gapComposerH = composer.h(515150730);
        int i3 = i2 | 6 | (gapComposerH.b(z) ? 32 : 16) | (gapComposerH.K(str) ? 256 : 128) | (gapComposerH.d(immersiveArticleType.ordinal()) ? 2048 : 1024) | (gapComposerH.y(audioPlayerControllerUiState) ? 16384 : 8192) | (gapComposerH.y(audioPlayerItemUiModel) ? 131072 : 65536) | (gapComposerH.y(function1) ? 1048576 : 524288) | (gapComposerH.y(function0) ? 8388608 : 4194304) | (gapComposerH.y(function2) ? 67108864 : 33554432) | (gapComposerH.y(function3) ? PKIFailureInfo.duplicateCertReq : 268435456);
        if (gapComposerH.p(i3 & 1, (306783379 & i3) != 306783378)) {
            final DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier("PodcastComposable");
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (objX == composer$Companion$Empty$1) {
                objX = EffectsKt.j(EmptyCoroutineContext.f71840b, gapComposerH);
                gapComposerH.q(objX);
            }
            final CoroutineScope coroutineScope = (CoroutineScope) objX;
            Object objX2 = gapComposerH.x();
            if (objX2 == composer$Companion$Empty$1) {
                objX2 = SnapshotStateKt.g(Boolean.FALSE);
                gapComposerH.q(objX2);
            }
            final MutableState mutableState = (MutableState) objX2;
            Object objX3 = gapComposerH.x();
            if (objX3 == composer$Companion$Empty$1) {
                objX3 = AnimatableKt.a(Call.Parameters.DEFAULT_CAMERA_ZOOM);
                gapComposerH.q(objX3);
            }
            final Animatable animatable = (Animatable) objX3;
            final float f2 = ((Configuration) gapComposerH.k(AndroidCompositionLocals_androidKt.f9935a)).screenHeightDp;
            Dp.Companion companion = Dp.f11004c;
            Alignment.f8582a.getClass();
            MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, dTFunctionNameModifier);
            ComposeUiNode.b0.getClass();
            Function0 function4 = ComposeUiNode.Companion.f9641b;
            if (gapComposerH.f7976a == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function4);
            } else {
                gapComposerH.o();
            }
            Updater.c(gapComposerH, measurePolicyD, ComposeUiNode.Companion.f9644f);
            Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
            Updater.c(gapComposerH, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
            Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
            Updater.c(gapComposerH, modifierC, ComposeUiNode.Companion.d);
            SharedTransitionScopeKt.a(null, ComposableLambdaKt.b(2058945862, new Function3() { // from class: qo0
                @Override // kotlin.jvm.functions.Function3
                public final Object A(Object obj, Object obj2, Object obj3) {
                    final SharedTransitionScope sharedTransitionScope = (SharedTransitionScope) obj;
                    Composer composer2 = (Composer) obj2;
                    int iIntValue = ((Integer) obj3).intValue();
                    Modifier modifierE2 = dTFunctionNameModifier;
                    if (modifierE2 != null) {
                        modifierE2 = a.e(modifierE2, "PodcastComposable$lambda$4$0");
                    }
                    sharedTransitionScope.getClass();
                    if ((iIntValue & 6) == 0) {
                        iIntValue |= composer2.K(sharedTransitionScope) ? 4 : 2;
                    }
                    if (composer2.p(iIntValue & 1, (iIntValue & 19) != 18)) {
                        OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                        Boolean boolValueOf = Boolean.valueOf(z);
                        final Modifier modifier3 = modifierE2;
                        final Animatable animatable2 = animatable;
                        final AudioPlayerControllerUiState audioPlayerControllerUiState2 = audioPlayerControllerUiState;
                        final AudioPlayerItemUiModel audioPlayerItemUiModel2 = audioPlayerItemUiModel;
                        final Function1 function5 = function1;
                        final CoroutineScope coroutineScope2 = coroutineScope;
                        final float f3 = f2;
                        final Function0 function6 = function2;
                        final Function1 function7 = function3;
                        final Function0 function8 = function0;
                        final String str2 = str;
                        final ImmersiveArticleType immersiveArticleType2 = immersiveArticleType;
                        final MutableState mutableState2 = mutableState;
                        AnimatedContentKt.b(boolValueOf, null, null, null, "expanded_transition", null, ComposableLambdaKt.b(2034098659, new Function4() { // from class: com.vuitton.android.presentation.screen.immersivearticle.podcast.b
                            @Override // kotlin.jvm.functions.Function4
                            public final Object g(Object obj4, Object obj5, Object obj6, Object obj7) {
                                Object obj8;
                                boolean z2;
                                Function0 function9;
                                AnimatedContentScope animatedContentScope = (AnimatedContentScope) obj4;
                                boolean zBooleanValue = ((Boolean) obj5).booleanValue();
                                Composer composer3 = (Composer) obj6;
                                int iIntValue2 = ((Integer) obj7).intValue();
                                Modifier modifierE3 = modifier3;
                                if (modifierE3 != null) {
                                    modifierE3 = defpackage.a.e(modifierE3, "PodcastComposable$lambda$4$0$0");
                                }
                                animatedContentScope.getClass();
                                OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                                RectangleShapeKt$RectangleShape$1 rectangleShapeKt$RectangleShape$1 = RectangleShapeKt.f8913a;
                                SharedTransitionScope sharedTransitionScope2 = sharedTransitionScope;
                                final Animatable animatable3 = animatable2;
                                AudioPlayerControllerUiState audioPlayerControllerUiState3 = audioPlayerControllerUiState2;
                                AudioPlayerItemUiModel audioPlayerItemUiModel3 = audioPlayerItemUiModel2;
                                final Function1 function10 = function5;
                                final CoroutineScope coroutineScope3 = coroutineScope2;
                                Function1 function11 = function7;
                                final MutableState mutableState3 = mutableState2;
                                Composer$Companion$Empty$1 composer$Companion$Empty$2 = Composer.Companion.f7939a;
                                if (zBooleanValue) {
                                    composer3.L(139688435);
                                    Modifier modifierO = modifierE3.o(SizeKt.f5052c);
                                    boolean zY = composer3.y(animatable3);
                                    Object objX4 = composer3.x();
                                    if (zY || objX4 == composer$Companion$Empty$2) {
                                        objX4 = new sa(animatable3, 2);
                                        composer3.q(objX4);
                                    }
                                    Modifier modifierL = sharedTransitionScope2.l(BackgroundKt.b(OffsetKt.a(modifierO, (Function1) objX4), Color.b(LVAppDesignKitTheme.h(composer3).f48402b, LVAppDesignKitTheme.c(composer3).f48361b.g), rectangleShapeKt$RectangleShape$1), new Function0<Boolean>() { // from class: androidx.compose.animation.SharedTransitionScope$skipToLookaheadSize$1
                                        {
                                            super(0);
                                        }

                                        @Override // kotlin.jvm.functions.Function0
                                        /* JADX INFO: renamed from: invoke */
                                        public final Object mo47invoke() {
                                            return Boolean.valueOf(this.f3682c.j());
                                        }
                                    });
                                    boolean zY2 = composer3.y(coroutineScope3) | composer3.y(animatable3);
                                    Object objX5 = composer3.x();
                                    if (zY2 || objX5 == composer$Companion$Empty$2) {
                                        objX5 = new Function1() { // from class: com.vuitton.android.presentation.screen.immersivearticle.podcast.c
                                            @Override // kotlin.jvm.functions.Function1
                                            public final Object invoke(Object obj9) {
                                                BuildersKt.c(coroutineScope3, null, null, new PodcastComposableKt$PodcastComposable$1$1$1$2$1$1(animatable3, ((Float) obj9).floatValue(), null), 3);
                                                return Unit.f71739a;
                                            }
                                        };
                                        composer3.q(objX5);
                                    }
                                    Function1 function12 = (Function1) objX5;
                                    boolean zY3 = composer3.y(animatable3);
                                    final float f4 = f3;
                                    boolean zC = zY3 | composer3.c(f4);
                                    final Function0 function13 = function6;
                                    boolean zK = zC | composer3.K(function13) | composer3.y(coroutineScope3) | composer3.K(function10);
                                    Object objX6 = composer3.x();
                                    if (zK || objX6 == composer$Companion$Empty$2) {
                                        Function0 function14 = new Function0() { // from class: com.vuitton.android.presentation.screen.immersivearticle.podcast.d
                                            @Override // kotlin.jvm.functions.Function0
                                            /* JADX INFO: renamed from: invoke */
                                            public final Object mo47invoke() {
                                                Animatable animatable4 = animatable3;
                                                float fFloatValue = ((Number) animatable4.d()).floatValue();
                                                float f5 = f4 * 0.33f;
                                                Dp.Companion companion2 = Dp.f11004c;
                                                if (fFloatValue > ResourcesExtKt.b(f5)) {
                                                    mutableState3.setValue(Boolean.FALSE);
                                                    function13.mo47invoke();
                                                } else {
                                                    BuildersKt.c(coroutineScope3, null, null, new PodcastComposableKt$PodcastComposable$1$1$1$3$1$1(animatable4, null), 3);
                                                }
                                                function10.invoke(AudioPlayerEvent.PlayerUiChange.f53252a);
                                                return Unit.f71739a;
                                            }
                                        };
                                        function9 = function13;
                                        function10 = function10;
                                        composer3.q(function14);
                                        objX6 = function14;
                                    } else {
                                        function9 = function13;
                                    }
                                    Function0 function15 = (Function0) objX6;
                                    boolean zK2 = composer3.K(function11);
                                    Object objX7 = composer3.x();
                                    if (zK2 || objX7 == composer$Companion$Empty$2) {
                                        objX7 = new tf0(function11, 9);
                                        composer3.q(objX7);
                                    }
                                    Function0 function16 = (Function0) objX7;
                                    boolean zK3 = composer3.K(function11);
                                    Object objX8 = composer3.x();
                                    if (zK3 || objX8 == composer$Companion$Empty$2) {
                                        objX8 = new jo0(function11, 1);
                                        composer3.q(objX8);
                                    }
                                    ExpandedPodcastKt.a(modifierL, audioPlayerControllerUiState3, audioPlayerItemUiModel3, animatedContentScope, sharedTransitionScope2, function10, function12, function15, function9, function16, (Function1) objX8, composer3, (iIntValue2 << 9) & 7168);
                                    composer3.F();
                                } else {
                                    composer3.L(141878089);
                                    Modifier modifierM = PaddingKt.m(PaddingKt.k(modifierE3, LVAppDesignKitTheme.l(composer3).f48415c, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer3).f48420j, 7);
                                    final Function0 function17 = function8;
                                    boolean zK4 = composer3.K(function17) | composer3.y(coroutineScope3) | composer3.y(animatable3) | composer3.K(function10);
                                    Object objX9 = composer3.x();
                                    if (zK4 || objX9 == composer$Companion$Empty$2) {
                                        objX9 = new Function0() { // from class: com.vuitton.android.presentation.screen.immersivearticle.podcast.e
                                            @Override // kotlin.jvm.functions.Function0
                                            /* JADX INFO: renamed from: invoke */
                                            public final Object mo47invoke() {
                                                function17.mo47invoke();
                                                BuildersKt.c(coroutineScope3, null, null, new PodcastComposableKt$PodcastComposable$1$1$1$6$1$1(animatable3, null), 3);
                                                function10.invoke(AudioPlayerEvent.PlayerUiChange.f53252a);
                                                return Unit.f71739a;
                                            }
                                        };
                                        composer3.q(objX9);
                                    }
                                    Modifier modifierC2 = ModifierExtKt.c(modifierM, false, null, null, (Function0) objX9, 31);
                                    Unit unit = Unit.f71739a;
                                    boolean zK5 = composer3.K(function17) | composer3.y(coroutineScope3) | composer3.y(animatable3) | composer3.K(function10);
                                    Object objX10 = composer3.x();
                                    if (zK5 || objX10 == composer$Companion$Empty$2) {
                                        z2 = true;
                                        obj8 = new PointerInputEventHandler() { // from class: com.vuitton.android.presentation.screen.immersivearticle.podcast.PodcastComposableKt$PodcastComposable$1$1$1$7$1
                                            @Override // androidx.compose.ui.input.pointer.PointerInputEventHandler
                                            public final Object invoke(PointerInputScope pointerInputScope, Continuation continuation) {
                                                final Function0 function18 = function17;
                                                final CoroutineScope coroutineScope4 = coroutineScope3;
                                                final Function1 function19 = function10;
                                                final MutableState mutableState4 = mutableState3;
                                                final Animatable animatable4 = animatable3;
                                                Object objF = DragGestureDetectorKt.f(pointerInputScope, null, new Function2() { // from class: com.vuitton.android.presentation.screen.immersivearticle.podcast.f
                                                    @Override // kotlin.jvm.functions.Function2
                                                    public final Object invoke(Object obj9, Object obj10) {
                                                        PointerInputChange pointerInputChange = (PointerInputChange) obj9;
                                                        Offset offset = (Offset) obj10;
                                                        pointerInputChange.getClass();
                                                        Float.intBitsToFloat((int) (offset.f8808a >> 32));
                                                        if (Float.intBitsToFloat((int) (offset.f8808a & BodyPartID.bodyIdMax)) < Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                                                            MutableState mutableState5 = mutableState4;
                                                            if (!((Boolean) mutableState5.getF10755b()).booleanValue()) {
                                                                function18.mo47invoke();
                                                                mutableState5.setValue(Boolean.TRUE);
                                                            }
                                                            BuildersKt.c(coroutineScope4, null, null, new PodcastComposableKt$PodcastComposable$1$1$1$7$1$1$1(animatable4, null), 3);
                                                            function19.invoke(AudioPlayerEvent.PlayerUiChange.f53252a);
                                                        }
                                                        pointerInputChange.a();
                                                        return Unit.f71739a;
                                                    }
                                                }, continuation, 7);
                                                return objF == CoroutineSingletons.COROUTINE_SUSPENDED ? objF : Unit.f71739a;
                                            }
                                        };
                                        composer3.q(obj8);
                                    } else {
                                        obj8 = objX10;
                                        z2 = true;
                                    }
                                    Modifier modifierL2 = sharedTransitionScope2.l(BackgroundKt.b(ClipKt.a(SuspendingPointerInputFilterKt.a(modifierC2, unit, (PointerInputEventHandler) obj8), LVAppDesignKitTheme.j(composer3).d), Color.b(LVAppDesignKitTheme.h(composer3).f48403c, LVAppDesignKitTheme.c(composer3).f48361b.g), rectangleShapeKt$RectangleShape$1), new Function0<Boolean>() { // from class: androidx.compose.animation.SharedTransitionScope$skipToLookaheadSize$1
                                        {
                                            super(0);
                                        }

                                        @Override // kotlin.jvm.functions.Function0
                                        /* JADX INFO: renamed from: invoke */
                                        public final Object mo47invoke() {
                                            return Boolean.valueOf(this.f3682c.j());
                                        }
                                    });
                                    if (audioPlayerControllerUiState3.f53245b != PlayerState.PLAYING) {
                                        z2 = false;
                                    }
                                    boolean zK6 = composer3.K(function11);
                                    String str3 = str2;
                                    boolean zK7 = zK6 | composer3.K(str3);
                                    ImmersiveArticleType immersiveArticleType3 = immersiveArticleType2;
                                    boolean zD = zK7 | composer3.d(immersiveArticleType3.ordinal());
                                    Object objX11 = composer3.x();
                                    if (zD || objX11 == composer$Companion$Empty$2) {
                                        objX11 = new sm0(function11, str3, immersiveArticleType3, 4);
                                        composer3.q(objX11);
                                    }
                                    CollapsedPodcastKt.a(modifierL2, z2, audioPlayerItemUiModel3, animatedContentScope, sharedTransitionScope2, function10, (Function0) objX11, composer3, (iIntValue2 << 9) & 7168);
                                    composer3.F();
                                }
                                return Unit.f71739a;
                            }
                        }, composer2), composer2, 1597440, 46);
                    } else {
                        composer2.D();
                    }
                    return Unit.f71739a;
                }
            }, gapComposerH), gapComposerH, 48);
            gapComposerH.Z(true);
            modifier2 = dTFunctionNameModifier;
        } else {
            gapComposerH.D();
            modifier2 = modifierE;
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new a90(modifier2, z, str, immersiveArticleType, audioPlayerControllerUiState, audioPlayerItemUiModel, function1, function0, function2, function3, i2);
        }
    }

    public static final RippleConfiguration b(Composer composer) {
        OpaqueKey opaqueKey = ComposerKt.f7940a;
        long j2 = LVAppDesignKitTheme.c(composer).f48361b.f48375b;
        boolean zE = composer.e(j2);
        Object objX = composer.x();
        if (zE || objX == Composer.Companion.f7939a) {
            objX = new RippleConfiguration(j2, RippleDefaults.f7163a, null);
            composer.q(objX);
        }
        return (RippleConfiguration) objX;
    }
}
