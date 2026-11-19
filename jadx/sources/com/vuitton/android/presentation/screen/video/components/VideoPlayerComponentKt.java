package com.vuitton.android.presentation.screen.video.components;

import androidx.compose.animation.AnimatedVisibilityKt;
import androidx.compose.animation.EnterExitTransitionKt;
import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScopeInstance;
import androidx.compose.foundation.layout.FillElement;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.layout.WindowInsetsPadding_androidKt;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.DynamicProvidableCompositionLocal;
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
import androidx.compose.ui.BiasAlignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.RectangleShapeKt;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.compose.ui.viewinterop.AndroidView_androidKt;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.compose.LocalLifecycleOwnerKt;
import androidx.media3.exoplayer.ExoPlayer;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.atoms.LVIconButtonKt;
import defpackage.ca0;
import defpackage.da0;
import defpackage.es0;
import defpackage.m21;
import defpackage.o51;
import defpackage.o90;
import defpackage.pq0;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002¨\u0006\u0007²\u0006\u000e\u0010\u0001\u001a\u00020\u00008\n@\nX\u008a\u008e\u0002²\u0006\u000e\u0010\u0002\u001a\u00020\u00008\n@\nX\u008a\u008e\u0002²\u0006\u000e\u0010\u0003\u001a\u00020\u00008\n@\nX\u008a\u008e\u0002²\u0006\u000e\u0010\u0004\u001a\u00020\u00008\n@\nX\u008a\u008e\u0002²\u0006\u000e\u0010\u0006\u001a\u00020\u00058\n@\nX\u008a\u008e\u0002"}, d2 = {"", "shouldDisplayClose", "showPlayPauseButton", "isVideoPlaying", "isSoundMuted", "Landroidx/lifecycle/Lifecycle$Event;", "lifecycle", "presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class VideoPlayerComponentKt {

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f65437a;

        static {
            int[] iArr = new int[Lifecycle.Event.values().length];
            try {
                iArr[Lifecycle.Event.ON_PAUSE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[Lifecycle.Event.ON_DESTROY.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            f65437a = iArr;
        }
    }

    public static final void a(ExoPlayer exoPlayer, Function0 function0, Composer composer, int i2) {
        ExoPlayer exoPlayer2;
        boolean z;
        String str;
        function0.getClass();
        GapComposer gapComposerH = composer.h(-1290250119);
        int i3 = i2 | (gapComposerH.y(exoPlayer) ? 4 : 2) | (gapComposerH.y(function0) ? 32 : 16);
        if (gapComposerH.p(i3 & 1, (i3 & 19) != 18)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (objX == composer$Companion$Empty$1) {
                objX = SnapshotStateKt.g(Boolean.FALSE);
                gapComposerH.q(objX);
            }
            MutableState mutableState = (MutableState) objX;
            Object objX2 = gapComposerH.x();
            if (objX2 == composer$Companion$Empty$1) {
                objX2 = SnapshotStateKt.g(Boolean.FALSE);
                gapComposerH.q(objX2);
            }
            MutableState mutableState2 = (MutableState) objX2;
            Object objX3 = gapComposerH.x();
            if (objX3 == composer$Companion$Empty$1) {
                objX3 = SnapshotStateKt.g(Boolean.TRUE);
                gapComposerH.q(objX3);
            }
            MutableState mutableState3 = (MutableState) objX3;
            Object objX4 = gapComposerH.x();
            if (objX4 == composer$Companion$Empty$1) {
                objX4 = SnapshotStateKt.g(Boolean.FALSE);
                gapComposerH.q(objX4);
            }
            MutableState mutableState4 = (MutableState) objX4;
            Object objX5 = gapComposerH.x();
            if (objX5 == composer$Companion$Empty$1) {
                objX5 = SnapshotStateKt.g(Lifecycle.Event.ON_CREATE);
                gapComposerH.q(objX5);
            }
            MutableState mutableState5 = (MutableState) objX5;
            DynamicProvidableCompositionLocal dynamicProvidableCompositionLocal = AndroidCompositionLocals_androidKt.f9935a;
            LifecycleOwner lifecycleOwner = (LifecycleOwner) gapComposerH.k(LocalLifecycleOwnerKt.f13562a);
            boolean zY = gapComposerH.y(lifecycleOwner);
            Object objX6 = gapComposerH.x();
            if (zY || objX6 == composer$Companion$Empty$1) {
                objX6 = new o90(lifecycleOwner, mutableState5, 2);
                gapComposerH.q(objX6);
            }
            EffectsKt.c(lifecycleOwner, (Function1) objX6, gapComposerH);
            Boolean bool = (Boolean) mutableState2.getF10755b();
            bool.booleanValue();
            Object objX7 = gapComposerH.x();
            if (objX7 == composer$Companion$Empty$1) {
                objX7 = new VideoPlayerComponentKt$VideoPlayerComponent$2$1(mutableState2, null);
                gapComposerH.q(objX7);
            }
            EffectsKt.e(gapComposerH, bool, (Function2) objX7);
            DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier("VideoPlayerComponent");
            FillElement fillElement = SizeKt.f5052c;
            Modifier modifierB = BackgroundKt.b(dTFunctionNameModifier.o(fillElement), LVAppDesignKitTheme.c(gapComposerH).f48361b.u, RectangleShapeKt.f8913a);
            Alignment.f8582a.getClass();
            BiasAlignment biasAlignment = Alignment.Companion.f8584b;
            MeasurePolicy measurePolicyD = BoxKt.d(biasAlignment, false);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierB);
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
            Modifier modifierB2 = WindowInsetsPadding_androidKt.b(new DTFunctionNameModifier("VideoPlayerComponent").o(fillElement));
            boolean zY2 = gapComposerH.y(exoPlayer);
            Object objX8 = gapComposerH.x();
            if (zY2 || objX8 == composer$Companion$Empty$1) {
                objX8 = new m21(exoPlayer, mutableState, 27);
                gapComposerH.q(objX8);
            }
            Function1 function2 = (Function1) objX8;
            Object objX9 = gapComposerH.x();
            if (objX9 == composer$Companion$Empty$1) {
                objX9 = new o51(0);
                gapComposerH.q(objX9);
            }
            Function1 function3 = (Function1) objX9;
            Object objX10 = gapComposerH.x();
            if (objX10 == composer$Companion$Empty$1) {
                z = true;
                objX10 = new ca0(mutableState5, mutableState2, mutableState3, 1);
                gapComposerH.q(objX10);
            } else {
                z = true;
            }
            FillElement fillElement2 = fillElement;
            AndroidView_androidKt.b(function2, modifierB2, function3, (Function1) objX10, gapComposerH, 27648);
            if (((Boolean) mutableState.getF10755b()).booleanValue() || ((Boolean) mutableState2.getF10755b()).booleanValue()) {
                gapComposerH.L(1948562785);
                str = "VideoPlayerComponent";
                LVIconButtonKt.b(PaddingKt.m(WindowInsetsPadding_androidKt.b(BoxScopeInstance.f4938a.g(new DTFunctionNameModifier("VideoPlayerComponent"), biasAlignment)), LVAppDesignKitTheme.l(gapComposerH).f48417f, LVAppDesignKitTheme.l(gapComposerH).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 12), LVAppDesignKitTheme.f(gapComposerH).f48480e, LVAppDesignKitTheme.g(gapComposerH).q, null, null, false, 0, false, false, function0, gapComposerH, 0, (i3 >> 3) & 14, 1016);
                gapComposerH.Z(false);
                fillElement2 = fillElement2;
            } else {
                gapComposerH.L(1949087491);
                gapComposerH.Z(false);
                str = "VideoPlayerComponent";
            }
            Modifier modifierI = pq0.i(str, fillElement2);
            exoPlayer2 = exoPlayer;
            AnimatedVisibilityKt.e(((Boolean) mutableState2.getF10755b()).booleanValue(), modifierI, EnterExitTransitionKt.f(null, Call.Parameters.DEFAULT_CAMERA_ZOOM, 3), EnterExitTransitionKt.h(null, 3), null, ComposableLambdaKt.b(745080023, new da0(exoPlayer, mutableState3, mutableState2, mutableState4, 1), gapComposerH), gapComposerH, 200112, 16);
            gapComposerH.Z(true);
        } else {
            exoPlayer2 = exoPlayer;
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new es0(exoPlayer2, function0, i2, 23);
        }
    }
}
